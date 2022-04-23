package io.reactivex.internal.operators.observable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.fuseable.FuseToObservable;
import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableIgnoreElementsCompletable.class */
public final class ObservableIgnoreElementsCompletable<T> extends Completable implements FuseToObservable<T> {

    /* renamed from: f */
    final ObservableSource<T> f18048f;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableIgnoreElementsCompletable$IgnoreObservable.class */
    static final class IgnoreObservable<T> implements Observer<T>, Disposable {

        /* renamed from: f */
        final CompletableObserver f18049f;

        /* renamed from: g */
        Disposable f18050g;

        IgnoreObservable(CompletableObserver completableObserver) {
            this.f18049f = completableObserver;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f18050g.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18050g.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f18049f.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f18049f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            this.f18050g = disposable;
            this.f18049f.onSubscribe(this);
        }
    }

    public ObservableIgnoreElementsCompletable(ObservableSource<T> observableSource) {
        this.f18048f = observableSource;
    }

    @Override // io.reactivex.internal.fuseable.FuseToObservable
    /* renamed from: a */
    public Observable<T> mo3663a() {
        return RxJavaPlugins.m3360n(new ObservableIgnoreElements(this.f18048f));
    }

    @Override // io.reactivex.Completable
    /* renamed from: d */
    public void mo3214d(CompletableObserver completableObserver) {
        this.f18048f.subscribe(new IgnoreObservable(completableObserver));
    }
}
