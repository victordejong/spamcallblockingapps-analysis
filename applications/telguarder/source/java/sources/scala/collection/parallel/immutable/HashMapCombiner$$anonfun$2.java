package scala.collection.parallel.immutable;

import scala.Serializable;
import scala.Tuple2;
import scala.collection.mutable.UnrolledBuffer;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/HashMapCombiner$$anonfun$2.class */
public final class HashMapCombiner$$anonfun$2 extends AbstractFunction1<UnrolledBuffer<Tuple2<K, V>>, UnrolledBuffer.Unrolled<Tuple2<K, V>>> implements Serializable {
    public static final long serialVersionUID = 0;

    public HashMapCombiner$$anonfun$2(HashMapCombiner<K, V> hashMapCombiner) {
    }

    public final UnrolledBuffer.Unrolled<Tuple2<K, V>> apply(UnrolledBuffer<Tuple2<K, V>> unrolledBuffer) {
        return unrolledBuffer.headPtr();
    }
}
