package com.bumptech.glide.load.engine.p022z;

import android.os.Process;
import android.os.StrictMode;
import android.text.TextUtils;
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
/* renamed from: com.bumptech.glide.load.engine.z.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/z/a.class */
public final class ExecutorServiceC0787a implements ExecutorService {

    /* renamed from: c */
    private static final long f3645c = TimeUnit.SECONDS.toMillis(10);

    /* renamed from: d */
    private static volatile int f3646d;

    /* renamed from: b */
    private final ExecutorService f3647b;

    /* renamed from: com.bumptech.glide.load.engine.z.a$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/z/a$a.class */
    public static final class C0788a {

        /* renamed from: a */
        private final boolean f3648a;

        /* renamed from: b */
        private int f3649b;

        /* renamed from: c */
        private int f3650c;

        /* renamed from: d */
        private AbstractC0791c f3651d = AbstractC0791c.f3660b;

        /* renamed from: e */
        private String f3652e;

        /* renamed from: f */
        private long f3653f;

        C0788a(boolean z) {
            this.f3648a = z;
        }

        /* renamed from: a */
        public ExecutorServiceC0787a m11008a() {
            if (!TextUtils.isEmpty(this.f3652e)) {
                ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(this.f3649b, this.f3650c, this.f3653f, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new ThreadFactoryC0789b(this.f3652e, this.f3651d, this.f3648a));
                if (this.f3653f != 0) {
                    threadPoolExecutor.allowCoreThreadTimeOut(true);
                }
                return new ExecutorServiceC0787a(threadPoolExecutor);
            }
            throw new IllegalArgumentException("Name must be non-null and non-empty, but given: " + this.f3652e);
        }

        /* renamed from: b */
        public C0788a m11007b(String str) {
            this.f3652e = str;
            return this;
        }

        /* renamed from: c */
        public C0788a m11006c(int i) {
            this.f3649b = i;
            this.f3650c = i;
            return this;
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.z.a$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/z/a$b.class */
    public static final class ThreadFactoryC0789b implements ThreadFactory {

        /* renamed from: a */
        private final String f3654a;

        /* renamed from: b */
        final AbstractC0791c f3655b;

        /* renamed from: c */
        final boolean f3656c;

        /* renamed from: d */
        private int f3657d;

        /* renamed from: com.bumptech.glide.load.engine.z.a$b$a */
        /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/z/a$b$a.class */
        class C0790a extends Thread {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0790a(Runnable runnable, String str) {
                super(runnable, str);
                ThreadFactoryC0789b.this = r5;
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Process.setThreadPriority(9);
                if (ThreadFactoryC0789b.this.f3656c) {
                    StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
                }
                try {
                    super.run();
                } catch (Throwable th) {
                    ThreadFactoryC0789b.this.f3655b.m11005a(th);
                }
            }
        }

        ThreadFactoryC0789b(String str, AbstractC0791c abstractC0791c, boolean z) {
            this.f3654a = str;
            this.f3655b = abstractC0791c;
            this.f3656c = z;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            C0790a c0790a;
            synchronized (this) {
                c0790a = new C0790a(runnable, "glide-" + this.f3654a + "-thread-" + this.f3657d);
                this.f3657d = this.f3657d + 1;
            }
            return c0790a;
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.z.a$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/z/a$c.class */
    public interface AbstractC0791c {

        /* renamed from: a */
        public static final AbstractC0791c f3659a;

        /* renamed from: b */
        public static final AbstractC0791c f3660b;

        static {
            a aVar = new a();
            f3659a = aVar;
            f3660b = aVar;
        }

        /* renamed from: a */
        void m11005a(Throwable th);
    }

    ExecutorServiceC0787a(ExecutorService executorService) {
        this.f3647b = executorService;
    }

    /* renamed from: b */
    public static int m11016b() {
        if (f3646d == 0) {
            f3646d = Math.min(4, C0792b.m11004a());
        }
        return f3646d;
    }

    /* renamed from: c */
    public static C0788a m11015c() {
        int i = m11016b() >= 4 ? 2 : 1;
        C0788a c0788a = new C0788a(true);
        c0788a.m11006c(i);
        c0788a.m11007b("animation");
        return c0788a;
    }

    /* renamed from: d */
    public static ExecutorServiceC0787a m11014d() {
        return m11015c().m11008a();
    }

    /* renamed from: f */
    public static C0788a m11013f() {
        C0788a c0788a = new C0788a(true);
        c0788a.m11006c(1);
        c0788a.m11007b("disk-cache");
        return c0788a;
    }

    /* renamed from: g */
    public static ExecutorServiceC0787a m11012g() {
        return m11013f().m11008a();
    }

    /* renamed from: h */
    public static C0788a m11011h() {
        C0788a c0788a = new C0788a(false);
        c0788a.m11006c(m11016b());
        c0788a.m11007b("source");
        return c0788a;
    }

    /* renamed from: i */
    public static ExecutorServiceC0787a m11010i() {
        return m11011h().m11008a();
    }

    /* renamed from: j */
    public static ExecutorServiceC0787a m11009j() {
        return new ExecutorServiceC0787a(new ThreadPoolExecutor(0, Integer.MAX_VALUE, f3645c, TimeUnit.MILLISECONDS, new SynchronousQueue(), new ThreadFactoryC0789b("source-unlimited", AbstractC0791c.f3660b, false)));
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean awaitTermination(long j, TimeUnit timeUnit) {
        return this.f3647b.awaitTermination(j, timeUnit);
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f3647b.execute(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) {
        return this.f3647b.invokeAll(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) {
        return this.f3647b.invokeAll(collection, j, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> T invokeAny(Collection<? extends Callable<T>> collection) {
        return (T) this.f3647b.invokeAny(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> T invokeAny(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) {
        return (T) this.f3647b.invokeAny(collection, j, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        return this.f3647b.isShutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        return this.f3647b.isTerminated();
    }

    @Override // java.util.concurrent.ExecutorService
    public void shutdown() {
        this.f3647b.shutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public List<Runnable> shutdownNow() {
        return this.f3647b.shutdownNow();
    }

    @Override // java.util.concurrent.ExecutorService
    public Future<?> submit(Runnable runnable) {
        return this.f3647b.submit(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> Future<T> submit(Runnable runnable, T t) {
        return this.f3647b.submit(runnable, t);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> Future<T> submit(Callable<T> callable) {
        return this.f3647b.submit(callable);
    }

    public String toString() {
        return this.f3647b.toString();
    }
}
