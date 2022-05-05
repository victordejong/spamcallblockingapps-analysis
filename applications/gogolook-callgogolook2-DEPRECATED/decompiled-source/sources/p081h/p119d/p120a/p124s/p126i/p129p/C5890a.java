package p081h.p119d.p120a.p124s.p126i.p129p;

import android.os.Process;
import android.util.Log;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.PriorityBlockingQueue;
import java.util.concurrent.RunnableFuture;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: h.d.a.s.i.p.a */
/* loaded from: classes-dex2jar.jar:h/d/a/s/i/p/a.class */
public class C5890a extends ThreadPoolExecutor {

    /* renamed from: a */
    public final AtomicInteger f14816a;

    /* renamed from: b */
    public final EnumC5895d f14817b;

    /* renamed from: h.d.a.s.i.p.a$b */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/i/p/a$b.class */
    public static class ThreadFactoryC5892b implements ThreadFactory {

        /* renamed from: a */
        public int f14818a = 0;

        /* renamed from: h.d.a.s.i.p.a$b$a */
        /* loaded from: classes-dex2jar.jar:h/d/a/s/i/p/a$b$a.class */
        public class C5893a extends Thread {
            public C5893a(ThreadFactoryC5892b bVar, Runnable runnable, String str) {
                super(runnable, str);
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Process.setThreadPriority(10);
                super.run();
            }
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            C5893a aVar = new C5893a(this, runnable, "fifo-pool-thread-" + this.f14818a);
            this.f14818a = this.f14818a + 1;
            return aVar;
        }
    }

    /* renamed from: h.d.a.s.i.p.a$c */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/i/p/a$c.class */
    public static class C5894c<T> extends FutureTask<T> implements Comparable<C5894c<?>> {

        /* renamed from: a */
        public final int f14819a;

        /* renamed from: b */
        public final int f14820b;

        public C5894c(Runnable runnable, T t, int i) {
            super(runnable, t);
            if (runnable instanceof AbstractC5898b) {
                this.f14819a = ((AbstractC5898b) runnable).getPriority();
                this.f14820b = i;
                return;
            }
            throw new IllegalArgumentException("FifoPriorityThreadPoolExecutor must be given Runnables that implement Prioritized");
        }

        /* renamed from: a */
        public int compareTo(C5894c<?> cVar) {
            int i = this.f14819a - cVar.f14819a;
            int i2 = i;
            if (i == 0) {
                i2 = this.f14820b - cVar.f14820b;
            }
            return i2;
        }

        public boolean equals(Object obj) {
            boolean z = false;
            if (obj instanceof C5894c) {
                C5894c cVar = (C5894c) obj;
                z = false;
                if (this.f14820b == cVar.f14820b) {
                    z = false;
                    if (this.f14819a == cVar.f14819a) {
                        z = true;
                    }
                }
            }
            return z;
        }

        public int hashCode() {
            return (this.f14819a * 31) + this.f14820b;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
    /* renamed from: h.d.a.s.i.p.a$d */
    /* loaded from: classes-dex2jar.jar:h/d/a/s/i/p/a$d.class */
    public static class EnumC5895d extends Enum<EnumC5895d> {

        /* renamed from: a */
        public static final EnumC5895d f14821a = new EnumC5895d("IGNORE", 0);

        /* renamed from: b */
        public static final EnumC5895d f14822b = new C5896a("LOG", 1);

        /* renamed from: c */
        public static final EnumC5895d f14823c = new C5897b("THROW", 2);

        /* renamed from: d */
        public static final /* synthetic */ EnumC5895d[] f14824d = {f14821a, f14822b, f14823c};

        /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
        /* renamed from: h.d.a.s.i.p.a$d$a */
        /* loaded from: classes-dex2jar.jar:h/d/a/s/i/p/a$d$a.class */
        public static final class C5896a extends EnumC5895d {
            public C5896a(String str, int i) {
                super(str, i);
            }

            @Override // p081h.p119d.p120a.p124s.p126i.p129p.C5890a.EnumC5895d
            /* renamed from: a */
            public void mo24165a(Throwable th) {
                if (Log.isLoggable("PriorityExecutor", 6)) {
                    Log.e("PriorityExecutor", "Request threw uncaught throwable", th);
                }
            }
        }

        /* JADX WARN: Failed to restore enum class, 'enum' modifier removed */
        /* renamed from: h.d.a.s.i.p.a$d$b */
        /* loaded from: classes-dex2jar.jar:h/d/a/s/i/p/a$d$b.class */
        public static final class C5897b extends EnumC5895d {
            public C5897b(String str, int i) {
                super(str, i);
            }

            @Override // p081h.p119d.p120a.p124s.p126i.p129p.C5890a.EnumC5895d
            /* renamed from: a */
            public void mo24165a(Throwable th) {
                super.mo24165a(th);
                throw new RuntimeException(th);
            }
        }

        public EnumC5895d(String str, int i) {
        }

        public static EnumC5895d valueOf(String str) {
            return (EnumC5895d) Enum.valueOf(EnumC5895d.class, str);
        }

        public static EnumC5895d[] values() {
            return (EnumC5895d[]) f14824d.clone();
        }

        /* renamed from: a */
        public void mo24165a(Throwable th) {
        }
    }

    public C5890a(int i) {
        this(i, EnumC5895d.f14822b);
    }

    public C5890a(int i, int i2, long j, TimeUnit timeUnit, ThreadFactory threadFactory, EnumC5895d dVar) {
        super(i, i2, j, timeUnit, new PriorityBlockingQueue(), threadFactory);
        this.f14816a = new AtomicInteger();
        this.f14817b = dVar;
    }

    public C5890a(int i, EnumC5895d dVar) {
        this(i, i, 0L, TimeUnit.MILLISECONDS, new ThreadFactoryC5892b(), dVar);
    }

    @Override // java.util.concurrent.ThreadPoolExecutor
    public void afterExecute(Runnable runnable, Throwable th) {
        super.afterExecute(runnable, th);
        if (th == null && (runnable instanceof Future)) {
            Future future = (Future) runnable;
            if (future.isDone() && !future.isCancelled()) {
                try {
                    future.get();
                } catch (InterruptedException e) {
                    this.f14817b.mo24165a(e);
                } catch (ExecutionException e2) {
                    this.f14817b.mo24165a(e2);
                }
            }
        }
    }

    @Override // java.util.concurrent.AbstractExecutorService
    public <T> RunnableFuture<T> newTaskFor(Runnable runnable, T t) {
        return new C5894c(runnable, t, this.f14816a.getAndIncrement());
    }
}
