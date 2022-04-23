package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiFunction;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.operators.observable.ObservableReduceSeedSingle;
import java.util.concurrent.Callable;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableReduceWithSingle.class */
public final class ObservableReduceWithSingle<T, R> extends Single<R> {

    /* renamed from: f */
    final ObservableSource<T> f18245f;

    /* renamed from: g */
    final Callable<R> f18246g;

    /* renamed from: h */
    final BiFunction<R, ? super T, R> f18247h;

    public ObservableReduceWithSingle(ObservableSource<T> observableSource, Callable<R> callable, BiFunction<R, ? super T, R> biFunction) {
        this.f18245f = observableSource;
        this.f18246g = callable;
        this.f18247h = biFunction;
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super R> singleObserver) {
        try {
            R call = this.f18246g.call();
            ObjectHelper.m4363e(call, "The seedSupplier returned a null value");
            this.f18245f.subscribe(new ObservableReduceSeedSingle.ReduceSeedObserver(singleObserver, this.f18247h, call));
        } catch (Throwable th) {
            Exceptions.m4428b(th);
            EmptyDisposable.error(th, singleObserver);
        }
    }
}
