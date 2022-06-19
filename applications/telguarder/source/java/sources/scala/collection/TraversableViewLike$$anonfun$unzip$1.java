package scala.collection;

import scala.Function1;
import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$$anonfun$unzip$1.class */
public final class TraversableViewLike$$anonfun$unzip$1 extends AbstractFunction1<A, A1> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function1 asPair$1;

    /* JADX WARN: Multi-variable type inference failed */
    public TraversableViewLike$$anonfun$unzip$1(TraversableViewLike traversableViewLike, TraversableViewLike<A, Coll, This> traversableViewLike2) {
        this.asPair$1 = traversableViewLike2;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [A1, java.lang.Object] */
    @Override // scala.Function1
    public final A1 apply(A a) {
        return ((Tuple2) this.asPair$1.apply(a)).mo269_1();
    }
}
