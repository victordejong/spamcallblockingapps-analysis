package scala.concurrent;

import scala.Serializable;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Future$$anonfun$traverse$1$$anonfun$apply$12$$anonfun$apply$13.class */
public final class Future$$anonfun$traverse$1$$anonfun$apply$12$$anonfun$apply$13 extends AbstractFunction1<B, Builder<B, M>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final Builder r$2;

    public Future$$anonfun$traverse$1$$anonfun$apply$12$$anonfun$apply$13(Future$$anonfun$traverse$1$$anonfun$apply$12 future$$anonfun$traverse$1$$anonfun$apply$12, Builder builder) {
        this.r$2 = builder;
    }

    @Override // scala.Function1
    public final Builder<B, M> apply(B b) {
        return this.r$2.$plus$eq((Builder) b);
    }
}
