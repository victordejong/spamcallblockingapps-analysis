package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSkip.class */
public final class ObservableSkip<T> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: n */
    final long f616n;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSkip$SkipObserver.class */
    static final class SkipObserver<T> implements Observer<T>, Disposable {
        final Observer<? super T> actual;

        /* renamed from: d */
        Disposable f617d;
        long remaining;

        SkipObserver(Observer<? super T> observer, long j) {
            this.actual = observer;
            this.remaining = j;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f617d.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f617d.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.actual.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.actual.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.remaining != 0) {
                this.remaining--;
            } else {
                this.actual.onNext(t);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            this.f617d = disposable;
            this.actual.onSubscribe(this);
        }
    }

    public ObservableSkip(ObservableSource<T> observableSource, long j) {
        super(observableSource);
        this.f616n = j;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.source.subscribe(new SkipObserver(observer, this.f616n));
    }
}
