package scala.collection.mutable;

import scala.Serializable;
import scala.collection.mutable.UnrolledBuffer;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.ObjectRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/UnrolledBuffer$Unrolled$$anonfun$insertAll$1.class */
public final class UnrolledBuffer$Unrolled$$anonfun$insertAll$1 extends AbstractFunction1<T, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final ObjectRef curr$1;

    /* JADX WARN: Multi-variable type inference failed */
    public UnrolledBuffer$Unrolled$$anonfun$insertAll$1(UnrolledBuffer.Unrolled unrolled, UnrolledBuffer.Unrolled<T> unrolled2) {
        this.curr$1 = unrolled2;
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [T, scala.collection.mutable.UnrolledBuffer$Unrolled] */
    @Override // scala.Function1
    public final void apply(T t) {
        ObjectRef objectRef = this.curr$1;
        objectRef.elem = ((UnrolledBuffer.Unrolled) objectRef.elem).append(t);
    }
}
