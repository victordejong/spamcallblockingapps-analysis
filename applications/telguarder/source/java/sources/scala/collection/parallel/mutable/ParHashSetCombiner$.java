package scala.collection.parallel.mutable;

import scala.collection.mutable.FlatHashTable$;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParHashSetCombiner$.class */
public final class ParHashSetCombiner$ {
    public static final ParHashSetCombiner$ MODULE$ = null;
    private final int discriminantbits = 5;
    private final int numblocks = 1 << discriminantbits();
    private final int discriminantmask = (1 << discriminantbits()) - 1;
    private final int nonmasklength = 32 - discriminantbits();

    static {
        new ParHashSetCombiner$();
    }

    private ParHashSetCombiner$() {
        MODULE$ = this;
    }

    public <T> ParHashSetCombiner<T> apply() {
        return new ParHashSetCombiner<T>() { // from class: scala.collection.parallel.mutable.ParHashSetCombiner$$anon$1
            {
                FlatHashTable$.MODULE$.defaultLoadFactor();
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
