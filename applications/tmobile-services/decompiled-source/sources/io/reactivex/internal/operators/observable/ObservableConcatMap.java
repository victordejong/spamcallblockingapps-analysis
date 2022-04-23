package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.QueueDisposable;
import io.reactivex.internal.fuseable.SimpleQueue;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.observers.SerializedObserver;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableConcatMap.class */
public final class ObservableConcatMap<T, U> extends AbstractObservableWithUpstream<T, U> {

    /* renamed from: g */
    final Function<? super T, ? extends ObservableSource<? extends U>> f17698g;

    /* renamed from: h */
    final int f17699h;

    /* renamed from: i */
    final ErrorMode f17700i;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver.class */
    static final class ConcatMapDelayErrorObserver<T, R> extends AtomicInteger implements Observer<T>, Disposable {
        private static final long serialVersionUID = -6951100001833242599L;

        /* renamed from: f */
        final Observer<? super R> f17701f;

        /* renamed from: g */
        final Function<? super T, ? extends ObservableSource<? extends R>> f17702g;

        /* renamed from: h */
        final int f17703h;

        /* renamed from: i */
        final AtomicThrowable f17704i = new AtomicThrowable();

        /* renamed from: j */
        final DelayErrorInnerObserver<R> f17705j;

        /* renamed from: k */
        final boolean f17706k;

        /* renamed from: l */
        SimpleQueue<T> f17707l;

        /* renamed from: m */
        Disposable f17708m;

        /* renamed from: n */
        volatile boolean f17709n;

        /* renamed from: o */
        volatile boolean f17710o;

        /* renamed from: p */
        volatile boolean f17711p;

        /* renamed from: q */
        int f17712q;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableConcatMap$ConcatMapDelayErrorObserver$DelayErrorInnerObserver.class */
        public static final class DelayErrorInnerObserver<R> extends AtomicReference<Disposable> implements Observer<R> {
            private static final long serialVersionUID = 2620149119579502636L;

            /* renamed from: f */
            final Observer<? super R> f17713f;

            /* renamed from: g */
            final ConcatMapDelayErrorObserver<?, R> f17714g;

            DelayErrorInnerObserver(Observer<? super R> observer, ConcatMapDelayErrorObserver<?, R> concatMapDelayErrorObserver) {
                this.f17713f = observer;
                this.f17714g = concatMapDelayErrorObserver;
            }

            /* renamed from: a */
            void m3871a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.Observer
            public void onComplete() {
                ConcatMapDelayErrorObserver<?, R> concatMapDelayErrorObserver = this.f17714g;
                concatMapDelayErrorObserver.f17709n = false;
                concatMapDelayErrorObserver.m3872a();
            }

            @Override // io.reactivex.Observer
            public void onError(Throwable th) {
                ConcatMapDelayErrorObserver<?, R> concatMapDelayErrorObserver = this.f17714g;
                if (concatMapDelayErrorObserver.f17704i.m3456a(th)) {
                    if (!concatMapDelayErrorObserver.f17706k) {
                        concatMapDelayErrorObserver.f17708m.dispose();
                    }
                    concatMapDelayErrorObserver.f17709n = false;
                    concatMapDelayErrorObserver.m3872a();
                    return;
                }
                RxJavaPlugins.m3354t(th);
            }

            @Override // io.reactivex.Observer
            public void onNext(R r) {
                this.f17713f.onNext(r);
            }

            @Override // io.reactivex.Observer
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.replace(this, disposable);
            }
        }

        ConcatMapDelayErrorObserver(Observer<? super R> observer, Function<? super T, ? extends ObservableSource<? extends R>> function, int i, boolean z) {
            this.f17701f = observer;
            this.f17702g = function;
            this.f17703h = i;
            this.f17706k = z;
            this.f17705j = new DelayErrorInnerObserver<>(observer, this);
        }

