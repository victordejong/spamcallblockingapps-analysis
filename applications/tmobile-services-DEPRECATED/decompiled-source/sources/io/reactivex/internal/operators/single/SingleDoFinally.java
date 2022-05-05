package io.reactivex.internal.operators.single;

import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Action;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.plugins.RxJavaPlugins;
import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDoFinally.class */
public final class SingleDoFinally<T> extends Single<T> {

    /* renamed from: f */
    final SingleSource<T> f19037f;

    /* renamed from: g */
    final Action f19038g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDoFinally$DoFinallyObserver.class */
    static final class DoFinallyObserver<T> extends AtomicInteger implements SingleObserver<T>, Disposable {
        private static final long serialVersionUID = 4109457741734051389L;

        /* renamed from: f */
        final SingleObserver<? super T> f19039f;

        /* renamed from: g */
        final Action f19040g;

        /* renamed from: h */
        Disposable f19041h;

        DoFinallyObserver(SingleObserver<? super T> singleObserver, Action action) {
            this.f19039f = singleObserver;
            this.f19040g = action;
        }

        /* renamed from: a */
        void m3585a() {
            if (compareAndSet(0, 1)) {
                try {
                    this.f19040g.run();
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    RxJavaPlugins.m3354t(th);
                }
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f19041h.dispose();
            m3585a();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f19041h.isDisposed();
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.f19039f.onError(th);
            m3585a();
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f19041h, disposable)) {
                this.f19041h = disposable;
                this.f19039f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            this.f19039f.onSuccess(t);
            m3585a();
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super T> singleObserver) {
        this.f19037f.mo4457b(new DoFinallyObserver(singleObserver, this.f19038g));
    }
}
