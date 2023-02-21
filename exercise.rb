class Exercise

  # Assume that "str" is a sequence of words separated by spaces.
  # Return a string in which every word in "str" that exceeds 4 characters is replaced with "marklar".
  # If the word being replaced has a capital first letter, it should instead be replaced with "Marklar".
  def self.marklar(str)
    # Split the string into words
    words = str.split(" ")
  
    # Iterate over the words and replace those that exceed 4 characters
    words.map! do |word|
      if word.length > 4
        # Extract the punctuation from the end of the word (if any)
        punctuation = word[-1].match?(/\p{Punct}/) ? word[-1] : ""
  
        # Replace the word with "marklar" or "Marklar" depending on the first letter's case
        if word[0].upcase == word[0]
          "Marklar" + punctuation
        else
          "marklar" + punctuation
        end
      else
        word
      end
    end
  
    # Join the words back into a string and return it
    words.join(" ")
  end

  # Return the sum of all even numbers in the Fibonacci sequence, up to
  # the "nth" term in the sequence
  # eg. the Fibonacci sequence up to 6 terms is (1, 1, 2, 3, 5, 8),
  # and the sum of its even numbers is (2 + 8) = 10
  def self.even_fibonacci(nth)
    # Initialize the first two terms of the sequence
    term1 = 1
    term2 = 1
    
    # Initialize the sum of even numbers to zero
    even_sum = 0
    
    # Loop through the sequence up to the nth term
    (1..nth).each do |i|
      # If the current term is even, add it to the even sum
      even_sum += term1 if term1 % 2 == 0
      
      # Generate the next term in the sequence by adding the previous two terms
      next_term = term1 + term2
      
      # Update the values of the previous two terms
      term1 = term2
      term2 = next_term
    end
    
    # Return the sum of even numbers in the sequence
    even_sum
  end

end
