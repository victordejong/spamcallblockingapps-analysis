package com.bytedance.sdk.openadsdk.p186m;

import android.text.TextUtils;
import java.util.Random;
/* renamed from: com.bytedance.sdk.openadsdk.m.e */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/m/e.class */
public class C5064e {
    /* renamed from: a */
    private static int m33135a(int i) {
        int i2 = 2;
        if (i != 2) {
            i2 = 3;
            if (i != 3) {
                i2 = 4;
                if (i != 4) {
                    i2 = 5;
                    if (i != 5) {
                        i2 = 5;
                        if (i != 15) {
                            return -1;
                        }
                    }
                }
            }
        }
        return i2;
    }

    /* renamed from: a */
    private static String m33134a(String str) {
        String str2 = str;
        if (!TextUtils.isEmpty(str)) {
            str2 = str;
            try {
                String replace = str.replace("[ss_random]", String.valueOf(new Random().nextLong()));
                str2 = replace;
                str2 = replace.replace("[ss_timestamp]", String.valueOf(System.currentTimeMillis()));
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return str2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x004d, code lost:
        if (r0.contains("__TS__") != false) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x007e, code lost:
        if (r5.contains("__UID__") != false) goto L18;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<java.lang.String> m33133a(java.util.List<java.lang.String> r5, boolean r6) {
        /*
            android.content.Context r0 = com.bytedance.sdk.openadsdk.core.C4600n.m34815a()
            java.lang.String r0 = com.bytedance.sdk.openadsdk.core.C4590i.m34846a(r0)
            r7 = r0
            r0 = r5
            if (r0 != 0) goto L13
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            return r0
        L13:
            java.util.ArrayList r0 = new java.util.ArrayList
            r1 = r0
            r1.<init>()
            r8 = r0
            r0 = r5
            java.util.Iterator r0 = r0.iterator()
            r9 = r0
        L23:
            r0 = r9
            boolean r0 = r0.hasNext()
            if (r0 == 0) goto Lb2
            r0 = r9
            java.lang.Object r0 = r0.next()
            java.lang.String r0 = (java.lang.String) r0
            r10 = r0
            r0 = r10
            java.lang.String r1 = "{TS}"
            boolean r0 = r0.contains(r1)
            if (r0 != 0) goto L50
            r0 = r10
            r5 = r0
            r0 = r10
            java.lang.String r1 = "__TS__"
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L6c
        L50:
            long r0 = java.lang.System.currentTimeMillis()
            r11 = r0
            r0 = r10
            java.lang.String r1 = "{TS}"
            r2 = r11
            java.lang.String r2 = java.lang.String.valueOf(r2)
            java.lang.String r0 = r0.replace(r1, r2)
            java.lang.String r1 = "__TS__"
            r2 = r11
            java.lang.String r2 = java.lang.String.valueOf(r2)
            java.lang.String r0 = r0.replace(r1, r2)
            r5 = r0
        L6c:
            r0 = r5
            java.lang.String r1 = "{UID}"
            boolean r0 = r0.contains(r1)
            if (r0 != 0) goto L81
            r0 = r5
            r10 = r0
            r0 = r5
            java.lang.String r1 = "__UID__"
            boolean r0 = r0.contains(r1)
            if (r0 == 0) goto L9a
        L81:
            r0 = r5
            r10 = r0
            r0 = r7
            boolean r0 = android.text.TextUtils.isEmpty(r0)
            if (r0 != 0) goto L9a
            r0 = r5
            java.lang.String r1 = "{UID}"
            r2 = r7
            java.lang.String r0 = r0.replace(r1, r2)
            java.lang.String r1 = "__UID__"
            r2 = r7
            java.lang.String r0 = r0.replace(r1, r2)
            r10 = r0
        L9a:
            r0 = r10
            r5 = r0
            r0 = r6
            if (r0 == 0) goto La7
            r0 = r10
            java.lang.String r0 = m33134a(r0)
            r5 = r0
        La7:
            r0 = r8
            r1 = r5
            boolean r0 = r0.add(r1)
            goto L23
        Lb2:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.p186m.C5064e.m33133a(java.util.List, boolean):java.util.List");
    }

    /* JADX WARN: Code restructure failed: missing block: B:12:0x004b, code lost:
        if (r0.contains("__TS__") != false) goto L13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x007e, code lost:
        if (r11.contains("__UID__") != false) goto L18;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static java.util.List<java.lang.String> m33132a(java.util.List<java.lang.String> r5, boolean r6, com.bytedance.sdk.openadsdk.core.p154e.C4557i r7) {
        /*
            Method dump skipped, instructions count: 371
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.p186m.C5064e.m33132a(java.util.List, boolean, com.bytedance.sdk.openadsdk.core.e.i):java.util.List");
    }
}
