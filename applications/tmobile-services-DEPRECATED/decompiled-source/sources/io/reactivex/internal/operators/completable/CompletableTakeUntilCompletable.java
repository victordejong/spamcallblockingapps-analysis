package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableTakeUntilCompletable.class */
public final class CompletableTakeUntilCompletable extends Completable {

    /* renamed from: f */
    final Completable f15371f;

    /* renamed from: g */
    final CompletableSource f15372g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableTakeUntilCompletable$TakeUntilMainObserver.class */
    static final class TakeUntilMainObserver extends AtomicReference<Disposable> implements CompletableObserver, Disposable {
        private static final long serialVersionUID = 3533011714830024923L;

        /* renamed from: f */
        final CompletableObserver f15373f;

        /* renamed from: g */
        final OtherObserver f15374g = new OtherObserver(this);

        /* renamed from: h */
        final AtomicBoolean f15375h = new AtomicBoolean();

        /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableTakeUntilCompletable$TakeUntilMainObserver$OtherObserver.class */
        static final class OtherObserver extends AtomicReference<Disposable> implements CompletableObserver {
            private static final long serialVersionUID = 5176264485428790318L;

            /* renamed from: f */
            final TakeUntilMainObserver f15376f;

            OtherObserver(TakeUntilMainObserver takeUntilMainObserver) {
                this.f15376f = takeUntilMainObserver;
            }

            @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
            public void onComplete() {
                this.f15376f.m4323a();
            }

            @Override // io.reactivex.CompletableObserver
            public void onError(Throwable th) {
                this.f15376f.m4322b(th);
            }

            @Override // io.reactivex.CompletableObserver
            public void onSubscribe(Disposable disposable) {
                DisposableHelper.setOnce(this, disposable);
            }
        }

        TakeUntilMainObserver(CompletableObserver completableObserver) {
            this.f15373f = completableObserver;
        }

        /* renamed from: a */
        void m4323a() {
            if (this.f15375h.compareAndSet(false, true)) {
                DisposableHelper.dispose(this);
                this.f15373f.onComplete();
            }
        }

        /* renamed from: b */
        void m4322b(Throwable th) {
            if (this.f15375h.compareAndSet(false, true)) {
                DisposableHelper.dispose(this);
                this.f15373f.onError(th);
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            if (this.f15375h.compareAndSet(false, true)) {
                DisposableHelper.dispose(this);
                DisposableHelper.dispose(this.f15374g);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f15375h.get();
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            if (this.f15375h.compareAndSet(false, true)) {
                DisposableHelper.dispose(this.f15374g);
                this.f15373f.onComplete();
            }
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            if (this.f15375h.compareAndSet(false, true)) {
                DisposableHelper.dispose(this.f15374g);
                this.f15373f.onError(th);
                return;
            }
            RxJavaPlugins.m3354t(th);
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            DisposableHelper.setOnce(this, disposable);
        }
    }

    @Override // io.reactivex.Completable
    /* renamed from: d */
    protected void mo3214d(CompletableObserver completableObserver) {
        TakeUntilMainObserver takeUntilMainObserver = new TakeUntilMainObserver(completableObserver);
        completableObserver.onSubscribe(takeUntilMainObserver);
        this.f15372g.mo4514b(takeUntilMainObserver.f15374g);
        this.f15371f.mo4514b(takeUntilMainObserver);
    }
}