        /* renamed from: a */
        void m3872a() {
            if (getAndIncrement() == 0) {
                Observer<? super R> observer = this.f17701f;
                SimpleQueue<T> simpleQueue = this.f17707l;
                AtomicThrowable atomicThrowable = this.f17704i;
                while (true) {
                    if (!this.f17709n) {
                        if (this.f17711p) {
                            simpleQueue.clear();
                            return;
                        } else if (this.f17706k || atomicThrowable.get() == null) {
                            boolean z = this.f17710o;
                            try {
                                T poll = simpleQueue.poll();
                                boolean z2 = poll == null;
                                if (z && z2) {
                                    this.f17711p = true;
                                    Throwable b = atomicThrowable.m3455b();
                                    if (b != null) {
                                        observer.onError(b);
                                        return;
                                    } else {
                                        observer.onComplete();
                                        return;
                                    }
                                } else if (!z2) {
                                    try {
                                        Object apply = this.f17702g.apply(poll);
                                        ObjectHelper.m4363e(apply, "The mapper returned a null ObservableSource");
                                        ObservableSource observableSource = (ObservableSource) apply;
                                        if (observableSource instanceof Callable) {
                                            try {
                                                Object obj = (Object) ((Callable) observableSource).call();
                                                if (obj != 0 && !this.f17711p) {
                                                    observer.onNext(obj);
                                                }
                                            } catch (Throwable th) {
                                                Exceptions.m4428b(th);
                                                atomicThrowable.m3456a(th);
                                            }
                                        } else {
                                            this.f17709n = true;
                                            observableSource.subscribe(this.f17705j);
                                        }
                                    } catch (Throwable th2) {
                                        Exceptions.m4428b(th2);
                                        this.f17711p = true;
                                        this.f17708m.dispose();
                                        simpleQueue.clear();
                                        atomicThrowable.m3456a(th2);
                                        observer.onError(atomicThrowable.m3455b());
                                        return;
                                    }
                                }
                            } catch (Throwable th3) {
                                Exceptions.m4428b(th3);
                                this.f17711p = true;
                                this.f17708m.dispose();
                                atomicThrowable.m3456a(th3);
                                observer.onError(atomicThrowable.m3455b());
                                return;
                            }
                        } else {
                            simpleQueue.clear();
                            this.f17711p = true;
                            observer.onError(atomicThrowable.m3455b());
                            return;
                        }
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17711p = true;
            this.f17708m.dispose();
            this.f17705j.m3871a();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17711p;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f17710o = true;
            m3872a();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f17704i.m3456a(th)) {
                this.f17710o = true;
                m3872a();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.f17712q == 0) {
                this.f17707l.offer(t);
            }
            m3872a();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17708m, disposable)) {
                this.f17708m = disposable;
                if (disposable instanceof QueueDisposable) {
                    QueueDisposable queueDisposable = (QueueDisposable) disposable;
                    int requestFusion = queueDisposable.requestFusion(3);
                    if (requestFusion == 1) {
                        this.f17712q = requestFusion;
                        this.f17707l = queueDisposable;
                        this.f17710o = true;
                        this.f17701f.onSubscribe(this);
                        m3872a();
                        return;
                    } else if (requestFusion == 2) {
                        this.f17712q = requestFusion;
                        this.f17707l = queueDisposable;
                        this.f17701f.onSubscribe(this);
                        return;
                    }
                }
                this.f17707l = new SpscLinkedArrayQueue(this.f17703h);
                this.f17701f.onSubscribe(this);
            }
        }
    }

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver.class */
    static final class SourceObserver<T, U> extends AtomicInteger implements Observer<T>, Disposable {
        private static final long serialVersionUID = 8828587559905699186L;

        /* renamed from: f */
        final Observer<? super U> f17715f;

        /* renamed from: g */
        final Function<? super T, ? extends ObservableSource<? extends U>> f17716g;

        /* renamed from: h */
        final InnerObserver<U> f17717h;

        /* renamed from: i */
        final int f17718i;

        /* renamed from: j */
        SimpleQueue<T> f17719j;

        /* renamed from: k */
        Disposable f17720k;

        /* renamed from: l */
        volatile boolean f17721l;

        /* renamed from: m */
        volatile boolean f17722m;

        /* renamed from: n */
        volatile boolean f17723n;

        /* renamed from: o */
        int f17724o;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableConcatMap$SourceObserver$InnerObserver.class */
        public static final class InnerObserver<U> extends AtomicReference<Disposable> implements Observer<U> {
            private static final long serialVersionUID = -7449079488798789337L;

            /* renamed from: f */
            final Observer<? super U> f17725f;

            /* renamed from: g */
            final SourceObserver<?, ?> f17726g;

            InnerObserver(Observer<? super U> observer, SourceObserver<?, ?> sourceObserver) {
                this.f17725f = observer;
                this.f17726g = sourceObserver;
            }

            /* renamed from: a */
            void m3868a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.Observer
            public void onComplete() {
                this.f17726g.m3869b();
            }

            @Override // io.reactivex.Observer
            public void onError(Throwable th) {
                this.f17726g.dispose();
                this.f17725f.onError(th);
            }

            @Override // io.reactivex.Observer
            public void onNext(U u) {
                this.f17725f.onNext(u);
            }

            @Override // io.reactivex.Observer
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.replace(this, disposable);
            }
        }

        SourceObserver(Observer<? super U> observer, Function<? super T, ? extends ObservableSource<? extends U>> function, int i) {
            this.f17715f = observer;
            this.f17716g = function;
            this.f17718i = i;
            this.f17717h = new InnerObserver<>(observer, this);
        }

        /* renamed from: a */
        void m3870a() {
            if (getAndIncrement() == 0) {
                while (!this.f17722m) {
                    if (!this.f17721l) {
                        boolean z = this.f17723n;
                        try {
                            T poll = this.f17719j.poll();
                            boolean z2 = poll == null;
                            if (z && z2) {
                                this.f17722m = true;
                                this.f17715f.onComplete();
                                return;
                            } else if (!z2) {
                                try {
                                    Object apply = this.f17716g.apply(poll);
                                    ObjectHelper.m4363e(apply, "The mapper returned a null ObservableSource");
                                    ObservableSource observableSource = (ObservableSource) apply;
                                    this.f17721l = true;
                                    observableSource.subscribe(this.f17717h);
                                } catch (Throwable th) {
                                    Exceptions.m4428b(th);
                                    dispose();
                                    this.f17719j.clear();
                                    this.f17715f.onError(th);
                                    return;
                                }
                            }
                        } catch (Throwable th2) {
                            Exceptions.m4428b(th2);
                            dispose();
                            this.f17719j.clear();
                            this.f17715f.onError(th2);
                            return;
                        }
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
                this.f17719j.clear();
            }
        }

        /* renamed from: b */
        void m3869b() {
            this.f17721l = false;
            m3870a();
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17722m = true;
            this.f17717h.m3868a();
            this.f17720k.dispose();
            if (getAndIncrement() == 0) {
                this.f17719j.clear();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17722m;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.f17723n) {
                this.f17723n = true;
                m3870a();
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f17723n) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            this.f17723n = true;
            dispose();
            this.f17715f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (!this.f17723n) {
                if (this.f17724o == 0) {
                    this.f17719j.offer(t);
                }
                m3870a();
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17720k, disposable)) {
                this.f17720k = disposable;
                if (disposable instanceof QueueDisposable) {
                    QueueDisposable queueDisposable = (QueueDisposable) disposable;
                    int requestFusion = queueDisposable.requestFusion(3);
                    if (requestFusion == 1) {
                        this.f17724o = requestFusion;
                        this.f17719j = queueDisposable;
                        this.f17723n = true;
                        this.f17715f.onSubscribe(this);
                        m3870a();
                        return;
                    } else if (requestFusion == 2) {
                        this.f17724o = requestFusion;
                        this.f17719j = queueDisposable;
                        this.f17715f.onSubscribe(this);
                        return;
                    }
                }
                this.f17719j = new SpscLinkedArrayQueue(this.f17718i);
                this.f17715f.onSubscribe(this);
            }
        }
    }

    public ObservableConcatMap(ObservableSource<T> observableSource, Function<? super T, ? extends ObservableSource<? extends U>> function, int i, ErrorMode errorMode) {
        super(observableSource);
        this.f17698g = function;
        this.f17700i = errorMode;
        this.f17699h = Math.max(8, i);
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super U> observer) {
        if (!ObservableScalarXMap.m3690b(this.f17497f, observer, this.f17698g)) {
            if (this.f17700i == ErrorMode.IMMEDIATE) {
                this.f17497f.subscribe(new SourceObserver(new SerializedObserver(observer), this.f17698g, this.f17699h));
            } else {
                this.f17497f.subscribe(new ConcatMapDelayErrorObserver(observer, this.f17698g, this.f17699h, this.f17700i == ErrorMode.END));
            }
        }
    }
}
