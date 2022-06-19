package scala.collection;

import scala.Serializable;
import scala.collection.parallel.Combiner;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/collection/Parallelizable$$anonfun$par$1.class */
public final class Parallelizable$$anonfun$par$1 extends AbstractFunction1<A, Combiner<A, ParRepr>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Combiner cb$1;

    /* JADX WARN: Multi-variable type inference failed */
    public Parallelizable$$anonfun$par$1(Parallelizable parallelizable, Parallelizable<A, ParRepr> parallelizable2) {
        this.cb$1 = parallelizable2;
    }

    @Override // scala.Function1
    public final Combiner<A, ParRepr> apply(A a) {
        return (Combiner) this.cb$1.$plus$eq((Combiner) a);
    }
}
