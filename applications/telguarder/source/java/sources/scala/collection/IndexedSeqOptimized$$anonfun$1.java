package scala.collection;

import scala.Function1;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/IndexedSeqOptimized$$anonfun$1.class */
public final class IndexedSeqOptimized$$anonfun$1 extends AbstractFunction1<A, Object> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Function1 p$1;

    /* JADX WARN: Multi-variable type inference failed */
    public IndexedSeqOptimized$$anonfun$1(IndexedSeqOptimized indexedSeqOptimized, IndexedSeqOptimized<A, Repr> indexedSeqOptimized2) {
        this.p$1 = indexedSeqOptimized2;
    }

    @Override // scala.Function1
    public final boolean apply(A a) {
        return !BoxesRunTime.unboxToBoolean(this.p$1.apply(a));
    }
}
