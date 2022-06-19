package scala.collection;

import scala.Function2;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.ObjectRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableOnce$$anonfun$foldLeft$1.class */
public final class TraversableOnce$$anonfun$foldLeft$1 extends AbstractFunction1<A, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function2 op$1;
    private final ObjectRef result$2;

    public TraversableOnce$$anonfun$foldLeft$1(TraversableOnce traversableOnce, ObjectRef objectRef, Function2 function2) {
        this.result$2 = objectRef;
        this.op$1 = function2;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [T, java.lang.Object] */
    @Override // scala.Function1
    public final void apply(A a) {
        ObjectRef objectRef = this.result$2;
        objectRef.elem = this.op$1.apply(objectRef.elem, a);
    }
}
