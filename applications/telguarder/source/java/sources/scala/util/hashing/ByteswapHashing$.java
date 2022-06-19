package scala.util.hashing;

import scala.Serializable;
import scala.util.hashing.ByteswapHashing;
/* loaded from: classes3-dex2jar.jar:scala/util/hashing/ByteswapHashing$.class */
public final class ByteswapHashing$ implements Serializable {
    public static final ByteswapHashing$ MODULE$ = null;

    static {
        new ByteswapHashing$();
    }

    private ByteswapHashing$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <T> Hashing<T> chain(Hashing<T> hashing) {
        return new ByteswapHashing.Chained(hashing);
    }
}
