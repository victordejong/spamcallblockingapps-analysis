package scala.collection.parallel.mutable;

import java.util.Objects;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParArray$ParArrayIterator$.class */
public class ParArray$ParArrayIterator$ {
    private final /* synthetic */ ParArray $outer;

    public ParArray$ParArrayIterator$(ParArray<T> parArray) {
        Objects.requireNonNull(parArray);
        this.$outer = parArray;
    }

    public int $lessinit$greater$default$1() {
        return 0;
    }

    public int $lessinit$greater$default$2() {
        return this.$outer.length();
    }

    public Object[] $lessinit$greater$default$3() {
        return this.$outer.scala$collection$parallel$mutable$ParArray$$array();
    }
}
