package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableError.class */
public final class ObservableError<T> extends Observable<T> {

    /* renamed from: f */
    final Callable<? extends Throwable> f17885f;

    public ObservableError(Callable<? extends Throwable> callable) {
        this.f17885f = callable;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        Throwable th;
        try {
            Object call = this.f17885f.call();
            ObjectHelper.m4363e(call, "Callable returned null throwable. Null values are generally not allowed in 2.x operators and sources.");
            th = (Throwable) call;
        } catch (Throwable th2) {
            th = th2;
            Exceptions.m4428b(th);
        }
        EmptyDisposable.error(th, observer);
    }
}
