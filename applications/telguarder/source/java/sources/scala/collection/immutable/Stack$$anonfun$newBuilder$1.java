package scala.collection.immutable;

import scala.Serializable;
import scala.collection.mutable.ArrayBuffer;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/immutable/Stack$$anonfun$newBuilder$1.class */
public final class Stack$$anonfun$newBuilder$1 extends AbstractFunction1<ArrayBuffer<A>, Stack<A>> implements Serializable {
    public static final long serialVersionUID = 0;

    public final Stack<A> apply(ArrayBuffer<A> arrayBuffer) {
        return new Stack<>(arrayBuffer.toList());
    }
}
