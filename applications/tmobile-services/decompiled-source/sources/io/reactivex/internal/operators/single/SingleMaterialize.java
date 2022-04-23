package io.reactivex.internal.operators.single;

import io.reactivex.Notification;
import io.reactivex.Single;
import io.reactivex.SingleObserver;
import io.reactivex.annotations.Experimental;
import io.reactivex.internal.operators.mixed.MaterializeSingleObserver;
@Experimental
/* loaded from: classes2-dex2jar.jar:io/reactivex/internal/operators/single/SingleMaterialize.class */
public final class SingleMaterialize<T> extends Single<Notification<T>> {

    /* renamed from: f */
    final Single<T> f19134f;

    @Override // io.reactivex.Single
    /* renamed from: k */
    protected void mo3189k(SingleObserver<? super Notification<T>> singleObserver) {
        this.f19134f.mo4457b(new MaterializeSingleObserver(singleObserver));
    }
}
