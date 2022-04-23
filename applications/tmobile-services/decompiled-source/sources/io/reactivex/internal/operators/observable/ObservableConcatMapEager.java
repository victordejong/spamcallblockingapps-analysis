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
import io.reactivex.internal.observers.InnerQueuedObserver;
import io.reactivex.internal.observers.InnerQueuedObserverSupport;
import io.reactivex.internal.queue.SpscLinkedArrayQueue;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.internal.util.ErrorMode;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.ArrayDeque;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableConcatMapEager.class */
public final class ObservableConcatMapEager<T, R> extends AbstractObservableWithUpstream<T, R> {

    /* renamed from: g */
    final Function<? super T, ? extends ObservableSource<? extends R>> f17727g;

    /* renamed from: h */
    final ErrorMode f17728h;

    /* renamed from: i */
    final int f17729i;

    /* renamed from: j */
    final int f17730j;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableConcatMapEager$ConcatMapEagerMainObserver.class */
    static final class ConcatMapEagerMainObserver<T, R> extends AtomicInteger implements Observer<T>, Disposable, InnerQueuedObserverSupport<R> {
        private static final long serialVersionUID = 8080567949447303262L;

        /* renamed from: f */
        final Observer<? super R> f17731f;

        /* renamed from: g */
        final Function<? super T, ? extends ObservableSource<? extends R>> f17732g;

        /* renamed from: h */
        final int f17733h;

        /* renamed from: i */
        final int f17734i;

        /* renamed from: j */
        final ErrorMode f17735j;

        /* renamed from: k */
        final AtomicThrowable f17736k = new AtomicThrowable();

        /* renamed from: l */
        final ArrayDeque<InnerQueuedObserver<R>> f17737l = new ArrayDeque<>();

        /* renamed from: m */
        SimpleQueue<T> f17738m;

        /* renamed from: n */
        Disposable f17739n;

        /* renamed from: o */
        volatile boolean f17740o;

        /* renamed from: p */
        int f17741p;

        /* renamed from: q */
        volatile boolean f17742q;

        /* renamed from: r */
        InnerQueuedObserver<R> f17743r;

        /* renamed from: s */
        int f17744s;

        ConcatMapEagerMainObserver(Observer<? super R> observer, Function<? super T, ? extends ObservableSource<? extends R>> function, int i, int i2, ErrorMode errorMode) {
            this.f17731f = observer;
            this.f17732g = function;
            this.f17733h = i;
            this.f17734i = i2;
            this.f17735j = errorMode;
        }

        /* renamed from: a */
        void m3867a() {
            InnerQueuedObserver<R> innerQueuedObserver = this.f17743r;
            if (innerQueuedObserver != null) {
                innerQueuedObserver.dispose();
            }
            while (true) {
                InnerQueuedObserver<R> poll = this.f17737l.poll();
                if (poll != null) {
                    poll.dispose();
                } else {
                    return;
                }
            }
        }

