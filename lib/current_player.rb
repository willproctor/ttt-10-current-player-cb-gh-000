board = [' ', ' ', 'X', ' ', ' ', ' ', ' ', ' ', ' ']

def turn_count(board)
  count = 0
  board.each do |token|
    token == 'X' || token == 'O' ? count += 1 : count
  end
  count
end

def current_player(board)
  (turn_count(board) % 2).zero? ? 'X' : 'O'
end