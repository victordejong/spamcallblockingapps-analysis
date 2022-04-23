package io.reactivex.internal.operators.single;

import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiPredicate;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleContains.class */
public final class SingleContains<T> extends Single<Boolean> {

    /* renamed from: f */
    final SingleSource<T> f18980f;

    /* renamed from: g */
    final Object f18981g;

    /* renamed from: h */
    final BiPredicate<Object, Object> f18982h;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleContains$ContainsSingleObserver.class */
    final class ContainsSingleObserver implements SingleObserver<T> {

        /* renamed from: f */
        private final SingleObserver<? super Boolean> f18983f;

        ContainsSingleObserver(SingleObserver<? super Boolean> singleObserver) {
            this.f18983f = singleObserver;
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.f18983f.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            this.f18983f.onSubscribe(disposable);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            try {
                this.f18983f.onSuccess(Boolean.valueOf(SingleContains.this.f18982h.mo4360a(t, SingleContains.this.f18981g)));
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f18983f.onError(th);
            }
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super Boolean> singleObserver) {
        this.f18980f.mo4457b(new ContainsSingleObserver(singleObserver));
    }
}
