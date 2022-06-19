package scala.collection.mutable;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/LinkedListLike$$anonfun$update$1.class */
public final class LinkedListLike$$anonfun$update$1 extends AbstractFunction1<This, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Object x$3;

    public LinkedListLike$$anonfun$update$1(LinkedListLike linkedListLike, LinkedListLike<A, This> linkedListLike2) {
        this.x$3 = linkedListLike2;
    }

    @Override // scala.Function1
    public final /* bridge */ /* synthetic */ Object apply(Object obj) {
        apply((Seq) obj);
        return BoxedUnit.UNIT;
    }

    public final void apply(Seq seq) {
        ((LinkedListLike) seq).elem_$eq(this.x$3);
    }
}
