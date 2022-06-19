package scala.concurrent.impl;

import scala.Function0;
import scala.concurrent.ExecutionContext;
import scala.concurrent.Future;
import scala.concurrent.impl.Future;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/impl/Future$.class */
public final class Future$ {
    public static final Future$ MODULE$ = null;

    static {
        new Future$();
    }

    private Future$() {
        MODULE$ = this;
    }

    public <T> Future<T> apply(Function0<T> function0, ExecutionContext executionContext) {
        Future.PromiseCompletingRunnable promiseCompletingRunnable = new Future.PromiseCompletingRunnable(function0);
        executionContext.prepare().execute(promiseCompletingRunnable);
        return promiseCompletingRunnable.promise().future();
    }
}
