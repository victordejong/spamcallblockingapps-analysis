package scala.collection;

import scala.Function2;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BooleanRef;
import scala.runtime.BoxedUnit;
import scala.runtime.ObjectRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableOnce$$anonfun$reduceLeft$1.class */
public final class TraversableOnce$$anonfun$reduceLeft$1 extends AbstractFunction1<A, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final ObjectRef acc$1;
    private final BooleanRef first$1;
    private final Function2 op$3;

    public TraversableOnce$$anonfun$reduceLeft$1(TraversableOnce traversableOnce, BooleanRef booleanRef, ObjectRef objectRef, Function2 function2) {
        this.first$1 = booleanRef;
        this.acc$1 = objectRef;
        this.op$3 = function2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v2, types: [T, java.lang.Object] */
    @Override // scala.Function1
    public final void apply(A a) {
        if (this.first$1.elem) {
            this.acc$1.elem = a;
            this.first$1.elem = false;
            return;
        }
        ObjectRef objectRef = this.acc$1;
        objectRef.elem = this.op$3.apply(objectRef.elem, a);
    }
}
