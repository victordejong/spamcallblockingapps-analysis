package scala.concurrent.impl;

import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import scala.Function1;
import scala.concurrent.ExecutionContextExecutorService;
/* loaded from: classes3-dex2jar.jar:scala/concurrent/impl/ExecutionContextImpl$$anon$1.class */
public final class ExecutionContextImpl$$anon$1 extends ExecutionContextImpl implements ExecutionContextExecutorService {
    public ExecutionContextImpl$$anon$1(ExecutorService executorService, Function1 function1) {
        super(executorService, function1);
    }

    private final ExecutorService asExecutorService() {
        return (ExecutorService) executor();
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean awaitTermination(long j, TimeUnit timeUnit) {
        return asExecutorService().awaitTermination(j, timeUnit);
    }

    @Override // scala.concurrent.impl.ExecutionContextImpl, scala.concurrent.ExecutionContext, scala.concurrent.BatchingExecutor, java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        executor().execute(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) {
        return asExecutorService().invokeAll(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) {
        return asExecutorService().invokeAll(collection, j, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> T invokeAny(Collection<? extends Callable<T>> collection) {
        return (T) asExecutorService().invokeAny(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> T invokeAny(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) {
        return (T) asExecutorService().invokeAny(collection, j, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        return asExecutorService().isShutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        return asExecutorService().isTerminated();
    }

    @Override // java.util.concurrent.ExecutorService
    public void shutdown() {
        asExecutorService().shutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public List<Runnable> shutdownNow() {
        return asExecutorService().shutdownNow();
    }

    @Override // java.util.concurrent.ExecutorService
    public Future<?> submit(Runnable runnable) {
        return asExecutorService().submit(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> Future<T> submit(Runnable runnable, T t) {
        return asExecutorService().submit(runnable, t);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> Future<T> submit(Callable<T> callable) {
        return asExecutorService().submit(callable);
    }
}
