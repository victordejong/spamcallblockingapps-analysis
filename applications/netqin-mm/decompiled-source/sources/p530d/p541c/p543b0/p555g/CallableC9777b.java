package p530d.p541c.p543b0.p555g;

import io.reactivex.internal.functions.Functions;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.p560e0.C9815a;
import p530d.p541c.p568x.AbstractC9861b;
/* renamed from: d.c.b0.g.b */
/* loaded from: classes2-dex2jar.jar:d/c/b0/g/b.class */
public final class CallableC9777b implements Callable<Void>, AbstractC9861b {

    /* renamed from: f */
    public static final FutureTask<Void> f36938f = new FutureTask<>(Functions.f38320b, null);

    /* renamed from: a */
    public final Runnable f36939a;

    /* renamed from: d */
    public final ExecutorService f36942d;

    /* renamed from: e */
    public Thread f36943e;

    /* renamed from: c */
    public final AtomicReference<Future<?>> f36941c = new AtomicReference<>();

    /* renamed from: b */
    public final AtomicReference<Future<?>> f36940b = new AtomicReference<>();

    public CallableC9777b(Runnable runnable, ExecutorService executorService) {
        this.f36939a = runnable;
        this.f36942d = executorService;
    }

    /* renamed from: a */
    public void m2046a(Future<?> future) {
        Future<?> future2;
        do {
            future2 = this.f36941c.get();
            if (future2 == f36938f) {
                future.cancel(this.f36943e != Thread.currentThread());
                return;
            }
        } while (!this.f36941c.compareAndSet(future2, future));
    }

    /* renamed from: b */
    public void m2045b(Future<?> future) {
        Future<?> future2;
        do {
            future2 = this.f36940b.get();
            if (future2 == f36938f) {
                future.cancel(this.f36943e != Thread.currentThread());
                return;
            }
        } while (!this.f36940b.compareAndSet(future2, future));
    }

    @Override // java.util.concurrent.Callable
    public Void call() throws Exception {
        this.f36943e = Thread.currentThread();
        try {
            this.f36939a.run();
            m2045b(this.f36942d.submit(this));
            this.f36943e = null;
            return null;
        } catch (Throwable th) {
            this.f36943e = null;
            C9815a.m1923b(th);
            return null;
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public void dispose() {
        Future<?> andSet = this.f36941c.getAndSet(f36938f);
        boolean z = true;
        if (!(andSet == null || andSet == f36938f)) {
            andSet.cancel(this.f36943e != Thread.currentThread());
        }
        Future<?> andSet2 = this.f36940b.getAndSet(f36938f);
        if (andSet2 != null && andSet2 != f36938f) {
            if (this.f36943e == Thread.currentThread()) {
                z = false;
            }
            andSet2.cancel(z);
        }
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public boolean isDisposed() {
        return this.f36941c.get() == f36938f;
    }
}
