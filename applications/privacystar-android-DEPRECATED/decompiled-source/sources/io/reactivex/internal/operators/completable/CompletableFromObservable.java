package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableFromObservable.class */
public final class CompletableFromObservable<T> extends Completable {
    final ObservableSource<T> observable;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableFromObservable$CompletableFromObservableObserver.class */
    static final class CompletableFromObservableObserver<T> implements Observer<T> {

        /* renamed from: co */
        final CompletableObserver f367co;

        CompletableFromObservableObserver(CompletableObserver completableObserver) {
            this.f367co = completableObserver;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f367co.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f367co.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            this.f367co.onSubscribe(disposable);
        }
    }

    public CompletableFromObservable(ObservableSource<T> observableSource) {
        this.observable = observableSource;
    }

    @Override // io.reactivex.Completable
    protected void subscribeActual(CompletableObserver completableObserver) {
        this.observable.subscribe(new CompletableFromObservableObserver(completableObserver));
    }
}
