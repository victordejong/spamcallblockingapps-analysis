package com.twitter.sdk.android.core.internal.oauth;

import com.twitter.sdk.android.core.AbstractC17206b;
import com.twitter.sdk.android.core.C17277k;
import com.twitter.sdk.android.core.C17282n;
import com.twitter.sdk.android.core.C17288r;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.internal.C17254g;
import com.twitter.sdk.android.core.internal.p485a.C17242f;
import p092c.C3208i;
import retrofit2.Call;
import retrofit2.p606b.AbstractC21044c;
import retrofit2.p606b.AbstractC21046e;
import retrofit2.p606b.AbstractC21050i;
import retrofit2.p606b.AbstractC21052k;
import retrofit2.p606b.AbstractC21056o;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/oauth/OAuth2Service.class */
public final class OAuth2Service extends AbstractC17268d {

    /* renamed from: a */
    OAuth2Api f61013a = (OAuth2Api) getRetrofit().m109a(OAuth2Api.class);

    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/oauth/OAuth2Service$OAuth2Api.class */
    public interface OAuth2Api {
        @AbstractC21046e
        @AbstractC21052k(m82a = {"Content-Type: application/x-www-form-urlencoded;charset=UTF-8"})
        @AbstractC21056o(m79a = "/oauth2/token")
        Call<OAuth2Token> getAppAuthToken(@AbstractC21050i(m83a = "Authorization") String str, @AbstractC21044c(m91a = "grant_type") String str2);

        @AbstractC21056o(m79a = "/1.1/guest/activate.json")
        Call<C17265a> getGuestToken(@AbstractC21050i(m83a = "Authorization") String str);
    }

    public OAuth2Service(C17288r c17288r, C17254g c17254g) {
        super(c17288r, c17254g);
    }

    /* renamed from: a */
    private String m5651a() {
        TwitterAuthConfig twitterAuthConfig = getTwitterCore().f61075e;
        C3208i m39177b = C3208i.m39177b(C17242f.m5678b(twitterAuthConfig.getConsumerKey()) + ":" + C17242f.m5678b(twitterAuthConfig.getConsumerSecret()));
        return "Basic " + m39177b.mo39176c();
    }

    /* renamed from: b */
    private void m5649b(AbstractC17206b<OAuth2Token> abstractC17206b) {
        this.f61013a.getAppAuthToken(m5651a(), "client_credentials").mo54a(abstractC17206b);
    }

    /* renamed from: a */
    public final void m5650a(final AbstractC17206b<GuestAuthToken> abstractC17206b) {
        m5649b(new AbstractC17206b<OAuth2Token>() { // from class: com.twitter.sdk.android.core.internal.oauth.OAuth2Service.1
            @Override // com.twitter.sdk.android.core.AbstractC17206b
            /* renamed from: a */
            public final void mo5601a(TwitterException twitterException) {
                C17282n.m5628c().mo5713a("Twitter", "Failed to get app auth token", twitterException);
                AbstractC17206b abstractC17206b2 = abstractC17206b;
                if (abstractC17206b2 != null) {
                    abstractC17206b2.mo5601a(twitterException);
                }
            }

            @Override // com.twitter.sdk.android.core.AbstractC17206b
            /* renamed from: a */
            public final void mo5600a(C17277k<OAuth2Token> c17277k) {
                final OAuth2Token oAuth2Token = c17277k.f61033a;
                AbstractC17206b<C17265a> abstractC17206b2 = new AbstractC17206b<C17265a>() { // from class: com.twitter.sdk.android.core.internal.oauth.OAuth2Service.1.1
                    @Override // com.twitter.sdk.android.core.AbstractC17206b
                    /* renamed from: a */
                    public final void mo5601a(TwitterException twitterException) {
                        C17282n.m5628c().mo5713a("Twitter", "Your app may not allow guest auth. Please talk to us regarding upgrading your consumer key.", twitterException);
                        abstractC17206b.mo5601a(twitterException);
                    }

                    @Override // com.twitter.sdk.android.core.AbstractC17206b
                    /* renamed from: a */
                    public final void mo5600a(C17277k<C17265a> c17277k2) {
                        abstractC17206b.mo5600a(new C17277k(new GuestAuthToken(oAuth2Token.getTokenType(), oAuth2Token.getAccessToken(), c17277k2.f61033a.f61018a), null));
                    }
                };
                OAuth2Api oAuth2Api = OAuth2Service.this.f61013a;
                oAuth2Api.getGuestToken("Bearer " + oAuth2Token.getAccessToken()).mo54a(abstractC17206b2);
            }
        });
    }
}
