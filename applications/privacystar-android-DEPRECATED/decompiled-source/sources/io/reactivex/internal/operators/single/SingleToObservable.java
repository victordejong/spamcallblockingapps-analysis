package io.reactivex.internal.operators.single;

import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleToObservable.class */
public final class SingleToObservable<T> extends Observable<T> {
    final SingleSource<? extends T> source;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleToObservable$SingleToObservableObserver.class */
    static final class SingleToObservableObserver<T> implements SingleObserver<T>, Disposable {
        final Observer<? super T> actual;

        /* renamed from: d */
        Disposable f694d;

        SingleToObservableObserver(Observer<? super T> observer) {
            this.actual = observer;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f694d.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f694d.isDisposed();
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.actual.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f694d, disposable)) {
                this.f694d = disposable;
                this.actual.onSubscribe(this);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            this.actual.onNext(t);
            this.actual.onComplete();
        }
    }

    public SingleToObservable(SingleSource<? extends T> singleSource) {
        this.source = singleSource;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.source.subscribe(new SingleToObservableObserver(observer));
    }
}
