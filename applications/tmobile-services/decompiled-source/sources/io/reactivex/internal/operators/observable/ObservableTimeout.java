package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.SequentialDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.operators.observable.ObservableTimeoutTimed;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableTimeout.class */
public final class ObservableTimeout<T, U, V> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final ObservableSource<U> f18572g;

    /* renamed from: h */
    final Function<? super T, ? extends ObservableSource<V>> f18573h;

    /* renamed from: i */
    final ObservableSource<? extends T> f18574i;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableTimeout$TimeoutConsumer.class */
    public static final class TimeoutConsumer extends AtomicReference<Disposable> implements Observer<Object>, Disposable {
        private static final long serialVersionUID = 8708641127342403073L;

        /* renamed from: f */
        final TimeoutSelectorSupport f18575f;

        /* renamed from: g */
        final long f18576g;

        TimeoutConsumer(long j, TimeoutSelectorSupport timeoutSelectorSupport) {
            this.f18576g = j;
            this.f18575f = timeoutSelectorSupport;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            Object obj = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (obj != disposableHelper) {
                lazySet(disposableHelper);
                this.f18575f.mo3665a(this.f18576g);
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            Object obj = get();
            DisposableHelper disposableHelper = DisposableHelper.DISPOSED;
            if (obj != disposableHelper) {
                lazySet(disposableHelper);
                this.f18575f.mo3668b(this.f18576g, th);
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(Object obj) {
            Disposable disposable = (Disposable) get();
            if (disposable != DisposableHelper.DISPOSED) {
                disposable.dispose();
                lazySet(DisposableHelper.DISPOSED);
                this.f18575f.mo3665a(this.f18576g);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this, disposable);
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableTimeout$TimeoutFallbackObserver.class */
    static final class TimeoutFallbackObserver<T> extends AtomicReference<Disposable> implements Observer<T>, Disposable, TimeoutSelectorSupport {
        private static final long serialVersionUID = -7508389464265974549L;

        /* renamed from: f */
        final Observer<? super T> f18577f;

        /* renamed from: g */
        final Function<? super T, ? extends ObservableSource<?>> f18578g;

        /* renamed from: h */
        final SequentialDisposable f18579h = new SequentialDisposable();

        /* renamed from: i */
        final AtomicLong f18580i = new AtomicLong();

        /* renamed from: j */
        final AtomicReference<Disposable> f18581j = new AtomicReference<>();

        /* renamed from: k */
        ObservableSource<? extends T> f18582k;

        TimeoutFallbackObserver(Observer<? super T> observer, Function<? super T, ? extends ObservableSource<?>> function, ObservableSource<? extends T> observableSource) {
            this.f18577f = observer;
            this.f18578g = function;
            this.f18582k = observableSource;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableTimeoutTimed.TimeoutSupport
        /* renamed from: a */
        public void mo3665a(long j) {
            if (this.f18580i.compareAndSet(j, Long.MAX_VALUE)) {
                DisposableHelper.dispose(this.f18581j);
                ObservableSource<? extends T> observableSource = this.f18582k;
                this.f18582k = null;
                observableSource.subscribe(new ObservableTimeoutTimed.FallbackObserver(this.f18577f, this));
            }
        }

        @Override // io.reactivex.internal.operators.observable.ObservableTimeout.TimeoutSelectorSupport
        /* renamed from: b */
        public void mo3668b(long j, Throwable th) {
            if (this.f18580i.compareAndSet(j, Long.MAX_VALUE)) {
                DisposableHelper.dispose(this);
                this.f18577f.onError(th);
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        /* renamed from: c */
        void m3670c(ObservableSource<?> observableSource) {
            if (observableSource != null) {
                TimeoutConsumer timeoutConsumer = new TimeoutConsumer(0L, this);
                if (this.f18579h.m4422a(timeoutConsumer)) {
                    observableSource.subscribe(timeoutConsumer);
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this.f18581j);
            DisposableHelper.dispose(this);
            this.f18579h.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(get());
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.f18580i.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f18579h.dispose();
                this.f18577f.onComplete();
                this.f18579h.dispose();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f18580i.getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f18579h.dispose();
                this.f18577f.onError(th);
                this.f18579h.dispose();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            long j = this.f18580i.get();
            if (j != Long.MAX_VALUE) {
                long j2 = 1 + j;
                if (this.f18580i.compareAndSet(j, j2)) {
                    Disposable disposable = this.f18579h.get();
                    if (disposable != null) {
                        disposable.dispose();
                    }
                    this.f18577f.onNext(t);
                    try {
                        Object apply = this.f18578g.apply(t);
                        ObjectHelper.m4363e(apply, "The itemTimeoutIndicator returned a null ObservableSource.");
                        ObservableSource observableSource = (ObservableSource) apply;
                        TimeoutConsumer timeoutConsumer = new TimeoutConsumer(j2, this);
                        if (this.f18579h.m4422a(timeoutConsumer)) {
                            observableSource.subscribe(timeoutConsumer);
                        }
                    } catch (Throwable th) {
                        Exceptions.m4428b(th);
                        this.f18581j.get().dispose();
                        this.f18580i.getAndSet(Long.MAX_VALUE);
                        this.f18577f.onError(th);
                    }
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this.f18581j, disposable);
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableTimeout$TimeoutObserver.class */
    static final class TimeoutObserver<T> extends AtomicLong implements Observer<T>, Disposable, TimeoutSelectorSupport {
        private static final long serialVersionUID = 3764492702657003550L;

        /* renamed from: f */
        final Observer<? super T> f18583f;

        /* renamed from: g */
        final Function<? super T, ? extends ObservableSource<?>> f18584g;

        /* renamed from: h */
        final SequentialDisposable f18585h = new SequentialDisposable();

        /* renamed from: i */
        final AtomicReference<Disposable> f18586i = new AtomicReference<>();

        TimeoutObserver(Observer<? super T> observer, Function<? super T, ? extends ObservableSource<?>> function) {
            this.f18583f = observer;
            this.f18584g = function;
        }

        @Override // io.reactivex.internal.operators.observable.ObservableTimeoutTimed.TimeoutSupport
        /* renamed from: a */
        public void mo3665a(long j) {
            if (compareAndSet(j, Long.MAX_VALUE)) {
                DisposableHelper.dispose(this.f18586i);
                this.f18583f.onError(new TimeoutException());
            }
        }

        @Override // io.reactivex.internal.operators.observable.ObservableTimeout.TimeoutSelectorSupport
        /* renamed from: b */
        public void mo3668b(long j, Throwable th) {
            if (compareAndSet(j, Long.MAX_VALUE)) {
                DisposableHelper.dispose(this.f18586i);
                this.f18583f.onError(th);
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        /* renamed from: c */
        void m3669c(ObservableSource<?> observableSource) {
            if (observableSource != null) {
                TimeoutConsumer timeoutConsumer = new TimeoutConsumer(0L, this);
                if (this.f18585h.m4422a(timeoutConsumer)) {
                    observableSource.subscribe(timeoutConsumer);
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            DisposableHelper.dispose(this.f18586i);
            this.f18585h.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f18586i.get());
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f18585h.dispose();
                this.f18583f.onComplete();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (getAndSet(Long.MAX_VALUE) != Long.MAX_VALUE) {
                this.f18585h.dispose();
                this.f18583f.onError(th);
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
                    Disposable disposable = this.f18585h.get();
                    if (disposable != null) {
                        disposable.dispose();
                    }
                    this.f18583f.onNext(t);
                    try {
                        Object apply = this.f18584g.apply(t);
                        ObjectHelper.m4363e(apply, "The itemTimeoutIndicator returned a null ObservableSource.");
                        ObservableSource observableSource = (ObservableSource) apply;
                        TimeoutConsumer timeoutConsumer = new TimeoutConsumer(j2, this);
                        if (this.f18585h.m4422a(timeoutConsumer)) {
                            observableSource.subscribe(timeoutConsumer);
                        }
                    } catch (Throwable th) {
                        Exceptions.m4428b(th);
                        this.f18586i.get().dispose();
                        getAndSet(Long.MAX_VALUE);
                        this.f18583f.onError(th);
                    }
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this.f18586i, disposable);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableTimeout$TimeoutSelectorSupport.class */
    public interface TimeoutSelectorSupport extends ObservableTimeoutTimed.TimeoutSupport {
        /* renamed from: b */
        void mo3668b(long j, Throwable th);
    }

    public ObservableTimeout(Observable<T> observable, ObservableSource<U> observableSource, Function<? super T, ? extends ObservableSource<V>> function, ObservableSource<? extends T> observableSource2) {
        super(observable);
        this.f18572g = observableSource;
        this.f18573h = function;
        this.f18574i = observableSource2;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        if (this.f18574i == null) {
            TimeoutObserver timeoutObserver = new TimeoutObserver(observer, this.f18573h);
            observer.onSubscribe(timeoutObserver);
            timeoutObserver.m3669c(this.f18572g);
            this.f17497f.subscribe(timeoutObserver);
            return;
        }
        TimeoutFallbackObserver timeoutFallbackObserver = new TimeoutFallbackObserver(observer, this.f18573h, this.f18574i);
        observer.onSubscribe(timeoutFallbackObserver);
        timeoutFallbackObserver.m3670c(this.f18572g);
        this.f17497f.subscribe(timeoutFallbackObserver);
    }
}
