package io.reactivex.internal.schedulers;

import io.reactivex.internal.functions.Functions;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicReference;
import p530d.p541c.p568x.AbstractC9861b;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/AbstractDirectTask.class */
public abstract class AbstractDirectTask extends AtomicReference<Future<?>> implements AbstractC9861b {
    public static final long serialVersionUID = 1811839108042568751L;
    public final Runnable runnable;
    public Thread runner;
    public static final FutureTask<Void> FINISHED = new FutureTask<>(Functions.f38320b, null);
    public static final FutureTask<Void> DISPOSED = new FutureTask<>(Functions.f38320b, null);

    public AbstractDirectTask(Runnable runnable) {
        this.runnable = runnable;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public final void dispose() {
        FutureTask<Void> futureTask;
        Future<?> future = get();
        if (future != FINISHED && future != (futureTask = DISPOSED) && compareAndSet(future, futureTask) && future != null) {
            future.cancel(this.runner != Thread.currentThread());
        }
    }

    public Runnable getWrappedRunnable() {
        return this.runnable;
    }

    @Override // p530d.p541c.p568x.AbstractC9861b
    public final boolean isDisposed() {
        Future<?> future = get();
        return future == FINISHED || future == DISPOSED;
    }

    public final void setFuture(Future<?> future) {
        Future<?> future2;
        do {
            future2 = get();
            if (future2 != FINISHED) {
                if (future2 == DISPOSED) {
                    future.cancel(this.runner != Thread.currentThread());
                    return;
                }
            } else {
                return;
            }
        } while (!compareAndSet(future2, future));
    }
}
