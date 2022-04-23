package com.twitter.sdk.android.core.internal.oauth;

import android.net.Uri;
import com.facebook.AccessToken;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthException;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.b;
import com.twitter.sdk.android.core.internal.a.f;
import com.twitter.sdk.android.core.internal.g;
import com.twitter.sdk.android.core.k;
import com.twitter.sdk.android.core.r;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStreamReader;
import java.util.TreeMap;
import okhttp3.ResponseBody;
import retrofit2.Call;
import retrofit2.b.i;
import retrofit2.b.o;
import retrofit2.b.t;
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/oauth/OAuth1aService.class */
public class OAuth1aService extends d {

    /* renamed from: a  reason: collision with root package name */
    OAuthApi f35162a = (OAuthApi) getRetrofit().a(OAuthApi.class);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/oauth/OAuth1aService$OAuthApi.class */
    public interface OAuthApi {
        @o(a = "/oauth/access_token")
        Call<ResponseBody> getAccessToken(@i(a = "Authorization") String str, @t(a = "oauth_verifier") String str2);

        @o(a = "/oauth/request_token")
        Call<ResponseBody> getTempToken(@i(a = "Authorization") String str);
    }

    public OAuth1aService(r rVar, g gVar) {
        super(rVar, gVar);
    }

    public static OAuthResponse a(String str) {
        TreeMap<String, String> a2 = f.a(str, false);
        String str2 = a2.get("oauth_token");
        String str3 = a2.get("oauth_token_secret");
        String str4 = a2.get("screen_name");
        long parseLong = a2.containsKey(AccessToken.USER_ID_KEY) ? Long.parseLong(a2.get(AccessToken.USER_ID_KEY)) : 0L;
        if (str2 == null || str3 == null) {
            return null;
        }
        return new OAuthResponse(new TwitterAuthToken(str2, str3), str4, parseLong);
    }

    private b<ResponseBody> b(final b<OAuthResponse> bVar) {
        return new b<ResponseBody>() { // from class: com.twitter.sdk.android.core.internal.oauth.OAuth1aService.1
            @Override // com.twitter.sdk.android.core.b
            public final void a(TwitterException twitterException) {
                bVar.a(twitterException);
            }

            @Override // com.twitter.sdk.android.core.b
            public final void a(k<ResponseBody> kVar) {
                Throwable th;
                StringBuilder sb = new StringBuilder();
                BufferedReader bufferedReader = null;
                try {
                    try {
                        BufferedReader bufferedReader2 = new BufferedReader(new InputStreamReader(kVar.f35182a.byteStream()));
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
                        OAuthResponse a2 = OAuth1aService.a(sb2);
                        if (a2 == null) {
                            bVar.a(new TwitterAuthException("Failed to parse auth response: ".concat(String.valueOf(sb2))));
                        } else {
                            bVar.a(new k(a2, null));
                        }
                    } catch (IOException e) {
                        bVar.a(new TwitterAuthException(e.getMessage(), e));
                    }
                } catch (Throwable th3) {
                    th = th3;
                }
            }
        };
    }

    public String a(TwitterAuthConfig twitterAuthConfig) {
        Uri.Builder buildUpon = Uri.parse("twittersdk://callback").buildUpon();
        getTwitterCore();
        return buildUpon.appendQueryParameter("version", r.b()).appendQueryParameter("app", twitterAuthConfig.getConsumerKey()).build().toString();
    }

    public final String a(TwitterAuthToken twitterAuthToken) {
        Uri.Builder buildUpon = Uri.parse(getApi().f35159a).buildUpon();
        for (int i = 0; i < 2; i++) {
            buildUpon.appendPath(new String[]{"oauth", "authorize"}[i]);
        }
        return buildUpon.appendQueryParameter("oauth_token", twitterAuthToken.token).build().toString();
    }

    public final void a(b<OAuthResponse> bVar) {
        TwitterAuthConfig twitterAuthConfig = getTwitterCore().e;
        String tempTokenUrl = getTempTokenUrl();
        OAuthApi oAuthApi = this.f35162a;
        new b();
        oAuthApi.getTempToken(b.a(twitterAuthConfig, null, a(twitterAuthConfig), "POST", tempTokenUrl, null)).a(b(bVar));
    }

    public final void a(b<OAuthResponse> bVar, TwitterAuthToken twitterAuthToken, String str) {
        String accessTokenUrl = getAccessTokenUrl();
        new b();
        this.f35162a.getAccessToken(b.a(getTwitterCore().e, twitterAuthToken, null, "POST", accessTokenUrl, null), str).a(b(bVar));
    }

    String getAccessTokenUrl() {
        return getApi().f35159a + "/oauth/access_token";
    }

    String getTempTokenUrl() {
        return getApi().f35159a + "/oauth/request_token";
    }
}
