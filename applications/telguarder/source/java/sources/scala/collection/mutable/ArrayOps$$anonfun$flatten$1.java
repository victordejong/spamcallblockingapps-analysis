package scala.collection.mutable;

import scala.Serializable;
import scala.collection.IndexedSeq;
import scala.collection.SeqLike;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ArrayOps$$anonfun$flatten$1.class */
public final class ArrayOps$$anonfun$flatten$1 extends AbstractFunction1<T, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public ArrayOps$$anonfun$flatten$1(ArrayOps<T> arrayOps) {
    }

    @Override // scala.Function1
    public final int apply(T t) {
        return t instanceof IndexedSeq ? ((SeqLike) t).size() : 0;
    }
}
