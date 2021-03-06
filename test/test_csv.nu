;; test_csv.nu
;;  tests for the Nu CSV wrapper.
;;
;;  Copyright (c) 2010 Tim Burks, Neon Design Technology, Inc.

(load "NuCSV")

(class TestCSV is NuTestCase
     
     (- testSimple is
        (set string "1,2,3\n4,5,6")
        (set value (string csvRows))
        (assert_equal 2 (value count))
        (assert_equal 3 ((value 0) count))
        (assert_equal 3 ((value 1) count))
        (assert_equal "5" ((value 1) 1))
        (set string "1,2,3\n4,\"5,5,5\",6")
        (set value (string csvRows))
        (assert_equal 2 (value count))
        (assert_equal 3 ((value 0) count))
        (assert_equal 3 ((value 1) count))
        (assert_equal "5,5,5" ((value 1) 1))))
