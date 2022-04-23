package io.reactivex.internal.schedulers;

import io.reactivex.disposables.Disposable;
import io.reactivex.internal.functions.Functions;
import io.reactivex.schedulers.SchedulerRunnableIntrospection;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/AbstractDirectTask.class */
abstract class AbstractDirectTask extends AtomicReference<Future<?>> implements Disposable, SchedulerRunnableIntrospection {

    /* renamed from: h */
    protected static final FutureTask<Void> f19224h = new FutureTask<>(Functions.f15130b, null);

    /* renamed from: i */
    protected static final FutureTask<Void> f19225i = new FutureTask<>(Functions.f15130b, null);
    private static final long serialVersionUID = 1811839108042568751L;

    /* renamed from: f */
    protected final Runnable f19226f;

    /* renamed from: g */
    protected Thread f19227g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractDirectTask(Runnable runnable) {
        this.f19226f = runnable;
    }

    /* renamed from: a */
    public final void m3537a(Future<?> future) {
        Future<?> future2;
        do {
            future2 = get();
            if (future2 != f19224h) {
                if (future2 == f19225i) {
                    future.cancel(this.f19227g != Thread.currentThread());
                    return;
                }
            } else {
                return;
            }
        } while (!compareAndSet(future2, future));
    }

    @Override // io.reactivex.disposables.Disposable
    public final void dispose() {
        FutureTask<Void> futureTask;
        Future<?> future = get();
        if (future != f19224h && future != (futureTask = f19225i) && compareAndSet(future, futureTask) && future != null) {
            future.cancel(this.f19227g != Thread.currentThread());
        }
    }

    @Override // io.reactivex.disposables.Disposable
    public final boolean isDisposed() {
        Future<?> future = get();
        return future == f19224h || future == f19225i;
    }
}
