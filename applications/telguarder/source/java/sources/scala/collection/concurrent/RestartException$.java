package scala.collection.concurrent;

import scala.util.control.ControlThrowable;
import scala.util.control.NoStackTrace;
/* loaded from: classes3-dex2jar.jar:scala/collection/concurrent/RestartException$.class */
public final class RestartException$ extends Throwable implements ControlThrowable {
    public static final RestartException$ MODULE$ = null;

    static {
        new RestartException$();
    }

    private RestartException$() {
        MODULE$ = this;
        NoStackTrace.Cclass.$init$(this);
    }

    private Object readResolve() {
        return MODULE$;
    }

    @Override // java.lang.Throwable, scala.util.control.NoStackTrace
    public Throwable fillInStackTrace() {
        return NoStackTrace.Cclass.fillInStackTrace(this);
    }

    @Override // scala.util.control.NoStackTrace
    public /* synthetic */ Throwable scala$util$control$NoStackTrace$$super$fillInStackTrace() {
        return super.fillInStackTrace();
    }
}
