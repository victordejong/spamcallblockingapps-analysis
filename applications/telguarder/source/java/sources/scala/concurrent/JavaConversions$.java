package scala.concurrent;

import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/JavaConversions$.class */
public final class JavaConversions$ {
    public static final JavaConversions$ MODULE$ = null;

    static {
        new JavaConversions$();
    }

    private JavaConversions$() {
        MODULE$ = this;
    }

    public ExecutionContextExecutor asExecutionContext(Executor executor) {
        return ExecutionContext$.MODULE$.fromExecutor(executor);
    }

    public ExecutionContextExecutorService asExecutionContext(ExecutorService executorService) {
        return ExecutionContext$.MODULE$.fromExecutorService(executorService);
    }
}
