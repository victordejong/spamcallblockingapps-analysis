package com.tmobile.tmoid.agent;

import android.content.Context;
import android.net.http.SslCertificate;
import android.net.http.SslError;
import android.util.Base64;
import android.webkit.SslErrorHandler;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.facebook.stetho.common.Utf8Charset;
import com.google.firebase.messaging.Constants;
import com.tmobile.tmoid.agent.utils.CookieWatcher;
import com.tmobile.tmoid.helperlib.ServerErrorException;
import com.tmobile.tmoid.helperlib.impl.APIRequest;
import com.tmobile.tmoid.helperlib.impl.APIRequestForAccessToken;
import com.tmobile.tmoid.helperlib.impl.APIResponse;
import com.tmobile.tmoid.helperlib.util.Log;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.net.URL;
import java.net.URLDecoder;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.regex.Matcher;
import java.util.regex.Pattern;
import javax.net.ssl.HttpsURLConnection;
import javax.net.ssl.SSLContext;
import org.apache.http.HttpVersion;
import org.apache.http.client.ClientProtocolException;
import org.apache.http.client.HttpClient;
import org.apache.http.client.entity.UrlEncodedFormEntity;
import org.apache.http.client.methods.HttpPost;
import org.apache.http.conn.scheme.PlainSocketFactory;
import org.apache.http.conn.scheme.Scheme;
import org.apache.http.conn.ssl.SSLSocketFactory;
import org.apache.http.impl.client.DefaultHttpClient;
import org.apache.http.message.BasicNameValuePair;
import org.apache.http.params.BasicHttpParams;
import org.apache.http.params.HttpConnectionParams;
import org.apache.http.params.HttpProtocolParams;
import org.apache.http.util.EntityUtils;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/agent/IAMWebViewClient.class */
public class IAMWebViewClient extends WebViewClient {

    /* renamed from: e */
    private static final Pattern f14670e = Pattern.compile(".*[\\?&]code=([^&]+).*");

    /* renamed from: f */
    private static final Pattern f14671f = Pattern.compile(".*[\\?&]error=([^&]+).*error_description=([^&]+).*");

    /* renamed from: a */
    ActivityInterface f14672a;

    /* renamed from: b */
    CookieWatcher f14673b;

    /* renamed from: c */
    List<String> f14674c = new ArrayList();

    /* renamed from: d */
    boolean f14675d = false;

    /* renamed from: com.tmobile.tmoid.agent.IAMWebViewClient$1 */
    /* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/agent/IAMWebViewClient$1.class */
    class RunnableC20151 implements Runnable {

        /* renamed from: f */
        final /* synthetic */ URL f14676f;

        /* renamed from: g */
        final /* synthetic */ SSLContext f14677g;

        /* renamed from: h */
        final /* synthetic */ SslCertificate f14678h;

        /* renamed from: i */
        final /* synthetic */ boolean[] f14679i;

        @Override // java.lang.Runnable
        public void run() {
            try {
                HttpsURLConnection httpsURLConnection = (HttpsURLConnection) this.f14676f.openConnection();
                httpsURLConnection.setSSLSocketFactory(this.f14677g.getSocketFactory());
                httpsURLConnection.getInputStream();
                if (!this.f14678h.toString().equals(new SslCertificate((X509Certificate) httpsURLConnection.getServerCertificates()[0]).toString())) {
                    Log.m4648v("TMO-Agent", "SSL/TLS Validation FAIL: Certificate mismatch");
                    this.f14679i[0] = false;
                    return;
                }
                this.f14679i[0] = true;
            } catch (Exception e) {
                Log.m4652e("TMO-Agent", "SSL/TLS Error while Validating URL");
                e.printStackTrace();
                this.f14679i[0] = false;
            }
        }
    }

    /* loaded from: classes-dex2jar.jar:com/tmobile/tmoid/agent/IAMWebViewClient$ActivityInterface.class */
    public interface ActivityInterface {
        /* renamed from: a */
        void mo5125a(int i);

        /* renamed from: b */
        void mo5124b(String str);

        /* renamed from: c */
        void mo5123c(APIResponse aPIResponse);

        /* renamed from: d */
        Context mo5122d();

        /* renamed from: e */
        APIRequest mo5121e();

        /* renamed from: f */
        void mo5120f(int i, String str, String str2);

