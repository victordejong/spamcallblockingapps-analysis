package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.schedulers.TrampolineScheduler;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableInterval.class */
public final class ObservableInterval extends Observable<Long> {

    /* renamed from: f */
    final Scheduler f18077f;

    /* renamed from: g */
    final long f18078g;

    /* renamed from: h */
    final long f18079h;

    /* renamed from: i */
    final TimeUnit f18080i;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableInterval$IntervalObserver.class */
    static final class IntervalObserver extends AtomicReference<Disposable> implements Disposable, Runnable {
        private static final long serialVersionUID = 346773832286157679L;

        /* renamed from: f */
        final Observer<? super Long> f18081f;

        /* renamed from: g */
        long f18082g;

        IntervalObserver(Observer<? super Long> observer) {
            this.f18081f = observer;
        }

        /* renamed from: a */
        public void m3782a(Disposable disposable) {
            DisposableHelper.setOnce(this, disposable);
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
            if (get() != DisposableHelper.DISPOSED) {
                Observer<? super Long> observer = this.f18081f;
                long j = this.f18082g;
                this.f18082g = 1 + j;
                observer.onNext(Long.valueOf(j));
            }
        }
    }

    public ObservableInterval(long j, long j2, TimeUnit timeUnit, Scheduler scheduler) {
        this.f18078g = j;
        this.f18079h = j2;
        this.f18080i = timeUnit;
        this.f18077f = scheduler;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super Long> observer) {
        IntervalObserver intervalObserver = new IntervalObserver(observer);
        observer.onSubscribe(intervalObserver);
        Scheduler scheduler = this.f18077f;
        if (scheduler instanceof TrampolineScheduler) {
            Scheduler.Worker b = scheduler.mo3232b();
            intervalObserver.m3782a(b);
            b.mo3531d(intervalObserver, this.f18078g, this.f18079h, this.f18080i);
            return;
        }
        intervalObserver.m3782a(scheduler.mo3501f(intervalObserver, this.f18078g, this.f18079h, this.f18080i));
    }
}
