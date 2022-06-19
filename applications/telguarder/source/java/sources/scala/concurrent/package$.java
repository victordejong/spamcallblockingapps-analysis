package scala.concurrent;

import scala.Function0;
import scala.concurrent.impl.Future;
import scala.concurrent.impl.Future$;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/package$.class */
public final class package$ {
    public static final package$ MODULE$ = null;

    static {
        new package$();
    }

    private package$() {
        MODULE$ = this;
    }

    public <T> T blocking(Function0<T> function0) throws Exception {
        return (T) BlockContext$.MODULE$.current().blockOn(function0, AwaitPermission$.MODULE$);
    }

    public <T> Future<T> future(Function0<T> function0, ExecutionContext executionContext) {
        Future$ future$ = Future$.MODULE$;
        Future$ future$2 = Future$.MODULE$;
        Future.PromiseCompletingRunnable promiseCompletingRunnable = new Future.PromiseCompletingRunnable(function0);
        executionContext.prepare().execute(promiseCompletingRunnable);
        return promiseCompletingRunnable.promise().future();
    }

    public <T> Promise<T> promise() {
        return Promise$.MODULE$.apply();
    }
}
