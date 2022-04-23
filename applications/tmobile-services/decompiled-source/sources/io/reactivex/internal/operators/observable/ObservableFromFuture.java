package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.observers.DeferredScalarDisposable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableFromFuture.class */
public final class ObservableFromFuture<T> extends Observable<T> {

    /* renamed from: f */
    final Future<? extends T> f17971f;

    /* renamed from: g */
    final long f17972g;

    /* renamed from: h */
    final TimeUnit f17973h;

    public ObservableFromFuture(Future<? extends T> future, long j, TimeUnit timeUnit) {
        this.f17971f = future;
        this.f17972g = j;
        this.f17973h = timeUnit;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        DeferredScalarDisposable deferredScalarDisposable = new DeferredScalarDisposable(observer);
        observer.onSubscribe(deferredScalarDisposable);
        if (!deferredScalarDisposable.isDisposed()) {
            try {
                Object obj = this.f17973h != null ? this.f17971f.get(this.f17972g, this.f17973h) : this.f17971f.get();
                ObjectHelper.m4363e(obj, "Future returned null");
                deferredScalarDisposable.m4350b(obj);
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                if (!deferredScalarDisposable.isDisposed()) {
                    observer.onError(th);
                }
            }
        }
    }
}
