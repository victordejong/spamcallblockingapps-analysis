package p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1770b;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import android.support.p001v4.media.session.MediaSessionCompat;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.List;
import java.util.concurrent.AbstractExecutorService;
import java.util.concurrent.Callable;
import java.util.concurrent.Delayed;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Executor;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.RunnableScheduledFuture;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
import n3.h.a.f;
import p1727n3.p1758e.p1767b.p1768j1.p1769t1.p1771c.AbstractC26039h;
import p1727n3.p1790h.p1791a.AbstractC26249d;
import p1727n3.p1790h.p1791a.C26247b;
/* renamed from: n3.e.b.j1.t1.b.b */
/* loaded from: classes-dex2jar.jar:n3/e/b/j1/t1/b/b.class */
public final class ScheduledExecutorServiceC26017b extends AbstractExecutorService implements ScheduledExecutorService {

    /* renamed from: a */
    public final Handler f72668a;

    /* renamed from: n3.e.b.j1.t1.b.b$a */
    /* loaded from: classes-dex2jar.jar:n3/e/b/j1/t1/b/b$a.class */
    public class C26018a extends ThreadLocal<ScheduledExecutorService> {
        @Override // java.lang.ThreadLocal
        public ScheduledExecutorService initialValue() {
            return Looper.myLooper() == Looper.getMainLooper() ? MediaSessionCompat.m43279O0() : Looper.myLooper() != null ? new ScheduledExecutorServiceC26017b(new Handler(Looper.myLooper())) : null;
        }
    }

    /* renamed from: n3.e.b.j1.t1.b.b$b */
    /* loaded from: classes-dex2jar.jar:n3/e/b/j1/t1/b/b$b.class */
    public class CallableC26019b implements Callable<Void> {

        /* renamed from: a */
        public final /* synthetic */ Runnable f72669a;

        public CallableC26019b(ScheduledExecutorServiceC26017b scheduledExecutorServiceC26017b, Runnable runnable) {
            this.f72669a = runnable;
        }

        @Override // java.util.concurrent.Callable
        public Void call() throws Exception {
            this.f72669a.run();
            return null;
        }
    }

    /* renamed from: n3.e.b.j1.t1.b.b$c */
    /* loaded from: classes-dex2jar.jar:n3/e/b/j1/t1/b/b$c.class */
    public static class RunnableScheduledFutureC26020c<V> implements RunnableScheduledFuture<V> {

        /* renamed from: a */
        public final AtomicReference<C26247b<V>> f72670a = new AtomicReference<>(null);

        /* renamed from: b */
        public final long f72671b;

        /* renamed from: c */
        public final Callable<V> f72672c;

        /* renamed from: d */
        public final ListenableFuture<V> f72673d;

        /* renamed from: n3.e.b.j1.t1.b.b$c$a */
        /* loaded from: classes-dex2jar.jar:n3/e/b/j1/t1/b/b$c$a.class */
        public class C26021a implements AbstractC26249d<V> {

            /* renamed from: a */
            public final /* synthetic */ Handler f72674a;

            /* renamed from: b */
            public final /* synthetic */ Callable f72675b;

            /* renamed from: n3.e.b.j1.t1.b.b$c$a$a */
            /* loaded from: classes-dex2jar.jar:n3/e/b/j1/t1/b/b$c$a$a.class */
            public class RunnableC26022a implements Runnable {
                public RunnableC26022a() {
                    C26021a.this = r4;
                }

                @Override // java.lang.Runnable
                public void run() {
                    if (RunnableScheduledFutureC26020c.this.f72670a.getAndSet(null) != null) {
                        C26021a c26021a = C26021a.this;
                        c26021a.f72674a.removeCallbacks(RunnableScheduledFutureC26020c.this);
                    }
                }
            }

            public C26021a(Handler handler, Callable callable) {
                RunnableScheduledFutureC26020c.this = r4;
                this.f72674a = handler;
                this.f72675b = callable;
            }

            @Override // p1727n3.p1790h.p1791a.AbstractC26249d
            /* renamed from: a */
            public Object mo2255a(C26247b<V> c26247b) throws RejectedExecutionException {
                RunnableC26022a runnableC26022a = new RunnableC26022a();
                Executor m43268U = MediaSessionCompat.m43268U();
                f<Void> fVar = c26247b.f73171c;
                if (fVar != null) {
                    fVar.addListener(runnableC26022a, m43268U);
                }
                RunnableScheduledFutureC26020c.this.f72670a.set(c26247b);
                return "HandlerScheduledFuture-" + this.f72675b.toString();
            }
        }

