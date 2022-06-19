package com.bumptech.glide.load.engine.p092c;

import android.os.Process;
import android.os.StrictMode;
import android.util.Log;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
/* renamed from: com.bumptech.glide.load.engine.c.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/c/a.class */
public final class ExecutorServiceC1720a implements ExecutorService {

    /* renamed from: a */
    private static final long f5205a = TimeUnit.SECONDS.toMillis(10);

    /* renamed from: b */
    private static volatile int f5206b;

    /* renamed from: c */
    private final ExecutorService f5207c;

    /* renamed from: com.bumptech.glide.load.engine.c.a$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/c/a$a.class */
    public static final class ThreadFactoryC1721a implements ThreadFactory {

        /* renamed from: a */
        final AbstractC1723b f5208a;

        /* renamed from: b */
        final boolean f5209b;

        /* renamed from: c */
        private final String f5210c;

        /* renamed from: d */
        private int f5211d;

        ThreadFactoryC1721a(String str, AbstractC1723b abstractC1723b, boolean z) {
            this.f5210c = str;
            this.f5208a = abstractC1723b;
            this.f5209b = z;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            Thread thread;
            synchronized (this) {
                thread = new Thread(runnable, "glide-" + this.f5210c + "-thread-" + this.f5211d) { // from class: com.bumptech.glide.load.engine.c.a.a.1
                    @Override // java.lang.Thread, java.lang.Runnable
                    public void run() {
                        Process.setThreadPriority(9);
                        if (ThreadFactoryC1721a.this.f5209b) {
                            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
                        }
                        try {
                            super.run();
                        } catch (Throwable th) {
                            ThreadFactoryC1721a.this.f5208a.mo16470a(th);
                        }
                    }
                };
                this.f5211d++;
            }
            return thread;
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.c.a$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/c/a$b.class */
    public interface AbstractC1723b {

        /* renamed from: a */
        public static final AbstractC1723b f5213a = new AbstractC1723b() { // from class: com.bumptech.glide.load.engine.c.a.b.1
            @Override // com.bumptech.glide.load.engine.p092c.ExecutorServiceC1720a.AbstractC1723b
            /* renamed from: a */
            public void mo16470a(Throwable th) {
            }
        };

        /* renamed from: b */
        public static final AbstractC1723b f5214b = new AbstractC1723b() { // from class: com.bumptech.glide.load.engine.c.a.b.2
            @Override // com.bumptech.glide.load.engine.p092c.ExecutorServiceC1720a.AbstractC1723b
            /* renamed from: a */
            public void mo16470a(Throwable th) {
                if (th == null || !Log.isLoggable("GlideExecutor", 6)) {
                    return;
                }
                Log.e("GlideExecutor", "Request threw uncaught throwable", th);
            }
        };

        /* renamed from: c */
        public static final AbstractC1723b f5215c = new AbstractC1723b() { // from class: com.bumptech.glide.load.engine.c.a.b.3
            @Override // com.bumptech.glide.load.engine.p092c.ExecutorServiceC1720a.AbstractC1723b
            /* renamed from: a */
            public void mo16470a(Throwable th) {
                if (th != null) {
                    throw new RuntimeException("Request threw uncaught throwable", th);
                }
            }
        };

        /* renamed from: d */
        public static final AbstractC1723b f5216d = f5214b;

        /* renamed from: a */
        void mo16470a(Throwable th);
    }

    ExecutorServiceC1720a(ExecutorService executorService) {
        this.f5207c = executorService;
    }

    /* renamed from: a */
    public static ExecutorServiceC1720a m16478a() {
        return m16476a(1, "disk-cache", AbstractC1723b.f5216d);
    }

    /* renamed from: a */
    public static ExecutorServiceC1720a m16477a(int i, AbstractC1723b abstractC1723b) {
        return new ExecutorServiceC1720a(new ThreadPoolExecutor(0, i, f5205a, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new ThreadFactoryC1721a("animation", abstractC1723b, true)));
    }

    /* renamed from: a */
    public static ExecutorServiceC1720a m16476a(int i, String str, AbstractC1723b abstractC1723b) {
        return new ExecutorServiceC1720a(new ThreadPoolExecutor(i, i, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new ThreadFactoryC1721a(str, abstractC1723b, true)));
    }

    /* renamed from: b */
    public static ExecutorServiceC1720a m16475b() {
        return m16474b(m16471e(), "source", AbstractC1723b.f5216d);
    }

    /* renamed from: b */
    public static ExecutorServiceC1720a m16474b(int i, String str, AbstractC1723b abstractC1723b) {
        return new ExecutorServiceC1720a(new ThreadPoolExecutor(i, i, 0L, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new ThreadFactoryC1721a(str, abstractC1723b, false)));
    }

    /* renamed from: c */
    public static ExecutorServiceC1720a m16473c() {
        return new ExecutorServiceC1720a(new ThreadPoolExecutor(0, Integer.MAX_VALUE, f5205a, TimeUnit.MILLISECONDS, new SynchronousQueue(), new ThreadFactoryC1721a("source-unlimited", AbstractC1723b.f5216d, false)));
    }

    /* renamed from: d */
    public static ExecutorServiceC1720a m16472d() {
        return m16477a(m16471e() >= 4 ? 2 : 1, AbstractC1723b.f5216d);
    }

    /* renamed from: e */
    public static int m16471e() {
        if (f5206b == 0) {
            f5206b = Math.min(4, C1727b.m16469a());
        }
        return f5206b;
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean awaitTermination(long j, TimeUnit timeUnit) {
        return this.f5207c.awaitTermination(j, timeUnit);
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f5207c.execute(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) {
        return this.f5207c.invokeAll(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) {
        return this.f5207c.invokeAll(collection, j, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> T invokeAny(Collection<? extends Callable<T>> collection) {
        return (T) this.f5207c.invokeAny(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> T invokeAny(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) {
        return (T) this.f5207c.invokeAny(collection, j, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        return this.f5207c.isShutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        return this.f5207c.isTerminated();
    }

    @Override // java.util.concurrent.ExecutorService
    public void shutdown() {
        this.f5207c.shutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public List<Runnable> shutdownNow() {
        return this.f5207c.shutdownNow();
    }

    @Override // java.util.concurrent.ExecutorService
    public Future<?> submit(Runnable runnable) {
        return this.f5207c.submit(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> Future<T> submit(Runnable runnable, T t) {
        return this.f5207c.submit(runnable, t);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> Future<T> submit(Callable<T> callable) {
        return this.f5207c.submit(callable);
    }

    public String toString() {
        return this.f5207c.toString();
    }
}
