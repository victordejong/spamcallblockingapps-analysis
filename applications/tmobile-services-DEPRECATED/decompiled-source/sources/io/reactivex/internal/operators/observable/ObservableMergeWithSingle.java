package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.fuseable.SimplePlainQueue;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableMergeWithSingle.class */
public final class ObservableMergeWithSingle<T> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final SingleSource<? extends T> f18156g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver.class */
    static final class MergeWithObserver<T> extends AtomicInteger implements Observer<T>, Disposable {
        private static final long serialVersionUID = -4592979584110982903L;

        /* renamed from: f */
        final Observer<? super T> f18157f;

        /* renamed from: g */
        final AtomicReference<Disposable> f18158g = new AtomicReference<>();

        /* renamed from: h */
        final OtherObserver<T> f18159h = new OtherObserver<>(this);

        /* renamed from: i */
        final AtomicThrowable f18160i = new AtomicThrowable();

        /* renamed from: j */
        volatile SimplePlainQueue<T> f18161j;

        /* renamed from: k */
        T f18162k;

        /* renamed from: l */
        volatile boolean f18163l;

        /* renamed from: m */
        volatile boolean f18164m;

        /* renamed from: n */
        volatile int f18165n;

        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableMergeWithSingle$MergeWithObserver$OtherObserver.class */
        static final class OtherObserver<T> extends AtomicReference<Disposable> implements SingleObserver<T> {
            private static final long serialVersionUID = -2935427570954647017L;

            /* renamed from: f */
            final MergeWithObserver<T> f18166f;

            OtherObserver(MergeWithObserver<T> mergeWithObserver) {
                this.f18166f = mergeWithObserver;
            }

            @Override // io.reactivex.SingleObserver
            public void onError(Throwable th) {
                this.f18166f.m3760d(th);
            }

            @Override // io.reactivex.SingleObserver
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.setOnce(this, disposable);
            }

            @Override // io.reactivex.SingleObserver
            public void onSuccess(T t) {
                this.f18166f.m3759e(t);
            }
        }

        MergeWithObserver(Observer<? super T> observer) {
            this.f18157f = observer;
        }

        /* renamed from: a */
        void m3763a() {
            if (getAndIncrement() == 0) {
                m3762b();
            }
        }

        /* renamed from: b */
        void m3762b() {
            Observer<? super T> observer = this.f18157f;
            int i = 1;
            while (!this.f18163l) {
                if (this.f18160i.get() != null) {
                    this.f18162k = null;
                    this.f18161j = null;
                    observer.onError(this.f18160i.m3455b());
                    return;
                }
                int i2 = this.f18165n;
                int i3 = i2;
                if (i2 == 1) {
                    this.f18162k = null;
                    this.f18165n = 2;
                    observer.onNext((T) this.f18162k);
                    i3 = 2;
                }
                boolean z = this.f18164m;
                SimplePlainQueue<T> simplePlainQueue = this.f18161j;
                T poll = simplePlainQueue != null ? simplePlainQueue.poll() : (Object) null;
                boolean z2 = poll == null;
                if (z && z2 && i3 == 2) {
                    this.f18161j = null;
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
            this.f18162k = null;
            this.f18161j = null;
        }

        /* renamed from: c */
        SimplePlainQueue<T> m3761c() {
            SimplePlainQueue<T> simplePlainQueue = this.f18161j;
            SimplePlainQueue<T> simplePlainQueue2 = simplePlainQueue;
            if (simplePlainQueue == null) {
                simplePlainQueue2 = new SpscLinkedArrayQueue<>(Observable.bufferSize());
                this.f18161j = simplePlainQueue2;
            }
            return simplePlainQueue2;
        }

        /* renamed from: d */
        void m3760d(Throwable th) {
            if (this.f18160i.m3456a(th)) {
                DisposableHelper.dispose(this.f18158g);
                m3763a();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f18163l = true;
            DisposableHelper.dispose(this.f18158g);
            DisposableHelper.dispose(this.f18159h);
            if (getAndIncrement() == 0) {
                this.f18161j = null;
                this.f18162k = null;
            }
        }

        /* renamed from: e */
        void m3759e(T t) {
            if (compareAndSet(0, 1)) {
                this.f18157f.onNext(t);
                this.f18165n = 2;
            } else {
                this.f18162k = t;
                this.f18165n = 1;
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            m3762b();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return DisposableHelper.isDisposed(this.f18158g.get());
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f18164m = true;
            m3763a();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f18160i.m3456a(th)) {
                DisposableHelper.dispose(this.f18159h);
                m3763a();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (compareAndSet(0, 1)) {
                this.f18157f.onNext(t);
                if (decrementAndGet() == 0) {
                    return;
                }
            } else {
                m3761c().offer(t);
                if (getAndIncrement() != 0) {
                    return;
                }
            }
            m3762b();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this.f18158g, disposable);
        }
    }

    public ObservableMergeWithSingle(Observable<T> observable, SingleSource<? extends T> singleSource) {
        super(observable);
        this.f18156g = singleSource;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        MergeWithObserver mergeWithObserver = new MergeWithObserver(observer);
        observer.onSubscribe(mergeWithObserver);
        this.f17497f.subscribe(mergeWithObserver);
        this.f18156g.mo4457b(mergeWithObserver.f18159h);
    }
}
