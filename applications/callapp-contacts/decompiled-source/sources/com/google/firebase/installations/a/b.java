package com.google.firebase.installations.a;

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
/* loaded from: classes4-dex2jar.jar:com/google/firebase/installations/a/b.class */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String[] f32388a = {"*", "FCM", "GCM", ""};

    /* renamed from: b  reason: collision with root package name */
    private final SharedPreferences f32389b;

    /* renamed from: c  reason: collision with root package name */
    private final String f32390c;

    public b(SharedPreferences sharedPreferences, String str) {
        this.f32389b = sharedPreferences;
        this.f32390c = str;
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0061, code lost:
        if (r0.isEmpty() != false) goto L_0x0052;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x003c, code lost:
        if (r0.startsWith("2:") != false) goto L_0x0045;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public b(com.google.firebase.b r6) {
        /*
            r5 = this;
            r0 = r5
            r0.<init>()
            r0 = r5
            r1 = r6
            android.content.Context r1 = r1.a()
            java.lang.String r2 = "com.google.android.gms.appid"
            r3 = 0
            android.content.SharedPreferences r1 = r1.getSharedPreferences(r2, r3)
            r0.f32389b = r1
            r0 = r6
            com.google.firebase.h r0 = r0.c()
            java.lang.String r0 = r0.f32316c
            r7 = r0
            r0 = r7
            if (r0 == 0) goto L_0x0023
            r0 = r7
            r6 = r0
            goto L_0x0067
        L_0x0023:
            r0 = r6
            com.google.firebase.h r0 = r0.c()
            java.lang.String r0 = r0.f32315b
            r7 = r0
            r0 = r7
            java.lang.String r1 = "1:"
            boolean r0 = r0.startsWith(r1)
            if (r0 != 0) goto L_0x0045
            r0 = r7
            r6 = r0
            r0 = r7
            java.lang.String r1 = "2:"
            boolean r0 = r0.startsWith(r1)
            if (r0 == 0) goto L_0x0042
            goto L_0x0045
        L_0x0042:
            goto L_0x0067
        L_0x0045:
            r0 = r7
            java.lang.String r1 = ":"
            java.lang.String[] r0 = r0.split(r1)
            r6 = r0
            r0 = r6
            int r0 = r0.length
            r1 = 4
            if (r0 == r1) goto L_0x0057
        L_0x0052:
            r0 = 0
            r6 = r0
            goto L_0x0067
        L_0x0057:
            r0 = r6
            r1 = 1
            r0 = r0[r1]
            r7 = r0
            r0 = r7
            r6 = r0
            r0 = r7
            boolean r0 = r0.isEmpty()
            if (r0 == 0) goto L_0x0042
            goto L_0x0052
        L_0x0067:
            r0 = r5
            r1 = r6
            r0.f32390c = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.firebase.installations.a.b.<init>(com.google.firebase.b):void");
    }

    private static String a(String str) {
        try {
            return new JSONObject(str).getString("token");
        } catch (JSONException e) {
            return null;
        }
    }

    private static String a(PublicKey publicKey) {
        try {
            byte[] digest = MessageDigest.getInstance("SHA1").digest(publicKey.getEncoded());
            digest[0] = (byte) (((digest[0] & 15) + 112) & 255);
            return Base64.encodeToString(digest, 0, 8, 11);
        } catch (NoSuchAlgorithmException e) {
            Log.w("ContentValues", "Unexpected error, device missing required algorithms");
            return null;
        }
    }

    private static PublicKey b(String str) {
        try {
            return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(Base64.decode(str, 8)));
        } catch (IllegalArgumentException | NoSuchAlgorithmException | InvalidKeySpecException e) {
            Log.w("ContentValues", "Invalid key stored ".concat(String.valueOf(e)));
            return null;
        }
    }

    private String c() {
        String string;
        synchronized (this.f32389b) {
            string = this.f32389b.getString("|S|id", null);
        }
        return string;
    }

    private String d() {
        synchronized (this.f32389b) {
            String string = this.f32389b.getString("|S||P|", null);
            if (string == null) {
                return null;
            }
            PublicKey b2 = b(string);
            if (b2 == null) {
                return null;
            }
            return a(b2);
        }
    }

    public final String a() {
        String[] strArr;
        synchronized (this.f32389b) {
            for (String str : f32388a) {
                String string = this.f32389b.getString("|T|" + this.f32390c + "|" + str, null);
                if (string != null && !string.isEmpty()) {
                    String str2 = string;
                    if (string.startsWith("{")) {
                        str2 = a(string);
                    }
                    return str2;
                }
            }
            return null;
        }
    }

    public final String b() {
        synchronized (this.f32389b) {
            String c2 = c();
            if (c2 != null) {
                return c2;
            }
            return d();
        }
    }
}
