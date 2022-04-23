package com.bumptech.glide.load.engine.c;

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
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/c/a.class */
public final class a implements ExecutorService {

    /* renamed from: a  reason: collision with root package name */
    private static final long f7509a = TimeUnit.SECONDS.toMillis(10);

    /* renamed from: b  reason: collision with root package name */
    private static volatile int f7510b;

    /* renamed from: c  reason: collision with root package name */
    private final ExecutorService f7511c;

    /* renamed from: com.bumptech.glide.load.engine.c.a$a  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/c/a$a.class */
    public static final class C0147a {

        /* renamed from: a  reason: collision with root package name */
        String f7512a;

        /* renamed from: b  reason: collision with root package name */
        private final boolean f7513b;

        /* renamed from: c  reason: collision with root package name */
        private int f7514c;

        /* renamed from: d  reason: collision with root package name */
        private int f7515d;
        private c e = c.f7524d;
        private long f;

        C0147a(boolean z) {
            this.f7513b = z;
        }

        public final C0147a a(int i) {
            this.f7514c = i;
            this.f7515d = i;
            return this;
        }

        public final a a() {
            if (!TextUtils.isEmpty(this.f7512a)) {
                ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(this.f7514c, this.f7515d, this.f, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new b(this.f7512a, this.e, this.f7513b));
                if (this.f != 0) {
                    threadPoolExecutor.allowCoreThreadTimeOut(true);
                }
                return new a(threadPoolExecutor);
            }
            throw new IllegalArgumentException("Name must be non-null and non-empty, but given: " + this.f7512a);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/c/a$b.class */
    public static final class b implements ThreadFactory {

        /* renamed from: a  reason: collision with root package name */
        final c f7516a;

        /* renamed from: b  reason: collision with root package name */
        final boolean f7517b;

        /* renamed from: c  reason: collision with root package name */
        private final String f7518c;

        /* renamed from: d  reason: collision with root package name */
        private int f7519d;

        b(String str, c cVar, boolean z) {
            this.f7518c = str;
            this.f7516a = cVar;
            this.f7517b = z;
        }

        @Override // java.util.concurrent.ThreadFactory
        public final Thread newThread(Runnable runnable) {
            Thread thread;
            synchronized (this) {
                thread = new Thread(runnable, "glide-" + this.f7518c + "-thread-" + this.f7519d) { // from class: com.bumptech.glide.load.engine.c.a.b.1
                    @Override // java.lang.Thread, java.lang.Runnable
                    public final void run() {
                        Process.setThreadPriority(9);
                        if (b.this.f7517b) {
                            StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
                        }
                        try {
                            super.run();
                        } catch (Throwable th) {
                            b.this.f7516a.a(th);
                        }
                    }
                };
                this.f7519d = this.f7519d + 1;
            }
            return thread;
        }
    }

    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/c/a$c.class */
    public interface c {

        /* renamed from: b  reason: collision with root package name */
        public static final c f7522b;

        /* renamed from: d  reason: collision with root package name */
        public static final c f7524d;

        /* renamed from: a  reason: collision with root package name */
        public static final c f7521a = new c() { // from class: com.bumptech.glide.load.engine.c.a.c.1
            @Override // com.bumptech.glide.load.engine.c.a.c
            public final void a(Throwable th) {
            }
        };

        /* renamed from: c  reason: collision with root package name */
        public static final c f7523c = new c() { // from class: com.bumptech.glide.load.engine.c.a.c.3
            @Override // com.bumptech.glide.load.engine.c.a.c
            public final void a(Throwable th) {
                throw new RuntimeException("Request threw uncaught throwable", th);
            }
        };

        static {
            c cVar = new c() { // from class: com.bumptech.glide.load.engine.c.a.c.2
                @Override // com.bumptech.glide.load.engine.c.a.c
                public final void a(Throwable th) {
                    if (Log.isLoggable("GlideExecutor", 6)) {
                        Log.e("GlideExecutor", "Request threw uncaught throwable", th);
                    }
                }
            };
            f7522b = cVar;
            f7524d = cVar;
        }

        void a(Throwable th);
    }

    a(ExecutorService executorService) {
        this.f7511c = executorService;
    }

    public static C0147a a() {
        C0147a a2 = new C0147a(true).a(1);
        a2.f7512a = "disk-cache";
        return a2;
    }

    public static a b() {
        return a().a();
    }

    public static a c() {
        C0147a a2 = new C0147a(false).a(f());
        a2.f7512a = Payload.SOURCE;
        return a2.a();
    }

    public static a d() {
        return new a(new ThreadPoolExecutor(0, Integer.MAX_VALUE, f7509a, TimeUnit.MILLISECONDS, new SynchronousQueue(), new b("source-unlimited", c.f7524d, false)));
    }

    public static a e() {
        C0147a a2 = new C0147a(true).a(f() >= 4 ? 2 : 1);
        a2.f7512a = "animation";
        return a2.a();
    }

    private static int f() {
        if (f7510b == 0) {
            f7510b = Math.min(4, com.bumptech.glide.load.engine.c.b.a());
        }
        return f7510b;
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
        return this.f7511c.awaitTermination(j, timeUnit);
    }

    @Override // java.util.concurrent.Executor
    public final void execute(Runnable runnable) {
        this.f7511c.execute(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) throws InterruptedException {
        return this.f7511c.invokeAll(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) throws InterruptedException {
        return this.f7511c.invokeAll(collection, j, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> T invokeAny(Collection<? extends Callable<T>> collection) throws InterruptedException, ExecutionException {
        return (T) this.f7511c.invokeAny(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> T invokeAny(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return (T) this.f7511c.invokeAny(collection, j, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isShutdown() {
        return this.f7511c.isShutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public final boolean isTerminated() {
        return this.f7511c.isTerminated();
    }

    @Override // java.util.concurrent.ExecutorService
    public final void shutdown() {
        this.f7511c.shutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public final List<Runnable> shutdownNow() {
        return this.f7511c.shutdownNow();
    }

    @Override // java.util.concurrent.ExecutorService
    public final Future<?> submit(Runnable runnable) {
        return this.f7511c.submit(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> Future<T> submit(Runnable runnable, T t) {
        return this.f7511c.submit(runnable, t);
    }

    @Override // java.util.concurrent.ExecutorService
    public final <T> Future<T> submit(Callable<T> callable) {
        return this.f7511c.submit(callable);
    }

    public final String toString() {
        return this.f7511c.toString();
    }
}
