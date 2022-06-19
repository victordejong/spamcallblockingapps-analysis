package com.sinch.verification.core.internal.utils;

import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import retrofit2.Call;
import retrofit2.Retrofit;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001a\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\u001a,\u0010��\u001a\u00020\u0001\"\u0004\b��\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u00052\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u0002H\u00020\u0007¨\u0006\b"}, m4298d2 = {"enqueue", "", "T", "Lretrofit2/Call;", "retrofit", "Lretrofit2/Retrofit;", "apiCallback", "Lcom/sinch/verification/core/internal/utils/ApiCallback;", "verification-core_productionRelease"}, m4297k = 2, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/internal/utils/CallExtensionsKt.class */
public final class CallExtensionsKt {
    public static final <T> void enqueue(Call<T> enqueue, Retrofit retrofit, ApiCallback<T> apiCallback) {
        C18524p.m3841c(enqueue, "$this$enqueue");
        C18524p.m3841c(retrofit, "retrofit");
        C18524p.m3841c(apiCallback, "apiCallback");
        enqueue.mo54a(new RetrofitCallback(retrofit, apiCallback));
    }
}
