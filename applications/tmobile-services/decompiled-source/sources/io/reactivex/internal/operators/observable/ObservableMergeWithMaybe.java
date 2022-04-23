package io.reactivex.internal.operators.observable;

import io.reactivex.MaybeObserver;
import io.reactivex.MaybeSource;
import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.fuseable.SimplePlainQueue;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableMergeWithMaybe.class */
public final class ObservableMergeWithMaybe<T> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final MaybeSource<? extends T> f18145g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver.class */
    static final class MergeWithObserver<T> extends AtomicInteger implements Observer<T>, Disposable {
        private static final long serialVersionUID = -4592979584110982903L;

        /* renamed from: f */
        final Observer<? super T> f18146f;

        /* renamed from: g */
        final AtomicReference<Disposable> f18147g = new AtomicReference<>();

        /* renamed from: h */
        final OtherObserver<T> f18148h = new OtherObserver<>(this);

        /* renamed from: i */
        final AtomicThrowable f18149i = new AtomicThrowable();

        /* renamed from: j */
        volatile SimplePlainQueue<T> f18150j;

        /* renamed from: k */
        T f18151k;

        /* renamed from: l */
        volatile boolean f18152l;

        /* renamed from: m */
        volatile boolean f18153m;

        /* renamed from: n */
        volatile int f18154n;

        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableMergeWithMaybe$MergeWithObserver$OtherObserver.class */
        static final class OtherObserver<T> extends AtomicReference<Disposable> implements MaybeObserver<T> {
            private static final long serialVersionUID = -2935427570954647017L;

            /* renamed from: f */
            final MergeWithObserver<T> f18155f;

            OtherObserver(MergeWithObserver<T> mergeWithObserver) {
                this.f18155f = mergeWithObserver;
            }

            @Override // io.reactivex.MaybeObserver
            public void onComplete() {
                this.f18155f.m3766d();
            }

            @Override // io.reactivex.MaybeObserver
            public void onError(Throwable th) {
                this.f18155f.m3765e(th);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.setOnce(this, disposable);
            }

            @Override // io.reactivex.MaybeObserver
            public void onSuccess(T t) {
                this.f18155f.m3764f(t);
            }
        }

        MergeWithObserver(Observer<? super T> observer) {
            this.f18146f = observer;
        }

        /* renamed from: a */
        void m3769a() {
            if (getAndIncrement() == 0) {
                m3768b();
            }
        }

        /* renamed from: b */
        void m3768b() {
            Observer<? super T> observer = this.f18146f;
            int i = 1;
            while (!this.f18152l) {
                if (this.f18149i.get() != null) {
                    this.f18151k = null;
                    this.f18150j = null;
                    observer.onError(this.f18149i.m3455b());
                    return;
                }
                int i2 = this.f18154n;
                int i3 = i2;
                if (i2 == 1) {
                    this.f18151k = null;
                    this.f18154n = 2;
                    observer.onNext((T) this.f18151k);
                    i3 = 2;
                }
                boolean z = this.f18153m;
                SimplePlainQueue<T> simplePlainQueue = this.f18150j;
                T poll = simplePlainQueue != null ? simplePlainQueue.poll() : (Object) null;
                boolean z2 = poll == null;
                if (z && z2 && i3 == 2) {
                    this.f18150j = null;
                    observer.onComplete();
                    return;
                } else if (z2) {
                    int addAndGet = addAndGet(-i);
                    i = addAndGet;
                    if (addAndGet == 0) {
                        return;
                    }
                } else {
                    observer.onNext(poll);
                }
            }
            this.f18151k = null;
            this.f18150j = null;
        }

        /* renamed from: c */
        SimplePlainQueue<T> m3767c() {
            SimplePlainQueue<T> simplePlainQueue = this.f18150j;
            SimplePlainQueue<T> simplePlainQueue2 = simplePlainQueue;
            if (simplePlainQueue == null) {
                simplePlainQueue2 = new SpscLinkedArrayQueue<>(Observable.bufferSize());
                this.f18150j = simplePlainQueue2;
            }
            return simplePlainQueue2;
        }

        /* renamed from: d */
        void m3766d() {
            this.f18154n = 2;
            m3769a();
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f18152l = true;
            DisposableHelper.dispose(this.f18147g);
            DisposableHelper.dispose(this.f18148h);
            if (getAndIncrement() == 0) {
                this.f18150j = null;
                this.f18151k = null;
            }
        }

        /* renamed from: e */
        void m3765e(Throwable th) {
            if (this.f18149i.m3456a(th)) {
                DisposableHelper.dispose(this.f18147g);
                m3769a();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        /* renamed from: f */
        void m3764f(T t) {
            if (compareAndSet(0, 1)) {
                this.f18146f.onNext(t);
                this.f18154n = 2;
            } else {
                this.f18151k = t;
                this.f18154n = 1;
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            m3768b();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f18147g.get());
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f18153m = true;
            m3769a();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f18149i.m3456a(th)) {
                DisposableHelper.dispose(this.f18148h);
                m3769a();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (compareAndSet(0, 1)) {
                this.f18146f.onNext(t);
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                m3767c().offer(t);
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            m3768b();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this.f18147g, disposable);
        }
    }

    public ObservableMergeWithMaybe(Observable<T> observable, MaybeSource<? extends T> maybeSource) {
        super(observable);
        this.f18145g = maybeSource;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        MergeWithObserver mergeWithObserver = new MergeWithObserver(observer);
        observer.onSubscribe(mergeWithObserver);
        this.f17497f.subscribe(mergeWithObserver);
        this.f18145g.mo4485b(mergeWithObserver.f18148h);
    }
}
