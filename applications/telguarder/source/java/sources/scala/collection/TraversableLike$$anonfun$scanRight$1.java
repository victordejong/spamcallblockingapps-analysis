package scala.collection;

import scala.Function2;
import scala.Serializable;
import scala.collection.immutable.List;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.ObjectRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableLike$$anonfun$scanRight$1.class */
public final class TraversableLike$$anonfun$scanRight$1 extends AbstractFunction1<A, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    public final ObjectRef acc$2;
    public final Function2 op$2;
    public final ObjectRef scanned$1;

    public TraversableLike$$anonfun$scanRight$1(TraversableLike traversableLike, ObjectRef objectRef, ObjectRef objectRef2, Function2 function2) {
        this.scanned$1 = objectRef;
        this.acc$2 = objectRef2;
        this.op$2 = function2;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [T, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v6, types: [T, scala.collection.immutable.List] */
    @Override // scala.Function1
    public final void apply(A a) {
        ObjectRef objectRef = this.acc$2;
        objectRef.elem = this.op$2.apply(a, objectRef.elem);
        ObjectRef objectRef2 = this.scanned$1;
        objectRef2.elem = ((List) objectRef2.elem).$colon$colon(this.acc$2.elem);
    }
}
