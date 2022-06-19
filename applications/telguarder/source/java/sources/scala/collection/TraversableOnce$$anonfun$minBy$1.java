package scala.collection;

import scala.Function1;
import scala.Serializable;
import scala.math.Ordering;
import scala.runtime.AbstractFunction1;
import scala.runtime.BooleanRef;
import scala.runtime.BoxedUnit;
import scala.runtime.ObjectRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableOnce$$anonfun$minBy$1.class */
public final class TraversableOnce$$anonfun$minBy$1 extends AbstractFunction1<A, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Ordering cmp$4;
    private final Function1 f$2;
    private final BooleanRef first$3;
    private final ObjectRef minElem$1;
    private final ObjectRef minF$1;

    public TraversableOnce$$anonfun$minBy$1(TraversableOnce traversableOnce, ObjectRef objectRef, ObjectRef objectRef2, BooleanRef booleanRef, Function1 function1, Ordering ordering) {
        this.minF$1 = objectRef;
        this.minElem$1 = objectRef2;
        this.first$3 = booleanRef;
        this.f$2 = function1;
        this.cmp$4 = ordering;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
    @Override // scala.Function1
    public final void apply(A a) {
        ?? apply = this.f$2.apply(a);
        if (this.first$3.elem || this.cmp$4.mo36lt(apply, this.minF$1.elem)) {
            this.minElem$1.elem = a;
            this.minF$1.elem = apply;
            this.first$3.elem = false;
        }
    }
}
