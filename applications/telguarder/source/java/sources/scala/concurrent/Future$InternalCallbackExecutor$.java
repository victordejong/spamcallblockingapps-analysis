package scala.concurrent;

import scala.collection.immutable.List;
import scala.concurrent.BatchingExecutor;
import scala.concurrent.ExecutionContext;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/Future$InternalCallbackExecutor$.class */
public class Future$InternalCallbackExecutor$ implements ExecutionContext, BatchingExecutor {
    public static final Future$InternalCallbackExecutor$ MODULE$ = null;
    private final ThreadLocal<List<Runnable>> scala$concurrent$BatchingExecutor$$_tasksLocal;

    static {
        new Future$InternalCallbackExecutor$();
    }

    public Future$InternalCallbackExecutor$() {
        MODULE$ = this;
        ExecutionContext.Cclass.$init$(this);
        mo63x7d29554c(new ThreadLocal());
    }

    @Override // scala.concurrent.BatchingExecutor
    public boolean batchable(Runnable runnable) {
        return BatchingExecutor.Cclass.batchable(this, runnable);
    }

    @Override // scala.concurrent.ExecutionContext, scala.concurrent.BatchingExecutor, java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        BatchingExecutor.Cclass.execute(this, runnable);
    }

    @Override // scala.concurrent.ExecutionContext
    public ExecutionContext prepare() {
        return ExecutionContext.Cclass.prepare(this);
    }

    @Override // scala.concurrent.ExecutionContext
    public void reportFailure(Throwable th) {
        throw new IllegalStateException("problem in scala.concurrent internal callback", th);
    }

    @Override // scala.concurrent.BatchingExecutor
    public ThreadLocal<List<Runnable>> scala$concurrent$BatchingExecutor$$_tasksLocal() {
        return this.scala$concurrent$BatchingExecutor$$_tasksLocal;
    }

    @Override // scala.concurrent.BatchingExecutor
    /* renamed from: scala$concurrent$BatchingExecutor$_setter_$scala$concurrent$BatchingExecutor$$_tasksLocal_$eq */
    public void mo63x7d29554c(ThreadLocal threadLocal) {
        this.scala$concurrent$BatchingExecutor$$_tasksLocal = threadLocal;
    }

    @Override // scala.concurrent.BatchingExecutor
    public void unbatchedExecute(Runnable runnable) {
        runnable.run();
    }
}
