package io.reactivex.internal.operators.mixed;

import io.reactivex.Observable;
import io.reactivex.Observer;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.SimplePlainQueue;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/ObservableConcatMapSingle.class */
public final class ObservableConcatMapSingle<T, R> extends Observable<R> {

    /* renamed from: f */
    final Observable<T> f17437f;

    /* renamed from: g */
    final Function<? super T, ? extends SingleSource<? extends R>> f17438g;

    /* renamed from: h */
    final ErrorMode f17439h;

    /* renamed from: i */
    final int f17440i;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver.class */
    static final class ConcatMapSingleMainObserver<T, R> extends AtomicInteger implements Observer<T>, Disposable {
        private static final long serialVersionUID = -9140123220065488293L;

        /* renamed from: f */
        final Observer<? super R> f17441f;

        /* renamed from: g */
        final Function<? super T, ? extends SingleSource<? extends R>> f17442g;

        /* renamed from: h */
        final AtomicThrowable f17443h = new AtomicThrowable();

        /* renamed from: i */
        final ConcatMapSingleObserver<R> f17444i = new ConcatMapSingleObserver<>(this);

        /* renamed from: j */
        final SimplePlainQueue<T> f17445j;

        /* renamed from: k */
        final ErrorMode f17446k;

        /* renamed from: l */
        Disposable f17447l;

        /* renamed from: m */
        volatile boolean f17448m;

        /* renamed from: n */
        volatile boolean f17449n;

        /* renamed from: o */
        R f17450o;

        /* renamed from: p */
        volatile int f17451p;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/ObservableConcatMapSingle$ConcatMapSingleMainObserver$ConcatMapSingleObserver.class */
        public static final class ConcatMapSingleObserver<R> extends AtomicReference<Disposable> implements SingleObserver<R> {
            private static final long serialVersionUID = -3051469169682093892L;

            /* renamed from: f */
            final ConcatMapSingleMainObserver<?, R> f17452f;

            ConcatMapSingleObserver(ConcatMapSingleMainObserver<?, R> concatMapSingleMainObserver) {
                this.f17452f = concatMapSingleMainObserver;
            }

            /* renamed from: a */
            void m3930a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.SingleObserver
            public void onError(Throwable th) {
                this.f17452f.m3932b(th);
            }

            @Override // io.reactivex.SingleObserver
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.replace(this, disposable);
            }

            @Override // io.reactivex.SingleObserver
            public void onSuccess(R r) {
                this.f17452f.m3931c(r);
            }
        }

        ConcatMapSingleMainObserver(Observer<? super R> observer, Function<? super T, ? extends SingleSource<? extends R>> function, int i, ErrorMode errorMode) {
            this.f17441f = observer;
            this.f17442g = function;
            this.f17446k = errorMode;
            this.f17445j = new SpscLinkedArrayQueue(i);
        }

        /* renamed from: a */
        void m3933a() {
            if (getAndIncrement() == 0) {
                Observer<? super R> observer = this.f17441f;
                ErrorMode errorMode = this.f17446k;
                SimplePlainQueue<T> simplePlainQueue = this.f17445j;
                AtomicThrowable atomicThrowable = this.f17443h;
                int i = 1;
                while (true) {
                    if (this.f17449n) {
                        simplePlainQueue.clear();
                        this.f17450o = null;
                    } else {
                        int i2 = this.f17451p;
                        if (atomicThrowable.get() == null || !(errorMode == ErrorMode.IMMEDIATE || (errorMode == ErrorMode.BOUNDARY && i2 == 0))) {
                            boolean z = false;
                            if (i2 == 0) {
                                boolean z2 = this.f17448m;
                                T poll = simplePlainQueue.poll();
                                if (poll == null) {
                                    z = true;
                                }
                                if (z2 && z) {
                                    Throwable b = atomicThrowable.m3455b();
                                    if (b == null) {
                                        observer.onComplete();
                                        return;
                                    } else {
                                        observer.onError(b);
                                        return;
                                    }
                                } else if (!z) {
                                    try {
                                        Object apply = this.f17442g.apply(poll);
                                        ObjectHelper.m4363e(apply, "The mapper returned a null SingleSource");
                                        SingleSource singleSource = (SingleSource) apply;
                                        this.f17451p = 1;
                                        singleSource.mo4457b(this.f17444i);
                                    } catch (Throwable th) {
                                        Exceptions.m4428b(th);
                                        this.f17447l.dispose();
                                        simplePlainQueue.clear();
                                        atomicThrowable.m3456a(th);
                                        observer.onError(atomicThrowable.m3455b());
                                        return;
                                    }
                                }
                            } else if (i2 == 2) {
                                this.f17450o = null;
                                observer.onNext((R) this.f17450o);
                                this.f17451p = 0;
                            }
                        }
                    }
                    int addAndGet = addAndGet(-i);
                    i = addAndGet;
                    if (addAndGet == 0) {
                        return;
                    }
                }
                simplePlainQueue.clear();
                this.f17450o = null;
                observer.onError(atomicThrowable.m3455b());
            }
        }

        /* renamed from: b */
        void m3932b(Throwable th) {
            if (this.f17443h.m3456a(th)) {
                if (this.f17446k != ErrorMode.END) {
                    this.f17447l.dispose();
                }
                this.f17451p = 0;
                m3933a();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        /* renamed from: c */
        void m3931c(R r) {
            this.f17450o = r;
            this.f17451p = 2;
            m3933a();
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17449n = true;
            this.f17447l.dispose();
            this.f17444i.m3930a();
            if (getAndIncrement() == 0) {
                this.f17445j.clear();
                this.f17450o = null;
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17449n;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f17448m = true;
            m3933a();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f17443h.m3456a(th)) {
                if (this.f17446k == ErrorMode.IMMEDIATE) {
                    this.f17444i.m3930a();
                }
                this.f17448m = true;
                m3933a();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f17445j.offer(t);
            m3933a();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17447l, disposable)) {
                this.f17447l = disposable;
                this.f17441f.onSubscribe(this);
            }
        }
    }

    public ObservableConcatMapSingle(Observable<T> observable, Function<? super T, ? extends SingleSource<? extends R>> function, ErrorMode errorMode, int i) {
        this.f17437f = observable;
        this.f17438g = function;
        this.f17439h = errorMode;
        this.f17440i = i;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super R> observer) {
        if (!ScalarXMapZHelper.m3914c(this.f17437f, this.f17438g, observer)) {
            this.f17437f.subscribe(new ConcatMapSingleMainObserver(observer, this.f17438g, this.f17440i, this.f17439h));
        }
    }
}
