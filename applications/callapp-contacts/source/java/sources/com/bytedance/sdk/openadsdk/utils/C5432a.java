package com.bytedance.sdk.openadsdk.utils;

import android.text.TextUtils;
import com.bytedance.sdk.openadsdk.p146c.C4353a;
import java.security.SecureRandom;
import org.json.JSONObject;
/* renamed from: com.bytedance.sdk.openadsdk.utils.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/utils/a.class */
public class C5432a {
    /* JADX WARN: Code restructure failed: missing block: B:5:0x0012, code lost:
        if (r0.length() != 32) goto L6;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m32336a() {
        /*
            r0 = 16
            java.lang.String r0 = m32335a(r0)
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L15
            r0 = r3
            r4 = r0
            r0 = r3
            int r0 = r0.length()
            r1 = 32
            if (r0 == r1) goto L17
        L15:
            r0 = 0
            r4 = r0
        L17:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.utils.C5432a.m32336a():java.lang.String");
    }

    /* renamed from: a */
    public static String m32335a(int i) {
        try {
            byte[] bArr = new byte[i];
            new SecureRandom().nextBytes(bArr);
            return C5465i.m32147a(bArr);
        } catch (Exception e) {
            return null;
        }
    }

    /* renamed from: a */
    public static String m32334a(String str) {
        if (TextUtils.isEmpty(str)) {
            return str;
        }
        String m32336a = m32336a();
        String m32333a = m32333a(m32336a, 32);
        String m32331b = m32331b();
        String str2 = null;
        if (m32333a != null) {
            str2 = null;
            if (m32331b != null) {
                str2 = C4353a.m35736a(str, m32331b, m32333a);
            }
        }
        return 3 + m32336a + m32331b + str2;
    }

    /* renamed from: a */
    public static String m32333a(String str, int i) {
        if (str == null || str.length() != i) {
            return null;
        }
        int i2 = i / 2;
        return str.substring(i2, i) + str.substring(0, i2);
    }

    /* renamed from: a */
    public static JSONObject m32332a(JSONObject jSONObject) {
        JSONObject jSONObject2 = new JSONObject();
        if (jSONObject == null) {
            return jSONObject2;
        }
        try {
            String m32334a = m32334a(jSONObject.toString());
            if (!TextUtils.isEmpty(m32334a)) {
                jSONObject2.put("message", m32334a);
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
                C5478q.m32119a(th2.getMessage());
            }
        }
        return jSONObject2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0012, code lost:
        if (r0.length() != 16) goto L6;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m32331b() {
        /*
            r0 = 8
            java.lang.String r0 = m32335a(r0)
            r3 = r0
            r0 = r3
            if (r0 == 0) goto L15
            r0 = r3
            r4 = r0
            r0 = r3
            int r0 = r0.length()
            r1 = 16
            if (r0 == r1) goto L17
        L15:
            r0 = 0
            r4 = r0
        L17:
            r0 = r4
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.utils.C5432a.m32331b():java.lang.String");
    }

    /* renamed from: b */
    public static String m32330b(String str) {
        String str2 = str;
        if (!TextUtils.isEmpty(str)) {
            str2 = str;
            if (str.length() >= 49) {
                String m32333a = m32333a(str.substring(1, 33), 32);
                String substring = str.substring(33, 49);
                str2 = str;
                if (substring != null) {
                    str2 = str;
                    if (m32333a != null) {
                        str2 = C4353a.m35735b(str.substring(49), substring, m32333a);
                    }
                }
            }
        }
        return str2;
    }
}
