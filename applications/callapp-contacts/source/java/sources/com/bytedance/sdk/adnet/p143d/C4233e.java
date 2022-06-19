package com.bytedance.sdk.adnet.p143d;

import android.content.Context;
import com.bytedance.sdk.adnet.C4151a;
import java.util.LinkedHashMap;
/* renamed from: com.bytedance.sdk.adnet.d.e */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/d/e.class */
public class C4233e {
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String m36082a(android.content.Context r5, int r6) {
        /*
            java.lang.String r0 = ""
            r7 = r0
            r0 = r6
            r1 = 1
            if (r0 == r1) goto Lb
            goto L1c
        Lb:
            com.bytedance.sdk.adnet.c.b r0 = com.bytedance.sdk.adnet.C4151a.m36311a()     // Catch: java.lang.Exception -> L2d
            r1 = r5
            java.lang.String r2 = "tnc_config"
            java.lang.String r3 = ""
            java.lang.String r0 = r0.mo33448a(r1, r2, r3)     // Catch: java.lang.Exception -> L2d
            r5 = r0
            goto L1f
        L1c:
            java.lang.String r0 = ""
            r5 = r0
        L1f:
            r0 = r5
            boolean r0 = r0 instanceof java.lang.String
            if (r0 == 0) goto L2b
            r0 = r5
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r7 = r0
        L2b:
            r0 = r7
            return r0
        L2d:
            r5 = move-exception
            goto L1c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.adnet.p143d.C4233e.m36082a(android.content.Context, int):java.lang.String");
    }

    /* renamed from: a */
    public static void m36081a(Context context, int i, String str) {
        try {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            if (i == 1) {
                linkedHashMap.put("tnc_config", str);
            }
            C4228d.m36086b("MultiProcessFileUtils", "saveData = ".concat(String.valueOf(str)));
            C4151a.m36311a().mo33447a(context, linkedHashMap);
        } catch (Exception e) {
        }
    }
}
