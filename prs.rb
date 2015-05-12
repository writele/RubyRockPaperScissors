
CHOICES = ['p', 'r', 's']

def winning_msg(choice)
  case choice
    when 'p' then puts "Paper wraps rock!"
    when 'r' then puts "Rock smashes scissors!"
    when 's' then puts "Scissors cuts paper!"
  end
end
 
puts "Welcome to Paper, Rock, Scissors!"

loop do
  begin
  puts "Choose: p, r, s"
  player_choice = gets.chomp.downcase
  end until CHOICES.include?(player_choice)

  computer_choice = CHOICES.sample

  if player_choice == computer_choice
    puts "It's a tie!"
  elsif (player_choice == 'p' && computer_choice == 'r') || (player_choice == 'r' && computer_choice == 's') || (player_choice == 's' && computer_choice == 'p')
    winning_msg(player_choice)
    puts "You won!"
  else
    winning_msg(computer_choice)
    puts "Computer won!"
  end

  puts "Play again? Y/N"
  if gets.chomp.upcase != 'Y'
    puts "Good bye!"
    break
  end

end