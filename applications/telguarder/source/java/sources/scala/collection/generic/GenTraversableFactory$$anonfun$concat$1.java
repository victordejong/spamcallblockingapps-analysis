package scala.collection.generic;

import scala.Serializable;
import scala.collection.IndexedSeq;
import scala.collection.Traversable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/GenTraversableFactory$$anonfun$concat$1.class */
public final class GenTraversableFactory$$anonfun$concat$1 extends AbstractFunction1<Traversable<A>, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public GenTraversableFactory$$anonfun$concat$1(GenTraversableFactory<CC> genTraversableFactory) {
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((Traversable) obj));
    }

    public final boolean apply(Traversable<A> traversable) {
        return traversable instanceof IndexedSeq;
    }
}
