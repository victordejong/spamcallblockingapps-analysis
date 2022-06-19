package scala.concurrent;

import java.util.Objects;
import scala.Serializable;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Future$$anonfun$traverse$1$$anonfun$apply$12.class */
public final class Future$$anonfun$traverse$1$$anonfun$apply$12 extends AbstractFunction1<Builder<B, M>, Future<Builder<B, M>>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Future$$anonfun$traverse$1 $outer;
    private final Future fb$1;

    public Future$$anonfun$traverse$1$$anonfun$apply$12(Future$$anonfun$traverse$1 future$$anonfun$traverse$1, Future future) {
        Objects.requireNonNull(future$$anonfun$traverse$1);
        this.$outer = future$$anonfun$traverse$1;
        this.fb$1 = future;
    }

    public final Future<Builder<B, M>> apply(Builder<B, M> builder) {
        return this.fb$1.map(new Future$$anonfun$traverse$1$$anonfun$apply$12$$anonfun$apply$13(this, builder), this.$outer.executor$4);
    }
}
