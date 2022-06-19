package scala.collection;

import scala.Function1;
import scala.Serializable;
import scala.Tuple3;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$$anonfun$unzip3$2.class */
public final class TraversableViewLike$$anonfun$unzip3$2 extends AbstractFunction1<A, A2> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function1 asTriple$1;

    /* JADX WARN: Multi-variable type inference failed */
    public TraversableViewLike$$anonfun$unzip3$2(TraversableViewLike traversableViewLike, TraversableViewLike<A, Coll, This> traversableViewLike2) {
        this.asTriple$1 = traversableViewLike2;
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [A2, java.lang.Object] */
    @Override // scala.Function1
    public final A2 apply(A a) {
        return ((Tuple3) this.asTriple$1.apply(a)).mo239_2();
    }
}
