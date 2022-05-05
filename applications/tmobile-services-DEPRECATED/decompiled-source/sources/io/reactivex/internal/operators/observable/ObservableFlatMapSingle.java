package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableFlatMapSingle.class */
public final class ObservableFlatMapSingle<T, R> extends AbstractObservableWithUpstream<T, R> {

    /* renamed from: g */
    final Function<? super T, ? extends SingleSource<? extends R>> f17948g;

    /* renamed from: h */
    final boolean f17949h;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver.class */
    static final class FlatMapSingleObserver<T, R> extends AtomicInteger implements Observer<T>, Disposable {
        private static final long serialVersionUID = 8600231336733376951L;

        /* renamed from: f */
        final Observer<? super R> f17950f;

        /* renamed from: g */
        final boolean f17951g;

        /* renamed from: k */
        final Function<? super T, ? extends SingleSource<? extends R>> f17955k;

        /* renamed from: m */
        Disposable f17957m;

        /* renamed from: n */
        volatile boolean f17958n;

        /* renamed from: h */
        final CompositeDisposable f17952h = new CompositeDisposable();

        /* renamed from: j */
        final AtomicThrowable f17954j = new AtomicThrowable();

        /* renamed from: i */
        final AtomicInteger f17953i = new AtomicInteger(1);

        /* renamed from: l */
        final AtomicReference<SpscLinkedArrayQueue<R>> f17956l = new AtomicReference<>();

        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableFlatMapSingle$FlatMapSingleObserver$InnerObserver.class */
        final class InnerObserver extends AtomicReference<Disposable> implements SingleObserver<R>, Disposable {
            private static final long serialVersionUID = -502562646270949838L;

            InnerObserver() {
            }

            @Override // io.reactivex.disposables.Disposable
            public void dispose() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.disposables.Disposable
            public boolean isDisposed() {
                return DisposableHelper.isDisposed(get());
            }

            @Override // io.reactivex.SingleObserver
            public void onError(Throwable th) {
                FlatMapSingleObserver.this.m3825e(this, th);
            }

            @Override // io.reactivex.SingleObserver
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.setOnce(this, disposable);
            }

            @Override // io.reactivex.SingleObserver
            public void onSuccess(R r) {
                FlatMapSingleObserver.this.m3824f(this, r);
            }
        }

        FlatMapSingleObserver(Observer<? super R> observer, Function<? super T, ? extends SingleSource<? extends R>> function, boolean z) {
            this.f17950f = observer;
            this.f17955k = function;
            this.f17951g = z;
        }

        /* renamed from: a */
        void m3829a() {
            SpscLinkedArrayQueue<R> spscLinkedArrayQueue = this.f17956l.get();
            if (spscLinkedArrayQueue != null) {
                spscLinkedArrayQueue.clear();
            }
        }

        /* renamed from: b */
        void m3828b() {
            if (getAndIncrement() == 0) {
                m3827c();
            }
        }

        /* renamed from: c */
        void m3827c() {
            Observer<? super R> observer = this.f17950f;
            AtomicInteger atomicInteger = this.f17953i;
            AtomicReference<SpscLinkedArrayQueue<R>> atomicReference = this.f17956l;
            int i = 1;
            while (!this.f17958n) {
                if (this.f17951g || this.f17954j.get() == null) {
                    boolean z = false;
                    boolean z2 = atomicInteger.get() == 0;
                    SpscLinkedArrayQueue<R> spscLinkedArrayQueue = atomicReference.get();
                    R poll = spscLinkedArrayQueue != null ? spscLinkedArrayQueue.poll() : (Object) null;
                    if (poll == null) {
                        z = true;
                    }
                    if (z2 && z) {
                        Throwable b = this.f17954j.m3455b();
                        if (b != null) {
                            observer.onError(b);
                            return;
                        } else {
                            observer.onComplete();
                            return;
                        }
                    } else if (z) {
                        int addAndGet = addAndGet(-i);
                        i = addAndGet;
                        if (addAndGet == 0) {
                            return;
                        }
                    } else {
                        observer.onNext(poll);
                    }
                } else {
                    Throwable b2 = this.f17954j.m3455b();
                    m3829a();
                    observer.onError(b2);
                    return;
                }
            }
            m3829a();
        }