        /* renamed from: g */
        void mo5119g();
    }

    static {
        Pattern.compile("authentication_cookie=[^;]+.*");
    }

    public IAMWebViewClient(CookieWatcher cookieWatcher, ActivityInterface activityInterface) {
        this.f14673b = cookieWatcher;
        this.f14672a = activityInterface;
    }

    /* renamed from: b */
    public static HttpClient m5130b(Context context) {
        try {
            BasicHttpParams basicHttpParams = new BasicHttpParams();
            HttpProtocolParams.setVersion(basicHttpParams, HttpVersion.HTTP_1_1);
            HttpProtocolParams.setContentCharset(basicHttpParams, Utf8Charset.NAME);
            HttpConnectionParams.setConnectionTimeout(basicHttpParams, 60000);
            HttpConnectionParams.setSoTimeout(basicHttpParams, 60000);
            DefaultHttpClient defaultHttpClient = new DefaultHttpClient(basicHttpParams);
            Scheme scheme = new Scheme("http", PlainSocketFactory.getSocketFactory(), 80);
            SSLSocketFactory socketFactory = SSLSocketFactory.getSocketFactory();
            socketFactory.setHostnameVerifier(SSLSocketFactory.ALLOW_ALL_HOSTNAME_VERIFIER);
            Scheme scheme2 = new Scheme("https", socketFactory, 443);
            Log.m4648v("TMO-Agent", "createHttpClient: use public certificates");
            defaultHttpClient.getConnectionManager().getSchemeRegistry().register(scheme);
            defaultHttpClient.getConnectionManager().getSchemeRegistry().register(scheme2);
            Log.m4648v("TMO-Agent", "HttpClient with was created.");
            return defaultHttpClient;
        } catch (Exception e) {
            Log.m4651e("TMO-Agent", "while creating https client", e);
            return null;
        }
    }

    /* renamed from: c */
    public static String m5129c(String str) {
        String str2;
        try {
            Matcher matcher = f14670e.matcher(URLDecoder.decode(str, Utf8Charset.NAME));
            str2 = null;
            if (matcher.matches()) {
                str2 = matcher.group(1);
            }
        } catch (UnsupportedEncodingException e) {
            Log.m4651e("TMO-Agent", "while decoding url:" + str, e);
            str2 = null;
        }
        return str2;
    }

    /* renamed from: d */
    public static ServerErrorException m5128d(String str) {
        UnsupportedEncodingException e;
        ServerErrorException serverErrorException = null;
        try {
            Matcher matcher = f14671f.matcher(URLDecoder.decode(str, Utf8Charset.NAME));
            if (matcher.matches()) {
                serverErrorException = new ServerErrorException(ServerErrorException.AGENT_ERROR_GENERIC_ERROR);
                try {
                    serverErrorException.setError(matcher.group(1));
                    serverErrorException.setDescription(matcher.group(2));
                } catch (UnsupportedEncodingException e2) {
                    e = e2;
                    Log.m4651e("TMO-Agent", "while decoding url:" + str, e);
                    return serverErrorException;
                }
            }
        } catch (UnsupportedEncodingException e3) {
            e = e3;
            serverErrorException = null;
        }
        return serverErrorException;
    }

