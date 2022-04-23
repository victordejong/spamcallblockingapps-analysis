package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.QueueDisposable;
import io.reactivex.internal.fuseable.SimplePlainQueue;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.queue.SpscArrayQueue;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.ArrayDeque;
import java.util.Queue;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableFlatMap.class */
public final class ObservableFlatMap<T, U> extends AbstractObservableWithUpstream<T, U> {

    /* renamed from: g */
    final Function<? super T, ? extends ObservableSource<? extends U>> f17888g;

    /* renamed from: h */
    final boolean f17889h;

    /* renamed from: i */
    final int f17890i;

    /* renamed from: j */
    final int f17891j;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableFlatMap$InnerObserver.class */
    public static final class InnerObserver<T, U> extends AtomicReference<Disposable> implements Observer<U> {
        private static final long serialVersionUID = -4606175640614850599L;

        /* renamed from: f */
        final long f17892f;

        /* renamed from: g */
        final MergeObserver<T, U> f17893g;

        /* renamed from: h */
        volatile boolean f17894h;

        /* renamed from: i */
        volatile SimpleQueue<U> f17895i;

        /* renamed from: j */
        int f17896j;

        InnerObserver(MergeObserver<T, U> mergeObserver, long j) {
            this.f17892f = j;
            this.f17893g = mergeObserver;
        }

