package scala.concurrent;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import scala.Function1;
import scala.concurrent.impl.ExecutionContextImpl;
import scala.concurrent.impl.ExecutionContextImpl$;
import scala.concurrent.impl.ExecutionContextImpl$$anon$1;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/ExecutionContext$.class */
public final class ExecutionContext$ {
    public static final ExecutionContext$ MODULE$ = null;

    static {
        new ExecutionContext$();
    }

    private ExecutionContext$() {
        MODULE$ = this;
    }

    public Function1<Throwable, BoxedUnit> defaultReporter() {
        return new ExecutionContext$$anonfun$defaultReporter$1();
    }

    public ExecutionContextExecutor fromExecutor(Executor executor) {
        return fromExecutor(executor, defaultReporter());
    }

    public ExecutionContextExecutor fromExecutor(Executor executor, Function1<Throwable, BoxedUnit> function1) {
        ExecutionContextImpl$ executionContextImpl$ = ExecutionContextImpl$.MODULE$;
        return new ExecutionContextImpl(executor, function1);
    }

    public ExecutionContextExecutorService fromExecutorService(ExecutorService executorService) {
        return fromExecutorService(executorService, defaultReporter());
    }

    public ExecutionContextExecutorService fromExecutorService(ExecutorService executorService, Function1<Throwable, BoxedUnit> function1) {
        ExecutionContextImpl$ executionContextImpl$ = ExecutionContextImpl$.MODULE$;
        return new ExecutionContextImpl$$anon$1(executorService, function1);
    }

    public ExecutionContextExecutor global() {
        return ExecutionContext$Implicits$.MODULE$.global();
    }
}
