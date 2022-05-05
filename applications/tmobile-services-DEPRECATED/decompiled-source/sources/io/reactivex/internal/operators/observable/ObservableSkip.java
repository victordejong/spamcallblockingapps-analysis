package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSkip.class */
public final class ObservableSkip<T> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final long f18427g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSkip$SkipObserver.class */
    static final class SkipObserver<T> implements Observer<T>, Disposable {

        /* renamed from: f */
        final Observer<? super T> f18428f;

        /* renamed from: g */
        long f18429g;

        /* renamed from: h */
        Disposable f18430h;

        SkipObserver(Observer<? super T> observer, long j) {
            this.f18428f = observer;
            this.f18429g = j;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f18430h.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18430h.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f18428f.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f18428f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            long j = this.f18429g;
            if (j != 0) {
                this.f18429g = j - 1;
            } else {
                this.f18428f.onNext(t);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18430h, disposable)) {
                this.f18430h = disposable;
                this.f18428f.onSubscribe(this);
            }
        }
    }

    public ObservableSkip(ObservableSource<T> observableSource, long j) {
        super(observableSource);
        this.f18427g = j;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.f17497f.subscribe(new SkipObserver(observer, this.f18427g));
    }
}
