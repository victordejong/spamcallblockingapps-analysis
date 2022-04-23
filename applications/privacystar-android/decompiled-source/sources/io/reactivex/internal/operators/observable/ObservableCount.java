package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableCount.class */
public final class ObservableCount<T> extends AbstractObservableWithUpstream<T, Long> {

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableCount$CountObserver.class */
    static final class CountObserver implements Observer<Object>, Disposable {
        final Observer<? super Long> actual;
        long count;

        /* renamed from: s */
        Disposable f560s;

        CountObserver(Observer<? super Long> observer) {
            this.actual = observer;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f560s.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f560s.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.actual.onNext(Long.valueOf(this.count));
            this.actual.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.actual.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(Object obj) {
            this.count++;
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f560s, disposable)) {
                this.f560s = disposable;
                this.actual.onSubscribe(this);
            }
        }
    }

    public ObservableCount(ObservableSource<T> observableSource) {
        super(observableSource);
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super Long> observer) {
        this.source.subscribe(new CountObserver(observer));
    }
}
