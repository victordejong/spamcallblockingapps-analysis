package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.schedulers.TrampolineScheduler;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableIntervalRange.class */
public final class ObservableIntervalRange extends Observable<Long> {

    /* renamed from: f */
    final Scheduler f18083f;

    /* renamed from: g */
    final long f18084g;

    /* renamed from: h */
    final long f18085h;

    /* renamed from: i */
    final long f18086i;

    /* renamed from: j */
    final long f18087j;

    /* renamed from: k */
    final TimeUnit f18088k;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableIntervalRange$IntervalRangeObserver.class */
    static final class IntervalRangeObserver extends AtomicReference<Disposable> implements Disposable, Runnable {
        private static final long serialVersionUID = 1891866368734007884L;

        /* renamed from: f */
        final Observer<? super Long> f18089f;

        /* renamed from: g */
        final long f18090g;

        /* renamed from: h */
        long f18091h;

        IntervalRangeObserver(Observer<? super Long> observer, long j, long j2) {
            this.f18089f = observer;
            this.f18091h = j;
            this.f18090g = j2;
        }

        /* renamed from: a */
        public void m3781a(Disposable disposable) {
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
            if (!isDisposed()) {
                long j = this.f18091h;
                this.f18089f.onNext(Long.valueOf(j));
                if (j == this.f18090g) {
                    DisposableHelper.dispose(this);
                    this.f18089f.onComplete();
                    return;
                }
                this.f18091h = j + 1;
            }
        }
    }

    public ObservableIntervalRange(long j, long j2, long j3, long j4, TimeUnit timeUnit, Scheduler scheduler) {
        this.f18086i = j3;
        this.f18087j = j4;
        this.f18088k = timeUnit;
        this.f18083f = scheduler;
        this.f18084g = j;
        this.f18085h = j2;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super Long> observer) {
        IntervalRangeObserver intervalRangeObserver = new IntervalRangeObserver(observer, this.f18084g, this.f18085h);
        observer.onSubscribe(intervalRangeObserver);
        Scheduler scheduler = this.f18083f;
        if (scheduler instanceof TrampolineScheduler) {
            Scheduler.Worker b = scheduler.mo3232b();
            intervalRangeObserver.m3781a(b);
            b.mo3531d(intervalRangeObserver, this.f18086i, this.f18087j, this.f18088k);
            return;
        }
        intervalRangeObserver.m3781a(scheduler.mo3501f(intervalRangeObserver, this.f18086i, this.f18087j, this.f18088k));
    }
}
