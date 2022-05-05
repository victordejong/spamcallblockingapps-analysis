package io.reactivex;

import io.reactivex.annotations.NonNull;
import org.reactivestreams.Subscriber;
/* loaded from: classes-dex2jar.jar:io/reactivex/FlowableOperator.class */
public interface FlowableOperator<Downstream, Upstream> {
    @NonNull
    /* renamed from: a */
    Subscriber<? super Upstream> m4489a(@NonNull Subscriber<? super Downstream> subscriber) throws Exception;
}
