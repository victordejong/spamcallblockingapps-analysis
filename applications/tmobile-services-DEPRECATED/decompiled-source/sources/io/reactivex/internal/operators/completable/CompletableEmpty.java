package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.internal.disposables.EmptyDisposable;
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableEmpty.class */
public final class CompletableEmpty extends Completable {
    private CompletableEmpty() {
    }

    @Override // io.reactivex.Completable
    /* renamed from: d */
    public void mo3214d(CompletableObserver completableObserver) {
        EmptyDisposable.complete(completableObserver);
    }
}
