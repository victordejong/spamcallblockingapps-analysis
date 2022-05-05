package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.schedulers.Timed;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableTimeInterval.class */
public final class ObservableTimeInterval<T> extends AbstractObservableWithUpstream<T, Timed<T>> {

    /* renamed from: g */
    final Scheduler f18565g;

    /* renamed from: h */
    final TimeUnit f18566h;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableTimeInterval$TimeIntervalObserver.class */
    static final class TimeIntervalObserver<T> implements Observer<T>, Disposable {

        /* renamed from: f */
        final Observer<? super Timed<T>> f18567f;

        /* renamed from: g */
        final TimeUnit f18568g;

        /* renamed from: h */
        final Scheduler f18569h;

        /* renamed from: i */
        long f18570i;

        /* renamed from: j */
        Disposable f18571j;

        TimeIntervalObserver(Observer<? super Timed<T>> observer, TimeUnit timeUnit, Scheduler scheduler) {
            this.f18567f = observer;
            this.f18569h = scheduler;
            this.f18568g = timeUnit;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f18571j.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18571j.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f18567f.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f18567f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            long c = this.f18569h.mo3231c(this.f18568g);
            long j = this.f18570i;
            this.f18570i = c;
            this.f18567f.onNext(new Timed(t, c - j, this.f18568g));
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18571j, disposable)) {
                this.f18571j = disposable;
                this.f18570i = this.f18569h.mo3231c(this.f18568g);
                this.f18567f.onSubscribe(this);
            }
        }
    }

    public ObservableTimeInterval(ObservableSource<T> observableSource, TimeUnit timeUnit, Scheduler scheduler) {
        super(observableSource);
        this.f18565g = scheduler;
        this.f18566h = timeUnit;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super Timed<T>> observer) {
        this.f17497f.subscribe(new TimeIntervalObserver(observer, this.f18566h, this.f18565g));
    }
}
