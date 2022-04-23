package com.twitter.sdk.android.core.internal.oauth;

import c.i;
import com.twitter.sdk.android.core.TwitterAuthConfig;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.internal.a.f;
import com.twitter.sdk.android.core.n;
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
/* loaded from: classes4-dex2jar.jar:com/twitter/sdk/android/core/internal/oauth/c.class */
final class c {

    /* renamed from: a  reason: collision with root package name */
    private static final SecureRandom f35171a = new SecureRandom();

    /* renamed from: b  reason: collision with root package name */
    private final TwitterAuthConfig f35172b;

    /* renamed from: c  reason: collision with root package name */
    private final TwitterAuthToken f35173c;

    /* renamed from: d  reason: collision with root package name */
    private final String f35174d;
    private final String e;
    private final String f;
    private final Map<String, String> g;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(TwitterAuthConfig twitterAuthConfig, TwitterAuthToken twitterAuthToken, String str, String str2, String str3, Map<String, String> map) {
        this.f35172b = twitterAuthConfig;
        this.f35173c = twitterAuthToken;
        this.f35174d = str;
        this.e = str2;
        this.f = str3;
        this.g = map;
    }

    private String a(String str) {
        try {
            TwitterAuthToken twitterAuthToken = this.f35173c;
            String str2 = twitterAuthToken != null ? twitterAuthToken.secret : null;
            byte[] bytes = str.getBytes("UTF8");
            SecretKeySpec secretKeySpec = new SecretKeySpec((f.a(this.f35172b.getConsumerSecret()) + '&' + f.a(str2)).getBytes("UTF8"), "HmacSHA1");
            Mac instance = Mac.getInstance("HmacSHA1");
            instance.init(secretKeySpec);
            byte[] doFinal = instance.doFinal(bytes);
            return i.a(doFinal, doFinal.length).c();
        } catch (UnsupportedEncodingException e) {
            n.c().a("Twitter", "Failed to calculate signature", e);
            return "";
        } catch (InvalidKeyException e2) {
            n.c().a("Twitter", "Failed to calculate signature", e2);
            return "";
        } catch (NoSuchAlgorithmException e3) {
            n.c().a("Twitter", "Failed to calculate signature", e3);
            return "";
        }
    }

    private String a(String str, String str2) {
        URI create;
        TreeMap<String, String> a2 = f.a(URI.create(this.f), true);
        Map<String, String> map = this.g;
        if (map != null) {
            a2.putAll(map);
        }
        String str3 = this.f35174d;
        if (str3 != null) {
            a2.put("oauth_callback", str3);
        }
        a2.put("oauth_consumer_key", this.f35172b.getConsumerKey());
        a2.put("oauth_nonce", str);
        a2.put("oauth_signature_method", "HMAC-SHA1");
        a2.put("oauth_timestamp", str2);
        TwitterAuthToken twitterAuthToken = this.f35173c;
        if (!(twitterAuthToken == null || twitterAuthToken.token == null)) {
            a2.put("oauth_token", this.f35173c.token);
        }
        a2.put("oauth_version", "1.0");
        String str4 = create.getScheme() + "://" + create.getHost() + create.getPath();
        return this.e.toUpperCase(Locale.ENGLISH) + '&' + f.b(str4) + '&' + a(a2);
    }

    private String a(String str, String str2, String str3) {
        StringBuilder sb = new StringBuilder("OAuth");
        a(sb, "oauth_callback", this.f35174d);
        a(sb, "oauth_consumer_key", this.f35172b.getConsumerKey());
        a(sb, "oauth_nonce", str);
        a(sb, "oauth_signature", str3);
        a(sb, "oauth_signature_method", "HMAC-SHA1");
        a(sb, "oauth_timestamp", str2);
        TwitterAuthToken twitterAuthToken = this.f35173c;
        a(sb, "oauth_token", twitterAuthToken != null ? twitterAuthToken.token : null);
        a(sb, "oauth_version", "1.0");
        return sb.substring(0, sb.length() - 1);
    }

    private static String a(TreeMap<String, String> treeMap) {
        StringBuilder sb = new StringBuilder();
        int size = treeMap.size();
        int i = 0;
        for (Map.Entry<String, String> entry : treeMap.entrySet()) {
            sb.append(f.b(f.b(entry.getKey())));
            sb.append("%3D");
            sb.append(f.b(f.b(entry.getValue())));
            int i2 = i + 1;
            i = i2;
            if (i2 < size) {
                sb.append("%26");
                i = i2;
            }
        }
        return sb.toString();
    }

    private static void a(StringBuilder sb, String str, String str2) {
        if (str2 != null) {
            sb.append(' ');
            sb.append(f.b(str));
            sb.append("=\"");
            sb.append(f.b(str2));
            sb.append("\",");
        }
    }

    private static String b() {
        return String.valueOf(System.nanoTime()) + String.valueOf(Math.abs(f35171a.nextLong()));
    }

    private static String c() {
        return Long.toString(System.currentTimeMillis() / 1000);
    }

    public final String a() {
        String b2 = b();
        String c2 = c();
        return a(b2, c2, a(a(b2, c2)));
    }
}
