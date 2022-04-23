package io.reactivex.internal.operators.observable;

import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.annotations.Nullable;
import io.reactivex.disposables.CompositeDisposable;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.internal.observers.BasicIntQueueDisposable;
import io.reactivex.internal.util.AtomicThrowable;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableFlatMapCompletable.class */
public final class ObservableFlatMapCompletable<T> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final Function<? super T, ? extends CompletableSource> f17915g;

    /* renamed from: h */
    final boolean f17916h;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableFlatMapCompletable$FlatMapCompletableMainObserver.class */
    static final class FlatMapCompletableMainObserver<T> extends BasicIntQueueDisposable<T> implements Observer<T> {
        private static final long serialVersionUID = 8443155186132538303L;

        /* renamed from: f */
        final Observer<? super T> f17917f;

        /* renamed from: h */
        final Function<? super T, ? extends CompletableSource> f17919h;

        /* renamed from: i */
        final boolean f17920i;

        /* renamed from: k */
        Disposable f17922k;

        /* renamed from: l */
        volatile boolean f17923l;

        /* renamed from: g */
        final AtomicThrowable f17918g = new AtomicThrowable();

        /* renamed from: j */
        final CompositeDisposable f17921j = new CompositeDisposable();

        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableFlatMapCompletable$FlatMapCompletableMainObserver$InnerObserver.class */
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
                FlatMapCompletableMainObserver.this.m3840a(this);
            }

            @Override // io.reactivex.CompletableObserver
            public void onError(Throwable th) {
                FlatMapCompletableMainObserver.this.m3839b(this, th);
            }

            @Override // io.reactivex.CompletableObserver
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.setOnce(this, disposable);
            }
        }

        FlatMapCompletableMainObserver(Observer<? super T> observer, Function<? super T, ? extends CompletableSource> function, boolean z) {
            this.f17917f = observer;
            this.f17919h = function;
            this.f17920i = z;
            lazySet(1);
        }

        /* renamed from: a */
        void m3840a(FlatMapCompletableMainObserver<T>.InnerObserver innerObserver) {
            this.f17921j.mo4424c(innerObserver);
            onComplete();
        }

        /* renamed from: b */
        void m3839b(FlatMapCompletableMainObserver<T>.InnerObserver innerObserver, Throwable th) {
            this.f17921j.mo4424c(innerObserver);
            onError(th);
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public void clear() {
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17923l = true;
            this.f17922k.dispose();
            this.f17921j.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17922k.isDisposed();
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        public boolean isEmpty() {
            return true;
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (decrementAndGet() == 0) {
                Throwable b = this.f17918g.m3455b();
                if (b != null) {
                    this.f17917f.onError(b);
                } else {
                    this.f17917f.onComplete();
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (!this.f17918g.m3456a(th)) {
                RxJavaPlugins.m3354t(th);
            } else if (!this.f17920i) {
                dispose();
                if (getAndSet(0) > 0) {
                    this.f17917f.onError(this.f17918g.m3455b());
                }
            } else if (decrementAndGet() == 0) {
                this.f17917f.onError(this.f17918g.m3455b());
            }
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            try {
                Object apply = this.f17919h.apply(t);
                ObjectHelper.m4363e(apply, "The mapper returned a null CompletableSource");
                CompletableSource completableSource = (CompletableSource) apply;
                getAndIncrement();
                InnerObserver innerObserver = new InnerObserver();
                if (!this.f17923l && this.f17921j.mo4425b(innerObserver)) {
                    completableSource.mo4514b(innerObserver);
                }
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f17922k.dispose();
                onError(th);
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17922k, disposable)) {
                this.f17922k = disposable;
                this.f17917f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.internal.fuseable.SimpleQueue
        @Nullable
        public T poll() throws Exception {
            return null;
        }

        @Override // io.reactivex.internal.fuseable.QueueFuseable
        public int requestFusion(int i) {
            return i & 2;
        }
    }

    public ObservableFlatMapCompletable(ObservableSource<T> observableSource, Function<? super T, ? extends CompletableSource> function, boolean z) {
        super(observableSource);
        this.f17915g = function;
        this.f17916h = z;
    }

    @Override // io.reactivex.Observable
    protected void subscribeActual(Observer<? super T> observer) {
        this.f17497f.subscribe(new FlatMapCompletableMainObserver(observer, this.f17915g, this.f17916h));
    }
}
