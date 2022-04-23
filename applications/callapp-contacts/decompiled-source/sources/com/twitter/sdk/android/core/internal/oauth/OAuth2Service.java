package com.twitter.sdk.android.core.internal.oauth;

import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.b;
import com.twitter.sdk.android.core.internal.a.f;
import com.twitter.sdk.android.core.internal.g;
import com.twitter.sdk.android.core.n;
import com.twitter.sdk.android.core.r;
import retrofit2.Call;
import retrofit2.b.c;
import retrofit2.b.e;
import retrofit2.b.i;
import retrofit2.b.k;
import retrofit2.b.o;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/oauth/OAuth2Service.class */
public final class OAuth2Service extends d {

    /* renamed from: a  reason: collision with root package name */
    OAuth2Api f35165a = (OAuth2Api) getRetrofit().a(OAuth2Api.class);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/oauth/OAuth2Service$OAuth2Api.class */
    public interface OAuth2Api {
        @e
        @k(a = {"Content-Type: application/x-www-form-urlencoded;charset=UTF-8"})
        @o(a = "/oauth2/token")
        Call<OAuth2Token> getAppAuthToken(@i(a = "Authorization") String str, @c(a = "grant_type") String str2);

        @o(a = "/1.1/guest/activate.json")
        Call<a> getGuestToken(@i(a = "Authorization") String str);
    }

    public OAuth2Service(r rVar, g gVar) {
        super(rVar, gVar);
    }

    private String a() {
        TwitterAuthConfig twitterAuthConfig = getTwitterCore().e;
        c.i b2 = c.i.b(f.b(twitterAuthConfig.getConsumerKey()) + ":" + f.b(twitterAuthConfig.getConsumerSecret()));
        return "Basic " + b2.c();
    }

    private void b(b<OAuth2Token> bVar) {
        this.f35165a.getAppAuthToken(a(), "client_credentials").a(bVar);
    }

    public final void a(final b<GuestAuthToken> bVar) {
        b(new b<OAuth2Token>() { // from class: com.twitter.sdk.android.core.internal.oauth.OAuth2Service.1
            @Override // com.twitter.sdk.android.core.b
            public final void a(TwitterException twitterException) {
                n.c().a("Twitter", "Failed to get app auth token", twitterException);
                b bVar2 = bVar;
                if (bVar2 != null) {
                    bVar2.a(twitterException);
                }
            }

            @Override // com.twitter.sdk.android.core.b
            public final void a(com.twitter.sdk.android.core.k<OAuth2Token> kVar) {
                final OAuth2Token oAuth2Token = kVar.f35182a;
                b<a> bVar2 = new b<a>() { // from class: com.twitter.sdk.android.core.internal.oauth.OAuth2Service.1.1
                    @Override // com.twitter.sdk.android.core.b
                    public final void a(TwitterException twitterException) {
                        n.c().a("Twitter", "Your app may not allow guest auth. Please talk to us regarding upgrading your consumer key.", twitterException);
                        bVar.a(twitterException);
                    }

                    @Override // com.twitter.sdk.android.core.b
                    public final void a(com.twitter.sdk.android.core.k<a> kVar2) {
                        bVar.a(new com.twitter.sdk.android.core.k(new GuestAuthToken(oAuth2Token.getTokenType(), oAuth2Token.getAccessToken(), kVar2.f35182a.f35170a), null));
                    }
                };
                OAuth2Api oAuth2Api = OAuth2Service.this.f35165a;
                oAuth2Api.getGuestToken("Bearer " + oAuth2Token.getAccessToken()).a(bVar2);
            }
        });
    }
}
