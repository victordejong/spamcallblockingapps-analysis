package scala.collection.mutable;

import scala.Tuple2;
import scala.collection.Seq;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/OpenHashMap$.class */
public final class OpenHashMap$ {
    public static final OpenHashMap$ MODULE$ = null;

    static {
        new OpenHashMap$();
    }

    private OpenHashMap$() {
        MODULE$ = this;
    }

    public <K, V> OpenHashMap<K, V> apply(Seq<Tuple2<K, V>> seq) {
        return (OpenHashMap) new OpenHashMap().$plus$plus$eq(seq);
    }

    public <K, V> OpenHashMap<K, V> empty() {
        return new OpenHashMap<>();
    }

    public int nextPositivePowerOfTwo(int i) {
        return 1 << (32 - Integer.numberOfLeadingZeros(i - 1));
    }
}
