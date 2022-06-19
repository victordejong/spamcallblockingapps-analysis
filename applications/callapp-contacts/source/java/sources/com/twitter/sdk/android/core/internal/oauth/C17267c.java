package com.twitter.sdk.android.core.internal.oauth;

import com.twitter.sdk.android.core.C17282n;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.internal.p485a.C17242f;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.security.SecureRandom;
import java.util.Locale;
import java.util.Map;
import java.util.TreeMap;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import p092c.C3208i;
/* renamed from: com.twitter.sdk.android.core.internal.oauth.c */
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/oauth/c.class */
final class C17267c {

    /* renamed from: a */
    private static final SecureRandom f61019a = new SecureRandom();

    /* renamed from: b */
    private final TwitterAuthConfig f61020b;

    /* renamed from: c */
    private final TwitterAuthToken f61021c;

    /* renamed from: d */
    private final String f61022d;

    /* renamed from: e */
    private final String f61023e;

    /* renamed from: f */
    private final String f61024f;

    /* renamed from: g */
    private final Map<String, String> f61025g;

    public C17267c(TwitterAuthConfig twitterAuthConfig, TwitterAuthToken twitterAuthToken, String str, String str2, String str3, Map<String, String> map) {
        this.f61020b = twitterAuthConfig;
        this.f61021c = twitterAuthToken;
        this.f61022d = str;
        this.f61023e = str2;
        this.f61024f = str3;
        this.f61025g = map;
    }

    /* renamed from: a */
    private String m5645a(String str) {
        try {
            TwitterAuthToken twitterAuthToken = this.f61021c;
            String str2 = twitterAuthToken != null ? twitterAuthToken.secret : null;
            byte[] bytes = str.getBytes("UTF8");
            SecretKeySpec secretKeySpec = new SecretKeySpec((C17242f.m5681a(this.f61020b.getConsumerSecret()) + '&' + C17242f.m5681a(str2)).getBytes("UTF8"), "HmacSHA1");
            Mac mac = Mac.getInstance("HmacSHA1");
            mac.init(secretKeySpec);
            byte[] doFinal = mac.doFinal(bytes);
            return C3208i.m39180a(doFinal, doFinal.length).mo39176c();
        } catch (UnsupportedEncodingException e) {
            C17282n.m5628c().mo5713a("Twitter", "Failed to calculate signature", e);
            return "";
        } catch (InvalidKeyException e2) {
            C17282n.m5628c().mo5713a("Twitter", "Failed to calculate signature", e2);
            return "";
        } catch (NoSuchAlgorithmException e3) {
            C17282n.m5628c().mo5713a("Twitter", "Failed to calculate signature", e3);
            return "";
        }
    }

    /* renamed from: a */
    private String m5644a(String str, String str2) {
        URI create;
        TreeMap<String, String> m5679a = C17242f.m5679a(URI.create(this.f61024f), true);
        Map<String, String> map = this.f61025g;
        if (map != null) {
            m5679a.putAll(map);
        }
        String str3 = this.f61022d;
        if (str3 != null) {
            m5679a.put("oauth_callback", str3);
        }
        m5679a.put("oauth_consumer_key", this.f61020b.getConsumerKey());
        m5679a.put("oauth_nonce", str);
        m5679a.put("oauth_signature_method", "HMAC-SHA1");
        m5679a.put("oauth_timestamp", str2);
        TwitterAuthToken twitterAuthToken = this.f61021c;
        if (twitterAuthToken != null && twitterAuthToken.token != null) {
            m5679a.put("oauth_token", this.f61021c.token);
        }
        m5679a.put("oauth_version", "1.0");
        String str4 = create.getScheme() + "://" + create.getHost() + create.getPath();
        return this.f61023e.toUpperCase(Locale.ENGLISH) + '&' + C17242f.m5678b(str4) + '&' + m5641a(m5679a);
    }

    /* renamed from: a */
    private String m5643a(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder("OAuth");
        m5642a(sb, "oauth_callback", this.f61022d);
        m5642a(sb, "oauth_consumer_key", this.f61020b.getConsumerKey());
        m5642a(sb, "oauth_nonce", str);
        m5642a(sb, "oauth_signature", str3);
        m5642a(sb, "oauth_signature_method", "HMAC-SHA1");
        m5642a(sb, "oauth_timestamp", str2);
        TwitterAuthToken twitterAuthToken = this.f61021c;
        m5642a(sb, "oauth_token", twitterAuthToken != null ? twitterAuthToken.token : null);
        m5642a(sb, "oauth_version", "1.0");
        return sb.substring(0, sb.length() - 1);
    }

    /* renamed from: a */
    private static String m5641a(TreeMap<String, String> treeMap) {
        StringBuilder sb = new StringBuilder();
        int size = treeMap.size();
        int i = 0;
        for (Map.Entry<String, String> entry : treeMap.entrySet()) {
            sb.append(C17242f.m5678b(C17242f.m5678b(entry.getKey())));
            sb.append("%3D");
            sb.append(C17242f.m5678b(C17242f.m5678b(entry.getValue())));
            int i2 = i + 1;
            i = i2;
            if (i2 < size) {
                sb.append("%26");
                i = i2;
            }
        }
        return sb.toString();
    }

    /* renamed from: a */
    private static void m5642a(StringBuilder sb, String str, String str2) {
        if (str2 != null) {
            sb.append(' ');
            sb.append(C17242f.m5678b(str));
            sb.append("=\"");
            sb.append(C17242f.m5678b(str2));
            sb.append("\",");
        }
    }

    /* renamed from: b */
    private static String m5640b() {
        return String.valueOf(System.nanoTime()) + String.valueOf(Math.abs(f61019a.nextLong()));
    }

    /* renamed from: c */
    private static String m5639c() {
        return Long.toString(System.currentTimeMillis() / 1000);
    }

    /* renamed from: a */
    public final String m5646a() {
        String m5640b = m5640b();
        String m5639c = m5639c();
        return m5643a(m5640b, m5639c, m5645a(m5644a(m5640b, m5639c)));
    }
}
