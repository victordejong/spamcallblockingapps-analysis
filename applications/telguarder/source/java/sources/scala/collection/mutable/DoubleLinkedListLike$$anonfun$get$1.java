package scala.collection.mutable;

import scala.Serializable;
import scala.Some;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/DoubleLinkedListLike$$anonfun$get$1.class */
public final class DoubleLinkedListLike$$anonfun$get$1 extends AbstractFunction1<This, Some<A>> implements Serializable {
    public static final long serialVersionUID = 0;

    public DoubleLinkedListLike$$anonfun$get$1(DoubleLinkedListLike<A, This> doubleLinkedListLike) {
    }

    public final Some apply(Seq seq) {
        return new Some(((LinkedListLike) seq).elem());
    }
}
