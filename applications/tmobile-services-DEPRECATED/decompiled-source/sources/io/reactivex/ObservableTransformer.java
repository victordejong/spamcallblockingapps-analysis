package io.reactivex;

import io.reactivex.annotations.NonNull;
/* loaded from: classes-dex2jar.jar:io/reactivex/ObservableTransformer.class */
public interface ObservableTransformer<Upstream, Downstream> {
    @NonNull
    /* renamed from: a */
    ObservableSource<Downstream> m4472a(@NonNull Observable<Upstream> observable);
}
