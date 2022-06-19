package p193e.p1485h.p1486a.p1493c.p1510y0;

import java.util.Collection;
import java.util.List;
import java.util.Objects;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
/* renamed from: e.h.a.c.y0.h */
/* loaded from: classes-dex2jar.jar:e/h/a/c/y0/h.class */
public class ExecutorServiceC22889h implements ExecutorService {

    /* renamed from: a */
    public long f63540a = 0;

    /* renamed from: b */
    public ExecutorService f63541b = Executors.newSingleThreadExecutor();

    /* renamed from: e.h.a.c.y0.h$a */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/y0/h$a.class */
    public class RunnableC22890a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ Runnable f63542a;

        public RunnableC22890a(Runnable runnable) {
            ExecutorServiceC22889h.this = r4;
            this.f63542a = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            ExecutorServiceC22889h.this.f63540a = Thread.currentThread().getId();
            this.f63542a.run();
        }
    }

    /* renamed from: e.h.a.c.y0.h$b */
    /* loaded from: classes-dex2jar.jar:e/h/a/c/y0/h$b.class */
    public class CallableC22891b implements Callable<T> {

        /* renamed from: a */
        public final /* synthetic */ Callable f63544a;

        public CallableC22891b(Callable callable) {
            ExecutorServiceC22889h.this = r4;
            this.f63544a = callable;
        }

        /* JADX WARN: Type inference failed for: r0v4, types: [T, java.lang.Object] */
        @Override // java.util.concurrent.Callable
        public T call() throws Exception {
            ExecutorServiceC22889h.this.f63540a = Thread.currentThread().getId();
            return this.f63544a.call();
        }
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
        return this.f63541b.awaitTermination(j, timeUnit);
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        Objects.requireNonNull(runnable, "PostAsyncSafelyExecutor#execute: task can't ne null");
        if (Thread.currentThread().getId() == this.f63540a) {
            runnable.run();
        } else {
            this.f63541b.execute(new RunnableC22890a(runnable));
        }
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) throws UnsupportedOperationException {
        throw new UnsupportedOperationException("PostAsyncSafelyExecutor#invokeAll: This method is not supported");
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) throws UnsupportedOperationException {
        throw new UnsupportedOperationException("PostAsyncSafelyExecutor#invokeAll: This method is not supported");
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> T invokeAny(Collection<? extends Callable<T>> collection) throws UnsupportedOperationException {
        throw new UnsupportedOperationException("PostAsyncSafelyExecutor#invokeAny: This method is not supported");
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> T invokeAny(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) throws UnsupportedOperationException {
        throw new UnsupportedOperationException("PostAsyncSafelyExecutor#invokeAny: This method is not supported");
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        return this.f63541b.isShutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        return this.f63541b.isTerminated();
    }

    @Override // java.util.concurrent.ExecutorService
    public void shutdown() {
        this.f63541b.shutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public List<Runnable> shutdownNow() {
        return this.f63541b.shutdownNow();
    }

    @Override // java.util.concurrent.ExecutorService
    public Future<?> submit(Runnable runnable) {
        Objects.requireNonNull(runnable, "PostAsyncSafelyExecutor#submit: task can't ne null");
        FutureTask futureTask = new FutureTask(runnable, null);
        execute(futureTask);
        return futureTask;
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> Future<T> submit(Runnable runnable, T t) {
        Objects.requireNonNull(runnable, "PostAsyncSafelyExecutor#submit: task can't ne null");
        FutureTask futureTask = new FutureTask(runnable, t);
        execute(futureTask);
        return futureTask;
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> Future<T> submit(Callable<T> callable) {
        Future<T> future;
        Objects.requireNonNull(callable, "PostAsyncSafelyExecutor#submit: task can't ne null");
        if (Thread.currentThread().getId() == this.f63540a) {
            try {
                callable.call();
                future = null;
            } catch (Exception e) {
                e.printStackTrace();
                future = null;
            }
        } else {
            future = this.f63541b.submit(new CallableC22891b(callable));
        }
        return future;
    }
}
