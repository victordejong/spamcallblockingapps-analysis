package scala.collection.parallel;

import scala.Serializable;
import scala.runtime.AbstractFunction2;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$$anonfun$3.class */
public final class ParIterableLike$$anonfun$3 extends AbstractFunction2<Combiner<U, That>, Combiner<U, That>, Combiner<U, That>> implements Serializable {
    public static final long serialVersionUID = 0;

    public ParIterableLike$$anonfun$3(ParIterableLike<T, Repr, Sequential> parIterableLike) {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Combiner<U, That> apply(Combiner<U, That> combiner, Combiner<U, That> combiner2) {
        return combiner.combine(combiner2);
    }
}
