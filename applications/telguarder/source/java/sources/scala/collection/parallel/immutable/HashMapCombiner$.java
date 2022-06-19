package scala.collection.parallel.immutable;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/HashMapCombiner$.class */
public final class HashMapCombiner$ {
    public static final HashMapCombiner$ MODULE$ = null;
    private final int rootbits = 5;
    private final int rootsize = 32;

    static {
        new HashMapCombiner$();
    }

    private HashMapCombiner$() {
        MODULE$ = this;
    }

    public <K, V> HashMapCombiner<K, V> apply() {
        return new HashMapCombiner<K, V>() { // from class: scala.collection.parallel.immutable.HashMapCombiner$$anon$1
        };
    }

    public int rootbits() {
        return this.rootbits;
    }

    public int rootsize() {
        return this.rootsize;
    }
}
