package com.bytedance.sdk.openadsdk.utils;

import android.text.TextUtils;
import java.security.SecureRandom;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/a.class */
public class a {
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0012, code lost:
        if (r0.length() != 32) goto L_0x0015;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a() {
        /*
            r0 = 16
            java.lang.String r0 = a(r0)
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L_0x0015
            r0 = r3
            r4 = r0
            r0 = r3
            int r0 = r0.length()
            r1 = 32
            if (r0 == r1) goto L_0x0017
        L_0x0015:
            r0 = 0
            r4 = r0
        L_0x0017:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.utils.a.a():java.lang.String");
    }

    public static String a(int i) {
        try {
            byte[] bArr = new byte[i];
            new SecureRandom().nextBytes(bArr);
            return i.a(bArr);
        } catch (Exception e) {
            return null;
        }
    }

    public static String a(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String a2 = a();
        String a3 = a(a2, 32);
        String b2 = b();
        String str2 = null;
        if (a3 != null) {
            str2 = null;
            if (b2 != null) {
                str2 = com.bytedance.sdk.openadsdk.c.a.a(str, b2, a3);
            }
        }
        return 3 + a2 + b2 + str2;
    }

    public static String a(String str, int i) {
        if (str == null || str.length() != i) {
            return null;
        }
        int i2 = i / 2;
        return str.substring(i2, i) + str.substring(0, i2);
    }

    public static JSONObject a(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        if (jSONObject == null) {
            return jSONObject2;
        }
        try {
            String a2 = a(jSONObject.toString());
            if (!TextUtils.isEmpty(a2)) {
                jSONObject2.put("message", a2);
                jSONObject2.put("cypher", 3);
            } else {
                jSONObject2.put("message", jSONObject.toString());
                jSONObject2.put("cypher", 0);
            }
        } catch (Throwable th) {
            try {
                jSONObject2.put("message", jSONObject.toString());
                jSONObject2.put("cypher", 0);
            } catch (Throwable th2) {
                q.a(th2.getMessage());
            }
        }
        return jSONObject2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0012, code lost:
        if (r0.length() != 16) goto L_0x0015;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String b() {
        /*
            r0 = 8
            java.lang.String r0 = a(r0)
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L_0x0015
            r0 = r3
            r4 = r0
            r0 = r3
            int r0 = r0.length()
            r1 = 16
            if (r0 == r1) goto L_0x0017
        L_0x0015:
            r0 = 0
            r4 = r0
        L_0x0017:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.utils.a.b():java.lang.String");
    }

    public static String b(String str) {
        String str2 = str;
        if (!TextUtils.isEmpty(str)) {
            str2 = str;
            if (str.length() >= 49) {
                String a2 = a(str.substring(1, 33), 32);
                String substring = str.substring(33, 49);
                str2 = str;
                if (substring != null) {
                    str2 = str;
                    if (a2 != null) {
                        str2 = com.bytedance.sdk.openadsdk.c.a.b(str.substring(49), substring, a2);
                    }
                }
            }
        }
        return str2;
    }
}
