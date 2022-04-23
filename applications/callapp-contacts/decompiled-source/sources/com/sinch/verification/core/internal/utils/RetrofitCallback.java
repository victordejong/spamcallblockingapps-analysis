package com.sinch.verification.core.internal.utils;

import com.appsflyer.internal.referrer.Payload;
import com.sinch.verification.core.internal.error.ApiCallException;
import com.sinch.verification.core.internal.error.ApiErrorData;
import java.lang.annotation.Annotation;
import kotlin.Metadata;
import kotlin.jvm.internal.p;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.Response;
import retrofit2.Retrofit;
import retrofit2.c;
@Metadata(bv = {1, 0, 3}, d1 = {"��:\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\b\u0016\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0006¢\u0006\u0002\u0010\u0007J\u001e\u0010\b\u001a\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028��0\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J$\u0010\u000e\u001a\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028��0\u000b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028��0\u0010H\u0016J\f\u0010\u0011\u001a\u00020\t*\u00020\u0012H\u0002R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0006X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0013"}, d2 = {"Lcom/sinch/verification/core/internal/utils/RetrofitCallback;", "T", "Lretrofit2/Callback;", "retrofit", "Lretrofit2/Retrofit;", "apiCallback", "Lcom/sinch/verification/core/internal/utils/ApiCallback;", "(Lretrofit2/Retrofit;Lcom/sinch/verification/core/internal/utils/ApiCallback;)V", "onFailure", "", "call", "Lretrofit2/Call;", "t", "", "onResponse", Payload.RESPONSE, "Lretrofit2/Response;", "convertToError", "Lokhttp3/ResponseBody;", "verification-core_productionRelease"}, k = 1, mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/internal/utils/RetrofitCallback.class */
public class RetrofitCallback<T> implements c<T> {
    private final ApiCallback<T> apiCallback;
    private final Retrofit retrofit;

    public RetrofitCallback(Retrofit retrofit, ApiCallback<T> apiCallback) {
        p.c(retrofit, "retrofit");
        p.c(apiCallback, "apiCallback");
        this.retrofit = retrofit;
        this.apiCallback = apiCallback;
    }

    private final void convertToError(ResponseBody responseBody) {
        ApiErrorData it2 = (ApiErrorData) this.retrofit.a(ApiErrorData.class, new Annotation[0]).a(responseBody);
        if (it2 != null) {
            ApiCallback<T> apiCallback = this.apiCallback;
            p.a((Object) it2, "it");
            apiCallback.onError(new ApiCallException(it2));
        }
    }

    @Override // retrofit2.c
    public void onFailure(Call<T> call, Throwable t) {
        p.c(call, "call");
        p.c(t, "t");
        this.apiCallback.onError(t);
    }

    @Override // retrofit2.c
    public void onResponse(Call<T> call, Response<T> response) {
        p.c(call, "call");
        p.c(response, "response");
        if (response.a()) {
            T b2 = response.b();
            if (b2 != null) {
                this.apiCallback.onSuccess(b2, response);
                return;
            }
            return;
        }
        ResponseBody c2 = response.c();
        if (c2 != null) {
            convertToError(c2);
        }
    }
}