        /* renamed from: d */
        SpscLinkedArrayQueue<R> m3826d() {
            SpscLinkedArrayQueue<R> spscLinkedArrayQueue;
            do {
                SpscLinkedArrayQueue<R> spscLinkedArrayQueue2 = this.f17956l.get();
                if (spscLinkedArrayQueue2 != null) {
                    return spscLinkedArrayQueue2;
                }
                spscLinkedArrayQueue = new SpscLinkedArrayQueue<>(Observable.bufferSize());
            } while (!this.f17956l.compareAndSet(null, spscLinkedArrayQueue));
            return spscLinkedArrayQueue;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17958n = true;
            this.f17957m.dispose();
            this.f17952h.dispose();
        }

        /* renamed from: e */
        void m3825e(FlatMapSingleObserver<T, R>.InnerObserver innerObserver, Throwable th) {
            this.f17952h.mo4424c(innerObserver);
            if (this.f17954j.m3456a(th)) {
                if (!this.f17951g) {
                    this.f17957m.dispose();
                    this.f17952h.dispose();
                }
                this.f17953i.decrementAndGet();
                m3828b();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        /* renamed from: f */
        void m3824f(FlatMapSingleObserver<T, R>.InnerObserver innerObserver, R r) {
            this.f17952h.mo4424c(innerObserver);
            if (get() == 0) {
                boolean z = false;
                if (compareAndSet(0, 1)) {
                    this.f17950f.onNext(r);
                    if (this.f17953i.decrementAndGet() == 0) {
                        z = true;
                    }
                    SpscLinkedArrayQueue<R> spscLinkedArrayQueue = this.f17956l.get();
                    if (!z || (spscLinkedArrayQueue != null && !spscLinkedArrayQueue.isEmpty())) {
                        if (decrementAndGet() == 0) {
                            return;
                        }
                        m3827c();
                    }
                    Throwable b = this.f17954j.m3455b();
                    if (b != null) {
                        this.f17950f.onError(b);
                        return;
                    } else {
                        this.f17950f.onComplete();
                        return;
                    }
                }
            }
            SpscLinkedArrayQueue<R> d = m3826d();
            synchronized (d) {
                d.offer(r);
            }
            this.f17953i.decrementAndGet();
            if (getAndIncrement() != 0) {
                return;
            }
            m3827c();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17958n;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f17953i.decrementAndGet();
            m3828b();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f17953i.decrementAndGet();
            if (this.f17954j.m3456a(th)) {
                if (!this.f17951g) {
                    this.f17952h.dispose();
                }
                m3828b();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            try {
                Object apply = this.f17955k.apply(t);
                ObjectHelper.m4363e(apply, "The mapper returned a null SingleSource");
                SingleSource singleSource = (SingleSource) apply;
                this.f17953i.getAndIncrement();
                InnerObserver innerObserver = new InnerObserver();
                if (!this.f17958n && this.f17952h.mo4425b(innerObserver)) {
                    singleSource.mo4457b(innerObserver);
                }
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f17957m.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17957m, disposable)) {
                this.f17957m = disposable;
                this.f17950f.onSubscribe(this);
            }
        }
    }

    public ObservableFlatMapSingle(ObservableSource<T> observableSource, Function<? super T, ? extends SingleSource<? extends R>> function, boolean z) {
        super(observableSource);
        this.f17948g = function;
        this.f17949h = z;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super R> observer) {
        this.f17497f.subscribe(new FlatMapSingleObserver(observer, this.f17948g, this.f17949h));
    }
}
