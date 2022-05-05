package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableFromObservable.class */
public final class CompletableFromObservable<T> extends Completable {

    /* renamed from: f */
    final ObservableSource<T> f15303f;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableFromObservable$CompletableFromObservableObserver.class */
    static final class CompletableFromObservableObserver<T> implements Observer<T> {

        /* renamed from: f */
        final CompletableObserver f15304f;

        CompletableFromObservableObserver(CompletableObserver completableObserver) {
            this.f15304f = completableObserver;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f15304f.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f15304f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            this.f15304f.onSubscribe(disposable);
        }
    }

    @Override // io.reactivex.Completable
    /* renamed from: d */
    protected void mo3214d(CompletableObserver completableObserver) {
        this.f15303f.subscribe(new CompletableFromObservableObserver(completableObserver));
    }
}
