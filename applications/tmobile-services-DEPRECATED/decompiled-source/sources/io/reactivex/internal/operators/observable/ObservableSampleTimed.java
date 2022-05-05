package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.observers.SerializedObserver;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSampleTimed.class */
public final class ObservableSampleTimed<T> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final long f18342g;

    /* renamed from: h */
    final TimeUnit f18343h;

    /* renamed from: i */
    final Scheduler f18344i;

    /* renamed from: j */
    final boolean f18345j;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSampleTimed$SampleTimedEmitLast.class */
    static final class SampleTimedEmitLast<T> extends SampleTimedObserver<T> {
        private static final long serialVersionUID = -7139995637533111443L;

        /* renamed from: l */
        final AtomicInteger f18346l = new AtomicInteger(1);

        SampleTimedEmitLast(Observer<? super T> observer, long j, TimeUnit timeUnit, Scheduler scheduler) {
            super(observer, j, timeUnit, scheduler);
        }

        @Override // io.reactivex.internal.operators.observable.ObservableSampleTimed.SampleTimedObserver
        /* renamed from: b */
        void mo3699b() {
            m3698c();
            if (this.f18346l.decrementAndGet() == 0) {
                this.f18347f.onComplete();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f18346l.incrementAndGet() == 2) {
                m3698c();
                if (this.f18346l.decrementAndGet() == 0) {
                    this.f18347f.onComplete();
                }
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSampleTimed$SampleTimedNoLast.class */
    static final class SampleTimedNoLast<T> extends SampleTimedObserver<T> {
        private static final long serialVersionUID = -7139995637533111443L;

        SampleTimedNoLast(Observer<? super T> observer, long j, TimeUnit timeUnit, Scheduler scheduler) {
            super(observer, j, timeUnit, scheduler);
        }

        @Override // io.reactivex.internal.operators.observable.ObservableSampleTimed.SampleTimedObserver
        /* renamed from: b */
        void mo3699b() {
            this.f18347f.onComplete();
        }

        @Override // java.lang.Runnable
        public void run() {
            m3698c();
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableSampleTimed$SampleTimedObserver.class */
    static abstract class SampleTimedObserver<T> extends AtomicReference<T> implements Observer<T>, Disposable, Runnable {
        private static final long serialVersionUID = -3517602651313910099L;

        /* renamed from: f */
        final Observer<? super T> f18347f;

        /* renamed from: g */
        final long f18348g;

        /* renamed from: h */
        final TimeUnit f18349h;

        /* renamed from: i */
        final Scheduler f18350i;

        /* renamed from: j */
        final AtomicReference<Disposable> f18351j = new AtomicReference<>();

        /* renamed from: k */
        Disposable f18352k;

        SampleTimedObserver(Observer<? super T> observer, long j, TimeUnit timeUnit, Scheduler scheduler) {
            this.f18347f = observer;
            this.f18348g = j;
            this.f18349h = timeUnit;
            this.f18350i = scheduler;
        }

        /* renamed from: a */
        void m3700a() {
            DisposableHelper.dispose(this.f18351j);
        }

        /* renamed from: b */
        abstract void mo3699b();

        /* renamed from: c */
        void m3698c() {
            T andSet = getAndSet(null);
            if (andSet != null) {
                this.f18347f.onNext(andSet);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            m3700a();
            this.f18352k.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18352k.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            m3700a();
            mo3699b();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            m3700a();
            this.f18347f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            lazySet(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18352k, disposable)) {
                this.f18352k = disposable;
                this.f18347f.onSubscribe(this);
                Scheduler scheduler = this.f18350i;
                long j = this.f18348g;
                DisposableHelper.replace(this.f18351j, scheduler.mo3501f(this, j, j, this.f18349h));
            }
        }
    }

    public ObservableSampleTimed(ObservableSource<T> observableSource, long j, TimeUnit timeUnit, Scheduler scheduler, boolean z) {
        super(observableSource);
        this.f18342g = j;
        this.f18343h = timeUnit;
        this.f18344i = scheduler;
        this.f18345j = z;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        SerializedObserver serializedObserver = new SerializedObserver(observer);
        if (this.f18345j) {
            this.f17497f.subscribe(new SampleTimedEmitLast(serializedObserver, this.f18342g, this.f18343h, this.f18344i));
        } else {
            this.f17497f.subscribe(new SampleTimedNoLast(serializedObserver, this.f18342g, this.f18343h, this.f18344i));
        }
    }
}
