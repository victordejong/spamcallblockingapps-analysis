package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.observers.DeferredScalarDisposable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableFromCallable.class */
public final class ObservableFromCallable<T> extends Observable<T> implements Callable<T> {

    /* renamed from: f */
    final Callable<? extends T> f17970f;

    public ObservableFromCallable(Callable<? extends T> callable) {
        this.f17970f = callable;
    }

    @Override // java.util.concurrent.Callable
    public T call() throws Exception {
        T t = (T) this.f17970f.call();
        ObjectHelper.m4363e(t, "The callable returned a null value");
        return t;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        DeferredScalarDisposable deferredScalarDisposable = new DeferredScalarDisposable(observer);
        observer.onSubscribe(deferredScalarDisposable);
        if (!deferredScalarDisposable.isDisposed()) {
            try {
                Object call = this.f17970f.call();
                ObjectHelper.m4363e(call, "Callable returned null");
                deferredScalarDisposable.m4350b(call);
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                if (!deferredScalarDisposable.isDisposed()) {
                    observer.onError(th);
                } else {
                    RxJavaPlugins.m3354t(th);
                }
            }
        }
    }
}
