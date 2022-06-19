package scala.concurrent;

import java.util.Objects;
import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
import scala.util.Success;
import scala.util.Try;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Future$$anonfun$zip$1$$anonfun$apply$7.class */
public final class Future$$anonfun$zip$1$$anonfun$apply$7 extends AbstractFunction1<Try<U>, Promise<Tuple2<T, U>>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Future$$anonfun$zip$1 $outer;
    public final Success x2$2;

    public Future$$anonfun$zip$1$$anonfun$apply$7(Future$$anonfun$zip$1 future$$anonfun$zip$1, Success success) {
        Objects.requireNonNull(future$$anonfun$zip$1);
        this.$outer = future$$anonfun$zip$1;
        this.x2$2 = success;
    }

    public final Promise<Tuple2<T, U>> apply(Try<U> r7) {
        return this.$outer.p$7.complete(r7.map(new Future$$anonfun$zip$1$$anonfun$apply$7$$anonfun$apply$8(this)));
    }
}
