package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Action;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableDoFinally.class */
public final class CompletableDoFinally extends Completable {

    /* renamed from: f */
    final CompletableSource f15290f;

    /* renamed from: g */
    final Action f15291g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableDoFinally$DoFinallyObserver.class */
    static final class DoFinallyObserver extends AtomicInteger implements CompletableObserver, Disposable {
        private static final long serialVersionUID = 4109457741734051389L;

        /* renamed from: f */
        final CompletableObserver f15292f;

        /* renamed from: g */
        final Action f15293g;

        /* renamed from: h */
        Disposable f15294h;

        DoFinallyObserver(CompletableObserver completableObserver, Action action) {
            this.f15292f = completableObserver;
            this.f15293g = action;
        }

        /* renamed from: a */
        void m4329a() {
            if (compareAndSet(0, 1)) {
                try {
                    this.f15293g.run();
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    RxJavaPlugins.m3354t(th);
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f15294h.dispose();
            m4329a();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f15294h.isDisposed();
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            this.f15292f.onComplete();
            m4329a();
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            this.f15292f.onError(th);
            m4329a();
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f15294h, disposable)) {
                this.f15294h = disposable;
                this.f15292f.onSubscribe(this);
            }
        }
    }

    @Override // io.reactivex.Completable
    /* renamed from: d */
    protected void mo3214d(CompletableObserver completableObserver) {
        this.f15290f.mo4514b(new DoFinallyObserver(completableObserver, this.f15291g));
    }
}
