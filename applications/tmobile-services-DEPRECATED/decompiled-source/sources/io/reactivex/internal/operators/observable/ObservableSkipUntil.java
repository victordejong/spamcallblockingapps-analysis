package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.ArrayCompositeDisposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.observers.SerializedObserver;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSkipUntil.class */
public final class ObservableSkipUntil<T, U> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final ObservableSource<U> f18450g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntil.class */
    final class SkipUntil implements Observer<U> {

        /* renamed from: f */
        final ArrayCompositeDisposable f18451f;

        /* renamed from: g */
        final SkipUntilObserver<T> f18452g;

        /* renamed from: h */
        final SerializedObserver<T> f18453h;

        /* renamed from: i */
        Disposable f18454i;

        SkipUntil(ObservableSkipUntil observableSkipUntil, ArrayCompositeDisposable arrayCompositeDisposable, SkipUntilObserver<T> skipUntilObserver, SerializedObserver<T> serializedObserver) {
            this.f18451f = arrayCompositeDisposable;
            this.f18452g = skipUntilObserver;
            this.f18453h = serializedObserver;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f18452g.f18458i = true;
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f18451f.dispose();
            this.f18453h.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(U u) {
            this.f18454i.dispose();
            this.f18452g.f18458i = true;
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18454i, disposable)) {
                this.f18454i = disposable;
                this.f18451f.m4427a(1, disposable);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSkipUntil$SkipUntilObserver.class */
    static final class SkipUntilObserver<T> implements Observer<T> {

        /* renamed from: f */
        final Observer<? super T> f18455f;

        /* renamed from: g */
        final ArrayCompositeDisposable f18456g;

        /* renamed from: h */
        Disposable f18457h;

        /* renamed from: i */
        volatile boolean f18458i;

        /* renamed from: j */
        boolean f18459j;

        SkipUntilObserver(Observer<? super T> observer, ArrayCompositeDisposable arrayCompositeDisposable) {
            this.f18455f = observer;
            this.f18456g = arrayCompositeDisposable;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f18456g.dispose();
            this.f18455f.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f18456g.dispose();
            this.f18455f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.f18459j) {
                this.f18455f.onNext(t);
            } else if (this.f18458i) {
                this.f18459j = true;
                this.f18455f.onNext(t);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18457h, disposable)) {
                this.f18457h = disposable;
                this.f18456g.m4427a(0, disposable);
            }
        }
    }

    public ObservableSkipUntil(ObservableSource<T> observableSource, ObservableSource<U> observableSource2) {
        super(observableSource);
        this.f18450g = observableSource2;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        SerializedObserver serializedObserver = new SerializedObserver(observer);
        ArrayCompositeDisposable arrayCompositeDisposable = new ArrayCompositeDisposable(2);
        serializedObserver.onSubscribe(arrayCompositeDisposable);
        SkipUntilObserver skipUntilObserver = new SkipUntilObserver(serializedObserver, arrayCompositeDisposable);
        this.f18450g.subscribe(new SkipUntil(this, arrayCompositeDisposable, skipUntilObserver, serializedObserver));
        this.f17497f.subscribe(skipUntilObserver);
    }
}
