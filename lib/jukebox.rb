
require 'pry'

songs = [
  "Phoenix - 1901",
  "Tokyo Police Club - Wait Up",
  "Sufjan Stevens - Too Much",
  "The Naked and the Famous - Young Blood",
  "(Far From) Home - Tiga",
  "The Cults - Abducted",
  "Phoenix - Consolation Prizes",
  "Harry Chapin - Cats in the Cradle",
  "Amos Lee - Keep It Loose, Keep It Tight"
]

def help
  puts "I accept the following commands:
- help : displays this help message
- list : displays a list of songs you can play
- play : lets you choose a song to play
- exit : exits this program"
end 

def list(songs)
  songs.each_with_index do |list, index|
    puts "#{index+1} #{list}"
  end
end 

def play(songs)
  puts "Please enter a song name or number:"
  input = gets.chomp
  if [1,2,3,4,5,6,7,8,9].include?(input.to_i)
    puts "Playing #{songs[input.to_i-1]}"
    elsif songs.include?(input)
    puts "Playing #{input}"
  else 
    puts "Invalid input, please try again"
  end
end 

def exit_jukebox
  puts "Goodbye"
end 

def run(songs)
  help
  input = ""
  while input
  puts "Please enter a command:"
  input = gets.downcase.chomp
      case input 
      when "play"
        play(songs)
      when "list"
        list(songs)
        play(songs)
      when "help"
        help
      when "exit"
        exit_jukebox
        break
      else 
        help
      end 
  end 
end 





# def run(songs)
#   # help

#   input = ""
#   while input
#     puts "Please enter a command:"
#     input = gets.downcase.strip
#     case input
#     when 'list'
#       list(songs)
#     when 'play'
#       list(songs)
#       play(songs)
#     when 'help'
#       help
#     when 'exit'
#       exit_jukebox
#       break
#     else
#       help
#     end
#   end
# end