package io.reactivex.internal.operators.single;

import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Consumer;
import io.reactivex.internal.disposables.DisposableHelper;
import io.reactivex.plugins.RxJavaPlugins;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDoAfterSuccess.class */
public final class SingleDoAfterSuccess<T> extends Single<T> {

    /* renamed from: f */
    final SingleSource<T> f19027f;

    /* renamed from: g */
    final Consumer<? super T> f19028g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDoAfterSuccess$DoAfterObserver.class */
    static final class DoAfterObserver<T> implements SingleObserver<T>, Disposable {

        /* renamed from: f */
        final SingleObserver<? super T> f19029f;

        /* renamed from: g */
        final Consumer<? super T> f19030g;

        /* renamed from: h */
        Disposable f19031h;

        DoAfterObserver(SingleObserver<? super T> singleObserver, Consumer<? super T> consumer) {
            this.f19029f = singleObserver;
            this.f19030g = consumer;
        }

        @Override // io.reactivex.disposables.Disposable
        public void dispose() {
            this.f19031h.dispose();
        }

        @Override // io.reactivex.disposables.Disposable
        public boolean isDisposed() {
            return this.f19031h.isDisposed();
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.f19029f.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            if (DisposableHelper.validate(this.f19031h, disposable)) {
                this.f19031h = disposable;
                this.f19029f.onSubscribe(this);
            }
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            this.f19029f.onSuccess(t);
            try {
                this.f19030g.accept(t);
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                RxJavaPlugins.m3354t(th);
            }
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super T> singleObserver) {
        this.f19027f.mo4457b(new DoAfterObserver(singleObserver, this.f19028g));
    }
}
