package io.reactivex.internal.operators.single;

import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Action;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDoAfterTerminate.class */
public final class SingleDoAfterTerminate<T> extends Single<T> {

    /* renamed from: f */
    final SingleSource<T> f19032f;

    /* renamed from: g */
    final Action f19033g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDoAfterTerminate$DoAfterTerminateObserver.class */
    static final class DoAfterTerminateObserver<T> implements SingleObserver<T>, Disposable {

        /* renamed from: f */
        final SingleObserver<? super T> f19034f;

        /* renamed from: g */
        final Action f19035g;

        /* renamed from: h */
        Disposable f19036h;

        DoAfterTerminateObserver(SingleObserver<? super T> singleObserver, Action action) {
            this.f19034f = singleObserver;
            this.f19035g = action;
        }

        /* renamed from: a */
        private void m3586a() {
            try {
                this.f19035g.run();
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                RxJavaPlugins.m3354t(th);
            }
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f19036h.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f19036h.isDisposed();
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.f19034f.onError(th);
            m3586a();
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f19036h, disposable)) {
                this.f19036h = disposable;
                this.f19034f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            this.f19034f.onSuccess(t);
            m3586a();
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super T> singleObserver) {
        this.f19032f.mo4457b(new DoAfterTerminateObserver(singleObserver, this.f19033g));
    }
}
