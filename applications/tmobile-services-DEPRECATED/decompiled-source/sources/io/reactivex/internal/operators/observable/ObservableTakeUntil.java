package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.HalfSerializer;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableTakeUntil.class */
public final class ObservableTakeUntil<T, U> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final ObservableSource<? extends U> f18523g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntilMainObserver.class */
    static final class TakeUntilMainObserver<T, U> extends AtomicInteger implements Observer<T>, Disposable {
        private static final long serialVersionUID = 1418547743690811973L;

        /* renamed from: f */
        final Observer<? super T> f18524f;

        /* renamed from: g */
        final AtomicReference<Disposable> f18525g = new AtomicReference<>();

        /* renamed from: h */
        final TakeUntilMainObserver<T, U>.OtherObserver f18526h = new OtherObserver();

        /* renamed from: i */
        final AtomicThrowable f18527i = new AtomicThrowable();

        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableTakeUntil$TakeUntilMainObserver$OtherObserver.class */
        final class OtherObserver extends AtomicReference<Disposable> implements Observer<U> {
            private static final long serialVersionUID = -8693423678067375039L;

            OtherObserver() {
            }

            @Override // io.reactivex.Observer
            public void onComplete() {
                TakeUntilMainObserver.this.m3673a();
            }

            @Override // io.reactivex.Observer
            public void onError(Throwable th) {
                TakeUntilMainObserver.this.m3672b(th);
            }

            @Override // io.reactivex.Observer
            public void onNext(U u) {
                DisposableHelper.dispose(this);
                TakeUntilMainObserver.this.m3673a();
            }

            @Override // io.reactivex.Observer
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.setOnce(this, disposable);
            }
        }

        TakeUntilMainObserver(Observer<? super T> observer) {
            this.f18524f = observer;
        }

        /* renamed from: a */
        void m3673a() {
            DisposableHelper.dispose(this.f18525g);
            HalfSerializer.m3433a(this.f18524f, this, this.f18527i);
        }

        /* renamed from: b */
        void m3672b(Throwable th) {
            DisposableHelper.dispose(this.f18525g);
            HalfSerializer.m3431c(this.f18524f, th, this, this.f18527i);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this.f18525g);
            DisposableHelper.dispose(this.f18526h);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f18525g.get());
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            DisposableHelper.dispose(this.f18526h);
            HalfSerializer.m3433a(this.f18524f, this, this.f18527i);
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            DisposableHelper.dispose(this.f18526h);
            HalfSerializer.m3431c(this.f18524f, th, this, this.f18527i);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            HalfSerializer.m3429e(this.f18524f, t, this, this.f18527i);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this.f18525g, disposable);
        }
    }

    public ObservableTakeUntil(ObservableSource<T> observableSource, ObservableSource<? extends U> observableSource2) {
        super(observableSource);
        this.f18523g = observableSource2;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        TakeUntilMainObserver takeUntilMainObserver = new TakeUntilMainObserver(observer);
        observer.onSubscribe(takeUntilMainObserver);
        this.f18523g.subscribe(takeUntilMainObserver.f18526h);
        this.f17497f.subscribe(takeUntilMainObserver);
    }
}
