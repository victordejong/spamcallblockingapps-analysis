package com.google.firebase.installations.p167a;

import android.content.SharedPreferences;
import android.util.Base64;
import android.util.Log;
import com.google.firebase.C4865b;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.firebase.installations.a.b */
/* loaded from: classes-dex2jar.jar:com/google/firebase/installations/a/b.class */
public class C5007b {

    /* renamed from: a */
    private static final String[] f21224a = {"*", "FCM", "GCM", ""};

    /* renamed from: b */
    private final SharedPreferences f21225b;

    /* renamed from: c */
    private final String f21226c;

    public C5007b(C4865b c4865b) {
        this.f21225b = c4865b.m2160a().getSharedPreferences("com.google.android.gms.appid", 0);
        this.f21226c = m1879a(c4865b);
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0029, code lost:
        if (r0.startsWith("2:") != false) goto L11;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static java.lang.String m1879a(com.google.firebase.C4865b r3) {
        /*
            r0 = r3
            com.google.firebase.d r0 = r0.m2148c()
            java.lang.String r0 = r0.m2047c()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L10
            r0 = r4
            r3 = r0
        Le:
            r0 = r3
            return r0
        L10:
            r0 = r3
            com.google.firebase.d r0 = r0.m2148c()
            java.lang.String r0 = r0.m2048b()
            r4 = r0
            r0 = r4
            java.lang.String r1 = "1:"
            boolean r0 = r0.startsWith(r1)
            if (r0 != 0) goto L2c
            r0 = r4
            r3 = r0
            r0 = r4
            java.lang.String r1 = "2:"
            boolean r0 = r0.startsWith(r1)
            if (r0 == 0) goto Le
        L2c:
            r0 = r4
            java.lang.String r1 = ":"
            java.lang.String[] r0 = r0.split(r1)
            r3 = r0
            r0 = r3
            int r0 = r0.length
            r1 = 4
            if (r0 == r1) goto L3e
            r0 = 0
            r3 = r0
            goto Le
        L3e:
            r0 = r3
            r1 = 1
            r0 = r0[r1]
            r4 = r0
            r0 = r4
            r3 = r0
            r0 = r4
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto Le
            r0 = 0
            r3 = r0
            goto Le
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.installations.p167a.C5007b.m1879a(com.google.firebase.b):java.lang.String");
    }

    /* renamed from: a */
    private String m1878a(String str) {
        String str2;
        try {
            str2 = new JSONObject(str).getString("token");
        } catch (JSONException e) {
            str2 = null;
        }
        return str2;
    }

    /* renamed from: a */
    private String m1877a(String str, String str2) {
        return "|T|" + str + "|" + str2;
    }

    /* renamed from: a */
    private static String m1876a(PublicKey publicKey) {
        String str;
        try {
            byte[] digest = MessageDigest.getInstance("SHA1").digest(publicKey.getEncoded());
            digest[0] = (byte) (((digest[0] & 15) + 112) & 255);
            str = Base64.encodeToString(digest, 0, 8, 11);
        } catch (NoSuchAlgorithmException e) {
            Log.w("ContentValues", "Unexpected error, device missing required algorithms");
            str = null;
        }
        return str;
    }

    /* renamed from: b */
    private PublicKey m1874b(String str) {
        PublicKey publicKey;
        try {
            publicKey = KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str, 8)));
        } catch (IllegalArgumentException | NoSuchAlgorithmException | InvalidKeySpecException e) {
            Log.w("ContentValues", "Invalid key stored " + e);
            publicKey = null;
        }
        return publicKey;
    }

    /* renamed from: c */
    private String m1873c() {
        String string;
        synchronized (this.f21225b) {
            string = this.f21225b.getString("|S|id", null);
        }
        return string;
    }

    /* renamed from: d */
    private String m1872d() {
        String str = null;
        synchronized (this.f21225b) {
            String string = this.f21225b.getString("|S||P|", null);
            if (string != null) {
                PublicKey m1874b = m1874b(string);
                if (m1874b != null) {
                    str = m1876a(m1874b);
                }
            }
        }
        return str;
    }

    /* renamed from: a */
    public String m1880a() {
        String str = null;
        synchronized (this.f21225b) {
            String[] strArr = f21224a;
            int length = strArr.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                String string = this.f21225b.getString(m1877a(this.f21226c, strArr[i]), null);
                if (string == null || string.isEmpty()) {
                    i++;
                } else {
                    str = string.startsWith("{") ? m1878a(string) : string;
                }
            }
        }
        return str;
    }

    /* renamed from: b */
    public String m1875b() {
        String m1873c;
        synchronized (this.f21225b) {
            m1873c = m1873c();
            if (m1873c == null) {
                m1873c = m1872d();
            }
        }
        return m1873c;
    }
}
