package com.bumptech.glide.load.engine.p211z;

import android.os.Process;
import android.os.StrictMode;
import android.text.TextUtils;
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
/* renamed from: com.bumptech.glide.load.engine.z.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/z/a.class */
public final class ExecutorServiceC4136a implements ExecutorService {

    /* renamed from: d */
    private static final long f12990d = TimeUnit.SECONDS.toMillis(10);

    /* renamed from: e */
    private static volatile int f12991e;

    /* renamed from: f */
    private final ExecutorService f12992f;

    /* renamed from: com.bumptech.glide.load.engine.z.a$a */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/z/a$a.class */
    public static final class C4137a {

        /* renamed from: a */
        private final boolean f12993a;

        /* renamed from: b */
        private int f12994b;

        /* renamed from: c */
        private int f12995c;

        /* renamed from: d */
        private AbstractC4140c f12996d = AbstractC4140c.f13007d;

        /* renamed from: e */
        private String f12997e;

        /* renamed from: f */
        private long f12998f;

        C4137a(boolean z) {
            this.f12993a = z;
        }

        /* renamed from: a */
        public ExecutorServiceC4136a m23187a() {
            if (!TextUtils.isEmpty(this.f12997e)) {
                ThreadPoolExecutor threadPoolExecutor = new ThreadPoolExecutor(this.f12994b, this.f12995c, this.f12998f, TimeUnit.MILLISECONDS, new PriorityBlockingQueue(), new ThreadFactoryC4138b(this.f12997e, this.f12996d, this.f12993a));
                if (this.f12998f != 0) {
                    threadPoolExecutor.allowCoreThreadTimeOut(true);
                }
                return new ExecutorServiceC4136a(threadPoolExecutor);
            }
            throw new IllegalArgumentException("Name must be non-null and non-empty, but given: " + this.f12997e);
        }

        /* renamed from: b */
        public C4137a m23186b(String str) {
            this.f12997e = str;
            return this;
        }

