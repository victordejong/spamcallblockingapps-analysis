package io.reactivex.internal.operators.single;

import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.CompositeException;
import io.reactivex.exceptions.Exceptions;
import io.reactivex.functions.Function;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleOnErrorReturn.class */
public final class SingleOnErrorReturn<T> extends Single<T> {

    /* renamed from: f */
    final SingleSource<? extends T> f19141f;

    /* renamed from: g */
    final Function<? super Throwable, ? extends T> f19142g;

    /* renamed from: h */
    final T f19143h;

    /* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleOnErrorReturn$OnErrorReturn.class */
    final class OnErrorReturn implements SingleObserver<T> {

        /* renamed from: f */
        private final SingleObserver<? super T> f19144f;

        OnErrorReturn(SingleObserver<? super T> singleObserver) {
            this.f19144f = singleObserver;
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            T t;
            SingleOnErrorReturn singleOnErrorReturn = SingleOnErrorReturn.this;
            Function<? super Throwable, ? extends T> function = singleOnErrorReturn.f19142g;
            if (function != null) {
                try {
                    t = (Object) function.apply(th);
                } catch (Throwable th2) {
                    Exceptions.m4428b(th2);
                    this.f19144f.onError(new CompositeException(th, th2));
                    return;
                }
            } else {
                t = singleOnErrorReturn.f19143h;
            }
            if (t == null) {
                NullPointerException nullPointerException = new NullPointerException("Value supplied was null");
                nullPointerException.initCause(th);
                this.f19144f.onError(nullPointerException);
                return;
            }
            this.f19144f.onSuccess(t);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            this.f19144f.onSubscribe(disposable);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            this.f19144f.onSuccess(t);
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super T> singleObserver) {
        this.f19141f.mo4457b(new OnErrorReturn(singleObserver));
    }
}
