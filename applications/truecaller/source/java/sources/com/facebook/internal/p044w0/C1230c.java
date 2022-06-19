package com.facebook.internal.p044w0;

import android.util.Base64;
import com.huawei.hms.push.constant.RemoteMessageConst;
import com.razorpay.AnalyticsConstants;
import com.tenor.android.core.constant.StringConstant;
import java.io.BufferedReader;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;
import java.net.URLConnection;
import java.security.KeyFactory;
import java.security.PublicKey;
import java.security.Signature;
import java.security.spec.X509EncodedKeySpec;
import java.util.Objects;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.locks.Condition;
import java.util.concurrent.locks.ReentrantLock;
import kotlin.Metadata;
import org.json.JSONObject;
import p193e.p1538j.C23228f0;
import s1.f0.b;
import s1.f0.r;
import s1.y.h;
import s1.z.c.c0;
import s1.z.c.l;
@Metadata(d1 = {"��*\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\t\n��\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0002\b\u0004\bÆ\u0002\u0018��2\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\u0004H\u0007J\u0012\u0010\r\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000e\u001a\u00020\u0004H\u0007J \u0010\u000f\u001a\u00020\u00102\u0006\u0010\u0011\u001a\u00020\u000b2\u0006\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0004H\u0007R\u0014\u0010\u0003\u001a\u00020\u0004X\u0086D¢\u0006\b\n��\u001a\u0004\b\u0005\u0010\u0006R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\tX\u0086T¢\u0006\u0002\n��¨\u0006\u0014"}, d2 = {"Lcom/facebook/internal/security/OidcSecurityUtil;", "", "()V", "OPENID_KEYS_PATH", "", "getOPENID_KEYS_PATH", "()Ljava/lang/String;", "SIGNATURE_ALGORITHM_SHA256", "TIMEOUT_IN_MILLISECONDS", "", "getPublicKeyFromString", "Ljava/security/PublicKey;", AnalyticsConstants.KEY, "getRawKeyFromEndPoint", "kid", "verify", "", "publicKey", RemoteMessageConst.DATA, "signature", "facebook-core_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
/* renamed from: com.facebook.internal.w0.c */
/* loaded from: classes2-dex2jar.jar:com/facebook/internal/w0/c.class */
public final class C1230c {

    /* renamed from: a */
    public static final C1230c f3316a = new C1230c();

    /* renamed from: a */
    public static final PublicKey m41617a(String str) {
        l.e(str, AnalyticsConstants.KEY);
        byte[] decode = Base64.decode(r.t(r.t(r.t(str, StringConstant.NEW_LINE, "", false, 4), "-----BEGIN PUBLIC KEY-----", "", false, 4), "-----END PUBLIC KEY-----", "", false, 4), 0);
        l.d(decode, "decode(pubKeyString, Base64.DEFAULT)");
        PublicKey generatePublic = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(decode));
        l.d(generatePublic, "kf.generatePublic(x509publicKey)");
        return generatePublic;
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: b */
    public static final String m41616b(final String str) {
        l.e(str, "kid");
        C23228f0 c23228f0 = C23228f0.f64291a;
        final URL url = new URL("https", l.j("www.", C23228f0.f64309s), "/.well-known/oauth/openid/keys/");
        final ReentrantLock reentrantLock = new ReentrantLock();
        final Condition newCondition = reentrantLock.newCondition();
        final c0 c0Var = new c0();
        C23228f0.m7350e().execute(new Runnable() { // from class: com.facebook.internal.w0.a
            @Override // java.lang.Runnable
            public final void run() {
                URL url2 = url;
                c0 c0Var2 = c0Var;
                String str2 = str;
                ReentrantLock reentrantLock2 = reentrantLock;
                Condition condition = newCondition;
                l.e(url2, "$openIdKeyUrl");
                l.e(c0Var2, "$result");
                l.e(str2, "$kid");
                l.e(reentrantLock2, "$lock");
                URLConnection openConnection = url2.openConnection();
                Objects.requireNonNull(openConnection, "null cannot be cast to non-null type java.net.HttpURLConnection");
                HttpURLConnection httpURLConnection = (HttpURLConnection) openConnection;
                try {
                    try {
                        InputStream inputStream = httpURLConnection.getInputStream();
                        l.d(inputStream, "connection.inputStream");
                        InputStreamReader inputStreamReader = new InputStreamReader(inputStream, b.a);
                        String d = h.d(inputStreamReader instanceof BufferedReader ? (BufferedReader) inputStreamReader : new BufferedReader(inputStreamReader, 8192));
                        httpURLConnection.getInputStream().close();
                        c0Var2.a = new JSONObject(d).optString(str2);
                        httpURLConnection.disconnect();
                        reentrantLock2.lock();
                        try {
                            condition.signal();
                        } finally {
                        }
                    } catch (Throwable th) {
                        httpURLConnection.disconnect();
                        reentrantLock2.lock();
                        try {
                            condition.signal();
                            throw th;
                        } finally {
                        }
                    }
                } catch (Exception e) {
                    C1230c.f3316a.getClass().getName();
                    e.getMessage();
                    httpURLConnection.disconnect();
                    reentrantLock2.lock();
                    try {
                        condition.signal();
                    } finally {
                    }
                }
            }
        });
        reentrantLock.lock();
        try {
            newCondition.await(5000L, TimeUnit.MILLISECONDS);
            reentrantLock.unlock();
            return (String) c0Var.a;
        } catch (Throwable th) {
            reentrantLock.unlock();
            throw th;
        }
    }

    /* renamed from: c */
    public static final boolean m41615c(PublicKey publicKey, String str, String str2) {
        l.e(publicKey, "publicKey");
        l.e(str, RemoteMessageConst.DATA);
        l.e(str2, "signature");
        try {
            Signature signature = Signature.getInstance("SHA256withRSA");
            signature.initVerify(publicKey);
            byte[] bytes = str.getBytes(b.a);
            l.d(bytes, "(this as java.lang.String).getBytes(charset)");
            signature.update(bytes);
            byte[] decode = Base64.decode(str2, 8);
            l.d(decode, "decode(signature, Base64.URL_SAFE)");
            return signature.verify(decode);
        } catch (Exception e) {
            return false;
        }
    }
}
