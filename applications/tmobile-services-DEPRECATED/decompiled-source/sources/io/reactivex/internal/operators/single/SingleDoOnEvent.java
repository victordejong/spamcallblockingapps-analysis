package io.reactivex.internal.operators.single;

import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.BiConsumer;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDoOnEvent.class */
public final class SingleDoOnEvent<T> extends Single<T> {

    /* renamed from: f */
    final SingleSource<T> f19050f;

    /* renamed from: g */
    final BiConsumer<? super T, ? super Throwable> f19051g;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleDoOnEvent$DoOnEvent.class */
    final class DoOnEvent implements SingleObserver<T> {

        /* renamed from: f */
        private final SingleObserver<? super T> f19052f;

        DoOnEvent(SingleObserver<? super T> singleObserver) {
            this.f19052f = singleObserver;
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            try {
                SingleDoOnEvent.this.f19051g.mo4369a(null, th);
            } catch (Throwable th2) {
                Exceptions.m4428b(th2);
                th = new CompositeException(th, th2);
            }
            this.f19052f.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            this.f19052f.onSubscribe(disposable);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            try {
                SingleDoOnEvent.this.f19051g.mo4369a(t, null);
                this.f19052f.onSuccess(t);
            } catch (Throwable th) {
                Exceptions.m4428b(th);
                this.f19052f.onError(th);
            }
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super T> singleObserver) {
        this.f19050f.mo4457b(new DoOnEvent(singleObserver));
    }
}
