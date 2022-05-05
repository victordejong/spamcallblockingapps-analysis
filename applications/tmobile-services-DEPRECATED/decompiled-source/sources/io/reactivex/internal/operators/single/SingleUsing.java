package io.reactivex.internal.operators.single;

import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
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
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleUsing.class */
public final class SingleUsing<T, U> extends Single<T> {

    /* renamed from: f */
    final Callable<U> f19185f;

    /* renamed from: g */
    final Function<? super U, ? extends SingleSource<? extends T>> f19186g;

    /* renamed from: h */
    final Consumer<? super U> f19187h;

    /* renamed from: i */
    final boolean f19188i;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleUsing$UsingSingleObserver.class */
    static final class UsingSingleObserver<T, U> extends AtomicReference<Object> implements SingleObserver<T>, Disposable {
        private static final long serialVersionUID = -5331524057054083935L;

        /* renamed from: f */
        final SingleObserver<? super T> f19189f;

        /* renamed from: g */
        final Consumer<? super U> f19190g;

        /* renamed from: h */
        final boolean f19191h;

        /* renamed from: i */
        Disposable f19192i;

        UsingSingleObserver(SingleObserver<? super T> singleObserver, U u, boolean z, Consumer<? super U> consumer) {
            super(u);
            this.f19189f = singleObserver;
            this.f19191h = z;
            this.f19190g = consumer;
        }

        /* renamed from: a */
        void m3577a() {
            Object andSet = getAndSet(this);
            if (andSet != this) {
                try {
                    this.f19190g.accept(andSet);
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    RxJavaPlugins.m3354t(th);
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f19192i.dispose();
            this.f19192i = DisposableHelper.DISPOSED;
            m3577a();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f19192i.isDisposed();
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.f19192i = DisposableHelper.DISPOSED;
            Throwable th2 = th;
            if (this.f19191h) {
                Object andSet = getAndSet(this);
                if (andSet != this) {
                    try {
                        this.f19190g.accept(andSet);
                        th2 = th;
                    } catch (Throwable th3) {
                        Exceptions.m4428b(th3);
                        th2 = new CompositeException(th, th3);
                    }
                } else {
                    return;
                }
            }
            this.f19189f.onError(th2);
            if (!this.f19191h) {
                m3577a();
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f19192i, disposable)) {
                this.f19192i = disposable;
                this.f19189f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            this.f19192i = DisposableHelper.DISPOSED;
            if (this.f19191h) {
                Object andSet = getAndSet(this);
                if (andSet != this) {
                    try {
                        this.f19190g.accept(andSet);
                    } catch (Throwable th) {
                        Exceptions.m4428b(th);
                        this.f19189f.onError(th);
                        return;
                    }
                } else {
                    return;
                }
            }
            this.f19189f.onSuccess(t);
            if (!this.f19191h) {
                m3577a();
            }
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super T> singleObserver) {
        try {
            U call = this.f19185f.call();
            try {
                Object apply = this.f19186g.apply(call);
                ObjectHelper.m4363e(apply, "The singleFunction returned a null SingleSource");
                ((SingleSource) apply).mo4457b(new UsingSingleObserver(singleObserver, call, this.f19188i, this.f19187h));
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                CompositeException compositeException = th;
                if (this.f19188i) {
                    try {
                        this.f19187h.accept(call);
                        compositeException = th;
                    } catch (Throwable th2) {
                        Exceptions.m4428b(th2);
                        compositeException = new CompositeException(th, th2);
                    }
                }
                EmptyDisposable.error(compositeException, singleObserver);
                if (!this.f19188i) {
                    try {
                        this.f19187h.accept(call);
                    } catch (Throwable th3) {
                        Exceptions.m4428b(th3);
                        RxJavaPlugins.m3354t(th3);
                    }
                }
            }
        } catch (Throwable th4) {
            Exceptions.m4428b(th4);
            EmptyDisposable.error(th4, singleObserver);
        }
    }
}
