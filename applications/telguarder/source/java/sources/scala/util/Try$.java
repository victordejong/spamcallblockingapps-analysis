package scala.util;

import scala.Function0;
import scala.Option;
import scala.util.control.NonFatal$;
/* loaded from: classes3-dex2jar.jar:scala/util/Try$.class */
public final class Try$ {
    public static final Try$ MODULE$ = null;

    static {
        new Try$();
    }

    private Try$() {
        MODULE$ = this;
    }

    public <T> Try<T> apply(Function0<T> function0) {
        Success success;
        try {
            success = new Success(function0.apply());
        } catch (Throwable th) {
            Option<Throwable> unapply = NonFatal$.MODULE$.unapply(th);
            if (unapply.isEmpty()) {
                throw th;
            }
            success = new Failure(unapply.get());
        }
        return success;
    }
}
