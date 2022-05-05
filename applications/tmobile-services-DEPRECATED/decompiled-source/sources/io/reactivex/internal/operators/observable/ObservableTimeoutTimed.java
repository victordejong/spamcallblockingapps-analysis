package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.Scheduler;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableTimeoutTimed.class */
public final class ObservableTimeoutTimed<T> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final long f18587g;

    /* renamed from: h */
    final TimeUnit f18588h;

    /* renamed from: i */
    final Scheduler f18589i;

    /* renamed from: j */
    final ObservableSource<? extends T> f18590j;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableTimeoutTimed$FallbackObserver.class */
    static final class FallbackObserver<T> implements Observer<T> {

        /* renamed from: f */
        final Observer<? super T> f18591f;

        /* renamed from: g */
        final AtomicReference<Disposable> f18592g;

        /* JADX INFO: Access modifiers changed from: package-private */
        public FallbackObserver(Observer<? super T> observer, AtomicReference<Disposable> atomicReference) {
            this.f18591f = observer;
            this.f18592g = atomicReference;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f18591f.onComplete();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f18591f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f18591f.onNext(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.replace(this.f18592g, disposable);
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutFallbackObserver.class */
    static final class TimeoutFallbackObserver<T> extends AtomicReference<Disposable> implements Observer<T>, Disposable, TimeoutSupport {
        private static final long serialVersionUID = 3764492702657003550L;

        /* renamed from: f */
        final Observer<? super T> f18593f;

        /* renamed from: g */
        final long f18594g;

        /* renamed from: h */
        final TimeUnit f18595h;

        /* renamed from: i */
        final Scheduler.Worker f18596i;

        /* renamed from: j */
        final SequentialDisposable f18597j = new SequentialDisposable();

        /* renamed from: k */
        final AtomicLong f18598k = new AtomicLong();

        /* renamed from: l */
        final AtomicReference<Disposable> f18599l = new AtomicReference<>();

        /* renamed from: m */
        ObservableSource<? extends T> f18600m;

        TimeoutFallbackObserver(Observer<? super T> observer, long j, TimeUnit timeUnit, Scheduler.Worker worker, ObservableSource<? extends T> observableSource) {
            this.f18593f = observer;
            this.f18594g = j;
            this.f18595h = timeUnit;
            this.f18596i = worker;
            this.f18600m = observableSource;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableTimeoutTimed.TimeoutSupport
        /* renamed from: a */
        public void mo3665a(long j) {
            if (this.f18598k.compareAndSet(j, Long.MAX_VALUE)) {
                DisposableHelper.dispose(this.f18599l);
                ObservableSource<? extends T> observableSource = this.f18600m;
                this.f18600m = null;
                observableSource.subscribe(new FallbackObserver(this.f18593f, this));
                this.f18596i.dispose();
            }
        }

        /* renamed from: c */
        void m3667c(long j) {
            this.f18597j.m4422a(this.f18596i.mo3228c(new TimeoutTask(j, this), this.f18594g, this.f18595h));
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this.f18599l);
            DisposableHelper.dispose(this);
            this.f18596i.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.f18598k.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f18597j.dispose();
                this.f18593f.onComplete();
                this.f18596i.dispose();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f18598k.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f18597j.dispose();
                this.f18593f.onError(th);
                this.f18596i.dispose();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            long j = this.f18598k.get();
            if (j != Long.MAX_VALUE) {
                long j2 = 1 + j;
                if (this.f18598k.compareAndSet(j, j2)) {
                    this.f18597j.get().dispose();
                    this.f18593f.onNext(t);
                    m3667c(j2);
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this.f18599l, disposable);
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutObserver.class */
    static final class TimeoutObserver<T> extends AtomicLong implements Observer<T>, Disposable, TimeoutSupport {
        private static final long serialVersionUID = 3764492702657003550L;

        /* renamed from: f */
        final Observer<? super T> f18601f;

        /* renamed from: g */
        final long f18602g;

        /* renamed from: h */
        final TimeUnit f18603h;

        /* renamed from: i */
        final Scheduler.Worker f18604i;

        /* renamed from: j */
        final SequentialDisposable f18605j = new SequentialDisposable();

        /* renamed from: k */
        final AtomicReference<Disposable> f18606k = new AtomicReference<>();

        TimeoutObserver(Observer<? super T> observer, long j, TimeUnit timeUnit, Scheduler.Worker worker) {
            this.f18601f = observer;
            this.f18602g = j;
            this.f18603h = timeUnit;
            this.f18604i = worker;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableTimeoutTimed.TimeoutSupport
        /* renamed from: a */
        public void mo3665a(long j) {
            if (compareAndSet(j, Long.MAX_VALUE)) {
                DisposableHelper.dispose(this.f18606k);
                this.f18601f.onError(new TimeoutException(ExceptionHelper.m3435d(this.f18602g, this.f18603h)));
                this.f18604i.dispose();
            }
        }

        /* renamed from: c */
        void m3666c(long j) {
            this.f18605j.m4422a(this.f18604i.mo3228c(new TimeoutTask(j, this), this.f18602g, this.f18603h));
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this.f18606k);
            this.f18604i.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f18606k.get());
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f18605j.dispose();
                this.f18601f.onComplete();
                this.f18604i.dispose();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f18605j.dispose();
                this.f18601f.onError(th);
                this.f18604i.dispose();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            long j = get();
            if (j != Long.MAX_VALUE) {
                long j2 = 1 + j;
                if (compareAndSet(j, j2)) {
                    this.f18605j.get().dispose();
                    this.f18601f.onNext(t);
                    m3666c(j2);
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this.f18606k, disposable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutSupport.class */
    public interface TimeoutSupport {
        /* renamed from: a */
        void mo3665a(long j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableTimeoutTimed$TimeoutTask.class */
    public static final class TimeoutTask implements Runnable {

        /* renamed from: f */
        final TimeoutSupport f18607f;

        /* renamed from: g */
        final long f18608g;

        TimeoutTask(long j, TimeoutSupport timeoutSupport) {
            this.f18608g = j;
            this.f18607f = timeoutSupport;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f18607f.mo3665a(this.f18608g);
        }
    }

    public ObservableTimeoutTimed(Observable<T> observable, long j, TimeUnit timeUnit, Scheduler scheduler, ObservableSource<? extends T> observableSource) {
        super(observable);
        this.f18587g = j;
        this.f18588h = timeUnit;
        this.f18589i = scheduler;
        this.f18590j = observableSource;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        if (this.f18590j == null) {
            TimeoutObserver timeoutObserver = new TimeoutObserver(observer, this.f18587g, this.f18588h, this.f18589i.mo3232b());
            observer.onSubscribe(timeoutObserver);
            timeoutObserver.m3666c(0L);
            this.f17497f.subscribe(timeoutObserver);
            return;
        }
        TimeoutFallbackObserver timeoutFallbackObserver = new TimeoutFallbackObserver(observer, this.f18587g, this.f18588h, this.f18589i.mo3232b(), this.f18590j);
        observer.onSubscribe(timeoutFallbackObserver);
        timeoutFallbackObserver.m3667c(0L);
        this.f17497f.subscribe(timeoutFallbackObserver);
    }
}
