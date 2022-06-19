package scala.concurrent;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction0;
import scala.runtime.Nothing$;
import scala.util.Failure;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Future$$anonfun$transform$1$$anonfun$apply$2.class */
public final class Future$$anonfun$transform$1$$anonfun$apply$2 extends AbstractFunction0<Nothing$> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Future$$anonfun$transform$1 $outer;
    private final Failure x3$1;

    public Future$$anonfun$transform$1$$anonfun$apply$2(Future$$anonfun$transform$1 future$$anonfun$transform$1, Failure failure) {
        Objects.requireNonNull(future$$anonfun$transform$1);
        this.$outer = future$$anonfun$transform$1;
        this.x3$1 = failure;
    }

    @Override // scala.Function0
    public final Nothing$ apply() {
        throw ((Throwable) this.$outer.f$2.apply(this.x3$1.exception()));
    }
}
