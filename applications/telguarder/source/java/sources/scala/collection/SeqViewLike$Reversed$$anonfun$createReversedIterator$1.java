package scala.collection;

import scala.Serializable;
import scala.collection.SeqViewLike;
import scala.collection.immutable.List;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.ObjectRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/SeqViewLike$Reversed$$anonfun$createReversedIterator$1.class */
public final class SeqViewLike$Reversed$$anonfun$createReversedIterator$1 extends AbstractFunction1<A, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final ObjectRef lst$1;

    /* JADX WARN: Multi-variable type inference failed */
    public SeqViewLike$Reversed$$anonfun$createReversedIterator$1(SeqViewLike.Reversed reversed, SeqViewLike<A, Coll, This>.Reversed reversed2) {
        this.lst$1 = reversed2;
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [T, scala.collection.immutable.List] */
    @Override // scala.Function1
    public final void apply(A a) {
        ObjectRef objectRef = this.lst$1;
        objectRef.elem = ((List) objectRef.elem).$colon$colon(a);
    }
}
