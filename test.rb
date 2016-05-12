# Thomas Clifford
# Console Tic-Tac-Toe

class Game
	# Initialize the game
	def initialize
		@running = true
		@board = *('1'..'9')
		@turn = 'X'
	end
	
	# Figure out what to draw to the screen
	def draw
		display = "\n\n"
		
		count = 0
		@board.length.times do |i|
			count += 1
			display += @board[i] + "\t\t"
			if count % 3 == 0
				display += "\n\n\n"
			end
		end
		
		puts display
	end
	
	# Figure out what the game state should be
	def update
		@turn = @turn == 'X' ? 'O' : 'X'
		
		b = getUserInput
		
		if b == "quit"
			@running = false
		else
			setElement(2, 2, @turn)
		end
	end

	# Main program loop
	def run
		while @running
			update
			draw
		end
	end
	
	# misc functions
	def getUserInput
		gets.chomp
	end
	
	def setElement(col, row, value)
		@board[col + row * 3] = value
	end	
end

g = Game.new
g.run
