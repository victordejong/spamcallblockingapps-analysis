package scala.concurrent;

import java.util.Objects;
import scala.Serializable;
import scala.collection.mutable.Builder;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Future$$anonfun$sequence$1$$anonfun$apply$10.class */
public final class Future$$anonfun$sequence$1$$anonfun$apply$10 extends AbstractFunction1<Builder<A, M>, Future<Builder<A, M>>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Future$$anonfun$sequence$1 $outer;
    private final Future fa$1;

    public Future$$anonfun$sequence$1$$anonfun$apply$10(Future$$anonfun$sequence$1 future$$anonfun$sequence$1, Future future) {
        Objects.requireNonNull(future$$anonfun$sequence$1);
        this.$outer = future$$anonfun$sequence$1;
        this.fa$1 = future;
    }

    public final Future<Builder<A, M>> apply(Builder<A, M> builder) {
        return this.fa$1.map(new Future$$anonfun$sequence$1$$anonfun$apply$10$$anonfun$apply$11(this, builder), this.$outer.executor$1);
    }
}
