package com.twitter.sdk.android.core.internal.p485a;

import com.twitter.sdk.android.core.C17208d;
import com.twitter.sdk.android.core.C17210e;
import com.twitter.sdk.android.core.internal.oauth.GuestAuthToken;
import com.twitter.sdk.android.core.internal.oauth.OAuth2Token;
import java.io.IOException;
import okhttp3.Authenticator;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
/* renamed from: com.twitter.sdk.android.core.internal.a.c */
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/a/c.class */
public final class C17239c implements Authenticator {

    /* renamed from: a */
    final C17210e f60988a;

    public C17239c(C17210e c17210e) {
        this.f60988a = c17210e;
    }

    @Override // okhttp3.Authenticator
    public final Request authenticate(Route route, Response response) throws IOException {
        Response response2 = response;
        int i = 1;
        while (true) {
            response2 = response2.priorResponse();
            if (response2 == null) {
                break;
            }
            i++;
        }
        if (i < 2) {
            C17210e c17210e = this.f60988a;
            Headers headers = response.request().headers();
            String str = headers.get("Authorization");
            String str2 = headers.get(GuestAuthToken.HEADER_GUEST_TOKEN);
            C17208d m5716a = c17210e.m5716a((str == null || str2 == null) ? null : new C17208d(new GuestAuthToken(OAuth2Token.TOKEN_TYPE_BEARER, str.replace("bearer ", ""), str2)));
            GuestAuthToken guestAuthToken = m5716a == null ? null : (GuestAuthToken) m5716a.f61035a;
            if (guestAuthToken == null) {
                return null;
            }
            Request.Builder newBuilder = response.request().newBuilder();
            C17237a.m5685a(newBuilder, guestAuthToken);
            return newBuilder.build();
        }
        return null;
    }
}
