.data
array: .word 1,3,5,7,9,11
answer: .word 0
.text

la $s0, array
lw $s1, 0($s0)   # int temp = array[0]
lw $t2, 20($s0)  # load array[5] into $t2
addi $t2,$t2,1    # add 1 to array[5]
sw $t2, 0($s0)   # save $t2 into array[0]
add $s1,$s1,-1   # subtract 1 from array[0] before sw
sw $s1, 20($s0)  # save array[0] - 1 to array[5]
lw $s1, 4($s0)   # int temp = array[1]
lw $t2, 16($s0)  # load array[4] into $t2
add $t2,$t2,4    # add 4 to array[4]
sw $t2, 4($s0)   # save array[4] + 4 into array 1
addi $s1,$s1,-4   # subtract 4 from array[1]
sw $s1, 16($s0)  # save arr[1] - 4 to array[4]
lw $s1, 8($s0)   # int temp = array[2]
lw $t2, 12($s0)  # load array[3] into $t2
sll $t3,$t2,1    # set $t3 to the left shift by 2 bits of $t2
sw $t3, 8($s0)   # save left shift to array[2]
srl $t3,$s1,1    # set $t3 to the right shift by 2 bits of $t1
sw $t3, 12($s0)  # save right shift to array[3]


	
