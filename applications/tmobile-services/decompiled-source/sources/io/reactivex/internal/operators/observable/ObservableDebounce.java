package io.reactivex.internal.operators.observable;

import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.observers.DisposableObserver;
import io.reactivex.observers.SerializedObserver;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableDebounce.class */
public final class ObservableDebounce<T, U> extends AbstractObservableWithUpstream<T, T> {

    /* renamed from: g */
    final Function<? super T, ? extends ObservableSource<U>> f17770g;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableDebounce$DebounceObserver.class */
    public static final class DebounceObserver<T, U> implements Observer<T>, Disposable {

        /* renamed from: f */
        final Observer<? super T> f17771f;

        /* renamed from: g */
        final Function<? super T, ? extends ObservableSource<U>> f17772g;

        /* renamed from: h */
        Disposable f17773h;

        /* renamed from: i */
        final AtomicReference<Disposable> f17774i = new AtomicReference<>();

        /* renamed from: j */
        volatile long f17775j;

        /* renamed from: k */
        boolean f17776k;

        /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableDebounce$DebounceObserver$DebounceInnerObserver.class */
        static final class DebounceInnerObserver<T, U> extends DisposableObserver<U> {

            /* renamed from: g */
            final DebounceObserver<T, U> f17777g;

            /* renamed from: h */
            final long f17778h;

            /* renamed from: i */
            final T f17779i;

            /* renamed from: j */
            boolean f17780j;

            /* renamed from: k */
            final AtomicBoolean f17781k = new AtomicBoolean();

            DebounceInnerObserver(DebounceObserver<T, U> debounceObserver, long j, T t) {
                this.f17777g = debounceObserver;
                this.f17778h = j;
                this.f17779i = t;
            }

            /* renamed from: b */
            void m3855b() {
                if (this.f17781k.compareAndSet(false, true)) {
                    this.f17777g.m3856a(this.f17778h, this.f17779i);
                }
            }

            @Override // io.reactivex.Observer
            public void onComplete() {
                if (!this.f17780j) {
                    this.f17780j = true;
                    m3855b();
                }
            }

            @Override // io.reactivex.Observer
            public void onError(Throwable th) {
                if (this.f17780j) {
                    RxJavaPlugins.m3354t(th);
                    return;
                }
                this.f17780j = true;
                this.f17777g.onError(th);
            }

            @Override // io.reactivex.Observer
            public void onNext(U u) {
                if (!this.f17780j) {
                    this.f17780j = true;
                    dispose();
                    m3855b();
                }
            }
        }

        DebounceObserver(Observer<? super T> observer, Function<? super T, ? extends ObservableSource<U>> function) {
            this.f17771f = observer;
            this.f17772g = function;
        }

        /* renamed from: a */
        void m3856a(long j, T t) {
            if (j == this.f17775j) {
                this.f17771f.onNext(t);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17773h.dispose();
            DisposableHelper.dispose(this.f17774i);
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17773h.isDisposed();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (!this.f17776k) {
                this.f17776k = true;
                Disposable disposable = this.f17774i.get();
                if (disposable != DisposableHelper.DISPOSED) {
                    DebounceInnerObserver debounceInnerObserver = (DebounceInnerObserver) disposable;
                    if (debounceInnerObserver != null) {
                        debounceInnerObserver.m3855b();
                    }
                    DisposableHelper.dispose(this.f17774i);
                    this.f17771f.onComplete();
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            DisposableHelper.dispose(this.f17774i);
            this.f17771f.onError(th);
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            if (!this.f17776k) {
                long j = this.f17775j + 1;
                this.f17775j = j;
                Disposable disposable = this.f17774i.get();
                if (disposable != null) {
                    disposable.dispose();
                }
                try {
                    Object apply = this.f17772g.apply(t);
                    ObjectHelper.m4363e(apply, "The ObservableSource supplied is null");
                    ObservableSource observableSource = (ObservableSource) apply;
                    DebounceInnerObserver debounceInnerObserver = new DebounceInnerObserver(this, j, t);
                    if (this.f17774i.compareAndSet(disposable, debounceInnerObserver)) {
                        observableSource.subscribe(debounceInnerObserver);
                    }
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    dispose();
                    this.f17771f.onError(th);
                }
            }
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17773h, disposable)) {
                this.f17773h = disposable;
                this.f17771f.onSubscribe(this);
            }
        }
    }

    public ObservableDebounce(ObservableSource<T> observableSource, Function<? super T, ? extends ObservableSource<U>> function) {
        super(observableSource);
        this.f17770g = function;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        this.f17497f.subscribe(new DebounceObserver(new SerializedObserver(observer), this.f17770g));
    }
}