        @Override // io.reactivex.internal.observers.InnerQueuedObserverSupport
        /* renamed from: b */
        public void mo3866b() {
            R poll;
            boolean z;
            if (getAndIncrement() == 0) {
                SimpleQueue<T> simpleQueue = this.f17738m;
                ArrayDeque<InnerQueuedObserver<R>> arrayDeque = this.f17737l;
                Observer<? super R> observer = this.f17731f;
                ErrorMode errorMode = this.f17735j;
                int i = 1;
                while (true) {
                    int i2 = this.f17744s;
                    while (i2 != this.f17733h) {
                        if (this.f17742q) {
                            simpleQueue.clear();
                            m3867a();
                            return;
                        } else if (errorMode != ErrorMode.IMMEDIATE || this.f17736k.get() == null) {
                            try {
                                T poll2 = simpleQueue.poll();
                                if (poll2 == null) {
                                    break;
                                }
                                Object apply = this.f17732g.apply(poll2);
                                ObjectHelper.m4363e(apply, "The mapper returned a null ObservableSource");
                                ObservableSource observableSource = (ObservableSource) apply;
                                InnerQueuedObserver<R> innerQueuedObserver = new InnerQueuedObserver<>(this, this.f17734i);
                                arrayDeque.offer(innerQueuedObserver);
                                observableSource.subscribe(innerQueuedObserver);
                                i2++;
                            } catch (Throwable th) {
                                Exceptions.m4428b(th);
                                this.f17739n.dispose();
                                simpleQueue.clear();
                                m3867a();
                                this.f17736k.m3456a(th);
                                observer.onError(this.f17736k.m3455b());
                                return;
                            }
                        } else {
                            simpleQueue.clear();
                            m3867a();
                            observer.onError(this.f17736k.m3455b());
                            return;
                        }
                    }
                    this.f17744s = i2;
                    if (this.f17742q) {
                        simpleQueue.clear();
                        m3867a();
                        return;
                    } else if (errorMode != ErrorMode.IMMEDIATE || this.f17736k.get() == null) {
                        InnerQueuedObserver<R> innerQueuedObserver2 = this.f17743r;
                        InnerQueuedObserver<R> innerQueuedObserver3 = innerQueuedObserver2;
                        if (innerQueuedObserver2 == null) {
                            if (errorMode != ErrorMode.BOUNDARY || this.f17736k.get() == null) {
                                boolean z2 = this.f17740o;
                                innerQueuedObserver3 = arrayDeque.poll();
                                boolean z3 = innerQueuedObserver3 == null;
                                if (!z2 || !z3) {
                                    if (!z3) {
                                        this.f17743r = innerQueuedObserver3;
                                    }
                                } else if (this.f17736k.get() != null) {
                                    simpleQueue.clear();
                                    m3867a();
                                    observer.onError(this.f17736k.m3455b());
                                    return;
                                } else {
                                    observer.onComplete();
                                    return;
                                }
                            } else {
                                simpleQueue.clear();
                                m3867a();
                                observer.onError(this.f17736k.m3455b());
                                return;
                            }
                        }
                        if (innerQueuedObserver3 != null) {
                            SimpleQueue<R> b = innerQueuedObserver3.m4346b();
                            while (!this.f17742q) {
                                boolean a = innerQueuedObserver3.m4347a();
                                if (errorMode != ErrorMode.IMMEDIATE || this.f17736k.get() == null) {
                                    try {
                                        poll = b.poll();
                                        z = poll == null;
                                    } catch (Throwable th2) {
                                        Exceptions.m4428b(th2);
                                        this.f17736k.m3456a(th2);
                                        this.f17743r = null;
                                        this.f17744s--;
                                    }
                                    if (a && z) {
                                        this.f17743r = null;
                                        this.f17744s--;
                                    } else if (!z) {
                                        observer.onNext(poll);
                                    }
                                } else {
                                    simpleQueue.clear();
                                    m3867a();
                                    observer.onError(this.f17736k.m3455b());
                                    return;
                                }
                            }
                            simpleQueue.clear();
                            m3867a();
                            return;
                        }
                        int addAndGet = addAndGet(-i);
                        i = addAndGet;
                        if (addAndGet == 0) {
                            return;
                        }
                    } else {
                        simpleQueue.clear();
                        m3867a();
                        observer.onError(this.f17736k.m3455b());
                        return;
                    }
                }
            }
        }

        @Override // io.reactivex.internal.observers.InnerQueuedObserverSupport
        /* renamed from: c */
        public void mo3865c(InnerQueuedObserver<R> innerQueuedObserver, Throwable th) {
            if (this.f17736k.m3456a(th)) {
                if (this.f17735j == ErrorMode.IMMEDIATE) {
                    this.f17739n.dispose();
                }
                innerQueuedObserver.m4345c();
                mo3866b();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // io.reactivex.internal.observers.InnerQueuedObserverSupport
        /* renamed from: d */
        public void mo3864d(InnerQueuedObserver<R> innerQueuedObserver) {
            innerQueuedObserver.m4345c();
            mo3866b();
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (!this.f17742q) {
                this.f17742q = true;
                this.f17739n.dispose();
                m3862f();
            }
        }

        @Override // io.reactivex.internal.observers.InnerQueuedObserverSupport
        /* renamed from: e */
        public void mo3863e(InnerQueuedObserver<R> innerQueuedObserver, R r) {
            innerQueuedObserver.m4346b().offer(r);
            mo3866b();
        }

        /* renamed from: f */
        void m3862f() {
            if (getAndIncrement() == 0) {
                do {
                    this.f17738m.clear();
                    m3867a();
                } while (decrementAndGet() != 0);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17742q;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f17740o = true;
            mo3866b();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f17736k.m3456a(th)) {
                this.f17740o = true;
                mo3866b();
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (this.f17741p == 0) {
                this.f17738m.offer(t);
            }
            mo3866b();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17739n, disposable)) {
                this.f17739n = disposable;
                if (disposable instanceof QueueDisposable) {
                    QueueDisposable queueDisposable = (QueueDisposable) disposable;
                    int requestFusion = queueDisposable.requestFusion(3);
                    if (requestFusion == 1) {
                        this.f17741p = requestFusion;
                        this.f17738m = queueDisposable;
                        this.f17740o = true;
                        this.f17731f.onSubscribe(this);
                        mo3866b();
                        return;
                    } else if (requestFusion == 2) {
                        this.f17741p = requestFusion;
                        this.f17738m = queueDisposable;
                        this.f17731f.onSubscribe(this);
                        return;
                    }
                }
                this.f17738m = new SpscLinkedArrayQueue(this.f17734i);
                this.f17731f.onSubscribe(this);
            }
        }
    }

    public ObservableConcatMapEager(ObservableSource<T> observableSource, Function<? super T, ? extends ObservableSource<? extends R>> function, ErrorMode errorMode, int i, int i2) {
        super(observableSource);
        this.f17727g = function;
        this.f17728h = errorMode;
        this.f17729i = i;
        this.f17730j = i2;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super R> observer) {
        this.f17497f.subscribe(new ConcatMapEagerMainObserver(observer, this.f17727g, this.f17729i, this.f17730j, this.f17728h));
    }
}
