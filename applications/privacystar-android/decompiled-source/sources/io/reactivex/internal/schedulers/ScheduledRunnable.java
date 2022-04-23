package io.reactivex.internal.schedulers;

import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableContainer;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicReferenceArray;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/schedulers/ScheduledRunnable.class */
public final class ScheduledRunnable extends AtomicReferenceArray<Object> implements Runnable, Callable<Object>, Disposable {
    static final Object DISPOSED = new Object();
    static final Object DONE = new Object();
    static final int FUTURE_INDEX = 1;
    static final int PARENT_INDEX = 0;
    static final int THREAD_INDEX = 2;
    private static final long serialVersionUID = -6120223772001106981L;
    final Runnable actual;

    public ScheduledRunnable(Runnable runnable, DisposableContainer disposableContainer) {
        super(3);
        this.actual = runnable;
        lazySet(0, disposableContainer);
    }

    @Override // java.util.concurrent.Callable
    public Object call() {
        run();
        return null;
    }

    @Override // io.reactivex.disposables.Disposable
    public void dispose() {
        Object obj;
        while (true) {
            boolean z = true;
            Object obj2 = get(1);
            if (obj2 == DONE || obj2 == DISPOSED) {
                break;
            } else if (compareAndSet(1, obj2, DISPOSED)) {
                if (obj2 != null) {
                    Future future = (Future) obj2;
                    if (get(2) == Thread.currentThread()) {
                        z = false;
                    }
                    future.cancel(z);
                }
            }
        }
        do {
            obj = get(0);
            if (obj == DONE || obj == DISPOSED || obj == null) {
                return;
            }
        } while (!compareAndSet(0, obj, DISPOSED));
        ((DisposableContainer) obj).delete(this);
    }

    @Override // io.reactivex.disposables.Disposable
    public boolean isDisposed() {
        Object obj = get(1);
        boolean z = true;
        if (obj != DISPOSED) {
            z = obj == DONE;
        }
        return z;
    }

    @Override // java.lang.Runnable
    public void run() {
        Object obj;
        Object obj2;
        lazySet(2, Thread.currentThread());
        try {
            this.actual.run();
        } catch (Throwable th) {
            try {
                RxJavaPlugins.onError(th);
            } catch (Throwable th2) {
                lazySet(2, null);
                Object obj3 = get(0);
                if (!(obj3 == DISPOSED || obj3 == null || !compareAndSet(0, obj3, DONE))) {
                    ((DisposableContainer) obj3).delete(this);
                }
                do {
                    obj2 = get(1);
                    if (obj2 == DISPOSED) {
                        break;
                    }
                } while (!compareAndSet(1, obj2, DONE));
                throw th2;
            }
        }
        lazySet(2, null);
        Object obj4 = get(0);
        if (!(obj4 == DISPOSED || obj4 == null || !compareAndSet(0, obj4, DONE))) {
            ((DisposableContainer) obj4).delete(this);
        }
        do {
            obj = get(1);
            if (obj == DISPOSED) {
                return;
            }
        } while (!compareAndSet(1, obj, DONE));
    }

    public void setFuture(Future<?> future) {
        Object obj;
        do {
            boolean z = true;
            obj = get(1);
            if (obj != DONE) {
                if (obj == DISPOSED) {
                    if (get(2) == Thread.currentThread()) {
                        z = false;
                    }
                    future.cancel(z);
                    return;
                }
            } else {
                return;
            }
        } while (!compareAndSet(1, obj, future));
    }
}
