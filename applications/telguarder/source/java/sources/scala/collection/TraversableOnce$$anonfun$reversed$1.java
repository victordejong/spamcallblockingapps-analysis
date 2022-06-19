package scala.collection;

import scala.Serializable;
import scala.collection.immutable.List;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.ObjectRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/TraversableOnce$$anonfun$reversed$1.class */
public final class TraversableOnce$$anonfun$reversed$1 extends AbstractFunction1<A, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final ObjectRef elems$1;

    /* JADX WARN: Multi-variable type inference failed */
    public TraversableOnce$$anonfun$reversed$1(TraversableOnce traversableOnce, TraversableOnce<A> traversableOnce2) {
        this.elems$1 = traversableOnce2;
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [T, scala.collection.immutable.List] */
    @Override // scala.Function1
    public final void apply(A a) {
        ObjectRef objectRef = this.elems$1;
        objectRef.elem = ((List) objectRef.elem).$colon$colon(a);
    }
}
