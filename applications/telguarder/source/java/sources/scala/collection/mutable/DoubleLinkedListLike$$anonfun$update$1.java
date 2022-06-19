package scala.collection.mutable;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/collection/mutable/DoubleLinkedListLike$$anonfun$update$1.class */
public final class DoubleLinkedListLike$$anonfun$update$1 extends AbstractFunction1<This, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Object x$3;

    public DoubleLinkedListLike$$anonfun$update$1(DoubleLinkedListLike doubleLinkedListLike, DoubleLinkedListLike<A, This> doubleLinkedListLike2) {
        this.x$3 = doubleLinkedListLike2;
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
