package scala.collection.parallel.mutable;

import scala.Serializable;
import scala.collection.mutable.UnrolledBuffer;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParHashSetCombiner$$anon$2$$anonfun$1.class */
public final class ParHashSetCombiner$$anon$2$$anonfun$1 extends AbstractFunction1<UnrolledBuffer<Object>, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public ParHashSetCombiner$$anon$2$$anonfun$1(ParHashSetCombiner$$anon$2 parHashSetCombiner$$anon$2) {
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((UnrolledBuffer) obj));
    }

    public final boolean apply(UnrolledBuffer<Object> unrolledBuffer) {
        return unrolledBuffer != null;
    }
}
