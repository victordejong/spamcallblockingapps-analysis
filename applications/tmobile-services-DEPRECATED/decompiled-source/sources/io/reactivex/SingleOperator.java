package io.reactivex;

import io.reactivex.annotations.NonNull;
/* loaded from: classes-dex2jar.jar:io/reactivex/SingleOperator.class */
public interface SingleOperator<Downstream, Upstream> {
    @NonNull
    /* renamed from: a */
    SingleObserver<? super Upstream> m4458a(@NonNull SingleObserver<? super Downstream> singleObserver) throws Exception;
}
