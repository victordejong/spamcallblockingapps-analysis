package com.twitter.sdk.android.core;

import android.text.TextUtils;
import com.google.gson.C15972g;
import com.google.gson.JsonSyntaxException;
import com.twitter.sdk.android.core.models.ApiError;
import com.twitter.sdk.android.core.models.ApiErrors;
import com.twitter.sdk.android.core.models.SafeListAdapter;
import com.twitter.sdk.android.core.models.SafeMapAdapter;
import retrofit2.Response;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/TwitterApiException.class */
public class TwitterApiException extends TwitterException {

    /* renamed from: a */
    public final ApiError f60927a;

    /* renamed from: b */
    private final C17289s f60928b;

    /* renamed from: c */
    private final int f60929c;

    /* renamed from: d */
    private final Response f60930d;

    public TwitterApiException(Response response) {
        this(response, m5721a(response), new C17289s(response.f67638a.headers()), response.f67638a.code());
    }

    TwitterApiException(Response response, ApiError apiError, C17289s c17289s, int i) {
        super("HTTP request failed, Status: ".concat(String.valueOf(i)));
        this.f60927a = apiError;
        this.f60928b = c17289s;
        this.f60929c = i;
        this.f60930d = response;
    }

    /* renamed from: a */
    private static ApiError m5722a(String str) {
        try {
            ApiErrors apiErrors = (ApiErrors) new C15972g().m7959a(new SafeListAdapter()).m7959a(new SafeMapAdapter()).m7960a().m7964a(str, (Class<Object>) ApiErrors.class);
            if (apiErrors.errors.isEmpty()) {
                return null;
            }
            return apiErrors.errors.get(0);
        } catch (JsonSyntaxException e) {
            C17282n.m5628c().mo5713a("Twitter", "Invalid json: ".concat(String.valueOf(str)), e);
            return null;
        }
    }

    /* renamed from: a */
    private static ApiError m5721a(Response response) {
        try {
            String m39193r = response.f67640c.source().mo39133a().clone().m39193r();
            if (TextUtils.isEmpty(m39193r)) {
                return null;
            }
            return m5722a(m39193r);
        } catch (Exception e) {
            C17282n.m5628c().mo5713a("Twitter", "Unexpected response", e);
            return null;
        }
    }

    /* renamed from: a */
    public final int m5723a() {
        ApiError apiError = this.f60927a;
        if (apiError == null) {
            return 0;
        }
        return apiError.code;
    }
}
