package scala.collection.mutable;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/DoubleLinkedListLike$$anonfun$apply$1.class */
public final class DoubleLinkedListLike$$anonfun$apply$1 extends AbstractFunction1<This, A> implements Serializable {
    public static final long serialVersionUID = 0;

    public DoubleLinkedListLike$$anonfun$apply$1(DoubleLinkedListLike<A, This> doubleLinkedListLike) {
    }

    public final Object apply(Seq seq) {
        return ((LinkedListLike) seq).elem();
    }
}
