package com.twitter.sdk.android.core.internal.oauth;

import android.net.Uri;
import com.facebook.AccessToken;
import com.twitter.sdk.android.core.AbstractC17206b;
import com.twitter.sdk.android.core.C17277k;
import com.twitter.sdk.android.core.C17288r;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthException;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.internal.C17254g;
import com.twitter.sdk.android.core.internal.p485a.C17242f;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.TreeMap;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.p606b.AbstractC21050i;
import retrofit2.p606b.AbstractC21056o;
import retrofit2.p606b.AbstractC21061t;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/oauth/OAuth1aService.class */
public class OAuth1aService extends AbstractC17268d {

    /* renamed from: a */
    OAuthApi f61010a = (OAuthApi) getRetrofit().m109a(OAuthApi.class);

    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/oauth/OAuth1aService$OAuthApi.class */
    public interface OAuthApi {
        @AbstractC21056o(m79a = "/oauth/access_token")
        Call<ResponseBody> getAccessToken(@AbstractC21050i(m83a = "Authorization") String str, @AbstractC21061t(m72a = "oauth_verifier") String str2);

        @AbstractC21056o(m79a = "/oauth/request_token")
        Call<ResponseBody> getTempToken(@AbstractC21050i(m83a = "Authorization") String str);
    }

    public OAuth1aService(C17288r c17288r, C17254g c17254g) {
        super(c17288r, c17254g);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r11v0 */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r4v1 */
    /* renamed from: a */
    public static OAuthResponse m5653a(String str) {
        TreeMap<String, String> m5680a = C17242f.m5680a(str, false);
        String str2 = m5680a.get("oauth_token");
        String str3 = m5680a.get("oauth_token_secret");
        String str4 = m5680a.get("screen_name");
        ?? parseLong = m5680a.containsKey(AccessToken.USER_ID_KEY) ? Long.parseLong(m5680a.get(AccessToken.USER_ID_KEY)) : false;
        if (str2 == null || str3 == null) {
            return null;
        }
        return new OAuthResponse(new TwitterAuthToken(str2, str3), str4, parseLong == true ? 1L : 0L);
    }

    /* renamed from: b */
    private AbstractC17206b<ResponseBody> m5652b(final AbstractC17206b<OAuthResponse> abstractC17206b) {
        return new AbstractC17206b<ResponseBody>() { // from class: com.twitter.sdk.android.core.internal.oauth.OAuth1aService.1
            @Override // com.twitter.sdk.android.core.AbstractC17206b
            /* renamed from: a */
            public final void mo5601a(TwitterException twitterException) {
                abstractC17206b.mo5601a(twitterException);
            }

            @Override // com.twitter.sdk.android.core.AbstractC17206b
            /* renamed from: a */
            public final void mo5600a(C17277k<ResponseBody> c17277k) {
                Throwable th;
                StringBuilder sb = new StringBuilder();
                BufferedReader bufferedReader = null;
                try {
                    try {
                        BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(c17277k.f61033a.byteStream()));
                        while (true) {
                            try {
                                String readLine = bufferedReader2.readLine();
                                if (readLine == null) {
                                    break;
                                }
                                sb.append(readLine);
                            } catch (Throwable th2) {
                                th = th2;
                                bufferedReader = bufferedReader2;
                                if (bufferedReader != null) {
                                    bufferedReader.close();
                                }
                                throw th;
                            }
                        }
                        bufferedReader2.close();
                        String sb2 = sb.toString();
                        OAuthResponse m5653a = OAuth1aService.m5653a(sb2);
                        if (m5653a == null) {
                            abstractC17206b.mo5601a(new TwitterAuthException("Failed to parse auth response: ".concat(String.valueOf(sb2))));
                        } else {
                            abstractC17206b.mo5600a(new C17277k(m5653a, null));
                        }
                    } catch (IOException e) {
                        abstractC17206b.mo5601a(new TwitterAuthException(e.getMessage(), e));
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }
        };
    }

    /* renamed from: a */
    public String mo5657a(TwitterAuthConfig twitterAuthConfig) {
        Uri.Builder buildUpon = Uri.parse("twittersdk://callback").buildUpon();
        getTwitterCore();
        return buildUpon.appendQueryParameter("version", C17288r.m5624b()).appendQueryParameter("app", twitterAuthConfig.getConsumerKey()).build().toString();
    }

    /* renamed from: a */
    public final String m5656a(TwitterAuthToken twitterAuthToken) {
        Uri.Builder buildUpon = Uri.parse(getApi().f61007a).buildUpon();
        for (int i = 0; i < 2; i++) {
            buildUpon.appendPath(new String[]{"oauth", "authorize"}[i]);
        }
        return buildUpon.appendQueryParameter("oauth_token", twitterAuthToken.token).build().toString();
    }

    /* renamed from: a */
    public final void m5655a(AbstractC17206b<OAuthResponse> abstractC17206b) {
        TwitterAuthConfig twitterAuthConfig = getTwitterCore().f61075e;
        String tempTokenUrl = getTempTokenUrl();
        OAuthApi oAuthApi = this.f61010a;
        new C17266b();
        oAuthApi.getTempToken(C17266b.m5648a(twitterAuthConfig, null, mo5657a(twitterAuthConfig), "POST", tempTokenUrl, null)).mo54a(m5652b(abstractC17206b));
    }

    /* renamed from: a */
    public final void m5654a(AbstractC17206b<OAuthResponse> abstractC17206b, TwitterAuthToken twitterAuthToken, String str) {
        String accessTokenUrl = getAccessTokenUrl();
        new C17266b();
        this.f61010a.getAccessToken(C17266b.m5648a(getTwitterCore().f61075e, twitterAuthToken, null, "POST", accessTokenUrl, null), str).mo54a(m5652b(abstractC17206b));
    }

    String getAccessTokenUrl() {
        return getApi().f61007a + "/oauth/access_token";
    }

    String getTempTokenUrl() {
        return getApi().f61007a + "/oauth/request_token";
    }
}
