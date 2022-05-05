package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableThrottleLatest.class */
public final class ObservableThrottleLatest<T> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final long f18549g;

    /* renamed from: h */
    final TimeUnit f18550h;

    /* renamed from: i */
    final Scheduler f18551i;

    /* renamed from: j */
    final boolean f18552j;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableThrottleLatest$ThrottleLatestObserver.class */
    static final class ThrottleLatestObserver<T> extends AtomicInteger implements Observer<T>, Disposable, Runnable {
        private static final long serialVersionUID = -8296689127439125014L;

        /* renamed from: f */
        final Observer<? super T> f18553f;

        /* renamed from: g */
        final long f18554g;

        /* renamed from: h */
        final TimeUnit f18555h;

        /* renamed from: i */
        final Scheduler.Worker f18556i;

        /* renamed from: j */
        final boolean f18557j;

        /* renamed from: k */
        final AtomicReference<T> f18558k = new AtomicReference<>();

        /* renamed from: l */
        Disposable f18559l;

        /* renamed from: m */
        volatile boolean f18560m;

        /* renamed from: n */
        Throwable f18561n;

        /* renamed from: o */
        volatile boolean f18562o;

        /* renamed from: p */
        volatile boolean f18563p;

        /* renamed from: q */
        boolean f18564q;

        ThrottleLatestObserver(Observer<? super T> observer, long j, TimeUnit timeUnit, Scheduler.Worker worker, boolean z) {
            this.f18553f = observer;
            this.f18554g = j;
            this.f18555h = timeUnit;
            this.f18556i = worker;
            this.f18557j = z;
        }

        /* renamed from: a */
        void m3671a() {
            if (getAndIncrement() == 0) {
                AtomicReference<T> atomicReference = this.f18558k;
                Observer<? super T> observer = this.f18553f;
                int i = 1;
                while (!this.f18562o) {
                    boolean z = this.f18560m;
                    if (!z || this.f18561n == null) {
                        boolean z2 = atomicReference.get() == null;
                        if (z) {
                            T andSet = atomicReference.getAndSet(null);
                            if (!z2 && this.f18557j) {
                                observer.onNext(andSet);
                            }
                            observer.onComplete();
                            this.f18556i.dispose();
                            return;
                        }
                        if (z2) {
                            if (this.f18563p) {
                                this.f18564q = false;
                                this.f18563p = false;
                            }
                        } else if (!this.f18564q || this.f18563p) {
                            observer.onNext(atomicReference.getAndSet(null));
                            this.f18563p = false;
                            this.f18564q = true;
                            this.f18556i.mo3228c(this, this.f18554g, this.f18555h);
                        }
                        int addAndGet = addAndGet(-i);
                        i = addAndGet;
                        if (addAndGet == 0) {
                            return;
                        }
                    } else {
                        atomicReference.lazySet(null);
                        observer.onError(this.f18561n);
                        this.f18556i.dispose();
                        return;
                    }
                }
                atomicReference.lazySet(null);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f18562o = true;
            this.f18559l.dispose();
            this.f18556i.dispose();
            if (getAndIncrement() == 0) {
                this.f18558k.lazySet(null);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18562o;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f18560m = true;
            m3671a();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f18561n = th;
            this.f18560m = true;
            m3671a();
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f18558k.set(t);
            m3671a();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18559l, disposable)) {
                this.f18559l = disposable;
                this.f18553f.onSubscribe(this);
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f18563p = true;
            m3671a();
        }
    }

    public ObservableThrottleLatest(Observable<T> observable, long j, TimeUnit timeUnit, Scheduler scheduler, boolean z) {
        super(observable);
        this.f18549g = j;
        this.f18550h = timeUnit;
        this.f18551i = scheduler;
        this.f18552j = z;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        this.f17497f.subscribe(new ThrottleLatestObserver(observer, this.f18549g, this.f18550h, this.f18551i.mo3232b(), this.f18552j));
    }
}
