package scala.collection;

import scala.PartialFunction;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$$anonfun$collect$1.class */
public final class TraversableViewLike$$anonfun$collect$1 extends AbstractFunction1<A, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final PartialFunction pf$1;

    /* JADX WARN: Multi-variable type inference failed */
    public TraversableViewLike$$anonfun$collect$1(TraversableViewLike traversableViewLike, TraversableViewLike<A, Coll, This> traversableViewLike2) {
        this.pf$1 = traversableViewLike2;
    }

    @Override // scala.Function1
    public final boolean apply(A a) {
        return this.pf$1.isDefinedAt(a);
    }
}
