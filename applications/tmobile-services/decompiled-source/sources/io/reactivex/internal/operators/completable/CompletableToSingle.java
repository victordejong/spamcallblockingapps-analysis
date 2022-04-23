package io.reactivex.internal.operators.completable;

import io.reactivex.CompletableObserver;
import io.reactivex.CompletableSource;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposable;
import io.reactivex.exceptions.Exceptions;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableToSingle.class */
public final class CompletableToSingle<T> extends Single<T> {

    /* renamed from: f */
    final CompletableSource f15398f;

    /* renamed from: g */
    final Callable<? extends T> f15399g;

    /* renamed from: h */
    final T f15400h;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableToSingle$ToSingle.class */
    final class ToSingle implements CompletableObserver {

        /* renamed from: f */
        private final SingleObserver<? super T> f15401f;

        ToSingle(SingleObserver<? super T> singleObserver) {
            this.f15401f = singleObserver;
        }

        @Override // io.reactivex.CompletableObserver, io.reactivex.MaybeObserver
        public void onComplete() {
            T t;
            CompletableToSingle completableToSingle = CompletableToSingle.this;
            Callable<? extends T> callable = completableToSingle.f15399g;
            if (callable != null) {
                try {
                    t = (Object) callable.call();
                } catch (Throwable th) {
                    Exceptions.m4428b(th);
                    this.f15401f.onError(th);
                    return;
                }
            } else {
                t = completableToSingle.f15400h;
            }
            if (t == null) {
                this.f15401f.onError(new NullPointerException("The value supplied is null"));
            } else {
                this.f15401f.onSuccess(t);
            }
        }

        @Override // io.reactivex.CompletableObserver
        public void onError(Throwable th) {
            this.f15401f.onError(th);
        }

        @Override // io.reactivex.CompletableObserver
        public void onSubscribe(Disposable disposable) {
            this.f15401f.onSubscribe(disposable);
        }
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super T> singleObserver) {
        this.f15398f.mo4514b(new ToSingle(singleObserver));
    }
}
