package scala.collection.parallel.immutable;

import scala.Serializable;
import scala.collection.mutable.UnrolledBuffer;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/immutable/HashSetCombiner$$anonfun$2.class */
public final class HashSetCombiner$$anonfun$2 extends AbstractFunction1<UnrolledBuffer<Object>, UnrolledBuffer.Unrolled<Object>> implements Serializable {
    public static final long serialVersionUID = 0;

    public HashSetCombiner$$anonfun$2(HashSetCombiner<T> hashSetCombiner) {
    }

    public final UnrolledBuffer.Unrolled<Object> apply(UnrolledBuffer<Object> unrolledBuffer) {
        return unrolledBuffer.headPtr();
    }
}
