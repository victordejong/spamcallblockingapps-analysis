package com.twitter.sdk.android.core.internal.p485a;

import com.twitter.sdk.android.core.C17208d;
import com.twitter.sdk.android.core.C17210e;
import com.twitter.sdk.android.core.internal.oauth.GuestAuthToken;
import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import org.apache.commons.lang3.StringUtils;
/* renamed from: com.twitter.sdk.android.core.internal.a.a */
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/a/a.class */
public final class C17237a implements Interceptor {

    /* renamed from: a */
    final C17210e f60987a;

    public C17237a(C17210e c17210e) {
        this.f60987a = c17210e;
    }

    /* renamed from: a */
    public static void m5685a(Request.Builder builder, GuestAuthToken guestAuthToken) {
        builder.header("Authorization", guestAuthToken.getTokenType() + StringUtils.SPACE + guestAuthToken.getAccessToken());
        builder.header(GuestAuthToken.HEADER_GUEST_TOKEN, guestAuthToken.getGuestToken());
    }

    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) throws IOException {
        Request request = chain.request();
        C17208d m5717a = this.f60987a.m5717a();
        GuestAuthToken guestAuthToken = m5717a == null ? null : (GuestAuthToken) m5717a.f61035a;
        if (guestAuthToken != null) {
            Request.Builder newBuilder = request.newBuilder();
            m5685a(newBuilder, guestAuthToken);
            return chain.proceed(newBuilder.build());
        }
        return chain.proceed(request);
    }
}
