package io.reactivex.internal.operators.single;

import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.internal.disposables.EmptyDisposable;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleNever.class */
public final class SingleNever extends Single<Object> {
    private SingleNever() {
    }

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super Object> singleObserver) {
        singleObserver.onSubscribe(EmptyDisposable.NEVER);
    }
}
