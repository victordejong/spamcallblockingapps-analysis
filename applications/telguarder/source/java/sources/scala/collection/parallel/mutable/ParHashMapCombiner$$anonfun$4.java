package scala.collection.parallel.mutable;

import scala.Serializable;
import scala.collection.mutable.DefaultEntry;
import scala.collection.mutable.UnrolledBuffer;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/mutable/ParHashMapCombiner$$anonfun$4.class */
public final class ParHashMapCombiner$$anonfun$4 extends AbstractFunction1<UnrolledBuffer<DefaultEntry<K, V>>, UnrolledBuffer.Unrolled<DefaultEntry<K, V>>> implements Serializable {
    public static final long serialVersionUID = 0;

    public ParHashMapCombiner$$anonfun$4(ParHashMapCombiner<K, V> parHashMapCombiner) {
    }

    public final UnrolledBuffer.Unrolled<DefaultEntry<K, V>> apply(UnrolledBuffer<DefaultEntry<K, V>> unrolledBuffer) {
        return unrolledBuffer != 0 ? unrolledBuffer.headPtr() : null;
    }
}
