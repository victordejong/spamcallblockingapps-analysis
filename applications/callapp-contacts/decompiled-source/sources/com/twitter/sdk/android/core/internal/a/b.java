package com.twitter.sdk.android.core.internal.a;

import com.explorestack.iab.vast.VastError;
import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.Response;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/a/b.class */
public final class b implements Interceptor {
    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) throws IOException {
        Response proceed = chain.proceed(chain.request());
        Response response = proceed;
        if (proceed.code() == 403) {
            response = proceed.newBuilder().code(VastError.ERROR_CODE_NO_FILE).message("Unauthorized").build();
        }
        return response;
    }
}
