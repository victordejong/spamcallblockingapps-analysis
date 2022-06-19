package scala.concurrent.impl;

import java.util.concurrent.ExecutionException;
import scala.runtime.NonLocalReturnControl;
import scala.util.Failure;
import scala.util.Success;
import scala.util.Try;
import scala.util.control.ControlThrowable;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/impl/Promise$.class */
public final class Promise$ {
    public static final Promise$ MODULE$ = null;

    static {
        new Promise$();
    }

    private Promise$() {
        MODULE$ = this;
    }

    private <T> Try<T> resolver(Throwable th) {
        return th instanceof NonLocalReturnControl ? new Success(((NonLocalReturnControl) th).value()) : th instanceof ControlThrowable ? new Failure(new ExecutionException("Boxed ControlThrowable", (Throwable) ((ControlThrowable) th))) : th instanceof InterruptedException ? new Failure(new ExecutionException("Boxed InterruptedException", (InterruptedException) th)) : th instanceof Error ? new Failure(new ExecutionException("Boxed Error", (Error) th)) : new Failure(th);
    }

    public <T> Try<T> scala$concurrent$impl$Promise$$resolveTry(Try<T> r4) {
        Try<T> r5 = r4;
        if (r4 instanceof Failure) {
            r5 = resolver(((Failure) r4).exception());
        }
        return r5;
    }
}
