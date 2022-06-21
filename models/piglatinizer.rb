require 'pry'
class PigLatinizer

    def piglatinize(text)
        parse_text = text.split(" ")
        if parse_text.length == 1
            pig_magic(text)
        else
            parse_text.map {|each_word| pig_magic(each_word)}.join(" ")
        end
    end

    def check_vowel(letter)
        true if letter.match(/[AaEeIiOoUu]/)
    end

    def pig_magic(text)
        i = 0
        if check_vowel(text[0])
            text + "way"
        else
            until check_vowel(text[i]) == true do
                i += 1
            end
            chopped_words = text.slice(i, text.length)
            end_words = text.slice(0, i)

            chopped_words + end_words + "ay"
        end
    end
end