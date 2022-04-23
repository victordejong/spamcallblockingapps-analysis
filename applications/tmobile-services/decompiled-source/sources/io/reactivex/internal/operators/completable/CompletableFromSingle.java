package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.SingleObserver;
import io.reactivex.SingleSource;
import io.reactivex.disposables.Disposable;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableFromSingle.class */
public final class CompletableFromSingle<T> extends Completable {

    /* renamed from: f */
    final SingleSource<T> f15309f;

    /* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableFromSingle$CompletableFromSingleObserver.class */
    static final class CompletableFromSingleObserver<T> implements SingleObserver<T> {

        /* renamed from: f */
        final CompletableObserver f15310f;

        CompletableFromSingleObserver(CompletableObserver completableObserver) {
            this.f15310f = completableObserver;
        }

        @Override // io.reactivex.SingleObserver
        public void onError(Throwable th) {
            this.f15310f.onError(th);
        }

        @Override // io.reactivex.SingleObserver
        public void onSubscribe(Disposable disposable) {
            this.f15310f.onSubscribe(disposable);
        }

        @Override // io.reactivex.SingleObserver
        public void onSuccess(T t) {
            this.f15310f.onComplete();
        }
    }

    @Override // io.reactivex.Completable
    /* renamed from: d */
    protected void mo3214d(CompletableObserver completableObserver) {
        this.f15309f.mo4457b(new CompletableFromSingleObserver(completableObserver));
    }
}
