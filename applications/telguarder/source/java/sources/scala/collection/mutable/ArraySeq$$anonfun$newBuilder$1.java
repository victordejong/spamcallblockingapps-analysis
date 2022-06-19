package scala.collection.mutable;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/ArraySeq$$anonfun$newBuilder$1.class */
public final class ArraySeq$$anonfun$newBuilder$1 extends AbstractFunction1<ArrayBuffer<A>, ArraySeq<A>> implements Serializable {
    public static final long serialVersionUID = 0;

    public final ArraySeq<A> apply(ArrayBuffer<A> arrayBuffer) {
        ArraySeq<A> arraySeq = new ArraySeq<>(arrayBuffer.length());
        arrayBuffer.copyToArray(arraySeq.array(), 0);
        return arraySeq;
    }
}
