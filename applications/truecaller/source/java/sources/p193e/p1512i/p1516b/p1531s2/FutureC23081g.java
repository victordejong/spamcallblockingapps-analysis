package p193e.p1512i.p1516b.p1531s2;

import java.util.concurrent.Callable;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
/* renamed from: e.i.b.s2.g */
/* loaded from: classes-dex2jar.jar:e/i/b/s2/g.class */
public class FutureC23081g<T> implements Future<T> {

    /* renamed from: a */
    public final AtomicReference<C23084c<T>> f63909a = new AtomicReference<>();

    /* renamed from: b */
    public final CountDownLatch f63910b = new CountDownLatch(1);

    /* renamed from: c */
    public final FutureTask<T> f63911c = new FutureTask<>(new CallableC23083b(null));

    /* renamed from: e.i.b.s2.g$b */
    /* loaded from: classes-dex2jar.jar:e/i/b/s2/g$b.class */
    public class CallableC23083b implements Callable<T> {
        public CallableC23083b(C23082a c23082a) {
            FutureC23081g.this = r4;
        }

        @Override // java.util.concurrent.Callable
        public T call() throws Exception {
            FutureC23081g.this.f63910b.await();
            return FutureC23081g.this.f63909a.get().f63913a;
        }
    }

    /* renamed from: e.i.b.s2.g$c */
    /* loaded from: classes-dex2jar.jar:e/i/b/s2/g$c.class */
    public static final class C23084c<T> {

        /* renamed from: a */
        public final T f63913a;

        public C23084c(T t) {
            this.f63913a = t;
        }
    }

    @Override // java.util.concurrent.Future
    public boolean cancel(boolean z) {
        return this.f63911c.cancel(z);
    }

    @Override // java.util.concurrent.Future
    public T get() throws InterruptedException, ExecutionException {
        this.f63911c.run();
        return this.f63911c.get();
    }

    @Override // java.util.concurrent.Future
    public T get(long j, TimeUnit timeUnit) throws InterruptedException, ExecutionException, TimeoutException {
        this.f63911c.run();
        return this.f63911c.get(j, timeUnit);
    }

    @Override // java.util.concurrent.Future
    public boolean isCancelled() {
        return this.f63911c.isCancelled();
    }

    @Override // java.util.concurrent.Future
    public boolean isDone() {
        return this.f63911c.isDone();
    }
}
