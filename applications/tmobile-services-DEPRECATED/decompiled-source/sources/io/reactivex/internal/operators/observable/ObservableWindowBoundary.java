package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.queue.MpscLinkedQueue;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.observers.DisposableObserver;
import io.reactivex.plugins.RxJavaPlugins;
import io.reactivex.subjects.UnicastSubject;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableWindowBoundary.class */
public final class ObservableWindowBoundary<T, B> extends AbstractObservableWithUpstream<T, Observable<T>> {

    /* renamed from: g */
    final ObservableSource<B> f18656g;

    /* renamed from: h */
    final int f18657h;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryInnerObserver.class */
    static final class WindowBoundaryInnerObserver<T, B> extends DisposableObserver<B> {

        /* renamed from: g */
        final WindowBoundaryMainObserver<T, B> f18658g;

        /* renamed from: h */
        boolean f18659h;

        WindowBoundaryInnerObserver(WindowBoundaryMainObserver<T, B> windowBoundaryMainObserver) {
            this.f18658g = windowBoundaryMainObserver;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.f18659h) {
                this.f18659h = true;
                this.f18658g.m3660b();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f18659h) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f18659h = true;
            this.f18658g.m3659c(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(B b) {
            if (!this.f18659h) {
                this.f18658g.m3658d();
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableWindowBoundary$WindowBoundaryMainObserver.class */
    static final class WindowBoundaryMainObserver<T, B> extends AtomicInteger implements Observer<T>, Disposable, Runnable {

        /* renamed from: p */
        static final Object f18660p = new Object();
        private static final long serialVersionUID = 2233020065421370272L;

        /* renamed from: f */
        final Observer<? super Observable<T>> f18661f;

        /* renamed from: g */
        final int f18662g;

        /* renamed from: h */
        final WindowBoundaryInnerObserver<T, B> f18663h = new WindowBoundaryInnerObserver<>(this);

        /* renamed from: i */
        final AtomicReference<Disposable> f18664i = new AtomicReference<>();

        /* renamed from: j */
        final AtomicInteger f18665j = new AtomicInteger(1);

        /* renamed from: k */
        final MpscLinkedQueue<Object> f18666k = new MpscLinkedQueue<>();

        /* renamed from: l */
        final AtomicThrowable f18667l = new AtomicThrowable();

        /* renamed from: m */
        final AtomicBoolean f18668m = new AtomicBoolean();

        /* renamed from: n */
        volatile boolean f18669n;

        /* renamed from: o */
        UnicastSubject<T> f18670o;

        WindowBoundaryMainObserver(Observer<? super Observable<T>> observer, int i) {
            this.f18661f = observer;
            this.f18662g = i;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        void m3661a() {
            if (getAndIncrement() == 0) {
                Observer<? super Observable<T>> observer = this.f18661f;
                MpscLinkedQueue<Object> mpscLinkedQueue = this.f18666k;
                AtomicThrowable atomicThrowable = this.f18667l;
                int i = 1;
                while (this.f18665j.get() != 0) {
                    UnicastSubject<T> unicastSubject = this.f18670o;
                    boolean z = this.f18669n;
                    if (!z || atomicThrowable.get() == null) {
                        Object poll = mpscLinkedQueue.poll();
                        boolean z2 = poll == null;
                        if (z && z2) {
                            Throwable b = atomicThrowable.m3455b();
                            if (b == null) {
                                if (unicastSubject != 0) {
                                    this.f18670o = null;
                                    unicastSubject.onComplete();
                                }
                                observer.onComplete();
                                return;
                            }
                            if (unicastSubject != 0) {
                                this.f18670o = null;
                                unicastSubject.onError(b);
                            }
                            observer.onError(b);
                            return;
                        } else if (z2) {
                            int addAndGet = addAndGet(-i);
                            i = addAndGet;
                            if (addAndGet == 0) {
                                return;
                            }
                        } else if (poll != f18660p) {
                            unicastSubject.onNext(poll);
                        } else {
                            if (unicastSubject != 0) {
                                this.f18670o = null;
                                unicastSubject.onComplete();
                            }
                            if (!this.f18668m.get()) {
                                UnicastSubject<T> g = UnicastSubject.m3183g(this.f18662g, this);
                                this.f18670o = g;
                                this.f18665j.getAndIncrement();
                                observer.onNext(g);
                            }
                        }
                    } else {
                        mpscLinkedQueue.clear();
                        Throwable b2 = atomicThrowable.m3455b();
                        if (unicastSubject != 0) {
                            this.f18670o = null;
                            unicastSubject.onError(b2);
                        }
                        observer.onError(b2);
                        return;
                    }
                }
                mpscLinkedQueue.clear();
                this.f18670o = null;
            }
        }

        /* renamed from: b */
        void m3660b() {
            DisposableHelper.dispose(this.f18664i);
            this.f18669n = true;
            m3661a();
        }

        /* renamed from: c */
        void m3659c(Throwable th) {
            DisposableHelper.dispose(this.f18664i);
            if (this.f18667l.m3456a(th)) {
                this.f18669n = true;
                m3661a();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        /* renamed from: d */
        void m3658d() {
            this.f18666k.offer(f18660p);
            m3661a();
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (this.f18668m.compareAndSet(false, true)) {
                this.f18663h.dispose();
                if (this.f18665j.decrementAndGet() == 0) {
                    DisposableHelper.dispose(this.f18664i);
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f18668m.get();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f18663h.dispose();
            this.f18669n = true;
            m3661a();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f18663h.dispose();
            if (this.f18667l.m3456a(th)) {
                this.f18669n = true;
                m3661a();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f18666k.offer(t);
            m3661a();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.setOnce(this.f18664i, disposable)) {
                m3658d();
            }
        }

        @Override // java.lang.Runnable
        public void run() {
            if (this.f18665j.decrementAndGet() == 0) {
                DisposableHelper.dispose(this.f18664i);
            }
        }
    }

    public ObservableWindowBoundary(ObservableSource<T> observableSource, ObservableSource<B> observableSource2, int i) {
        super(observableSource);
        this.f18656g = observableSource2;
        this.f18657h = i;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super Observable<T>> observer) {
        WindowBoundaryMainObserver windowBoundaryMainObserver = new WindowBoundaryMainObserver(observer, this.f18657h);
        observer.onSubscribe(windowBoundaryMainObserver);
        this.f18656g.subscribe(windowBoundaryMainObserver.f18663h);
        this.f17497f.subscribe(windowBoundaryMainObserver);
    }
}
