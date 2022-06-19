package scala.collection.parallel;

import scala.Serializable;
import scala.runtime.AbstractFunction2;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParSeqLike$$anonfun$patch$2.class */
public final class ParSeqLike$$anonfun$patch$2 extends AbstractFunction2<Combiner<U, That>, Combiner<U, That>, Combiner<U, That>> implements Serializable {
    public static final long serialVersionUID = 0;

    public ParSeqLike$$anonfun$patch$2(ParSeqLike<T, Repr, Sequential> parSeqLike) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Combiner<U, That> apply(Combiner<U, That> combiner, Combiner<U, That> combiner2) {
        return combiner.combine(combiner2);
    }
}
