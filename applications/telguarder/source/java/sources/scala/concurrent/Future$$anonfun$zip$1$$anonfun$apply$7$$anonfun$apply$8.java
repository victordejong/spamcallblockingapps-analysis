package scala.concurrent;

import java.util.Objects;
import scala.Serializable;
import scala.Tuple2;
import scala.runtime.AbstractFunction1;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Future$$anonfun$zip$1$$anonfun$apply$7$$anonfun$apply$8.class */
public final class Future$$anonfun$zip$1$$anonfun$apply$7$$anonfun$apply$8 extends AbstractFunction1<U, Tuple2<T, U>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Future$$anonfun$zip$1$$anonfun$apply$7 $outer;

    public Future$$anonfun$zip$1$$anonfun$apply$7$$anonfun$apply$8(Future$$anonfun$zip$1$$anonfun$apply$7 future$$anonfun$zip$1$$anonfun$apply$7) {
        Objects.requireNonNull(future$$anonfun$zip$1$$anonfun$apply$7);
        this.$outer = future$$anonfun$zip$1$$anonfun$apply$7;
    }

    @Override // scala.Function1
    public final Tuple2<T, U> apply(U u) {
        return new Tuple2<>(this.$outer.x2$2.value(), u);
    }
}
