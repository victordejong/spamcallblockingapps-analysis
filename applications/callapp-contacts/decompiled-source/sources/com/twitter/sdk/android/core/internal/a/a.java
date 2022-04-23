package com.twitter.sdk.android.core.internal.a;

import com.twitter.sdk.android.core.d;
import com.twitter.sdk.android.core.e;
import com.twitter.sdk.android.core.internal.oauth.GuestAuthToken;
import java.io.IOException;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import org.apache.commons.lang3.StringUtils;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/a/a.class */
public final class a implements Interceptor {

    /* renamed from: a  reason: collision with root package name */
    final e f35138a;

    public a(e eVar) {
        this.f35138a = eVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void a(Request.Builder builder, GuestAuthToken guestAuthToken) {
        builder.header("Authorization", guestAuthToken.getTokenType() + StringUtils.SPACE + guestAuthToken.getAccessToken());
        builder.header(GuestAuthToken.HEADER_GUEST_TOKEN, guestAuthToken.getGuestToken());
    }

    @Override // okhttp3.Interceptor
    public final Response intercept(Interceptor.Chain chain) throws IOException {
        Request request = chain.request();
        d a2 = this.f35138a.a();
        GuestAuthToken guestAuthToken = a2 == null ? null : (GuestAuthToken) a2.f35184a;
        if (guestAuthToken == null) {
            return chain.proceed(request);
        }
        Request.Builder newBuilder = request.newBuilder();
        a(newBuilder, guestAuthToken);
        return chain.proceed(newBuilder.build());
    }
}
