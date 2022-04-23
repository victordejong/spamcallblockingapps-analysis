package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
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
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableUsing.class */
public final class CompletableUsing<R> extends Completable {

    /* renamed from: f */
    final Callable<R> f15403f;

    /* renamed from: g */
    final Function<? super R, ? extends CompletableSource> f15404g;

    /* renamed from: h */
    final Consumer<? super R> f15405h;

    /* renamed from: i */
    final boolean f15406i;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableUsing$UsingObserver.class */
    static final class UsingObserver<R> extends AtomicReference<Object> implements CompletableObserver, Disposable {
        private static final long serialVersionUID = -674404550052917487L;

        /* renamed from: f */
        final CompletableObserver f15407f;

        /* renamed from: g */
        final Consumer<? super R> f15408g;

        /* renamed from: h */
        final boolean f15409h;

        /* renamed from: i */
        Disposable f15410i;

        UsingObserver(CompletableObserver completableObserver, R r, Consumer<? super R> consumer, boolean z) {
            super(r);
            this.f15407f = completableObserver;
            this.f15408g = consumer;
            this.f15409h = z;
        }

        /* renamed from: a */
        void m4319a() {
            Object andSet = getAndSet(this);
            if (andSet != this) {
                try {
                    this.f15408g.accept(andSet);
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    RxJavaPlugins.m3354t(th);
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f15410i.dispose();
            this.f15410i = DisposableHelper.DISPOSED;
            m4319a();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f15410i.isDisposed();
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            this.f15410i = DisposableHelper.DISPOSED;
            if (this.f15409h) {
                Object andSet = getAndSet(this);
                if (andSet != this) {
                    try {
                        this.f15408g.accept(andSet);
                    } catch (Throwable th) {
                        Exceptions.m4428b(th);
                        this.f15407f.onError(th);
                        return;
                    }
                } else {
                    return;
                }
            }
            this.f15407f.onComplete();
            if (!this.f15409h) {
                m4319a();
            }
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            this.f15410i = DisposableHelper.DISPOSED;
            Throwable th2 = th;
            if (this.f15409h) {
                Object andSet = getAndSet(this);
                if (andSet != this) {
                    try {
                        this.f15408g.accept(andSet);
                        th2 = th;
                    } catch (Throwable th3) {
                        Exceptions.m4428b(th3);
                        th2 = new CompositeException(th, th3);
                    }
                } else {
                    return;
                }
            }
            this.f15407f.onError(th2);
            if (!this.f15409h) {
                m4319a();
            }
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f15410i, disposable)) {
                this.f15410i = disposable;
                this.f15407f.onSubscribe(this);
            }
        }
    }

    @Override // io.reactivex.Completable
    /* renamed from: d */
    protected void mo3214d(CompletableObserver completableObserver) {
        try {
            R call = this.f15403f.call();
            try {
                Object apply = this.f15404g.apply(call);
                ObjectHelper.m4363e(apply, "The completableFunction returned a null CompletableSource");
                ((CompletableSource) apply).mo4514b(new UsingObserver(completableObserver, call, this.f15405h, this.f15406i));
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                if (this.f15406i) {
                    try {
                        this.f15405h.accept(call);
                    } catch (Throwable th2) {
                        Exceptions.m4428b(th2);
                        EmptyDisposable.error(new CompositeException(th, th2), completableObserver);
                        return;
                    }
                }
                EmptyDisposable.error(th, completableObserver);
                if (!this.f15406i) {
                    try {
                        this.f15405h.accept(call);
                    } catch (Throwable th3) {
                        Exceptions.m4428b(th3);
                        RxJavaPlugins.m3354t(th3);
                    }
                }
            }
        } catch (Throwable th4) {
            Exceptions.m4428b(th4);
            EmptyDisposable.error(th4, completableObserver);
        }
    }
}