        /* renamed from: c */
        public C4137a m23185c(int i) {
            this.f12994b = i;
            this.f12995c = i;
            return this;
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.z.a$b */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/z/a$b.class */
    public static final class ThreadFactoryC4138b implements ThreadFactory {

        /* renamed from: a */
        private final String f12999a;

        /* renamed from: b */
        final AbstractC4140c f13000b;

        /* renamed from: c */
        final boolean f13001c;

        /* renamed from: d */
        private int f13002d;

        /* renamed from: com.bumptech.glide.load.engine.z.a$b$a */
        /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/z/a$b$a.class */
        class C4139a extends Thread {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C4139a(Runnable runnable, String str) {
                super(runnable, str);
                ThreadFactoryC4138b.this = r5;
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Process.setThreadPriority(9);
                if (ThreadFactoryC4138b.this.f13001c) {
                    StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
                }
                try {
                    super.run();
                } catch (Throwable th) {
                    ThreadFactoryC4138b.this.f13000b.mo23184a(th);
                }
            }
        }

        ThreadFactoryC4138b(String str, AbstractC4140c abstractC4140c, boolean z) {
            this.f12999a = str;
            this.f13000b = abstractC4140c;
            this.f13001c = z;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            C4139a c4139a;
            synchronized (this) {
                c4139a = new C4139a(runnable, "glide-" + this.f12999a + "-thread-" + this.f13002d);
                this.f13002d = this.f13002d + 1;
            }
            return c4139a;
        }
    }

    /* renamed from: com.bumptech.glide.load.engine.z.a$c */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/z/a$c.class */
    public interface AbstractC4140c {

        /* renamed from: b */
        public static final AbstractC4140c f13005b;

        /* renamed from: d */
        public static final AbstractC4140c f13007d;

        /* renamed from: a */
        public static final AbstractC4140c f13004a = new C4141a();

        /* renamed from: c */
        public static final AbstractC4140c f13006c = new C4143c();

        /* renamed from: com.bumptech.glide.load.engine.z.a$c$a */
        /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/z/a$c$a.class */
        class C4141a implements AbstractC4140c {
            C4141a() {
            }

            @Override // com.bumptech.glide.load.engine.p211z.ExecutorServiceC4136a.AbstractC4140c
            /* renamed from: a */
            public void mo23184a(Throwable th) {
            }
        }

        /* renamed from: com.bumptech.glide.load.engine.z.a$c$b */
        /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/z/a$c$b.class */
        class C4142b implements AbstractC4140c {
            C4142b() {
            }

            @Override // com.bumptech.glide.load.engine.p211z.ExecutorServiceC4136a.AbstractC4140c
            /* renamed from: a */
            public void mo23184a(Throwable th) {
                if (th == null || !Log.isLoggable("GlideExecutor", 6)) {
                    return;
                }
                Log.e("GlideExecutor", "Request threw uncaught throwable", th);
            }
        }

        /* renamed from: com.bumptech.glide.load.engine.z.a$c$c */
        /* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/z/a$c$c.class */
        class C4143c implements AbstractC4140c {
            C4143c() {
            }

            @Override // com.bumptech.glide.load.engine.p211z.ExecutorServiceC4136a.AbstractC4140c
            /* renamed from: a */
            public void mo23184a(Throwable th) {
                if (th == null) {
                    return;
                }
                throw new RuntimeException("Request threw uncaught throwable", th);
            }
        }

        static {
            C4142b c4142b = new C4142b();
            f13005b = c4142b;
            f13007d = c4142b;
        }

        /* renamed from: a */
        void mo23184a(Throwable th);
    }

    ExecutorServiceC4136a(ExecutorService executorService) {
        this.f12992f = executorService;
    }

    /* renamed from: b */
    public static int m23195b() {
        if (f12991e == 0) {
            f12991e = Math.min(4, C4144b.m23183a());
        }
        return f12991e;
    }

    /* renamed from: c */
    public static C4137a m23194c() {
        return new C4137a(true).m23185c(m23195b() >= 4 ? 2 : 1).m23186b("animation");
    }

    /* renamed from: e */
    public static ExecutorServiceC4136a m23193e() {
        return m23194c().m23187a();
    }

    /* renamed from: f */
    public static C4137a m23192f() {
        return new C4137a(true).m23185c(1).m23186b("disk-cache");
    }

    /* renamed from: g */
    public static ExecutorServiceC4136a m23191g() {
        return m23192f().m23187a();
    }

    /* renamed from: h */
    public static C4137a m23190h() {
        return new C4137a(false).m23185c(m23195b()).m23186b("source");
    }

    /* renamed from: i */
    public static ExecutorServiceC4136a m23189i() {
        return m23190h().m23187a();
    }

    /* renamed from: j */
    public static ExecutorServiceC4136a m23188j() {
        return new ExecutorServiceC4136a(new ThreadPoolExecutor(0, Integer.MAX_VALUE, f12990d, TimeUnit.MILLISECONDS, new SynchronousQueue(), new ThreadFactoryC4138b("source-unlimited", AbstractC4140c.f13007d, false)));
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean awaitTermination(long j, TimeUnit timeUnit) {
        return this.f12992f.awaitTermination(j, timeUnit);
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f12992f.execute(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) {
        return this.f12992f.invokeAll(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) {
        return this.f12992f.invokeAll(collection, j, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> T invokeAny(Collection<? extends Callable<T>> collection) {
        return (T) this.f12992f.invokeAny(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> T invokeAny(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) {
        return (T) this.f12992f.invokeAny(collection, j, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        return this.f12992f.isShutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        return this.f12992f.isTerminated();
    }

    @Override // java.util.concurrent.ExecutorService
    public void shutdown() {
        this.f12992f.shutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public List<Runnable> shutdownNow() {
        return this.f12992f.shutdownNow();
    }

    @Override // java.util.concurrent.ExecutorService
    public Future<?> submit(Runnable runnable) {
        return this.f12992f.submit(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> Future<T> submit(Runnable runnable, T t) {
        return this.f12992f.submit(runnable, t);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> Future<T> submit(Callable<T> callable) {
        return this.f12992f.submit(callable);
    }

    public String toString() {
        return this.f12992f.toString();
    }
}