    /* renamed from: e */
    public static APIResponse m5127e(Context context, HttpClient httpClient, APIRequestForAccessToken aPIRequestForAccessToken) {
        JSONObject jSONObject;
        Configuration b = IAMAgentStateHolder.m5162c(context).m5163b();
        APIResponse aPIResponse = new APIResponse();
        Log.m4654d("TMO-Agent", "make web agent request for access token:" + aPIRequestForAccessToken.m5045e());
        Log.m4648v("TMO-Agent", aPIRequestForAccessToken.m5045e());
        HttpPost httpPost = new HttpPost(b.getACCESS_TOKEN_URL());
        String str = aPIRequestForAccessToken.m5047c() + ":" + aPIRequestForAccessToken.m5043g() + aPIRequestForAccessToken.m5044f();
        Log.m4648v("TMO-Agent", "Authorization string is: " + str);
        try {
            String encodeToString = Base64.encodeToString(str.getBytes(Utf8Charset.NAME), 2);
            Log.m4648v("TMO-Agent", "Authorization base64 string is: " + encodeToString);
            httpPost.setHeader("Authorization", "Basic " + encodeToString);
            IAMHttpUtils.m5157c(context, httpPost);
            ArrayList arrayList = new ArrayList(2);
            arrayList.add(new BasicNameValuePair("grant_type", "authorization_code"));
            arrayList.add(new BasicNameValuePair("code", aPIRequestForAccessToken.m5045e()));
            arrayList.add(new BasicNameValuePair("redirect_uri", b.getREDIRECT_URI()));
            try {
                httpPost.setEntity(new UrlEncodedFormEntity(arrayList));
                long currentTimeMillis = System.currentTimeMillis();
                try {
                    jSONObject = new JSONObject(EntityUtils.toString(httpClient.execute(httpPost).getEntity()));
                } catch (ClientProtocolException e) {
                    aPIResponse.m5022g(new ServerErrorException(ServerErrorException.AGENT_ERROR_CLIENT_PROTOCOL, e));
                    Log.m4651e("TMO-Agent", "fetchAccessToken:", aPIResponse.m5027b());
                } catch (IOException e2) {
                    aPIResponse.m5022g(new ServerErrorException(-7, e2));
                    Log.m4651e("TMO-Agent", "fetchAccessToken:", aPIResponse.m5027b());
                } catch (JSONException e3) {
                    aPIResponse.m5022g(new ServerErrorException(ServerErrorException.AGENT_ERROR_JSON_DECODING, e3));
                    Log.m4651e("TMO-Agent", "fetchAccessToken:", aPIResponse.m5027b());
                }
                if (jSONObject.has(Constants.IPC_BUNDLE_KEY_SEND_ERROR)) {
                    ServerErrorException serverErrorException = new ServerErrorException(ServerErrorException.AGENT_ERROR_JSON_DECODING);
                    serverErrorException.setError(jSONObject.getString(Constants.IPC_BUNDLE_KEY_SEND_ERROR));
                    if (jSONObject.has("error_description")) {
                        serverErrorException.setDescription(jSONObject.getString("error_description"));
                    }
                    serverErrorException.setFailURL(httpPost.getURI().toString());
                    aPIResponse.m5022g(serverErrorException);
                    return aPIResponse;
                }
                if (!jSONObject.has("access_token")) {
                    Log.m4648v("TMO-Agent", "failed to get access token, JSON invalid?");
                    aPIResponse.m5022g(new ServerErrorException(ServerErrorException.AGENT_ERROR_JSON_DECODING));
                } else {
                    aPIResponse.m5020i(currentTimeMillis);
                    aPIResponse.m5023f(jSONObject.getString("access_token"));
                    aPIResponse.m5019j(jSONObject.getInt("expires_in"));
                    if (jSONObject.has("refresh_token")) {
                        aPIResponse.m5018k(jSONObject.getString("refresh_token"));
                    }
                    aPIResponse.m5015n(jSONObject.getString("token_type"));
                    if (jSONObject.has("tmobileid")) {
                        aPIResponse.m5016m(jSONObject.getString("tmobileid"));
                    }
                    Log.m4648v("TMO-Agent", "got access token:" + aPIResponse.m5028a());
                }
                return aPIResponse;
            } catch (UnsupportedEncodingException e4) {
                Log.m4651e("TMO-Agent", "while UrlEncodedFormEntity():", e4);
                aPIResponse.m5022g(new ServerErrorException(ServerErrorException.AGENT_ERROR_UNSUPPORTED_ENCODING, e4));
                return aPIResponse;
            }
        } catch (UnsupportedEncodingException e5) {
            Log.m4651e("TMO-Agent", "while String.getBytes(\"UTF-8\")", e5);
            aPIResponse.m5022g(new ServerErrorException(ServerErrorException.AGENT_ERROR_UNSUPPORTED_ENCODING, e5));
            return aPIResponse;
        }
    }

