package com.bytedance.sdk.openadsdk.core.h;

import java.util.concurrent.atomic.AtomicInteger;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/h/d.class */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private static AtomicInteger f8973a = new AtomicInteger(1);

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:58:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void a(int r4) {
        /*
            r0 = 1
            r5 = r0
            r0 = 1
            r6 = r0
            r0 = r4
            r1 = 1
            if (r0 == r1) goto L_0x000f
            r0 = r4
            r1 = 2
            if (r0 == r1) goto L_0x000f
            return
        L_0x000f:
            java.util.concurrent.atomic.AtomicInteger r0 = com.bytedance.sdk.openadsdk.core.h.d.f8973a     // Catch: all -> 0x0033
            int r0 = r0.get()     // Catch: all -> 0x0033
            r7 = r0
            r0 = r7
            r1 = r4
            if (r0 == r1) goto L_0x002e
            java.util.concurrent.atomic.AtomicInteger r0 = com.bytedance.sdk.openadsdk.core.h.d.f8973a     // Catch: all -> 0x0027
            r1 = r4
            r0.set(r1)     // Catch: all -> 0x0027
            r0 = r5
            r4 = r0
            goto L_0x003c
        L_0x0027:
            r8 = move-exception
            r0 = r6
            r4 = r0
            goto L_0x0037
        L_0x002e:
            r0 = 0
            r4 = r0
            goto L_0x003c
        L_0x0033:
            r8 = move-exception
            r0 = 0
            r4 = r0
        L_0x0037:
            r0 = r8
            r0.printStackTrace()
        L_0x003c:
            r0 = r4
            if (r0 == 0) goto L_0x00c5
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            java.lang.String r2 = "switch status changed: "
            r1.<init>(r2)
            r8 = r0
            r0 = r8
            boolean r1 = a()
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = "SdkSwitch"
            r1 = r8
            java.lang.String r1 = r1.toString()
            int r0 = android.util.Log.e(r0, r1)
            boolean r0 = a()
            if (r0 == 0) goto L_0x0069
            com.bytedance.sdk.openadsdk.core.n.b()
            return
        L_0x0069:
            com.bytedance.sdk.openadsdk.d.c r0 = com.bytedance.sdk.openadsdk.core.n.c()     // Catch: all -> 0x0090
            if (r0 == 0) goto L_0x0075
            com.bytedance.sdk.openadsdk.d.c r0 = com.bytedance.sdk.openadsdk.core.n.c()     // Catch: all -> 0x0090
            r0.b()     // Catch: all -> 0x0090
        L_0x0075:
            com.bytedance.sdk.openadsdk.d.c r0 = com.bytedance.sdk.openadsdk.core.n.e()     // Catch: all -> 0x0090, all -> 0x0090
            if (r0 == 0) goto L_0x0081
            com.bytedance.sdk.openadsdk.d.c r0 = com.bytedance.sdk.openadsdk.core.n.e()     // Catch: all -> 0x0090
            r0.b()     // Catch: all -> 0x0090
        L_0x0081:
            com.bytedance.sdk.openadsdk.d.c r0 = com.bytedance.sdk.openadsdk.core.n.d()     // Catch: all -> 0x0090, all -> 0x0090
            if (r0 == 0) goto L_0x0097
            com.bytedance.sdk.openadsdk.d.c r0 = com.bytedance.sdk.openadsdk.core.n.d()     // Catch: all -> 0x0090
            r0.b()     // Catch: all -> 0x0090
            goto L_0x0097
        L_0x0090:
            r8 = move-exception
            r0 = r8
            r0.printStackTrace()
        L_0x0097:
            com.bytedance.sdk.openadsdk.m.a r0 = com.bytedance.sdk.openadsdk.core.n.g()     // Catch: all -> 0x00a8
            if (r0 == 0) goto L_0x00af
            com.bytedance.sdk.openadsdk.m.a r0 = com.bytedance.sdk.openadsdk.core.n.g()     // Catch: all -> 0x00a8
            r0.b()     // Catch: all -> 0x00a8
            goto L_0x00af
        L_0x00a8:
            r8 = move-exception
            r0 = r8
            r0.printStackTrace()
        L_0x00af:
            com.bytedance.sdk.openadsdk.i.b.a r0 = com.bytedance.sdk.openadsdk.core.n.i()     // Catch: all -> 0x00be
            if (r0 == 0) goto L_0x00bd
            com.bytedance.sdk.openadsdk.i.b.a r0 = com.bytedance.sdk.openadsdk.core.n.i()     // Catch: all -> 0x00be
            r0.b()     // Catch: all -> 0x00be
        L_0x00bd:
            return
        L_0x00be:
            r8 = move-exception
            r0 = r8
            r0.printStackTrace()
        L_0x00c5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.h.d.a(int):void");
    }

    public static boolean a() {
        return f8973a.get() == 1;
    }
}
