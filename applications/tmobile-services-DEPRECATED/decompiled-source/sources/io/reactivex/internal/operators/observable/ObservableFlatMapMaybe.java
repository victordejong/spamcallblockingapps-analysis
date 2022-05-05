package io.reactivex.internal.operators.observable;

import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
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
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableFlatMapMaybe.class */
public final class ObservableFlatMapMaybe<T, R> extends AbstractObservableWithUpstream<T, R> {

    /* renamed from: g */
    final Function<? super T, ? extends MaybeSource<? extends R>> f17936g;

    /* renamed from: h */
    final boolean f17937h;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableFlatMapMaybe$FlatMapMaybeObserver.class */
    static final class FlatMapMaybeObserver<T, R> extends AtomicInteger implements Observer<T>, Disposable {
        private static final long serialVersionUID = 8600231336733376951L;

        /* renamed from: f */
        final Observer<? super R> f17938f;

        /* renamed from: g */
        final boolean f17939g;

        /* renamed from: k */
        final Function<? super T, ? extends MaybeSource<? extends R>> f17943k;

        /* renamed from: m */
        Disposable f17945m;

        /* renamed from: n */
        volatile boolean f17946n;

        /* renamed from: h */
        final CompositeDisposable f17940h = new CompositeDisposable();

        /* renamed from: j */
        final AtomicThrowable f17942j = new AtomicThrowable();

        /* renamed from: i */
        final AtomicInteger f17941i = new AtomicInteger(1);

        /* renamed from: l */
        final AtomicReference<SpscLinkedArrayQueue<R>> f17944l = new AtomicReference<>();

        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableFlatMapMaybe$FlatMapMaybeObserver$InnerObserver.class */
        final class InnerObserver extends AtomicReference<Disposable> implements MaybeObserver<R>, Disposable {
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

            @Override // io.reactivex.MaybeObserver
            public void onComplete() {
                FlatMapMaybeObserver.this.m3832e(this);
            }

            @Override // io.reactivex.MaybeObserver
            public void onError(Throwable th) {
                FlatMapMaybeObserver.this.m3831f(this, th);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.setOnce(this, disposable);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSuccess(R r) {
                FlatMapMaybeObserver.this.m3830g(this, r);
            }
        }

        FlatMapMaybeObserver(Observer<? super R> observer, Function<? super T, ? extends MaybeSource<? extends R>> function, boolean z) {
            this.f17938f = observer;
            this.f17943k = function;
            this.f17939g = z;
        }

        /* renamed from: a */
        void m3836a() {
            SpscLinkedArrayQueue<R> spscLinkedArrayQueue = this.f17944l.get();
            if (spscLinkedArrayQueue != null) {
                spscLinkedArrayQueue.clear();
            }
        }

        /* renamed from: b */
        void m3835b() {
            if (getAndIncrement() == 0) {
                m3834c();
            }
        }

