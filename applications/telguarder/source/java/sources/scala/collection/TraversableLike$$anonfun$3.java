package scala.collection;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableLike$$anonfun$3.class */
public final class TraversableLike$$anonfun$3 extends AbstractFunction1<Traversable<A>, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public TraversableLike$$anonfun$3(TraversableLike traversableLike) {
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((Traversable) obj));
    }

    public final boolean apply(Traversable<A> traversable) {
        return !traversable.isEmpty();
    }
}
