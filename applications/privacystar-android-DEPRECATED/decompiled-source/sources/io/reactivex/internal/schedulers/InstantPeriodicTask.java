package io.reactivex.internal.schedulers;

import io.reactivex.disposables.Disposable;
import io.reactivex.internal.functions.Functions;
import java.util.concurrent.Callable;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Future;
import java.util.concurrent.FutureTask;
import java.util.concurrent.atomic.AtomicReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/InstantPeriodicTask.class */
public final class InstantPeriodicTask implements Callable<Void>, Disposable {
    static final FutureTask<Void> CANCELLED = new FutureTask<>(Functions.EMPTY_RUNNABLE, null);
    final ExecutorService executor;
    final AtomicReference<Future<?>> first = new AtomicReference<>();
    final AtomicReference<Future<?>> rest = new AtomicReference<>();
    Thread runner;
    final Runnable task;

    /* JADX INFO: Access modifiers changed from: package-private */
    public InstantPeriodicTask(Runnable runnable, ExecutorService executorService) {
        this.task = runnable;
        this.executor = executorService;
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.util.concurrent.Callable
    public Void call() throws Exception {
        try {
            this.runner = Thread.currentThread();
            this.task.run();
            setRest(this.executor.submit(this));
            this.runner = null;
            return null;
        } catch (Throwable th) {
            this.runner = null;
            throw th;
        }
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        Future<?> andSet = this.first.getAndSet(CANCELLED);
        boolean z = false;
        if (!(andSet == null || andSet == CANCELLED)) {
            andSet.cancel(this.runner != Thread.currentThread());
        }
        Future<?> andSet2 = this.rest.getAndSet(CANCELLED);
        if (andSet2 != null && andSet2 != CANCELLED) {
            if (this.runner != Thread.currentThread()) {
                z = true;
            }
            andSet2.cancel(z);
        }
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        return this.first.get() == CANCELLED;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setFirst(Future<?> future) {
        Future<?> future2;
        do {
            future2 = this.first.get();
            if (future2 == CANCELLED) {
                future.cancel(this.runner != Thread.currentThread());
            }
        } while (!this.first.compareAndSet(future2, future));
    }

    void setRest(Future<?> future) {
        Future<?> future2;
        do {
            future2 = this.rest.get();
            if (future2 == CANCELLED) {
                future.cancel(this.runner != Thread.currentThread());
            }
        } while (!this.rest.compareAndSet(future2, future));
    }
}
