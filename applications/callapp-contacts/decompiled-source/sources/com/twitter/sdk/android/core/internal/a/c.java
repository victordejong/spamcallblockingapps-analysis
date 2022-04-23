package com.twitter.sdk.android.core.internal.a;

import com.twitter.sdk.android.core.d;
import com.twitter.sdk.android.core.e;
import com.twitter.sdk.android.core.internal.oauth.GuestAuthToken;
import com.twitter.sdk.android.core.internal.oauth.OAuth2Token;
import java.io.IOException;
import okhttp3.Authenticator;
import okhttp3.Headers;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/a/c.class */
public final class c implements Authenticator {

    /* renamed from: a  reason: collision with root package name */
    final e f35141a;

    public c(e eVar) {
        this.f35141a = eVar;
    }

    @Override // okhttp3.Authenticator
    public final Request authenticate(Route route, Response response) throws IOException {
        boolean z = true;
        Response response2 = response;
        int i = 1;
        while (true) {
            response2 = response2.priorResponse();
            if (response2 == null) {
                break;
            }
            i++;
        }
        if (i >= 2) {
            z = false;
        }
        if (!z) {
            return null;
        }
        e eVar = this.f35141a;
        Headers headers = response.request().headers();
        String str = headers.get("Authorization");
        String str2 = headers.get(GuestAuthToken.HEADER_GUEST_TOKEN);
        d a2 = eVar.a((str == null || str2 == null) ? null : new d(new GuestAuthToken(OAuth2Token.TOKEN_TYPE_BEARER, str.replace("bearer ", ""), str2)));
        GuestAuthToken guestAuthToken = a2 == null ? null : (GuestAuthToken) a2.f35184a;
        if (guestAuthToken == null) {
            return null;
        }
        Request.Builder newBuilder = response.request().newBuilder();
        a.a(newBuilder, guestAuthToken);
        return newBuilder.build();
    }
}
