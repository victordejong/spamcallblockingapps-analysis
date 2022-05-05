package io.reactivex.internal.schedulers;

import io.reactivex.disposables.Disposable;
import io.reactivex.internal.functions.Functions;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/InstantPeriodicTask.class */
public final class InstantPeriodicTask implements Callable<Void>, Disposable {

    /* renamed from: k */
    static final FutureTask<Void> f19265k = new FutureTask<>(Functions.f15130b, null);

    /* renamed from: f */
    final Runnable f19266f;

    /* renamed from: i */
    final ExecutorService f19269i;

    /* renamed from: j */
    Thread f19270j;

    /* renamed from: h */
    final AtomicReference<Future<?>> f19268h = new AtomicReference<>();

    /* renamed from: g */
    final AtomicReference<Future<?>> f19267g = new AtomicReference<>();

    /* JADX INFO: Access modifiers changed from: package-private */
    public InstantPeriodicTask(Runnable runnable, ExecutorService executorService) {
        this.f19266f = runnable;
        this.f19269i = executorService;
    }

    /* renamed from: a */
    public Void call() throws Exception {
        this.f19270j = Thread.currentThread();
        try {
            this.f19266f.run();
            m3528c(this.f19269i.submit(this));
            this.f19270j = null;
            return null;
        } catch (Throwable th) {
            this.f19270j = null;
            RxJavaPlugins.m3354t(th);
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public void m3529b(Future<?> future) {
        Future<?> future2;
        do {
            future2 = this.f19268h.get();
            if (future2 == f19265k) {
                future.cancel(this.f19270j != Thread.currentThread());
                return;
            }
        } while (!this.f19268h.compareAndSet(future2, future));
    }

    /* renamed from: c */
    void m3528c(Future<?> future) {
        Future<?> future2;
        do {
            future2 = this.f19267g.get();
            if (future2 == f19265k) {
                future.cancel(this.f19270j != Thread.currentThread());
                return;
            }
        } while (!this.f19267g.compareAndSet(future2, future));
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        Future<?> andSet = this.f19268h.getAndSet(f19265k);
        boolean z = true;
        if (!(andSet == null || andSet == f19265k)) {
            andSet.cancel(this.f19270j != Thread.currentThread());
        }
        Future<?> andSet2 = this.f19267g.getAndSet(f19265k);
        if (andSet2 != null && andSet2 != f19265k) {
            if (this.f19270j == Thread.currentThread()) {
                z = false;
            }
            andSet2.cancel(z);
        }
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return this.f19268h.get() == f19265k;
    }
}
