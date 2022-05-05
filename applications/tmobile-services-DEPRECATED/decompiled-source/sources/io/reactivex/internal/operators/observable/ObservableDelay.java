package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.observers.SerializedObserver;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableDelay.class */
public final class ObservableDelay<T> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final long f17798g;

    /* renamed from: h */
    final TimeUnit f17799h;

    /* renamed from: i */
    final Scheduler f17800i;

    /* renamed from: j */
    final boolean f17801j;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableDelay$DelayObserver.class */
    static final class DelayObserver<T> implements Observer<T>, Disposable {

        /* renamed from: f */
        final Observer<? super T> f17802f;

        /* renamed from: g */
        final long f17803g;

        /* renamed from: h */
        final TimeUnit f17804h;

        /* renamed from: i */
        final Scheduler.Worker f17805i;

        /* renamed from: j */
        final boolean f17806j;

        /* renamed from: k */
        Disposable f17807k;

        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableDelay$DelayObserver$OnComplete.class */
        final class OnComplete implements Runnable {
            OnComplete() {
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    DelayObserver.this.f17802f.onComplete();
                } finally {
                    DelayObserver.this.f17805i.dispose();
                }
            }
        }

        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableDelay$DelayObserver$OnError.class */
        final class OnError implements Runnable {

            /* renamed from: f */
            private final Throwable f17809f;

            OnError(Throwable th) {
                this.f17809f = th;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    DelayObserver.this.f17802f.onError(this.f17809f);
                } finally {
                    DelayObserver.this.f17805i.dispose();
                }
            }
        }

        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableDelay$DelayObserver$OnNext.class */
        final class OnNext implements Runnable {

            /* renamed from: f */
            private final T f17811f;

            OnNext(T t) {
                this.f17811f = t;
            }

            @Override // java.lang.Runnable
            public void run() {
                DelayObserver.this.f17802f.onNext((T) this.f17811f);
            }
        }

        DelayObserver(Observer<? super T> observer, long j, TimeUnit timeUnit, Scheduler.Worker worker, boolean z) {
            this.f17802f = observer;
            this.f17803g = j;
            this.f17804h = timeUnit;
            this.f17805i = worker;
            this.f17806j = z;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17807k.dispose();
            this.f17805i.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17805i.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f17805i.mo3228c(new OnComplete(), this.f17803g, this.f17804h);
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f17805i.mo3228c(new OnError(th), this.f17806j ? this.f17803g : 0L, this.f17804h);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f17805i.mo3228c(new OnNext(t), this.f17803g, this.f17804h);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17807k, disposable)) {
                this.f17807k = disposable;
                this.f17802f.onSubscribe(this);
            }
        }
    }

    public ObservableDelay(ObservableSource<T> observableSource, long j, TimeUnit timeUnit, Scheduler scheduler, boolean z) {
        super(observableSource);
        this.f17798g = j;
        this.f17799h = timeUnit;
        this.f17800i = scheduler;
        this.f17801j = z;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        if (!this.f17801j) {
            observer = new SerializedObserver<>(observer);
        }
        this.f17497f.subscribe(new DelayObserver(observer, this.f17798g, this.f17799h, this.f17800i.mo3232b(), this.f17801j));
    }
}
