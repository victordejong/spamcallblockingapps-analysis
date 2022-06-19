package scala.collection;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.ObjectRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableLike$$anonfun$last$1.class */
public final class TraversableLike$$anonfun$last$1 extends AbstractFunction1<A, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final ObjectRef lst$1;

    /* JADX WARN: Multi-variable type inference failed */
    public TraversableLike$$anonfun$last$1(TraversableLike traversableLike, TraversableLike<A, Repr> traversableLike2) {
        this.lst$1 = traversableLike2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // scala.Function1
    public final void apply(A a) {
        this.lst$1.elem = a;
    }
}
