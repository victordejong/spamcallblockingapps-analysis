package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Action;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.internal.disposables.EmptyDisposable;
import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletablePeek.class */
public final class CompletablePeek extends Completable {

    /* renamed from: f */
    final CompletableSource f15351f;

    /* renamed from: g */
    final Consumer<? super Disposable> f15352g;

    /* renamed from: h */
    final Consumer<? super Throwable> f15353h;

    /* renamed from: i */
    final Action f15354i;

    /* renamed from: j */
    final Action f15355j;

    /* renamed from: k */
    final Action f15356k;

    /* renamed from: l */
    final Action f15357l;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletablePeek$CompletableObserverImplementation.class */
    final class CompletableObserverImplementation implements CompletableObserver, Disposable {

        /* renamed from: f */
        final CompletableObserver f15358f;

        /* renamed from: g */
        Disposable f15359g;

        CompletableObserverImplementation(CompletableObserver completableObserver) {
            this.f15358f = completableObserver;
        }

        /* renamed from: a */
        void m4324a() {
            try {
                CompletablePeek.this.f15356k.run();
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                RxJavaPlugins.m3354t(th);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            try {
                CompletablePeek.this.f15357l.run();
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                RxJavaPlugins.m3354t(th);
            }
            this.f15359g.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f15359g.isDisposed();
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            if (this.f15359g != DisposableHelper.DISPOSED) {
                try {
                    CompletablePeek.this.f15354i.run();
                    CompletablePeek.this.f15355j.run();
                    this.f15358f.onComplete();
                    m4324a();
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f15358f.onError(th);
                }
            }
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            if (this.f15359g == DisposableHelper.DISPOSED) {
                RxJavaPlugins.m3354t(th);
                return;
            }
            try {
                CompletablePeek.this.f15353h.accept(th);
                CompletablePeek.this.f15355j.run();
            } catch (Throwable th2) {
                Exceptions.m4428b(th2);
                th = new CompositeException(th, th2);
            }
            this.f15358f.onError(th);
            m4324a();
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            try {
                CompletablePeek.this.f15352g.accept(disposable);
                if (DisposableHelper.validate(this.f15359g, disposable)) {
                    this.f15359g = disposable;
                    this.f15358f.onSubscribe(this);
                }
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                disposable.dispose();
                this.f15359g = DisposableHelper.DISPOSED;
                EmptyDisposable.error(th, this.f15358f);
            }
        }
    }

    @Override // io.reactivex.Completable
    /* renamed from: d */
    protected void mo3214d(CompletableObserver completableObserver) {
        this.f15351f.mo4514b(new CompletableObserverImplementation(completableObserver));
    }
}
