package com.twitter.sdk.android.core;

import android.text.TextUtils;
import com.google.gson.JsonSyntaxException;
import com.google.gson.g;
import com.twitter.sdk.android.core.models.ApiError;
import com.twitter.sdk.android.core.models.ApiErrors;
import com.twitter.sdk.android.core.models.SafeListAdapter;
import com.twitter.sdk.android.core.models.SafeMapAdapter;
import retrofit2.Response;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/TwitterApiException.class */
public class TwitterApiException extends TwitterException {

    /* renamed from: a  reason: collision with root package name */
    public final ApiError f35086a;

    /* renamed from: b  reason: collision with root package name */
    private final s f35087b;

    /* renamed from: c  reason: collision with root package name */
    private final int f35088c;

    /* renamed from: d  reason: collision with root package name */
    private final Response f35089d;

    public TwitterApiException(Response response) {
        this(response, a(response), new s(response.f39404a.headers()), response.f39404a.code());
    }

    TwitterApiException(Response response, ApiError apiError, s sVar, int i) {
        super("HTTP request failed, Status: ".concat(String.valueOf(i)));
        this.f35086a = apiError;
        this.f35087b = sVar;
        this.f35088c = i;
        this.f35089d = response;
    }

    private static ApiError a(String str) {
        try {
            ApiErrors apiErrors = (ApiErrors) new g().a(new SafeListAdapter()).a(new SafeMapAdapter()).a().a(str, (Class<Object>) ApiErrors.class);
            if (!apiErrors.errors.isEmpty()) {
                return apiErrors.errors.get(0);
            }
            return null;
        } catch (JsonSyntaxException e) {
            n.c().a("Twitter", "Invalid json: ".concat(String.valueOf(str)), e);
            return null;
        }
    }

    private static ApiError a(Response response) {
        try {
            String r = response.f39406c.source().a().clone().r();
            if (!TextUtils.isEmpty(r)) {
                return a(r);
            }
            return null;
        } catch (Exception e) {
            n.c().a("Twitter", "Unexpected response", e);
            return null;
        }
    }

    public final int a() {
        ApiError apiError = this.f35086a;
        if (apiError == null) {
            return 0;
        }
        return apiError.code;
    }
}