    /* renamed from: f */
    private void m5126f(String str, WebView webView) {
        if (str.endsWith("/registerURL")) {
            this.f14675d = true;
        } else if (str.contains("/oauth2/v1/auth") || str.contains("account.tmus.net")) {
            IAMHttpUtils.m5153g(webView, "$('#msisdn').val(IAMAgent.getPhoneNumber());", new String[]{"IAMAgent", "$"});
            webView.loadUrl("javascript:document.getElementById(\"msisdn\").focus();");
        } else if (!str.contains("/primary/")) {
            this.f14675d = false;
        } else if (this.f14675d) {
            IAMHttpUtils.m5153g(webView, "$('#msisdn_id').val(IAMAgent.getPhoneNumber());$('#profile_email').val(IAMAgent.getFirstEmailAddress());$('#profile\\\\.confirmEmail').val(IAMAgent.getFirstEmailAddress());", new String[]{"IAMAgent", "$"});
        } else {
            IAMHttpUtils.m5153g(webView, "$('#phoneNumber').val(IAMAgent.getPhoneNumber());", new String[]{"IAMAgent", "$"});
        }
    }

    /* renamed from: a */
    public void m5131a(String str) {
        this.f14674c.add(str);
    }

    @Override // android.webkit.WebViewClient
    public void onPageFinished(WebView webView, String str) {
        Log.m4654d("TMO-Agent", "onPageFinished");
        Log.m4648v("TMO-Agent", "URL: " + str);
        if (str == null) {
            super.onPageFinished(webView, str);
            return;
        }
        m5126f(str, webView);
        this.f14672a.mo5119g();
        if (this.f14673b.m5085c("IAM_SESSION_ID")) {
            IAMHttpUtils.m5153g(webView, "IAMAgent.userLoggedIn('UNKNOWN');", new String[]{"IAMAgent"});
        }
        IAMHttpUtils.m5153g(webView, "IAMAgent.pageWasLoaded(document.title, document.URL, document.getElementsByTagName('h1')[0].innerHTML);", new String[]{"IAMAgent"});
        if (str.contains("/oauth2/v1/auth")) {
            IAMHttpUtils.m5153g(webView, "$(document).ready(function(){if (typeof($)!='undefined'){$('form[name=\"signinform\"] input[type=\"submit\"]').click(function() {if (typeof(IAMAgent)!='undefined') IAMAgent.userIdentifierSubmitted($('#msisdn').val());});}});", new String[]{"$"});
        }
        this.f14672a.mo5125a(100);
        super.onPageFinished(webView, str);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedError(WebView webView, int i, String str, String str2) {
        Log.m4648v("TMO-Agent", "received error: " + i + "(" + str + ") from url:" + str2);
        this.f14672a.mo5120f(i, str, str2);
    }

    @Override // android.webkit.WebViewClient
    public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
        sslErrorHandler.cancel();
        Log.m4654d("TMO-Agent", "onReceivedError (Agent.USE_PUBLIC_CERTIFICATES): received ssl error: " + sslError);
    }

    @Override // android.webkit.WebViewClient
    public boolean shouldOverrideUrlLoading(WebView webView, String str) {
        Configuration b = IAMAgentStateHolder.m5162c(this.f14672a.mo5122d()).m5163b();
        Log.m4650i("TMO-Agent", "user is navigating to url");
        Log.m4648v("TMO-Agent", "URL: " + str);
        this.f14672a.mo5124b(str);
        if (str.startsWith(b.getREDIRECT_URI())) {
            this.f14672a.mo5125a(50);
            String c = m5129c(str);
            if (c != null) {
                Log.m4650i("TMO-Agent", "got authorization code");
                Log.m4648v("TMO-Agent", "code value: " + c);
                APIResponse aPIResponse = new APIResponse();
                aPIResponse.m5021h(c);
                this.f14672a.mo5123c(aPIResponse);
                return true;
            }
            Log.m4654d("TMO-Agent", "code url doesn't match, check for server error");
            Matcher matcher = f14671f.matcher(str);
            if (!matcher.matches()) {
                return true;
            }
            String group = matcher.group(1);
            String group2 = matcher.group(2);
            Log.m4652e("TMO-Agent", "Got error from server: " + group + ", description:" + group2);
            this.f14672a.mo5120f(-1, group2, str);
            return true;
        }
        APIRequest e = this.f14672a.mo5121e();
        Map<String, String> e2 = (e == null || !e.m5048b().equals("getAccessToken")) ? IAMHttpUtils.m5155e(this.f14672a.mo5122d()) : IAMHttpUtils.m5154f(this.f14672a.mo5122d(), e.m5047c(), ((APIRequestForAccessToken) e).m5044f(), true);
        webView.loadUrl(str, e2);
        IAMMainActivity.m5144h(str, e2);
        return true;
    }
}
