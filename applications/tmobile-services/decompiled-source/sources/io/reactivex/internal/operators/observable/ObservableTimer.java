package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableTimer.class */
public final class ObservableTimer extends Observable<Long> {

    /* renamed from: f */
    final Scheduler f18609f;

    /* renamed from: g */
    final long f18610g;

    /* renamed from: h */
    final TimeUnit f18611h;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableTimer$TimerObserver.class */
    static final class TimerObserver extends AtomicReference<Disposable> implements Disposable, Runnable {
        private static final long serialVersionUID = -2809475196591179431L;

        /* renamed from: f */
        final Observer<? super Long> f18612f;

        TimerObserver(Observer<? super Long> observer) {
            this.f18612f = observer;
        }

        /* renamed from: a */
        public void m3664a(Disposable disposable) {
            DisposableHelper.trySet(this, disposable);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get() == DisposableHelper.DISPOSED;
        }

        @Override // java.lang.Runnable
        public void run() {
            if (!isDisposed()) {
                this.f18612f.onNext(0L);
                lazySet(EmptyDisposable.INSTANCE);
                this.f18612f.onComplete();
            }
        }
    }

    public ObservableTimer(long j, TimeUnit timeUnit, Scheduler scheduler) {
        this.f18610g = j;
        this.f18611h = timeUnit;
        this.f18609f = scheduler;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super Long> observer) {
        TimerObserver timerObserver = new TimerObserver(observer);
        observer.onSubscribe(timerObserver);
        timerObserver.m3664a(this.f18609f.mo3498e(timerObserver, this.f18610g, this.f18611h));
    }
}
