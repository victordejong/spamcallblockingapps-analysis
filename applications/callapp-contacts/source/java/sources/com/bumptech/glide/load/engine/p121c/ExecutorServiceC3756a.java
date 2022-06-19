package com.bumptech.glide.load.engine.p121c;

import android.os.Process;
import android.os.StrictMode;
import android.text.TextUtils;
import android.util.Log;
import com.appsflyer.internal.referrer.Payload;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.SynchronousQueue;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* renamed from: com.bumptech.glide.load.engine.c.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/c/a.class */
public final class ExecutorServiceC3756a implements ExecutorService {

    /* renamed from: a */
    private static final long f13965a = TimeUnit.SECONDS.toMillis(10);

    /* renamed from: b */
    private static volatile int f13966b;

    /* renamed from: c */
    private final ExecutorService f13967c;

    /* renamed from: com.bumptech.glide.load.engine.c.a$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/c/a$a.class */
    public static final class C3757a {

        /* renamed from: a */
        String f13968a;

        /* renamed from: b */
        private final boolean f13969b;

        /* renamed from: c */
        private int f13970c;

        /* renamed from: d */
        private int f13971d;

        /* renamed from: e */
        private AbstractC3760c f13972e = AbstractC3760c.f13982d;

        /* renamed from: f */
        private long f13973f;

        C3757a(boolean z) {
            this.f13969b = z;
        }

        /* renamed from: a */
        public final C3757a m37410a(int i) {
            this.f13970c = i;
            this.f13971d = i;
            return this;
        }

