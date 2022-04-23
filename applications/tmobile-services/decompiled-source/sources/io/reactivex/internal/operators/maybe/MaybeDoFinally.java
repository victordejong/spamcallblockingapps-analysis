package io.reactivex.internal.operators.maybe;

import io.reactivex.MaybeObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Action;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeDoFinally.class */
public final class MaybeDoFinally<T> extends AbstractMaybeWithUpstream<T, T> {

    /* renamed from: g */
    final Action f17045g;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeDoFinally$DoFinallyObserver.class */
    static final class DoFinallyObserver<T> extends AtomicInteger implements MaybeObserver<T>, Disposable {
        private static final long serialVersionUID = 4109457741734051389L;

        /* renamed from: f */
        final MaybeObserver<? super T> f17046f;

        /* renamed from: g */
        final Action f17047g;

        /* renamed from: h */
        Disposable f17048h;

        DoFinallyObserver(MaybeObserver<? super T> maybeObserver, Action action) {
            this.f17046f = maybeObserver;
            this.f17047g = action;
        }

        /* renamed from: a */
        void m4000a() {
            if (compareAndSet(0, 1)) {
                try {
                    this.f17047g.run();
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    RxJavaPlugins.m3354t(th);
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f17048h.dispose();
            m4000a();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f17048h.isDisposed();
        }

        @Override // io.reactivex.MaybeObserver
        public void onComplete() {
            this.f17046f.onComplete();
            m4000a();
        }

        @Override // io.reactivex.MaybeObserver
        public void onError(Throwable th) {
            this.f17046f.onError(th);
            m4000a();
        }

        @Override // io.reactivex.MaybeObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f17048h, disposable)) {
                this.f17048h = disposable;
                this.f17046f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.MaybeObserver
        public void onSuccess(T t) {
            this.f17046f.onSuccess(t);
            m4000a();
        }
    }

    @Override // io.reactivex.Maybe
    /* renamed from: d */
    protected void mo3211d(MaybeObserver<? super T> maybeObserver) {
        this.f16960f.mo4485b(new DoFinallyObserver(maybeObserver, this.f17045g));
    }
}
