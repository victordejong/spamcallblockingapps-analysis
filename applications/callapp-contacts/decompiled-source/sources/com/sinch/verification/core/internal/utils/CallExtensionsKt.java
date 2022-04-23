package com.sinch.verification.core.internal.utils;

import kotlin.Metadata;
import kotlin.jvm.internal.p;
import retrofit2.Call;
import retrofit2.Retrofit;
@Metadata(bv = {1, 0, 3}, d1 = {"��\u001a\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u001a,\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0007¨\u0006\b"}, d2 = {"enqueue", "", "T", "Lretrofit2/Call;", "retrofit", "Lretrofit2/Retrofit;", "apiCallback", "Lcom/sinch/verification/core/internal/utils/ApiCallback;", "verification-core_productionRelease"}, k = 2, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/internal/utils/CallExtensionsKt.class */
public final class CallExtensionsKt {
    public static final <T> void enqueue(Call<T> enqueue, Retrofit retrofit, ApiCallback<T> apiCallback) {
        p.c(enqueue, "$this$enqueue");
        p.c(retrofit, "retrofit");
        p.c(apiCallback, "apiCallback");
        enqueue.a(new RetrofitCallback(retrofit, apiCallback));
    }
}
