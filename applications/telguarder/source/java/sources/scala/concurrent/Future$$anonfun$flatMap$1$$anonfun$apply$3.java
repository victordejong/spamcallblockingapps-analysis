package scala.concurrent;

import java.util.Objects;
import scala.Serializable;
import scala.concurrent.impl.Promise;
import scala.runtime.AbstractFunction1;
import scala.util.Try;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Future$$anonfun$flatMap$1$$anonfun$apply$3.class */
public final class Future$$anonfun$flatMap$1$$anonfun$apply$3 extends AbstractFunction1<Try<S>, Promise.DefaultPromise<S>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Future$$anonfun$flatMap$1 $outer;

    public Future$$anonfun$flatMap$1$$anonfun$apply$3(Future$$anonfun$flatMap$1 future$$anonfun$flatMap$1) {
        Objects.requireNonNull(future$$anonfun$flatMap$1);
        this.$outer = future$$anonfun$flatMap$1;
    }

    public final Promise.DefaultPromise<S> apply(Try<S> r4) {
        return (Promise.DefaultPromise) this.$outer.p$4.complete(r4);
    }
}
