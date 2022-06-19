package com.google.firebase.installations.p396a;

import android.content.SharedPreferences;
import android.util.Base64;
import android.util.Log;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.InvalidKeySpecException;
import java.security.spec.X509EncodedKeySpec;
import org.json.JSONException;
import org.json.JSONObject;
/* renamed from: com.google.firebase.installations.a.b */
/* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/a/b.class */
public final class C15793b {

    /* renamed from: a */
    private static final String[] f56195a = {"*", "FCM", "GCM", ""};

    /* renamed from: b */
    private final SharedPreferences f56196b;

    /* renamed from: c */
    private final String f56197c;

    public C15793b(SharedPreferences sharedPreferences, String str) {
        this.f56196b = sharedPreferences;
        this.f56197c = str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0061, code lost:
        if (r0.isEmpty() != false) goto L11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x003c, code lost:
        if (r0.startsWith("2:") != false) goto L9;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public C15793b(com.google.firebase.C15601b r6) {
        /*
            r5 = this;
            r0 = r5
            r0.<init>()
            r0 = r5
            r1 = r6
            android.content.Context r1 = r1.m8583a()
            java.lang.String r2 = "com.google.android.gms.appid"
            r3 = 0
            android.content.SharedPreferences r1 = r1.getSharedPreferences(r2, r3)
            r0.f56196b = r1
            r0 = r6
            com.google.firebase.h r0 = r0.m8574c()
            java.lang.String r0 = r0.f56101c
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L23
            r0 = r7
            r6 = r0
            goto L67
        L23:
            r0 = r6
            com.google.firebase.h r0 = r0.m8574c()
            java.lang.String r0 = r0.f56100b
            r7 = r0
            r0 = r7
            java.lang.String r1 = "1:"
            boolean r0 = r0.startsWith(r1)
            if (r0 != 0) goto L45
            r0 = r7
            r6 = r0
            r0 = r7
            java.lang.String r1 = "2:"
            boolean r0 = r0.startsWith(r1)
            if (r0 == 0) goto L42
            goto L45
        L42:
            goto L67
        L45:
            r0 = r7
            java.lang.String r1 = ":"
            java.lang.String[] r0 = r0.split(r1)
            r6 = r0
            r0 = r6
            int r0 = r0.length
            r1 = 4
            if (r0 == r1) goto L57
        L52:
            r0 = 0
            r6 = r0
            goto L67
        L57:
            r0 = r6
            r1 = 1
            r0 = r0[r1]
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L42
            goto L52
        L67:
            r0 = r5
            r1 = r6
            r0.f56197c = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.installations.p396a.C15793b.<init>(com.google.firebase.b):void");
    }

    /* renamed from: a */
    private static String m8386a(String str) {
        try {
            return new JSONObject(str).getString("token");
        } catch (JSONException e) {
            return null;
        }
    }

    /* renamed from: a */
    private static String m8385a(PublicKey publicKey) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA1").digest(publicKey.getEncoded());
            digest[0] = (byte) (((digest[0] & 15) + 112) & 255);
            return Base64.encodeToString(digest, 0, 8, 11);
        } catch (NoSuchAlgorithmException e) {
            Log.w("ContentValues", "Unexpected error, device missing required algorithms");
            return null;
        }
    }

    /* renamed from: b */
    private static PublicKey m8383b(String str) {
        try {
            return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str, 8)));
        } catch (IllegalArgumentException | NoSuchAlgorithmException | InvalidKeySpecException e) {
            Log.w("ContentValues", "Invalid key stored ".concat(String.valueOf(e)));
            return null;
        }
    }

    /* renamed from: c */
    private String m8382c() {
        String string;
        synchronized (this.f56196b) {
            string = this.f56196b.getString("|S|id", null);
        }
        return string;
    }

    /* renamed from: d */
    private String m8381d() {
        synchronized (this.f56196b) {
            String string = this.f56196b.getString("|S||P|", null);
            if (string == null) {
                return null;
            }
            PublicKey m8383b = m8383b(string);
            if (m8383b == null) {
                return null;
            }
            return m8385a(m8383b);
        }
    }

    /* renamed from: a */
    public final String m8387a() {
        String[] strArr;
        synchronized (this.f56196b) {
            for (String str : f56195a) {
                String string = this.f56196b.getString("|T|" + this.f56197c + "|" + str, null);
                if (string != null && !string.isEmpty()) {
                    String str2 = string;
                    if (string.startsWith("{")) {
                        str2 = m8386a(string);
                    }
                    return str2;
                }
            }
            return null;
        }
    }

    /* renamed from: b */
    public final String m8384b() {
        synchronized (this.f56196b) {
            String m8382c = m8382c();
            if (m8382c != null) {
                return m8382c;
            }
            return m8381d();
        }
    }
}
