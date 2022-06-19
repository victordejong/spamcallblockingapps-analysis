package scala.collection.parallel.immutable;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/HashSetCombiner$.class */
public final class HashSetCombiner$ {
    public static final HashSetCombiner$ MODULE$ = null;
    private final int rootbits = 5;
    private final int rootsize = 32;

    static {
        new HashSetCombiner$();
    }

    private HashSetCombiner$() {
        MODULE$ = this;
    }

    public <T> HashSetCombiner<T> apply() {
        return new HashSetCombiner<T>() { // from class: scala.collection.parallel.immutable.HashSetCombiner$$anon$1
        };
    }

    public int rootbits() {
        return this.rootbits;
    }

    public int rootsize() {
        return this.rootsize;
    }
}
