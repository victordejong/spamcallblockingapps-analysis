package io.fabric.sdk.android.services.concurrency;

import java.util.concurrent.Callable;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: io.fabric.sdk.android.services.concurrency.k */
/* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/concurrency/k.class */
public class C1544k extends ThreadPoolExecutor {

    /* renamed from: a */
    private static final int f4196a = Runtime.getRuntime().availableProcessors();

    /* renamed from: b */
    private static final int f4197b;

    /* renamed from: c */
    private static final int f4198c;

    /* renamed from: io.fabric.sdk.android.services.concurrency.k$a */
    /* loaded from: classes-dex2jar.jar:io/fabric/sdk/android/services/concurrency/k$a.class */
    public static final class ThreadFactoryC1545a implements ThreadFactory {

        /* renamed from: a */
        private final int f4199a;

        public ThreadFactoryC1545a(int i) {
            this.f4199a = i;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread = new Thread(runnable);
            thread.setPriority(this.f4199a);
            thread.setName("Queue");
            return thread;
        }
    }

    static {
        int i = f4196a;
        f4197b = i + 1;
        f4198c = (i * 2) + 1;
    }

    <T extends Runnable & AbstractC1533b & AbstractC1546l & AbstractC1542i> C1544k(int i, int i2, long j, TimeUnit timeUnit, C1534c<T> c1534c, ThreadFactory threadFactory) {
        super(i, i2, j, timeUnit, c1534c, threadFactory);
        prestartAllCoreThreads();
    }

    /* renamed from: a */
    public static C1544k m3342a() {
        return m3341a(f4197b, f4198c);
    }

    /* renamed from: a */
    public static <T extends Runnable & AbstractC1533b & AbstractC1546l & AbstractC1542i> C1544k m3341a(int i, int i2) {
        return new C1544k(i, i2, 1L, TimeUnit.SECONDS, new C1534c(), new ThreadFactoryC1545a(10));
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    protected void afterExecute(Runnable runnable, Throwable th) {
        AbstractC1546l abstractC1546l = (AbstractC1546l) runnable;
        abstractC1546l.setFinished(true);
        abstractC1546l.setError(th);
        getQueue().m3352d();
        super.afterExecute(runnable, th);
    }

    /* renamed from: b */
    public C1534c getQueue() {
        return (C1534c) super.getQueue();
    }

    @Override // java.util.concurrent.ThreadPoolExecutor, java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        if (C1543j.isProperDelegate(runnable)) {
            super.execute(runnable);
        } else {
            super.execute(newTaskFor(runnable, null));
        }
    }

    @Override // java.util.concurrent.AbstractExecutorService
    protected <T> RunnableFuture<T> newTaskFor(Runnable runnable, T t) {
        return new C1541h(runnable, t);
    }

    @Override // java.util.concurrent.AbstractExecutorService
    protected <T> RunnableFuture<T> newTaskFor(Callable<T> callable) {
        return new C1541h(callable);
    }
}
