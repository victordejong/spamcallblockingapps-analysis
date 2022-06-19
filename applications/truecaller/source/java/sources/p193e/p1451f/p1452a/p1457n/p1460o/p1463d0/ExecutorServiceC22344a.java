package p193e.p1451f.p1452a.p1457n.p1460o.p1463d0;

import android.os.Process;
import android.os.StrictMode;
import android.util.Log;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
/* renamed from: e.f.a.n.o.d0.a */
/* loaded from: classes-dex2jar.jar:e/f/a/n/o/d0/a.class */
public final class ExecutorServiceC22344a implements ExecutorService {

    /* renamed from: b */
    public static final long f62036b = TimeUnit.SECONDS.toMillis(10);

    /* renamed from: c */
    public static volatile int f62037c;

    /* renamed from: a */
    public final ExecutorService f62038a;

    /* renamed from: e.f.a.n.o.d0.a$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/d0/a$a.class */
    public static final class ThreadFactoryC22345a implements ThreadFactory {

        /* renamed from: a */
        public final String f62039a;

        /* renamed from: b */
        public final AbstractC22347b f62040b;

        /* renamed from: c */
        public final boolean f62041c;

        /* renamed from: d */
        public int f62042d;

        /* renamed from: e.f.a.n.o.d0.a$a$a */
        /* loaded from: classes-dex2jar.jar:e/f/a/n/o/d0/a$a$a.class */
        public class C22346a extends Thread {
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C22346a(Runnable runnable, String str) {
                super(runnable, str);
                ThreadFactoryC22345a.this = r5;
            }

            @Override // java.lang.Thread, java.lang.Runnable
            public void run() {
                Process.setThreadPriority(9);
                if (ThreadFactoryC22345a.this.f62041c) {
                    StrictMode.setThreadPolicy(new StrictMode.ThreadPolicy.Builder().detectNetwork().penaltyDeath().build());
                }
                try {
                    super.run();
                } catch (Throwable th) {
                    ThreadFactoryC22345a.this.f62040b.mo8303a(th);
                }
            }
        }

        public ThreadFactoryC22345a(String str, AbstractC22347b abstractC22347b, boolean z) {
            this.f62039a = str;
            this.f62040b = abstractC22347b;
            this.f62041c = z;
        }

        @Override // java.util.concurrent.ThreadFactory
        public Thread newThread(Runnable runnable) {
            C22346a c22346a;
            synchronized (this) {
                c22346a = new C22346a(runnable, "glide-" + this.f62039a + "-thread-" + this.f62042d);
                this.f62042d = this.f62042d + 1;
            }
            return c22346a;
        }
    }

    /* renamed from: e.f.a.n.o.d0.a$b */
    /* loaded from: classes-dex2jar.jar:e/f/a/n/o/d0/a$b.class */
    public interface AbstractC22347b {

        /* renamed from: a */
        public static final AbstractC22347b f62044a;

        /* renamed from: b */
        public static final AbstractC22347b f62045b;

        /* renamed from: e.f.a.n.o.d0.a$b$a */
        /* loaded from: classes-dex2jar.jar:e/f/a/n/o/d0/a$b$a.class */
        public class C22348a implements AbstractC22347b {
            @Override // p193e.p1451f.p1452a.p1457n.p1460o.p1463d0.ExecutorServiceC22344a.AbstractC22347b
            /* renamed from: a */
            public void mo8303a(Throwable th) {
                Log.isLoggable("GlideExecutor", 6);
            }
        }

        static {
            C22348a c22348a = new C22348a();
            f62044a = c22348a;
            f62045b = c22348a;
        }

        /* renamed from: a */
        void mo8303a(Throwable th);
    }

    public ExecutorServiceC22344a(ExecutorService executorService) {
        this.f62038a = executorService;
    }

    /* renamed from: a */
    public static int m8304a() {
        if (f62037c == 0) {
            f62037c = Math.min(4, Runtime.getRuntime().availableProcessors());
        }
        return f62037c;
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean awaitTermination(long j, TimeUnit timeUnit) throws InterruptedException {
        return this.f62038a.awaitTermination(j, timeUnit);
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        this.f62038a.execute(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection) throws InterruptedException {
        return this.f62038a.invokeAll(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> List<Future<T>> invokeAll(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) throws InterruptedException {
        return this.f62038a.invokeAll(collection, j, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> T invokeAny(Collection<? extends Callable<T>> collection) throws InterruptedException, ExecutionException {
        return (T) this.f62038a.invokeAny(collection);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> T invokeAny(Collection<? extends Callable<T>> collection, long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        return (T) this.f62038a.invokeAny(collection, j, timeUnit);
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        return this.f62038a.isShutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        return this.f62038a.isTerminated();
    }

    @Override // java.util.concurrent.ExecutorService
    public void shutdown() {
        this.f62038a.shutdown();
    }

    @Override // java.util.concurrent.ExecutorService
    public List<Runnable> shutdownNow() {
        return this.f62038a.shutdownNow();
    }

    @Override // java.util.concurrent.ExecutorService
    public Future<?> submit(Runnable runnable) {
        return this.f62038a.submit(runnable);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> Future<T> submit(Runnable runnable, T t) {
        return this.f62038a.submit(runnable, t);
    }

    @Override // java.util.concurrent.ExecutorService
    public <T> Future<T> submit(Callable<T> callable) {
        return this.f62038a.submit(callable);
    }

    public String toString() {
        return this.f62038a.toString();
    }
}
