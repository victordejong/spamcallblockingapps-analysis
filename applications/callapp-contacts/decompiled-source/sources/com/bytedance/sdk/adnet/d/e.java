package com.bytedance.sdk.adnet.d;

import android.content.Context;
import com.bytedance.sdk.adnet.a;
import java.util.LinkedHashMap;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/adnet/d/e.class */
public class e {
    /* JADX WARN: Removed duplicated region for block: B:8:0x0026  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.lang.String a(android.content.Context r5, int r6) {
        /*
            java.lang.String r0 = ""
            r7 = r0
            r0 = r6
            r1 = 1
            if (r0 == r1) goto L_0x000b
            goto L_0x001c
        L_0x000b:
            com.bytedance.sdk.adnet.c.b r0 = com.bytedance.sdk.adnet.a.a()     // Catch: Exception -> 0x002d
            r1 = r5
            java.lang.String r2 = "tnc_config"
            java.lang.String r3 = ""
            java.lang.String r0 = r0.a(r1, r2, r3)     // Catch: Exception -> 0x002d
            r5 = r0
            goto L_0x001f
        L_0x001c:
            java.lang.String r0 = ""
            r5 = r0
        L_0x001f:
            r0 = r5
            boolean r0 = r0 instanceof java.lang.String
            if (r0 == 0) goto L_0x002b
            r0 = r5
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r7 = r0
        L_0x002b:
            r0 = r7
            return r0
        L_0x002d:
            r5 = move-exception
            goto L_0x001c
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.adnet.d.e.a(android.content.Context, int):java.lang.String");
    }

    public static void a(Context context, int i, String str) {
        try {
            LinkedHashMap linkedHashMap = new LinkedHashMap();
            if (i == 1) {
                linkedHashMap.put("tnc_config", str);
            }
            d.b("MultiProcessFileUtils", "saveData = ".concat(String.valueOf(str)));
            a.a().a(context, linkedHashMap);
        } catch (Exception e) {
        }
    }
}