        /* renamed from: a */
        public void m3851a() {
            DisposableHelper.dispose(this);
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f17894h = true;
            this.f17893g.m3847d();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f17893g.f17906m.m3456a(th)) {
                MergeObserver<T, U> mergeObserver = this.f17893g;
                if (!mergeObserver.f17901h) {
                    mergeObserver.m3848c();
                }
                this.f17894h = true;
                this.f17893g.m3847d();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(U u) {
            if (this.f17896j == 0) {
                this.f17893g.m3842i(u, this);
            } else {
                this.f17893g.m3847d();
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.setOnce(this, disposable) && (disposable instanceof QueueDisposable)) {
                QueueDisposable queueDisposable = (QueueDisposable) disposable;
                int requestFusion = queueDisposable.requestFusion(7);
                if (requestFusion == 1) {
                    this.f17896j = requestFusion;
                    this.f17895i = queueDisposable;
                    this.f17894h = true;
                    this.f17893g.m3847d();
                } else if (requestFusion == 2) {
                    this.f17896j = requestFusion;
                    this.f17895i = queueDisposable;
                }
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableFlatMap$MergeObserver.class */
    static final class MergeObserver<T, U> extends AtomicInteger implements Disposable, Observer<T> {
        private static final long serialVersionUID = -2117620485640801370L;

        /* renamed from: v */
        static final InnerObserver<?, ?>[] f17897v = new InnerObserver[0];

        /* renamed from: w */
        static final InnerObserver<?, ?>[] f17898w = new InnerObserver[0];

        /* renamed from: f */
        final Observer<? super U> f17899f;

        /* renamed from: g */
        final Function<? super T, ? extends ObservableSource<? extends U>> f17900g;

        /* renamed from: h */
        final boolean f17901h;

        /* renamed from: i */
        final int f17902i;

        /* renamed from: j */
        final int f17903j;

        /* renamed from: k */
        volatile SimplePlainQueue<U> f17904k;

        /* renamed from: l */
        volatile boolean f17905l;

        /* renamed from: m */
        final AtomicThrowable f17906m = new AtomicThrowable();

        /* renamed from: n */
        volatile boolean f17907n;

        /* renamed from: o */
        final AtomicReference<InnerObserver<?, ?>[]> f17908o;

        /* renamed from: p */
        Disposable f17909p;

        /* renamed from: q */
        long f17910q;

        /* renamed from: r */
        long f17911r;

        /* renamed from: s */
        int f17912s;

        /* renamed from: t */
        Queue<ObservableSource<? extends U>> f17913t;

        /* renamed from: u */
        int f17914u;

        MergeObserver(Observer<? super U> observer, Function<? super T, ? extends ObservableSource<? extends U>> function, boolean z, int i, int i2) {
            this.f17899f = observer;
            this.f17900g = function;
            this.f17901h = z;
            this.f17902i = i;
            this.f17903j = i2;
            if (i != Integer.MAX_VALUE) {
                this.f17913t = new ArrayDeque(i);
            }
            this.f17908o = new AtomicReference<>(f17897v);
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* renamed from: a */
        boolean m3850a(InnerObserver<T, U> innerObserver) {
            InnerObserver<?, ?>[] innerObserverArr;
            InnerObserver[] innerObserverArr2;
            do {
                innerObserverArr = this.f17908o.get();
                if (innerObserverArr == f17898w) {
                    innerObserver.m3851a();
                    return false;
                }
                int length = innerObserverArr.length;
                innerObserverArr2 = new InnerObserver[length + 1];
                System.arraycopy(innerObserverArr, 0, innerObserverArr2, 0, length);
                innerObserverArr2[length] = innerObserver;
            } while (!this.f17908o.compareAndSet(innerObserverArr, innerObserverArr2));
            return true;
        }

        /* renamed from: b */
        boolean m3849b() {
            if (this.f17907n) {
                return true;
            }
            Throwable th = this.f17906m.get();
            if (this.f17901h || th == null) {
                return false;
            }
            m3848c();
            Throwable b = this.f17906m.m3455b();
            if (b == ExceptionHelper.f19422a) {
                return true;
            }
            this.f17899f.onError(b);
            return true;
        }

        /* renamed from: c */
        boolean m3848c() {
            InnerObserver<?, ?>[] andSet;
            this.f17909p.dispose();
            InnerObserver<?, ?>[] innerObserverArr = this.f17908o.get();
            InnerObserver<?, ?>[] innerObserverArr2 = f17898w;
            if (innerObserverArr == innerObserverArr2 || (andSet = this.f17908o.getAndSet(innerObserverArr2)) == f17898w) {
                return false;
            }
            for (InnerObserver<?, ?> innerObserver : andSet) {
                innerObserver.m3851a();
            }
            return true;
        }

        /* renamed from: d */
        void m3847d() {
            if (getAndIncrement() == 0) {
                m3846e();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            Throwable b;
            if (!this.f17907n) {
                this.f17907n = true;
                if (m3848c() && (b = this.f17906m.m3455b()) != null && b != ExceptionHelper.f19422a) {
                    RxJavaPlugins.m3354t(b);
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:55:0x010d, code lost:
            if (r0[r0].f17892f != r0) goto L_0x0110;
         */
        /* JADX WARN: Code restructure failed: missing block: B:94:0x0217, code lost:
            if (r0.isEmpty() != false) goto L_0x021a;
         */
        /* renamed from: e */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        void m3846e() {
            /*
                Method dump skipped, instructions count: 650
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: io.reactivex.internal.operators.observable.ObservableFlatMap.MergeObserver.m3846e():void");
        }

        /* renamed from: f */
        void m3845f(InnerObserver<T, U> innerObserver) {
            InnerObserver<?, ?>[] innerObserverArr;
            InnerObserver<?, ?>[] innerObserverArr2;
            do {
                innerObserverArr = this.f17908o.get();
                int length = innerObserverArr.length;
                if (length != 0) {
                    int i = -1;
                    int i2 = 0;
                    while (true) {
                        if (i2 >= length) {
                            break;
                        } else if (innerObserverArr[i2] == innerObserver) {
                            i = i2;
                            break;
                        } else {
                            i2++;
                        }
                    }
                    if (i >= 0) {
                        if (length == 1) {
                            innerObserverArr2 = f17897v;
                        } else {
                            innerObserverArr2 = new InnerObserver[length - 1];
                            System.arraycopy(innerObserverArr, 0, innerObserverArr2, 0, i);
                            System.arraycopy(innerObserverArr, i + 1, innerObserverArr2, i, (length - i) - 1);
                        }
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            } while (!this.f17908o.compareAndSet(innerObserverArr, innerObserverArr2));
        }

        /* renamed from: g */
        void m3844g(ObservableSource<? extends U> observableSource) {
            while (observableSource instanceof Callable) {
                if (m3841j((Callable) observableSource) && this.f17902i != Integer.MAX_VALUE) {
                    boolean z = false;
                    synchronized (this) {
                        observableSource = this.f17913t.poll();
                        if (observableSource == null) {
                            this.f17914u--;
                            z = true;
                        }
                    }
                    if (z) {
                        m3847d();
                        return;
                    }
                } else {
                    return;
                }
            }
            long j = this.f17910q;
            this.f17910q = 1 + j;
            InnerObserver<T, U> innerObserver = new InnerObserver<>(this, j);
            if (m3850a(innerObserver)) {
                observableSource.subscribe(innerObserver);
            }
        }

        /* renamed from: h */
        void m3843h(int i) {
            while (i != 0) {
                synchronized (this) {
                    ObservableSource<? extends U> poll = this.f17913t.poll();
                    if (poll == null) {
                        this.f17914u--;
                    } else {
                        m3844g(poll);
                    }
                }
                i--;
            }
        }

        /* renamed from: i */
        void m3842i(U u, InnerObserver<T, U> innerObserver) {
            if (get() != 0 || !compareAndSet(0, 1)) {
                SimpleQueue<U> simpleQueue = innerObserver.f17895i;
                SimpleQueue<U> simpleQueue2 = simpleQueue;
                if (simpleQueue == null) {
                    simpleQueue2 = new SpscLinkedArrayQueue<>(this.f17903j);
                    innerObserver.f17895i = simpleQueue2;
                }
                simpleQueue2.offer(u);
                if (getAndIncrement() != 0) {
                    return;
                }
            } else {
                this.f17899f.onNext(u);
                if (decrementAndGet() == 0) {
                    return;
                }
            }
            m3846e();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17907n;
        }

        /* renamed from: j */
        boolean m3841j(Callable<? extends U> callable) {
            try {
                Object call = callable.call();
                if (call == null) {
                    return true;
                }
                if (get() != 0 || !compareAndSet(0, 1)) {
                    SimplePlainQueue<U> simplePlainQueue = this.f17904k;
                    SpscLinkedArrayQueue spscLinkedArrayQueue = simplePlainQueue;
                    if (simplePlainQueue == null) {
                        spscLinkedArrayQueue = this.f17902i == Integer.MAX_VALUE ? new SpscLinkedArrayQueue(this.f17903j) : new SpscArrayQueue<>(this.f17902i);
                        this.f17904k = spscLinkedArrayQueue;
                    }
                    if (!spscLinkedArrayQueue.offer(call)) {
                        onError(new IllegalStateException("Scalar queue full?!"));
                        return true;
                    } else if (getAndIncrement() != 0) {
                        return false;
                    }
                } else {
                    this.f17899f.onNext(call);
                    if (decrementAndGet() == 0) {
                        return true;
                    }
                }
                m3846e();
                return true;
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f17906m.m3456a(th);
                m3847d();
                return true;
            }
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.f17905l) {
                this.f17905l = true;
                m3847d();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f17905l) {
                RxJavaPlugins.m3354t(th);
            } else if (this.f17906m.m3456a(th)) {
                this.f17905l = true;
                m3847d();
            } else {
                RxJavaPlugins.m3354t(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (!this.f17905l) {
                try {
                    Object apply = this.f17900g.apply(t);
                    ObjectHelper.m4363e(apply, "The mapper returned a null ObservableSource");
                    ObservableSource<? extends U> observableSource = (ObservableSource) apply;
                    if (this.f17902i != Integer.MAX_VALUE) {
                        synchronized (this) {
                            if (this.f17914u == this.f17902i) {
                                this.f17913t.offer(observableSource);
                                return;
                            }
                            this.f17914u++;
                        }
                    }
                    m3844g(observableSource);
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f17909p.dispose();
                    onError(th);
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17909p, disposable)) {
                this.f17909p = disposable;
                this.f17899f.onSubscribe(this);
            }
        }
    }

    public ObservableFlatMap(ObservableSource<T> observableSource, Function<? super T, ? extends ObservableSource<? extends U>> function, boolean z, int i, int i2) {
        super(observableSource);
        this.f17888g = function;
        this.f17889h = z;
        this.f17890i = i;
        this.f17891j = i2;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super U> observer) {
        if (!ObservableScalarXMap.m3690b(this.f17497f, observer, this.f17888g)) {
            this.f17497f.subscribe(new MergeObserver(observer, this.f17888g, this.f17889h, this.f17890i, this.f17891j));
        }
    }
}
