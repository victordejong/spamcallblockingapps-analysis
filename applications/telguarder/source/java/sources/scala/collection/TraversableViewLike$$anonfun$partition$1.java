package scala.collection;

import scala.Function1;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableViewLike$$anonfun$partition$1.class */
public final class TraversableViewLike$$anonfun$partition$1 extends AbstractFunction1<A, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function1 p$4;

    /* JADX WARN: Multi-variable type inference failed */
    public TraversableViewLike$$anonfun$partition$1(TraversableViewLike traversableViewLike, TraversableViewLike<A, Coll, This> traversableViewLike2) {
        this.p$4 = traversableViewLike2;
    }

    @Override // scala.Function1
    public final boolean apply(A a) {
        return !BoxesRunTime.unboxToBoolean(this.p$4.apply(a));
    }
}
