package scala.collection;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableLike$$anonfun$inits$1.class */
public final class TraversableLike$$anonfun$inits$1 extends AbstractFunction1<Traversable<A>, Traversable<A>> implements Serializable {
    public static final long serialVersionUID = 0;

    public TraversableLike$$anonfun$inits$1(TraversableLike<A, Repr> traversableLike) {
    }

    public final Traversable<A> apply(Traversable<A> traversable) {
        return (Traversable) traversable.init();
    }
}
