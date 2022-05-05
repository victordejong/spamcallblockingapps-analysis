package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.internal.disposables.EmptyDisposable;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableError.class */
public final class CompletableError extends Completable {

    /* renamed from: f */
    final Throwable f15299f;

    @Override // io.reactivex.Completable
    /* renamed from: d */
    protected void mo3214d(CompletableObserver completableObserver) {
        EmptyDisposable.error(this.f15299f, completableObserver);
    }
}
