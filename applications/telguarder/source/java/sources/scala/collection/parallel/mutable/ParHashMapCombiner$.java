package scala.collection.parallel.mutable;

import scala.collection.mutable.HashTable$;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParHashMapCombiner$.class */
public final class ParHashMapCombiner$ {
    public static final ParHashMapCombiner$ MODULE$ = null;
    private final int discriminantbits = 5;
    private final int numblocks = 1 << discriminantbits();
    private final int discriminantmask = (1 << discriminantbits()) - 1;
    private final int nonmasklength = 32 - discriminantbits();

    static {
        new ParHashMapCombiner$();
    }

    private ParHashMapCombiner$() {
        MODULE$ = this;
    }

    public <K, V> ParHashMapCombiner<K, V> apply() {
        return new ParHashMapCombiner<K, V>() { // from class: scala.collection.parallel.mutable.ParHashMapCombiner$$anon$1
            {
                HashTable$.MODULE$.defaultLoadFactor();
            }
        };
    }

    public int discriminantbits() {
        return this.discriminantbits;
    }

    public int discriminantmask() {
        return this.discriminantmask;
    }

    public int nonmasklength() {
        return this.nonmasklength;
    }

    public int numblocks() {
        return this.numblocks;
    }
}
