package io.reactivex;

import io.reactivex.annotations.NonNull;
/* loaded from: classes-dex2jar.jar:io/reactivex/ObservableOperator.class */
public interface ObservableOperator<Downstream, Upstream> {
    @NonNull
    /* renamed from: a */
    Observer<? super Upstream> m4473a(@NonNull Observer<? super Downstream> observer) throws Exception;
}
