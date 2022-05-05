package io.reactivex.internal.operators.single;

import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.disposables.Disposables;
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleJust.class */
public final class SingleJust<T> extends Single<T> {

    /* renamed from: f */
    final T f19127f;

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super T> singleObserver) {
        singleObserver.onSubscribe(Disposables.m4441a());
        singleObserver.onSuccess((T) this.f19127f);
    }
}