        public RunnableScheduledFutureC26020c(Handler handler, long j, Callable<V> callable) {
            this.f72671b = j;
            this.f72672c = callable;
            this.f72673d = MediaSessionCompat.m43231i0(new C26021a(handler, callable));
        }

        @Override // java.util.concurrent.Future
        public boolean cancel(boolean z) {
            return this.f72673d.cancel(z);
        }

        @Override // java.lang.Comparable
        public int compareTo(Delayed delayed) {
            TimeUnit timeUnit = TimeUnit.MILLISECONDS;
            return Long.compare(getDelay(timeUnit), delayed.getDelay(timeUnit));
        }

        @Override // java.util.concurrent.Future
        public V get() throws ExecutionException, InterruptedException {
            return this.f72673d.get();
        }

        @Override // java.util.concurrent.Future
        public V get(long j, TimeUnit timeUnit) throws ExecutionException, InterruptedException, TimeoutException {
            return this.f72673d.get(j, timeUnit);
        }

        @Override // java.util.concurrent.Delayed
        public long getDelay(TimeUnit timeUnit) {
            return timeUnit.convert(this.f72671b - System.currentTimeMillis(), TimeUnit.MILLISECONDS);
        }

        @Override // java.util.concurrent.Future
        public boolean isCancelled() {
            return this.f72673d.isCancelled();
        }

        @Override // java.util.concurrent.Future
        public boolean isDone() {
            return this.f72673d.isDone();
        }

        @Override // java.util.concurrent.RunnableScheduledFuture
        public boolean isPeriodic() {
            return false;
        }

        @Override // java.util.concurrent.RunnableFuture, java.lang.Runnable
        public void run() {
            C26247b<V> andSet = this.f72670a.getAndSet(null);
            if (andSet != null) {
                try {
                    andSet.m2258a(this.f72672c.call());
                } catch (Exception e) {
                    andSet.m2256c(e);
                }
            }
        }
    }

    static {
        new C26018a();
    }

    public ScheduledExecutorServiceC26017b(Handler handler) {
        this.f72668a = handler;
    }

    /* renamed from: a */
    public final RejectedExecutionException m2788a() {
        return new RejectedExecutionException(this.f72668a + " is shutting down");
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean awaitTermination(long j, TimeUnit timeUnit) {
        throw new UnsupportedOperationException(ScheduledExecutorServiceC26017b.class.getSimpleName() + " cannot be shut down. Use Looper.quitSafely().");
    }

    @Override // java.util.concurrent.Executor
    public void execute(Runnable runnable) {
        if (this.f72668a.post(runnable)) {
            return;
        }
        throw m2788a();
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isShutdown() {
        return false;
    }

    @Override // java.util.concurrent.ExecutorService
    public boolean isTerminated() {
        return false;
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture<?> schedule(Runnable runnable, long j, TimeUnit timeUnit) {
        return schedule(new CallableC26019b(this, runnable), j, timeUnit);
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public <V> ScheduledFuture<V> schedule(Callable<V> callable, long j, TimeUnit timeUnit) {
        long convert = TimeUnit.MILLISECONDS.convert(j, timeUnit) + SystemClock.uptimeMillis();
        RunnableScheduledFutureC26020c runnableScheduledFutureC26020c = new RunnableScheduledFutureC26020c(this.f72668a, convert, callable);
        return this.f72668a.postAtTime(runnableScheduledFutureC26020c, convert) ? runnableScheduledFutureC26020c : new AbstractC26039h.b(m2788a());
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture<?> scheduleAtFixedRate(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        throw new UnsupportedOperationException(ScheduledExecutorServiceC26017b.class.getSimpleName() + " does not yet support fixed-rate scheduling.");
    }

    @Override // java.util.concurrent.ScheduledExecutorService
    public ScheduledFuture<?> scheduleWithFixedDelay(Runnable runnable, long j, long j2, TimeUnit timeUnit) {
        throw new UnsupportedOperationException(ScheduledExecutorServiceC26017b.class.getSimpleName() + " does not yet support fixed-delay scheduling.");
    }

    @Override // java.util.concurrent.ExecutorService
    public void shutdown() {
        throw new UnsupportedOperationException(ScheduledExecutorServiceC26017b.class.getSimpleName() + " cannot be shut down. Use Looper.quitSafely().");
    }

    @Override // java.util.concurrent.ExecutorService
    public List<Runnable> shutdownNow() {
        throw new UnsupportedOperationException(ScheduledExecutorServiceC26017b.class.getSimpleName() + " cannot be shut down. Use Looper.quitSafely().");
    }
}