        /* renamed from: a */
        public final ExecutorServiceC3756a m37411a() {
            if (TextUtils.isEmpty(this.f13968a)) {
                throw new IllegalArgumentException("Name must be non-null and non-empty, but given: " + this.f13968a);
            }
            ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(this.f13970c, this.f13971d, this.f13973f, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new ThreadFactoryC3758b(this.f13968a, this.f13972e, this.f13969b));
            if (this.f13973f != 0) {
                threadPoolExecutor.allowCoreThreadTimeOut(true);
            }
            return new ExecutorServiceC3756a(threadPoolExecutor);
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.c.a$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/c/a$b.class */
    public static final class ThreadFactoryC3758b implements ThreadFactory {

        /* renamed from: a */
        final AbstractC3760c f13974a;

        /* renamed from: b */
        final boolean f13975b;

        /* renamed from: c */
        private final String f13976c;

        /* renamed from: d */
        private int f13977d;

        ThreadFactoryC3758b(String str, AbstractC3760c abstractC3760c, boolean z) {
            this.f13976c = str;
            this.f13974a = abstractC3760c;
            this.f13975b = z;
        }

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread thread;
            synchronized (this) {
                thread = new Thread(runnable, "glide-" + this.f13976c + "-thread-" + this.f13977d) { // from class: com.bumptech.glide.load.engine.c.a.b.1
                    @Override // java.lang.Thread, java.lang.Runnable
                    public final void run() {
                        Process.setThreadPriority(9);
                        if (ThreadFactoryC3758b.this.f13975b) {
                            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
                        }
                        try {
                            super.run();
                        } catch (Throwable th) {
                            ThreadFactoryC3758b.this.f13974a.mo37409a(th);
                        }
                    }
                };
                this.f13977d = this.f13977d + 1;
            }
            return thread;
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.c.a$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/c/a$c.class */
    public interface AbstractC3760c {

        /* renamed from: b */
        public static final AbstractC3760c f13980b;

        /* renamed from: d */
        public static final AbstractC3760c f13982d;

        /* renamed from: a */
        public static final AbstractC3760c f13979a = new AbstractC3760c() { // from class: com.bumptech.glide.load.engine.c.a.c.1
            @Override // com.bumptech.glide.load.engine.p121c.ExecutorServiceC3756a.AbstractC3760c
            /* renamed from: a */
            public final void mo37409a(Throwable th) {
            }
        };

        /* renamed from: c */
        public static final AbstractC3760c f13981c = new AbstractC3760c() { // from class: com.bumptech.glide.load.engine.c.a.c.3
            @Override // com.bumptech.glide.load.engine.p121c.ExecutorServiceC3756a.AbstractC3760c
            /* renamed from: a */
            public final void mo37409a(Throwable th) {
                throw new RuntimeException("Request threw uncaught throwable", th);
            }
        };

        static {
            AbstractC3760c abstractC3760c = new AbstractC3760c() { // from class: com.bumptech.glide.load.engine.c.a.c.2
                @Override // com.bumptech.glide.load.engine.p121c.ExecutorServiceC3756a.AbstractC3760c
                /* renamed from: a */
                public final void mo37409a(Throwable th) {
                    if (Log.isLoggable("GlideExecutor", 6)) {
                        Log.e("GlideExecutor", "Request threw uncaught throwable", th);
                    }
                }
            };
            f13980b = abstractC3760c;
            f13982d = abstractC3760c;
        }

        /* renamed from: a */
        void mo37409a(Throwable th);
    }

    ExecutorServiceC3756a(ExecutorService executorService) {
        this.f13967c = executorService;
    }

    /* renamed from: a */
    public static C3757a m37417a() {
        C3757a m37410a = new C3757a(true).m37410a(1);
        m37410a.f13968a = "disk-cache";
        return m37410a;
    }

    /* renamed from: b */
    public static ExecutorServiceC3756a m37416b() {
        return m37417a().m37411a();
    }

    /* renamed from: c */
    public static ExecutorServiceC3756a m37415c() {
        C3757a m37410a = new C3757a(false).m37410a(m37412f());
        m37410a.f13968a = Payload.SOURCE;
        return m37410a.m37411a();
    }

    /* renamed from: d */
    public static ExecutorServiceC3756a m37414d() {
        return new ExecutorServiceC3756a(new ThreadPoolExecutor(0, Integer.MAX_VALUE, f13965a, TimeUnit.MILLISECONDS, new SynchronousQueue(), new ThreadFactoryC3758b("source-unlimited", AbstractC3760c.f13982d, false)));
    }

    /* renamed from: e */
    public static ExecutorServiceC3756a m37413e() {
        C3757a m37410a = new C3757a(true).m37410a(m37412f() >= 4 ? 2 : 1);
        m37410a.f13968a = "animation";
        return m37410a.m37411a();
    }

    /* renamed from: f */
    private static int m37412f() {
        if (f13966b == 0) {
            f13966b = Math.min(4, C3764b.m37408a());
        }
        return f13966b;
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
        return this.f13967c.awaitTermination(j, timeUnit);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f13967c.execute(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) throws InterruptedException {
        return this.f13967c.invokeAll(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) throws InterruptedException {
        return this.f13967c.invokeAll(collection, j, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> T invokeAny(Collection<? extends Callable<T>> collection) throws InterruptedException, ExecutionException {
        return (T) this.f13967c.invokeAny(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> T invokeAny(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return (T) this.f13967c.invokeAny(collection, j, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isShutdown() {
        return this.f13967c.isShutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isTerminated() {
        return this.f13967c.isTerminated();
    }

    @Override // java.util.concurrent.ExecutorService
    public final void shutdown() {
        this.f13967c.shutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public final List<Runnable> shutdownNow() {
        return this.f13967c.shutdownNow();
    }

    @Override // java.util.concurrent.ExecutorService
    public final Future<?> submit(Runnable runnable) {
        return this.f13967c.submit(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> Future<T> submit(Runnable runnable, T t) {
        return this.f13967c.submit(runnable, t);
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> Future<T> submit(Callable<T> callable) {
        return this.f13967c.submit(callable);
    }

    public final String toString() {
        return this.f13967c.toString();
    }
}
