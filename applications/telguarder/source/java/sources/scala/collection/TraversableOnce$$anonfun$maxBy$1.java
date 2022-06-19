package scala.collection;

import scala.Function1;
import scala.Serializable;
import scala.math.Ordering;
import scala.runtime.AbstractFunction1;
import scala.runtime.BooleanRef;
import scala.runtime.BoxedUnit;
import scala.runtime.ObjectRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableOnce$$anonfun$maxBy$1.class */
public final class TraversableOnce$$anonfun$maxBy$1 extends AbstractFunction1<A, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Ordering cmp$3;
    private final Function1 f$1;
    private final BooleanRef first$2;
    private final ObjectRef maxElem$1;
    private final ObjectRef maxF$1;

    public TraversableOnce$$anonfun$maxBy$1(TraversableOnce traversableOnce, ObjectRef objectRef, ObjectRef objectRef2, BooleanRef booleanRef, Function1 function1, Ordering ordering) {
        this.maxF$1 = objectRef;
        this.maxElem$1 = objectRef2;
        this.first$2 = booleanRef;
        this.f$1 = function1;
        this.cmp$3 = ordering;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [T, java.lang.Object] */
    @Override // scala.Function1
    public final void apply(A a) {
        ?? apply = this.f$1.apply(a);
        if (this.first$2.elem || this.cmp$3.mo37gt(apply, this.maxF$1.elem)) {
            this.maxElem$1.elem = a;
            this.maxF$1.elem = apply;
            this.first$2.elem = false;
        }
    }
}
