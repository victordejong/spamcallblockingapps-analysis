package io.reactivex.internal.operators.completable;

import io.reactivex.Completable;
import io.reactivex.CompletableObserver;
import io.reactivex.internal.disposables.EmptyDisposable;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/completable/CompletableEmpty.class */
public final class CompletableEmpty extends Completable {
    public static final Completable INSTANCE = new CompletableEmpty();

    private CompletableEmpty() {
    }

    @Override // io.reactivex.Completable
    public void subscribeActual(CompletableObserver completableObserver) {
        EmptyDisposable.complete(completableObserver);
    }
}
