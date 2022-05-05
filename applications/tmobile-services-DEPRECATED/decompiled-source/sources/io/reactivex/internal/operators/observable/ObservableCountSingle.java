package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.fuseable.FuseToObservable;
import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableCountSingle.class */
public final class ObservableCountSingle<T> extends Single<Long> implements FuseToObservable<Long> {

    /* renamed from: f */
    final ObservableSource<T> f17760f;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableCountSingle$CountObserver.class */
    static final class CountObserver implements Observer<Object>, Disposable {

        /* renamed from: f */
        final SingleObserver<? super Long> f17761f;

        /* renamed from: g */
        Disposable f17762g;

        /* renamed from: h */
        long f17763h;

        CountObserver(SingleObserver<? super Long> singleObserver) {
            this.f17761f = singleObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17762g.dispose();
            this.f17762g = DisposableHelper.DISPOSED;
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17762g.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f17762g = DisposableHelper.DISPOSED;
            this.f17761f.onSuccess(Long.valueOf(this.f17763h));
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f17762g = DisposableHelper.DISPOSED;
            this.f17761f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(Object obj) {
            this.f17763h++;
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17762g, disposable)) {
                this.f17762g = disposable;
                this.f17761f.onSubscribe(this);
            }
        }
    }

    public ObservableCountSingle(ObservableSource<T> observableSource) {
        this.f17760f = observableSource;
    }

    @Override // io.reactivex.internal.fuseable.FuseToObservable
    /* renamed from: a */
    public Observable<Long> mo3663a() {
        return RxJavaPlugins.m3360n(new ObservableCount(this.f17760f));
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    public void mo3189k(SingleObserver<? super Long> singleObserver) {
        this.f17760f.subscribe(new CountObserver(singleObserver));
    }
}
