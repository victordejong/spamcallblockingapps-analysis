package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableDefer.class */
public final class ObservableDefer<T> extends Observable<T> {

    /* renamed from: f */
    final Callable<? extends ObservableSource<? extends T>> f17797f;

    public ObservableDefer(Callable<? extends ObservableSource<? extends T>> callable) {
        this.f17797f = callable;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        try {
            Object call = this.f17797f.call();
            ObjectHelper.m4363e(call, "null ObservableSource supplied");
            ((ObservableSource) call).subscribe(observer);
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            EmptyDisposable.error(th, observer);
        }
    }
}
