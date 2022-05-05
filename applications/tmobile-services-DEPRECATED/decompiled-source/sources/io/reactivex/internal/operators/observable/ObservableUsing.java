package io.reactivex.internal.operators.observable;

import io.reactivex.Observable;
import io.reactivex.ObservableSource;
import io.reactivex.Observer;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Consumer;
import io.reactivex.functions.Function;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.internal.functions.ObjectHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.Callable;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableUsing.class */
public final class ObservableUsing<T, D> extends Observable<T> {

    /* renamed from: f */
    final Callable<? extends D> f18627f;

    /* renamed from: g */
    final Function<? super D, ? extends ObservableSource<? extends T>> f18628g;

    /* renamed from: h */
    final Consumer<? super D> f18629h;

    /* renamed from: i */
    final boolean f18630i;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/observable/ObservableUsing$UsingObserver.class */
    static final class UsingObserver<T, D> extends AtomicBoolean implements Observer<T>, Disposable {
        private static final long serialVersionUID = 5904473792286235046L;

        /* renamed from: f */
        final Observer<? super T> f18631f;

        /* renamed from: g */
        final D f18632g;

        /* renamed from: h */
        final Consumer<? super D> f18633h;

        /* renamed from: i */
        final boolean f18634i;

        /* renamed from: j */
        Disposable f18635j;

        UsingObserver(Observer<? super T> observer, D d, Consumer<? super D> consumer, boolean z) {
            this.f18631f = observer;
            this.f18632g = d;
            this.f18633h = consumer;
            this.f18634i = z;
        }

        /* renamed from: a */
        void m3662a() {
            if (compareAndSet(false, true)) {
                try {
                    this.f18633h.accept((D) this.f18632g);
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    RxJavaPlugins.m3354t(th);
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            m3662a();
            this.f18635j.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return get();
        }

        @Override // io.reactivex.Observer
        public void onComplete() {
            if (this.f18634i) {
                if (compareAndSet(false, true)) {
                    try {
                        this.f18633h.accept((D) this.f18632g);
                    } catch (Throwable th) {
                        Exceptions.m4428b(th);
                        this.f18631f.onError(th);
                        return;
                    }
                }
                this.f18635j.dispose();
                this.f18631f.onComplete();
                return;
            }
            this.f18631f.onComplete();
            this.f18635j.dispose();
            m3662a();
        }

        @Override // io.reactivex.Observer
        public void onError(Throwable th) {
            if (this.f18634i) {
                Throwable th2 = th;
                if (compareAndSet(false, true)) {
                    try {
                        this.f18633h.accept((D) this.f18632g);
                        th2 = th;
                    } catch (Throwable th3) {
                        Exceptions.m4428b(th3);
                        th2 = new CompositeException(th, th3);
                    }
                }
                this.f18635j.dispose();
                this.f18631f.onError(th2);
                return;
            }
            this.f18631f.onError(th);
            this.f18635j.dispose();
            m3662a();
        }

        @Override // io.reactivex.Observer
        public void onNext(T t) {
            this.f18631f.onNext(t);
        }

        @Override // io.reactivex.Observer
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f18635j, disposable)) {
                this.f18635j = disposable;
                this.f18631f.onSubscribe(this);
            }
        }
    }

    public ObservableUsing(Callable<? extends D> callable, Function<? super D, ? extends ObservableSource<? extends T>> function, Consumer<? super D> consumer, boolean z) {
        this.f18627f = callable;
        this.f18628g = function;
        this.f18629h = consumer;
        this.f18630i = z;
    }

    @Override // io.reactivex.Observable
    public void subscribeActual(Observer<? super T> observer) {
        try {
            Object call = this.f18627f.call();
            try {
                Object apply = this.f18628g.apply(call);
                ObjectHelper.m4363e(apply, "The sourceSupplier returned a null ObservableSource");
                ((ObservableSource) apply).subscribe(new UsingObserver(observer, call, this.f18629h, this.f18630i));
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                try {
                    this.f18629h.accept(call);
                    EmptyDisposable.error(th, observer);
                } catch (Throwable th2) {
                    Exceptions.m4428b(th2);
                    EmptyDisposable.error(new CompositeException(th, th2), observer);
                }
            }
        } catch (Throwable th3) {
            Exceptions.m4428b(th3);
            EmptyDisposable.error(th3, observer);
        }
    }
}
