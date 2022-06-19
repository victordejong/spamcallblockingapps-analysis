package scala.collection.parallel.immutable;

import scala.Serializable;
import scala.Tuple2;
import scala.collection.mutable.UnrolledBuffer;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxesRunTime;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/HashMapCombiner$$anonfun$1.class */
public final class HashMapCombiner$$anonfun$1 extends AbstractFunction1<UnrolledBuffer<Tuple2<K, V>>, Object> implements Serializable {
    public static final long serialVersionUID = 0;

    public HashMapCombiner$$anonfun$1(HashMapCombiner<K, V> hashMapCombiner) {
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        return BoxesRunTime.boxToBoolean(apply((UnrolledBuffer) obj));
    }

    public final boolean apply(UnrolledBuffer<Tuple2<K, V>> unrolledBuffer) {
        return unrolledBuffer != 0;
    }
}
