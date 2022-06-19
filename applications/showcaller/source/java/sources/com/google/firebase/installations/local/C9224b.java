package com.google.firebase.installations.local;

import android.content.SharedPreferences;
import android.util.Base64;
import android.util.Log;
import com.google.firebase.C8849c;
import com.yanzhenjie.nohttp.p320db.BasicSQLHelper;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.firebase.installations.local.b */
/* loaded from: classes2-dex2jar.jar:com/google/firebase/installations/local/b.class */
public class C9224b {

    /* renamed from: a */
    private static final String[] f39637a = {BasicSQLHelper.ALL, "FCM", "GCM", ""};

    /* renamed from: b */
    private final SharedPreferences f39638b;

    /* renamed from: c */
    private final String f39639c;

    public C9224b(C8849c c8849c) {
        this.f39638b = c8849c.m2533g().getSharedPreferences("com.google.android.gms.appid", 0);
        this.f39639c = m1514b(c8849c);
    }

    /* renamed from: a */
    private String m1515a(String str, String str2) {
        return "|T|" + str + "|" + str2;
    }

    /* renamed from: b */
    private static String m1514b(C8849c c8849c) {
        String m1659d = c8849c.m2530j().m1659d();
        if (m1659d != null) {
            return m1659d;
        }
        String m1660c = c8849c.m2530j().m1660c();
        if (!m1660c.startsWith("1:") && !m1660c.startsWith("2:")) {
            return m1660c;
        }
        String[] split = m1660c.split(":");
        if (split.length != 4) {
            return null;
        }
        String str = split[1];
        if (!str.isEmpty()) {
            return str;
        }
        return null;
    }

    /* renamed from: c */
    private static String m1513c(PublicKey publicKey) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA1").digest(publicKey.getEncoded());
            digest[0] = (byte) (((digest[0] & 15) + 112) & 255);
            return Base64.encodeToString(digest, 0, 8, 11);
        } catch (NoSuchAlgorithmException e) {
            Log.w("ContentValues", "Unexpected error, device missing required algorithms");
            return null;
        }
    }

    /* renamed from: d */
    private String m1512d(String str) {
        try {
            return new JSONObject(str).getString("token");
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: e */
    private PublicKey m1511e(String str) {
        try {
            return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str, 8)));
        } catch (IllegalArgumentException | NoSuchAlgorithmException | InvalidKeySpecException e) {
            Log.w("ContentValues", "Invalid key stored " + e);
            return null;
        }
    }

    /* renamed from: g */
    private String m1509g() {
        String string;
        synchronized (this.f39638b) {
            string = this.f39638b.getString("|S|id", null);
        }
        return string;
    }

    /* renamed from: h */
    private String m1508h() {
        synchronized (this.f39638b) {
            String string = this.f39638b.getString("|S||P|", null);
            if (string == null) {
                return null;
            }
            PublicKey m1511e = m1511e(string);
            if (m1511e == null) {
                return null;
            }
            return m1513c(m1511e);
        }
    }

    /* renamed from: f */
    public String m1510f() {
        synchronized (this.f39638b) {
            String m1509g = m1509g();
            if (m1509g != null) {
                return m1509g;
            }
            return m1508h();
        }
    }

    /* renamed from: i */
    public String m1507i() {
        synchronized (this.f39638b) {
            for (String str : f39637a) {
                String string = this.f39638b.getString(m1515a(this.f39639c, str), null);
                if (string != null && !string.isEmpty()) {
                    String str2 = string;
                    if (string.startsWith("{")) {
                        str2 = m1512d(string);
                    }
                    return str2;
                }
            }
            return null;
        }
    }
}
