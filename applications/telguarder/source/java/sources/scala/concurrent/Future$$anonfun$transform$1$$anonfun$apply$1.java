package scala.concurrent;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
import scala.util.Success;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Future$$anonfun$transform$1$$anonfun$apply$1.class */
public final class Future$$anonfun$transform$1$$anonfun$apply$1 extends AbstractFunction0<S> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Future$$anonfun$transform$1 $outer;
    private final Success x2$1;

    public Future$$anonfun$transform$1$$anonfun$apply$1(Future$$anonfun$transform$1 future$$anonfun$transform$1, Success success) {
        Objects.requireNonNull(future$$anonfun$transform$1);
        this.$outer = future$$anonfun$transform$1;
        this.x2$1 = success;
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [S, java.lang.Object] */
    @Override // scala.Function0
    public final S apply() {
        return this.$outer.s$1.apply(this.x2$1.value());
    }
}
