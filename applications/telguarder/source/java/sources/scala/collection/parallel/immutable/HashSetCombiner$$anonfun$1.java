package scala.collection.parallel.immutable;

import scala.Serializable;
import scala.collection.mutable.UnrolledBuffer;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/HashSetCombiner$$anonfun$1.class */
public final class HashSetCombiner$$anonfun$1 extends AbstractFunction1<UnrolledBuffer<Object>, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public HashSetCombiner$$anonfun$1(HashSetCombiner<T> hashSetCombiner) {
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((UnrolledBuffer) obj));
    }

    public final boolean apply(UnrolledBuffer<Object> unrolledBuffer) {
        return unrolledBuffer != null;
    }
}
