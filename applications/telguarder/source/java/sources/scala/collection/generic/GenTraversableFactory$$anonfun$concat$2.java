package scala.collection.generic;

import scala.Serializable;
import scala.collection.Traversable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/generic/GenTraversableFactory$$anonfun$concat$2.class */
public final class GenTraversableFactory$$anonfun$concat$2 extends AbstractFunction1<Traversable<A>, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public GenTraversableFactory$$anonfun$concat$2(GenTraversableFactory<CC> genTraversableFactory) {
    }

    public final int apply(Traversable<A> traversable) {
        return traversable.size();
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToInteger(apply((Traversable) obj));
    }
}
