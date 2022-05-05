package io.reactivex.internal.operators.observable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.fuseable.FuseToObservable;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable.class */
public final class ObservableFlatMapCompletableCompletable<T> extends Completable implements FuseToObservable<T> {

    /* renamed from: f */
    final ObservableSource<T> f17925f;

    /* renamed from: g */
    final Function<? super T, ? extends CompletableSource> f17926g;

    /* renamed from: h */
    final boolean f17927h;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver.class */
    static final class FlatMapCompletableMainObserver<T> extends AtomicInteger implements Disposable, Observer<T> {
        private static final long serialVersionUID = 8443155186132538303L;

        /* renamed from: f */
        final CompletableObserver f17928f;

        /* renamed from: h */
        final Function<? super T, ? extends CompletableSource> f17930h;

        /* renamed from: i */
        final boolean f17931i;

        /* renamed from: k */
        Disposable f17933k;

        /* renamed from: l */
        volatile boolean f17934l;

        /* renamed from: g */
        final AtomicThrowable f17929g = new AtomicThrowable();

        /* renamed from: j */
        final CompositeDisposable f17932j = new CompositeDisposable();

        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableFlatMapCompletableCompletable$FlatMapCompletableMainObserver$InnerObserver.class */
        final class InnerObserver extends AtomicReference<Disposable> implements CompletableObserver, Disposable {
            private static final long serialVersionUID = 8606673141535671828L;

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

            @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
            public void onComplete() {
                FlatMapCompletableMainObserver.this.m3838a(this);
            }

            @Override // io.reactivex.CompletableObserver
            public void onError(Throwable th) {
                FlatMapCompletableMainObserver.this.m3837b(this, th);
            }

            @Override // io.reactivex.CompletableObserver
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.setOnce(this, disposable);
            }
        }

        FlatMapCompletableMainObserver(CompletableObserver completableObserver, Function<? super T, ? extends CompletableSource> function, boolean z) {
            this.f17928f = completableObserver;
            this.f17930h = function;
            this.f17931i = z;
            lazySet(1);
        }

        /* renamed from: a */
        void m3838a(FlatMapCompletableMainObserver<T>.InnerObserver innerObserver) {
            this.f17932j.mo4424c(innerObserver);
            onComplete();
        }

        /* renamed from: b */
        void m3837b(FlatMapCompletableMainObserver<T>.InnerObserver innerObserver, Throwable th) {
            this.f17932j.mo4424c(innerObserver);
            onError(th);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17934l = true;
            this.f17933k.dispose();
            this.f17932j.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17933k.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (decrementAndGet() == 0) {
                Throwable b = this.f17929g.m3455b();
                if (b != null) {
                    this.f17928f.onError(b);
                } else {
                    this.f17928f.onComplete();
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (!this.f17929g.m3456a(th)) {
                RxJavaPlugins.m3354t(th);
            } else if (!this.f17931i) {
                dispose();
                if (getAndSet(0) > 0) {
                    this.f17928f.onError(this.f17929g.m3455b());
                }
            } else if (decrementAndGet() == 0) {
                this.f17928f.onError(this.f17929g.m3455b());
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            try {
                Object apply = this.f17930h.apply(t);
                ObjectHelper.m4363e(apply, "The mapper returned a null CompletableSource");
                CompletableSource completableSource = (CompletableSource) apply;
                getAndIncrement();
                InnerObserver innerObserver = new InnerObserver();
                if (!this.f17934l && this.f17932j.mo4425b(innerObserver)) {
                    completableSource.mo4514b(innerObserver);
                }
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f17933k.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17933k, disposable)) {
                this.f17933k = disposable;
                this.f17928f.onSubscribe(this);
            }
        }
    }

    public ObservableFlatMapCompletableCompletable(ObservableSource<T> observableSource, Function<? super T, ? extends CompletableSource> function, boolean z) {
        this.f17925f = observableSource;
        this.f17926g = function;
        this.f17927h = z;
    }

    @Override // io.reactivex.internal.fuseable.FuseToObservable
    /* renamed from: a */
    public Observable<T> mo3663a() {
        return RxJavaPlugins.m3360n(new ObservableFlatMapCompletable(this.f17925f, this.f17926g, this.f17927h));
    }

    @Override // io.reactivex.Completable
    /* renamed from: d */
    protected void mo3214d(CompletableObserver completableObserver) {
        this.f17925f.subscribe(new FlatMapCompletableMainObserver(completableObserver, this.f17926g, this.f17927h));
    }
}
