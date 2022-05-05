package io.reactivex.internal.operators.mixed;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.Observable;
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
import io.reactivex.internal.util.ExceptionHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/ObservableConcatMapCompletable.class */
public final class ObservableConcatMapCompletable<T> extends Completable {

    /* renamed from: f */
    final Observable<T> f17405f;

    /* renamed from: g */
    final Function<? super T, ? extends CompletableSource> f17406g;

    /* renamed from: h */
    final ErrorMode f17407h;

    /* renamed from: i */
    final int f17408i;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver.class */
    static final class ConcatMapCompletableObserver<T> extends AtomicInteger implements Observer<T>, Disposable {
        private static final long serialVersionUID = 3610901111000061034L;

        /* renamed from: f */
        final CompletableObserver f17409f;

        /* renamed from: g */
        final Function<? super T, ? extends CompletableSource> f17410g;

        /* renamed from: h */
        final ErrorMode f17411h;

        /* renamed from: i */
        final AtomicThrowable f17412i = new AtomicThrowable();

        /* renamed from: j */
        final ConcatMapInnerObserver f17413j = new ConcatMapInnerObserver(this);

        /* renamed from: k */
        final int f17414k;

        /* renamed from: l */
        SimpleQueue<T> f17415l;

        /* renamed from: m */
        Disposable f17416m;

        /* renamed from: n */
        volatile boolean f17417n;

        /* renamed from: o */
        volatile boolean f17418o;

        /* renamed from: p */
        volatile boolean f17419p;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/mixed/ObservableConcatMapCompletable$ConcatMapCompletableObserver$ConcatMapInnerObserver.class */
        public static final class ConcatMapInnerObserver extends AtomicReference<Disposable> implements CompletableObserver {
            private static final long serialVersionUID = 5638352172918776687L;

            /* renamed from: f */
            final ConcatMapCompletableObserver<?> f17420f;

            ConcatMapInnerObserver(ConcatMapCompletableObserver<?> concatMapCompletableObserver) {
                this.f17420f = concatMapCompletableObserver;
            }

            /* renamed from: a */
            void m3939a() {
                DisposableHelper.dispose(this);
            }

            @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
            public void onComplete() {
                this.f17420f.m3941b();
            }

            @Override // io.reactivex.CompletableObserver
            public void onError(Throwable th) {
                this.f17420f.m3940c(th);
            }

            @Override // io.reactivex.CompletableObserver
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.replace(this, disposable);
            }
        }

        ConcatMapCompletableObserver(CompletableObserver completableObserver, Function<? super T, ? extends CompletableSource> function, ErrorMode errorMode, int i) {
            this.f17409f = completableObserver;
            this.f17410g = function;
            this.f17411h = errorMode;
            this.f17414k = i;
        }

        /* renamed from: a */
        void m3942a() {
            boolean z;
            if (getAndIncrement() == 0) {
                AtomicThrowable atomicThrowable = this.f17412i;
                ErrorMode errorMode = this.f17411h;
                while (!this.f17419p) {
                    if (!this.f17417n) {
                        if (errorMode != ErrorMode.BOUNDARY || atomicThrowable.get() == null) {
                            boolean z2 = this.f17418o;
                            CompletableSource completableSource = null;
                            try {
                                T poll = this.f17415l.poll();
                                if (poll != null) {
                                    Object apply = this.f17410g.apply(poll);
                                    ObjectHelper.m4363e(apply, "The mapper returned a null CompletableSource");
                                    completableSource = (CompletableSource) apply;
                                    z = false;
                                } else {
                                    z = true;
                                }
                                if (z2 && z) {
                                    this.f17419p = true;
                                    Throwable b = atomicThrowable.m3455b();
                                    if (b != null) {
                                        this.f17409f.onError(b);
                                        return;
                                    } else {
                                        this.f17409f.onComplete();
                                        return;
                                    }
                                } else if (!z) {
                                    this.f17417n = true;
                                    completableSource.mo4514b(this.f17413j);
                                }
                            } catch (Throwable th) {
                                Exceptions.m4428b(th);
                                this.f17419p = true;
                                this.f17415l.clear();
                                this.f17416m.dispose();
                                atomicThrowable.m3456a(th);
                                this.f17409f.onError(atomicThrowable.m3455b());
                                return;
                            }
                        } else {
                            this.f17419p = true;
                            this.f17415l.clear();
                            this.f17409f.onError(atomicThrowable.m3455b());
                            return;
                        }
                    }
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
                this.f17415l.clear();
            }
        }

        /* renamed from: b */
        void m3941b() {
            this.f17417n = false;
            m3942a();
        }

        /* renamed from: c */
        void m3940c(Throwable th) {
            if (!this.f17412i.m3456a(th)) {
                RxJavaPlugins.m3354t(th);
            } else if (this.f17411h == ErrorMode.IMMEDIATE) {
                this.f17419p = true;
                this.f17416m.dispose();
                Throwable b = this.f17412i.m3455b();
                if (b != ExceptionHelper.f19422a) {
                    this.f17409f.onError(b);
                }
                if (getAndIncrement() == 0) {
                    this.f17415l.clear();
                }
            } else {
                this.f17417n = false;
                m3942a();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17419p = true;
            this.f17416m.dispose();
            this.f17413j.m3939a();
            if (getAndIncrement() == 0) {
                this.f17415l.clear();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17419p;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            this.f17418o = true;
            m3942a();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (!this.f17412i.m3456a(th)) {
                RxJavaPlugins.m3354t(th);
            } else if (this.f17411h == ErrorMode.IMMEDIATE) {
                this.f17419p = true;
                this.f17413j.m3939a();
                Throwable b = this.f17412i.m3455b();
                if (b != ExceptionHelper.f19422a) {
                    this.f17409f.onError(b);
                }
                if (getAndIncrement() == 0) {
                    this.f17415l.clear();
                }
            } else {
                this.f17418o = true;
                m3942a();
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (t != null) {
                this.f17415l.offer(t);
            }
            m3942a();
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17416m, disposable)) {
                this.f17416m = disposable;
                if (disposable instanceof QueueDisposable) {
                    QueueDisposable queueDisposable = (QueueDisposable) disposable;
                    int requestFusion = queueDisposable.requestFusion(3);
                    if (requestFusion == 1) {
                        this.f17415l = queueDisposable;
                        this.f17418o = true;
                        this.f17409f.onSubscribe(this);
                        m3942a();
                        return;
                    } else if (requestFusion == 2) {
                        this.f17415l = queueDisposable;
                        this.f17409f.onSubscribe(this);
                        return;
                    }
                }
                this.f17415l = new SpscLinkedArrayQueue(this.f17414k);
                this.f17409f.onSubscribe(this);
            }
        }
    }

    public ObservableConcatMapCompletable(Observable<T> observable, Function<? super T, ? extends CompletableSource> function, ErrorMode errorMode, int i) {
        this.f17405f = observable;
        this.f17406g = function;
        this.f17407h = errorMode;
        this.f17408i = i;
    }

    @Override // io.reactivex.Completable
    /* renamed from: d */
    protected void mo3214d(CompletableObserver completableObserver) {
        if (!ScalarXMapZHelper.m3916a(this.f17405f, this.f17406g, completableObserver)) {
            this.f17405f.subscribe(new ConcatMapCompletableObserver(completableObserver, this.f17406g, this.f17407h, this.f17408i));
        }
    }
}
