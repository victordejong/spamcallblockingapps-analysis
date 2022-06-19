package scala.collection;

import scala.Serializable;
import scala.collection.immutable.List;
import scala.runtime.AbstractFunction1;
import scala.runtime.BoxedUnit;
import scala.runtime.ObjectRef;
/* loaded from: classes3-dex2jar.jar:scala/collection/SeqLike$$anonfun$reverse$1.class */
public final class SeqLike$$anonfun$reverse$1 extends AbstractFunction1<A, BoxedUnit> implements Serializable {
    public static final long serialVersionUID = 0;
    private final ObjectRef xs$1;

    /* JADX WARN: Multi-variable type inference failed */
    public SeqLike$$anonfun$reverse$1(SeqLike seqLike, SeqLike<A, Repr> seqLike2) {
        this.xs$1 = seqLike2;
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [T, scala.collection.immutable.List] */
    @Override // scala.Function1
    public final void apply(A a) {
        ObjectRef objectRef = this.xs$1;
        objectRef.elem = ((List) objectRef.elem).$colon$colon(a);
    }
}
