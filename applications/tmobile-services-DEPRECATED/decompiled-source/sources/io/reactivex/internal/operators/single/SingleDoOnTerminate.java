package io.reactivex.internal.operators.single;

import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Action;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDoOnTerminate.class */
public final class SingleDoOnTerminate<T> extends Single<T> {

    /* renamed from: f */
    final SingleSource<T> f19063f;

    /* renamed from: g */
    final Action f19064g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDoOnTerminate$DoOnTerminate.class */
    final class DoOnTerminate implements SingleObserver<T> {

        /* renamed from: f */
        final SingleObserver<? super T> f19065f;

        DoOnTerminate(SingleObserver<? super T> singleObserver) {
            this.f19065f = singleObserver;
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            try {
                SingleDoOnTerminate.this.f19064g.run();
            } catch (Throwable th2) {
                Exceptions.m4428b(th2);
                th = new CompositeException(th, th2);
            }
            this.f19065f.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            this.f19065f.onSubscribe(disposable);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            try {
                SingleDoOnTerminate.this.f19064g.run();
                this.f19065f.onSuccess(t);
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f19065f.onError(th);
            }
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super T> singleObserver) {
        this.f19063f.mo4457b(new DoOnTerminate(singleObserver));
    }
}
