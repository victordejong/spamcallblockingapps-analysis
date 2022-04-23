package io.reactivex.internal.operators.single;

import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Action;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicReference;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDoOnDispose.class */
public final class SingleDoOnDispose<T> extends Single<T> {

    /* renamed from: f */
    final SingleSource<T> f19042f;

    /* renamed from: g */
    final Action f19043g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDoOnDispose$DoOnDisposeObserver.class */
    static final class DoOnDisposeObserver<T> extends AtomicReference<Action> implements SingleObserver<T>, Disposable {
        private static final long serialVersionUID = -8583764624474935784L;

        /* renamed from: f */
        final SingleObserver<? super T> f19044f;

        /* renamed from: g */
        Disposable f19045g;

        DoOnDisposeObserver(SingleObserver<? super T> singleObserver, Action action) {
            this.f19044f = singleObserver;
            lazySet(action);
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            Action andSet = getAndSet(null);
            if (andSet != null) {
                try {
                    andSet.run();
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    RxJavaPlugins.m3354t(th);
                }
                this.f19045g.dispose();
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f19045g.isDisposed();
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.f19044f.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f19045g, disposable)) {
                this.f19045g = disposable;
                this.f19044f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            this.f19044f.onSuccess(t);
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super T> singleObserver) {
        this.f19042f.mo4457b(new DoOnDisposeObserver(singleObserver, this.f19043g));
    }
}