        /* renamed from: c */
        void m3834c() {
            Observer<? super R> observer = this.f17938f;
            AtomicInteger atomicInteger = this.f17941i;
            AtomicReference<SpscLinkedArrayQueue<R>> atomicReference = this.f17944l;
            int i = 1;
            while (!this.f17946n) {
                if (this.f17939g || this.f17942j.get() == null) {
                    boolean z = false;
                    boolean z2 = atomicInteger.get() == 0;
                    SpscLinkedArrayQueue<R> spscLinkedArrayQueue = atomicReference.get();
                    R poll = spscLinkedArrayQueue != null ? spscLinkedArrayQueue.poll() : (Object) null;
                    if (poll == null) {
                        z = true;
                    }
                    if (z2 && z) {
                        Throwable b = this.f17942j.m3455b();
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
                    Throwable b2 = this.f17942j.m3455b();
                    m3836a();
                    observer.onError(b2);
                    return;
                }
            }
            m3836a();
        }

        /* renamed from: d */
        SpscLinkedArrayQueue<R> m3833d() {
            SpscLinkedArrayQueue<R> spscLinkedArrayQueue;
            do {
                SpscLinkedArrayQueue<R> spscLinkedArrayQueue2 = this.f17944l.get();
                if (spscLinkedArrayQueue2 != null) {
                    return spscLinkedArrayQueue2;
                }
                spscLinkedArrayQueue = new SpscLinkedArrayQueue<>(Observable.bufferSize());
            } while (!this.f17944l.compareAndSet(null, spscLinkedArrayQueue));
            return spscLinkedArrayQueue;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17946n = true;
            this.f17945m.dispose();
            this.f17940h.dispose();
        }

        /* renamed from: e */
        void m3832e(FlatMapMaybeObserver<T, R>.InnerObserver innerObserver) {
            this.f17940h.mo4424c(innerObserver);
            if (get() == 0) {
                boolean z = false;
                if (compareAndSet(0, 1)) {
                    if (this.f17941i.decrementAndGet() == 0) {
                        z = true;
                    }
                    SpscLinkedArrayQueue<R> spscLinkedArrayQueue = this.f17944l.get();
                    if (z && (spscLinkedArrayQueue == null || spscLinkedArrayQueue.isEmpty())) {
                        Throwable b = this.f17942j.m3455b();
                        if (b != null) {
                            this.f17938f.onError(b);
                            return;
                        } else {
                            this.f17938f.onComplete();
                            return;
                        }
                    } else if (decrementAndGet() != 0) {
                        m3834c();
                        return;
                    } else {
                        return;
                    }
                }
            }
            this.f17941i.decrementAndGet();
            m3835b();
        }

        /* renamed from: f */
        void m3831f(FlatMapMaybeObserver<T, R>.InnerObserver innerObserver, Throwable th) {
            this.f17940h.mo4424c(innerObserver);
            if (this.f17942j.m3456a(th)) {
                if (!this.f17939g) {
                    this.f17945m.dispose();
                    this.f17940h.dispose();
                }
                this.f17941i.decrementAndGet();
                m3835b();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        /* renamed from: g */
        void m3830g(FlatMapMaybeObserver<T, R>.InnerObserver innerObserver, R r) {
            this.f17940h.mo4424c(innerObserver);
            if (get() == 0) {
                boolean z = false;
                if (compareAndSet(0, 1)) {
                    this.f17938f.onNext(r);
                    if (this.f17941i.decrementAndGet() == 0) {
                        z = true;
                    }
                    SpscLinkedArrayQueue<R> spscLinkedArrayQueue = this.f17944l.get();
                    if (!z || (spscLinkedArrayQueue != null && !spscLinkedArrayQueue.isEmpty())) {
                        if (decrementAndGet() == 0) {
                            return;
                        }
                        m3834c();
                    }
                    Throwable b = this.f17942j.m3455b();
                    if (b != null) {
                        this.f17938f.onError(b);
                        return;
                    } else {
                        this.f17938f.onComplete();
                        return;
                    }
                }
            }
            SpscLinkedArrayQueue<R> d = m3833d();
            synchronized (d) {
                d.offer(r);
            }
            this.f17941i.decrementAndGet();
            if (getAndIncrement() != 0) {
                return;
            }
            m3834c();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17946n;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f17941i.decrementAndGet();
            m3835b();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            this.f17941i.decrementAndGet();
            if (this.f17942j.m3456a(th)) {
                if (!this.f17939g) {
                    this.f17940h.dispose();
                }
                m3835b();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            try {
                Object apply = this.f17943k.apply(t);
                ObjectHelper.m4363e(apply, "The mapper returned a null MaybeSource");
                MaybeSource maybeSource = (MaybeSource) apply;
                this.f17941i.getAndIncrement();
                InnerObserver innerObserver = new InnerObserver();
                if (!this.f17946n && this.f17940h.mo4425b(innerObserver)) {
                    maybeSource.mo4485b(innerObserver);
                }
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f17945m.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17945m, disposable)) {
                this.f17945m = disposable;
                this.f17938f.onSubscribe(this);
            }
        }
    }

    public ObservableFlatMapMaybe(ObservableSource<T> observableSource, Function<? super T, ? extends MaybeSource<? extends R>> function, boolean z) {
        super(observableSource);
        this.f17936g = function;
        this.f17937h = z;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super R> observer) {
        this.f17497f.subscribe(new FlatMapMaybeObserver(observer, this.f17936g, this.f17937h));
    }
}
