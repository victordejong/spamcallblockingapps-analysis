package io.reactivex.internal.operators.maybe;

import io.reactivex.Maybe;
import io.reactivex.Notification;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.annotations.Experimental;
import io.reactivex.internal.operators.mixed.MaterializeSingleObserver;
@Experimental
/* loaded from: classes-dex2jar.jar:io/reactivex/internal/operators/maybe/MaybeMaterialize.class */
public final class MaybeMaterialize<T> extends Single<Notification<T>> {

    /* renamed from: f */
    final Maybe<T> f17161f;

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super Notification<T>> singleObserver) {
        this.f17161f.mo4485b(new MaterializeSingleObserver(singleObserver));
    }
}
