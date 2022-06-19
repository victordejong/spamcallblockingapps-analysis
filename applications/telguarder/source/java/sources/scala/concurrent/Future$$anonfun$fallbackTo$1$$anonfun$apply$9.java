package scala.concurrent;

import java.util.Objects;
import scala.Serializable;
import scala.runtime.AbstractFunction1;
import scala.util.Failure;
import scala.util.Success;
import scala.util.Try;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Future$$anonfun$fallbackTo$1$$anonfun$apply$9.class */
public final class Future$$anonfun$fallbackTo$1$$anonfun$apply$9 extends AbstractFunction1<Try<U>, Promise<U>> implements Serializable {
    public static final long serialVersionUID = 0;
    private final /* synthetic */ Future$$anonfun$fallbackTo$1 $outer;
    private final Failure x4$1;

    public Future$$anonfun$fallbackTo$1$$anonfun$apply$9(Future$$anonfun$fallbackTo$1 future$$anonfun$fallbackTo$1, Failure failure) {
        Objects.requireNonNull(future$$anonfun$fallbackTo$1);
        this.$outer = future$$anonfun$fallbackTo$1;
        this.x4$1 = failure;
    }

    public final Promise<U> apply(Try<U> r4) {
        Promise promise;
        if (r4 instanceof Success) {
            promise = this.$outer.p$8.complete((Success) r4);
        } else {
            promise = this.$outer.p$8.complete(this.x4$1);
        }
        return promise;
    }
}
