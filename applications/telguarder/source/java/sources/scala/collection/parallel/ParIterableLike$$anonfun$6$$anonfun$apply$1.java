package scala.collection.parallel;

import scala.Serializable;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/parallel/ParIterableLike$$anonfun$6$$anonfun$apply$1.class */
public final class ParIterableLike$$anonfun$6$$anonfun$apply$1 extends AbstractFunction1<U, Combiner<U, That>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Combiner cb$1;

    public ParIterableLike$$anonfun$6$$anonfun$apply$1(ParIterableLike$$anonfun$6 parIterableLike$$anonfun$6, Combiner combiner) {
        this.cb$1 = combiner;
    }

    @Override // scala.Function1
    public final Combiner<U, That> apply(U u) {
        return (Combiner) this.cb$1.$plus$eq((Combiner) u);
    }
}
