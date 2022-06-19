package scala.concurrent;

import scala.Serializable;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Future$$anonfun$sequence$1$$anonfun$apply$10$$anonfun$apply$11.class */
public final class Future$$anonfun$sequence$1$$anonfun$apply$10$$anonfun$apply$11 extends AbstractFunction1<A, Builder<A, M>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Builder r$1;

    public Future$$anonfun$sequence$1$$anonfun$apply$10$$anonfun$apply$11(Future$$anonfun$sequence$1$$anonfun$apply$10 future$$anonfun$sequence$1$$anonfun$apply$10, Builder builder) {
        this.r$1 = builder;
    }

    @Override // scala.Function1
    public final Builder<A, M> apply(A a) {
        return this.r$1.$plus$eq((Builder) a);
    }
}
