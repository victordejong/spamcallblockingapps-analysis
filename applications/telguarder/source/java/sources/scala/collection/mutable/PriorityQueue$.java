package scala.collection.mutable;

import scala.Serializable;
import scala.collection.generic.CanBuildFrom;
import scala.collection.generic.OrderedTraversableFactory;
import scala.math.Ordering;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/PriorityQueue$.class */
public final class PriorityQueue$ extends OrderedTraversableFactory<PriorityQueue> implements Serializable {
    public static final PriorityQueue$ MODULE$ = null;

    static {
        new PriorityQueue$();
    }

    private PriorityQueue$() {
        MODULE$ = this;
    }

    private Object readResolve() {
        return MODULE$;
    }

    public <A> CanBuildFrom<PriorityQueue<?>, A, PriorityQueue<A>> canBuildFrom(Ordering<A> ordering) {
        return new OrderedTraversableFactory.GenericCanBuildFrom(this, ordering);
    }

    @Override // scala.collection.generic.GenericOrderedCompanion
    public <A> PriorityQueue<A> newBuilder(Ordering<A> ordering) {
        return new PriorityQueue<>(ordering);
    }
}
