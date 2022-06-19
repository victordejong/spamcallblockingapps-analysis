package scala.concurrent.impl;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import scala.Function1;
import scala.concurrent.ExecutionContext$;
import scala.runtime.BoxedUnit;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/impl/ExecutionContextImpl$.class */
public final class ExecutionContextImpl$ {
    public static final ExecutionContextImpl$ MODULE$ = null;

    static {
        new ExecutionContextImpl$();
    }

    private ExecutionContextImpl$() {
        MODULE$ = this;
    }

    public ExecutionContextImpl fromExecutor(Executor executor, Function1<Throwable, BoxedUnit> function1) {
        return new ExecutionContextImpl(executor, function1);
    }

    public Function1<Throwable, BoxedUnit> fromExecutor$default$2() {
        return ExecutionContext$.MODULE$.defaultReporter();
    }

    public ExecutionContextImpl fromExecutorService(ExecutorService executorService, Function1<Throwable, BoxedUnit> function1) {
        return new ExecutionContextImpl$$anon$1(executorService, function1);
    }

    public Function1<Throwable, BoxedUnit> fromExecutorService$default$2() {
        return ExecutionContext$.MODULE$.defaultReporter();
    }
}
