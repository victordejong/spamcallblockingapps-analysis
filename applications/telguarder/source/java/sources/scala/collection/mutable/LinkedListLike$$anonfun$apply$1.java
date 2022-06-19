package scala.collection.mutable;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/LinkedListLike$$anonfun$apply$1.class */
public final class LinkedListLike$$anonfun$apply$1 extends AbstractFunction1<This, A> implements Serializable {
    public static final long serialVersionUID = 0;

    public LinkedListLike$$anonfun$apply$1(LinkedListLike<A, This> linkedListLike) {
    }

    public final Object apply(Seq seq) {
        return ((LinkedListLike) seq).elem();
    }
}
