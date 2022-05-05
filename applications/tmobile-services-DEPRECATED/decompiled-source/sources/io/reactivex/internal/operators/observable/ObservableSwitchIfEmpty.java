package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.SequentialDisposable;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSwitchIfEmpty.class */
public final class ObservableSwitchIfEmpty<T> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final ObservableSource<? extends T> f18470g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSwitchIfEmpty$SwitchIfEmptyObserver.class */
    static final class SwitchIfEmptyObserver<T> implements Observer<T> {

        /* renamed from: f */
        final Observer<? super T> f18471f;

        /* renamed from: g */
        final ObservableSource<? extends T> f18472g;

        /* renamed from: i */
        boolean f18474i = true;

        /* renamed from: h */
        final SequentialDisposable f18473h = new SequentialDisposable();

        SwitchIfEmptyObserver(Observer<? super T> observer, ObservableSource<? extends T> observableSource) {
            this.f18471f = observer;
            this.f18472g = observableSource;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.f18474i) {
                this.f18474i = false;
                this.f18472g.subscribe(this);
                return;
            }
            this.f18471f.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f18471f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.f18474i) {
                this.f18474i = false;
            }
            this.f18471f.onNext(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            this.f18473h.m4421b(disposable);
        }
    }

    public ObservableSwitchIfEmpty(ObservableSource<T> observableSource, ObservableSource<? extends T> observableSource2) {
        super(observableSource);
        this.f18470g = observableSource2;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        SwitchIfEmptyObserver switchIfEmptyObserver = new SwitchIfEmptyObserver(observer, this.f18470g);
        observer.onSubscribe(switchIfEmptyObserver.f18473h);
        this.f17497f.subscribe(switchIfEmptyObserver);
    }
}
