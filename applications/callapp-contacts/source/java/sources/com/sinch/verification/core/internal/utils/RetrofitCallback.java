package com.sinch.verification.core.internal.utils;

import com.appsflyer.internal.referrer.Payload;
import com.sinch.verification.core.internal.error.ApiCallException;
import com.sinch.verification.core.internal.error.ApiErrorData;
import java.lang.annotation.Annotation;
import kotlin.Metadata;
import kotlin.jvm.internal.C18524p;
import okhttp3.ResponseBody;
import retrofit2.AbstractC21067c;
import retrofit2.Call;
import retrofit2.Response;
import retrofit2.Retrofit;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��:\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0003\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0018\u0002\n��\b\u0016\u0018��*\u0004\b��\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u0002B\u001b\u0012\u0006\u0010\u0003\u001a\u00020\u0004\u0012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0006¢\u0006\u0002\u0010\u0007J\u001e\u0010\b\u001a\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028��0\u000b2\u0006\u0010\f\u001a\u00020\rH\u0016J$\u0010\u000e\u001a\u00020\t2\f\u0010\n\u001a\b\u0012\u0004\u0012\u00028��0\u000b2\f\u0010\u000f\u001a\b\u0012\u0004\u0012\u00028��0\u0010H\u0016J\f\u0010\u0011\u001a\u00020\t*\u00020\u0012H\u0002R\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00028��0\u0006X\u0082\u0004¢\u0006\u0002\n��R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n��¨\u0006\u0013"}, m4298d2 = {"Lcom/sinch/verification/core/internal/utils/RetrofitCallback;", "T", "Lretrofit2/Callback;", "retrofit", "Lretrofit2/Retrofit;", "apiCallback", "Lcom/sinch/verification/core/internal/utils/ApiCallback;", "(Lretrofit2/Retrofit;Lcom/sinch/verification/core/internal/utils/ApiCallback;)V", "onFailure", "", "call", "Lretrofit2/Call;", "t", "", "onResponse", Payload.RESPONSE, "Lretrofit2/Response;", "convertToError", "Lokhttp3/ResponseBody;", "verification-core_productionRelease"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/sinch/verification/core/internal/utils/RetrofitCallback.class */
public class RetrofitCallback<T> implements AbstractC21067c<T> {
    private final ApiCallback<T> apiCallback;
    private final Retrofit retrofit;

    public RetrofitCallback(Retrofit retrofit, ApiCallback<T> apiCallback) {
        C18524p.m3841c(retrofit, "retrofit");
        C18524p.m3841c(apiCallback, "apiCallback");
        this.retrofit = retrofit;
        this.apiCallback = apiCallback;
    }

    private final void convertToError(ResponseBody responseBody) {
        ApiErrorData it2 = (ApiErrorData) this.retrofit.m107a(ApiErrorData.class, new Annotation[0]).mo44a(responseBody);
        if (it2 != null) {
            ApiCallback<T> apiCallback = this.apiCallback;
            C18524p.m3849a((Object) it2, "it");
            apiCallback.onError(new ApiCallException(it2));
        }
    }

    @Override // retrofit2.AbstractC21067c
    public void onFailure(Call<T> call, Throwable t) {
        C18524p.m3841c(call, "call");
        C18524p.m3841c(t, "t");
        this.apiCallback.onError(t);
    }

    @Override // retrofit2.AbstractC21067c
    public void onResponse(Call<T> call, Response<T> response) {
        C18524p.m3841c(call, "call");
        C18524p.m3841c(response, "response");
        if (response.m114a()) {
            T m111b = response.m111b();
            if (m111b == null) {
                return;
            }
            this.apiCallback.onSuccess(m111b, response);
            return;
        }
        ResponseBody m110c = response.m110c();
        if (m110c == null) {
            return;
        }
        convertToError(m110c);
    }
}
