package scala.collection;

import scala.Serializable;
import scala.Tuple2;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableLike$$anonfun$groupBy$2.class */
public final class TraversableLike$$anonfun$groupBy$2 extends AbstractFunction1<Tuple2<K, Builder<A, Repr>>, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public TraversableLike$$anonfun$groupBy$2(TraversableLike<A, Repr> traversableLike) {
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((Tuple2) obj));
    }

    public final boolean apply(Tuple2<K, Builder<A, Repr>> tuple2) {
        return tuple2 != 0;
    }
}
