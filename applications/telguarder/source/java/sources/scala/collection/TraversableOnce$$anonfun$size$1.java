package scala.collection;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.IntRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableOnce$$anonfun$size$1.class */
public final class TraversableOnce$$anonfun$size$1 extends AbstractFunction1<A, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final IntRef result$1;

    /* JADX WARN: Multi-variable type inference failed */
    public TraversableOnce$$anonfun$size$1(TraversableOnce traversableOnce, TraversableOnce<A> traversableOnce2) {
        this.result$1 = traversableOnce2;
    }

    @Override // scala.Function1
    public final void apply(A a) {
        this.result$1.elem++;
    }
}
