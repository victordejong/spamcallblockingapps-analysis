package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableDelaySubscriptionOther.class */
public final class ObservableDelaySubscriptionOther<T, U> extends Observable<T> {

    /* renamed from: f */
    final ObservableSource<? extends T> f17813f;

    /* renamed from: g */
    final ObservableSource<U> f17814g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableDelaySubscriptionOther$DelayObserver.class */
    final class DelayObserver implements Observer<U> {

        /* renamed from: f */
        final SequentialDisposable f17815f;

        /* renamed from: g */
        final Observer<? super T> f17816g;

        /* renamed from: h */
        boolean f17817h;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableDelaySubscriptionOther$DelayObserver$OnComplete.class */
        public final class OnComplete implements Observer<T> {
            OnComplete() {
            }

            @Override // io.reactivex.Observer
            public void onComplete() {
                DelayObserver.this.f17816g.onComplete();
            }

            @Override // io.reactivex.Observer
            public void onError(Throwable th) {
                DelayObserver.this.f17816g.onError(th);
            }

            @Override // io.reactivex.Observer
            public void onNext(T t) {
                DelayObserver.this.f17816g.onNext(t);
            }

            @Override // io.reactivex.Observer
            public void onSubscribe(Disposable disposable) {
                DelayObserver.this.f17815f.m4421b(disposable);
            }
        }

        DelayObserver(SequentialDisposable sequentialDisposable, Observer<? super T> observer) {
            this.f17815f = sequentialDisposable;
            this.f17816g = observer;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.f17817h) {
                this.f17817h = true;
                ObservableDelaySubscriptionOther.this.f17813f.subscribe(new OnComplete());
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f17817h) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f17817h = true;
            this.f17816g.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(U u) {
            onComplete();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            this.f17815f.m4421b(disposable);
        }
    }

    public ObservableDelaySubscriptionOther(ObservableSource<? extends T> observableSource, ObservableSource<U> observableSource2) {
        this.f17813f = observableSource;
        this.f17814g = observableSource2;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        SequentialDisposable sequentialDisposable = new SequentialDisposable();
        observer.onSubscribe(sequentialDisposable);
        this.f17814g.subscribe(new DelayObserver(sequentialDisposable, observer));
    }
}
