/*
This is a comment block. It won't be read as an Ink story.
Comments are very useful for leaving ideas for story and functionalty

This exercise will demonstrate the following in the example video:
 - Varrying text via loops
 - Functions
 
 In the assignment:
 - A story with at least 6 knots
 - Vary some text via a loop
 - Create a function that serves as a timer. (This is shown in the video)
*/


VAR time = 0 //  0 Morning, 1 Noon, 2 Night
VAR time2 = 0
VAR punch_count = 0



-> seashore

== seashore ==
~advance_time()

You are sitting on the beach. 
+ {time >= 2} get up and walk down the beach ->beach2
+ [Wait] -> seashore
-> DONE

== beach2 ==
This is further down the beach.
* Pick up shells -> shells
+ [go farther down the beach] -> beach3
+ [Move back up the beach] -> seashore

== shells ==
You pick up the shells
-> beach2
==beach3==
you go farther down the beach. on the right there is a beached ship.
+[go back] ->beach2
+ go inside the ship->ship_opening


==ship_opening==
~advance_time_2()
you walk into the opening on the ship you see two stair cases one up and one down and a passage way that leads forward.
{time2 <=1} you hear squweeking as you walk onto the old wooded floor.
+[go back] ->beach3
+[go up]->above_deck
+[go down]->low_deck
+[go forward]->mid_deck
==above_deck==
~advance_time_2()
you come up to the top deck where you can see out past the beach it look very beautiful you can see out as far as the eye can see 
+[go back]->ship_opening
+[wait]->above_deck
==low_deck==
~advance_time_2()
you follow the stair case down the the deck below you find a bunch of barrels.
+[go back]->ship_opening
*[open barrel]->open_barrel
==mid_deck==
~advance_time_2()
you follow the hall to a room that looks to be too big for the ship to contain. there seems to be a bunch of junk all over the place but a chest in the center of the room it apears to be locked 
+ [go back]->ship_opening
+ [try to open the chest]->open_chest
*[pick up chest] ->mid_deck
==dead== 
haha you dead\n you suck hahahahah ->END


==open_chest==
~advance_time_2()
+[pick the lock]->pick_lock
+ [punch lock]->punch
+[go back]->mid_deck

==punch==
~punch_count = punch_count +1
{punch_count>=4}->opens

==opens==
the lock on the chest breaks. you open the lid and there is a munch of rusty iron coins
*[pick up iron coins]->pick_up_coins
*[go back]->mid_deck
==pick_lock==
you can't pick a lock but you try anyways but it doesn't work
->open_chest


==pick_up_coins==
you go to pick up a few iron coins then you try to put them in your pocket but then you look down and see that you are naked and have no pants or pockets->END

==open_barrel==
you open the barrel to see what looks to be some food. 
* [take a bite]->bite
+[go back] ->low_deck
==bite==
you go to take a bite it has a very pungent smell. you take a bite and it tastes good kinda like blue cheese. you start to feel a bit weird and you vision narrows->dead
== function advance_time_2==

~time2 = time2 + 1

    
== function advance_time ==

    ~ time = time + 1
    
    {
        - time > 2:
            ~ time = 0
    }    
    /*
    {    
        - time == 0:
            ~ return "Morning"
        
        - time == 1:
            ~ return "Noon"
        
        - time == 2:
            ~ return "Night"
    
    }
    */
    
        
    ~ return time
    
    
    
