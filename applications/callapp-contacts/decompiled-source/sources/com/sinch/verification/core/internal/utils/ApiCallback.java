package com.sinch.verification.core.internal.utils;

import com.appsflyer.internal.referrer.Payload;
import kotlin.Metadata;
import retrofit2.Response;
@Metadata(bv = {1, 0, 3}, d1 = {"��\"\n\u0002\u0018\u0002\n��\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0010\u0003\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018��*\u0004\b��\u0010\u00012\u00020\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H&J#\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00028��2\f\u0010\t\u001a\b\u0012\u0004\u0012\u00028��0\nH&¢\u0006\u0002\u0010\u000b¨\u0006\f"}, d2 = {"Lcom/sinch/verification/core/internal/utils/ApiCallback;", "T", "", "onError", "", "t", "", "onSuccess", "data", Payload.RESPONSE, "Lretrofit2/Response;", "(Ljava/lang/Object;Lretrofit2/Response;)V", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/internal/utils/ApiCallback.class */
public interface ApiCallback<T> {
    void onError(Throwable th);

    void onSuccess(T t, Response<T> response);
}
