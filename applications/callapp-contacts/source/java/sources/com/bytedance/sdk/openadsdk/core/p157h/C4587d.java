package com.bytedance.sdk.openadsdk.core.p157h;

import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.bytedance.sdk.openadsdk.core.h.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/h/d.class */
public class C4587d {

    /* renamed from: a */
    private static AtomicInteger f16730a = new AtomicInteger(1);

    /* JADX WARN: Removed duplicated region for block: B:20:0x0040  */
    /* JADX WARN: Removed duplicated region for block: B:58:? A[RETURN, SYNTHETIC] */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static void m34918a(int r4) {
        /*
            r0 = 1
            r5 = r0
            r0 = 1
            r6 = r0
            r0 = r4
            r1 = 1
            if (r0 == r1) goto Lf
            r0 = r4
            r1 = 2
            if (r0 == r1) goto Lf
            return
        Lf:
            java.util.concurrent.atomic.AtomicInteger r0 = com.bytedance.sdk.openadsdk.core.p157h.C4587d.f16730a     // Catch: java.lang.Throwable -> L33
            int r0 = r0.get()     // Catch: java.lang.Throwable -> L33
            r7 = r0
            r0 = r7
            r1 = r4
            if (r0 == r1) goto L2e
            java.util.concurrent.atomic.AtomicInteger r0 = com.bytedance.sdk.openadsdk.core.p157h.C4587d.f16730a     // Catch: java.lang.Throwable -> L27
            r1 = r4
            r0.set(r1)     // Catch: java.lang.Throwable -> L27
            r0 = r5
            r4 = r0
            goto L3c
        L27:
            r8 = move-exception
            r0 = r6
            r4 = r0
            goto L37
        L2e:
            r0 = 0
            r4 = r0
            goto L3c
        L33:
            r8 = move-exception
            r0 = 0
            r4 = r0
        L37:
            r0 = r8
            r0.printStackTrace()
        L3c:
            r0 = r4
            if (r0 == 0) goto Lc5
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            java.lang.String r2 = "switch status changed: "
            r1.<init>(r2)
            r8 = r0
            r0 = r8
            boolean r1 = m34919a()
            java.lang.StringBuilder r0 = r0.append(r1)
            java.lang.String r0 = "SdkSwitch"
            r1 = r8
            java.lang.String r1 = r1.toString()
            int r0 = android.util.Log.e(r0, r1)
            boolean r0 = m34919a()
            if (r0 == 0) goto L69
            com.bytedance.sdk.openadsdk.core.C4600n.m34812b()
            return
        L69:
            com.bytedance.sdk.openadsdk.d.c r0 = com.bytedance.sdk.openadsdk.core.C4600n.m34810c()     // Catch: java.lang.Throwable -> L90
            if (r0 == 0) goto L75
            com.bytedance.sdk.openadsdk.d.c r0 = com.bytedance.sdk.openadsdk.core.C4600n.m34810c()     // Catch: java.lang.Throwable -> L90
            r0.mo33795b()     // Catch: java.lang.Throwable -> L90
        L75:
            com.bytedance.sdk.openadsdk.d.c r0 = com.bytedance.sdk.openadsdk.core.C4600n.m34808e()     // Catch: java.lang.Throwable -> L90 java.lang.Throwable -> L90
            if (r0 == 0) goto L81
            com.bytedance.sdk.openadsdk.d.c r0 = com.bytedance.sdk.openadsdk.core.C4600n.m34808e()     // Catch: java.lang.Throwable -> L90
            r0.mo33795b()     // Catch: java.lang.Throwable -> L90
        L81:
            com.bytedance.sdk.openadsdk.d.c r0 = com.bytedance.sdk.openadsdk.core.C4600n.m34809d()     // Catch: java.lang.Throwable -> L90 java.lang.Throwable -> L90
            if (r0 == 0) goto L97
            com.bytedance.sdk.openadsdk.d.c r0 = com.bytedance.sdk.openadsdk.core.C4600n.m34809d()     // Catch: java.lang.Throwable -> L90
            r0.mo33795b()     // Catch: java.lang.Throwable -> L90
            goto L97
        L90:
            r8 = move-exception
            r0 = r8
            r0.printStackTrace()
        L97:
            com.bytedance.sdk.openadsdk.m.a r0 = com.bytedance.sdk.openadsdk.core.C4600n.m34806g()     // Catch: java.lang.Throwable -> La8
            if (r0 == 0) goto Laf
            com.bytedance.sdk.openadsdk.m.a r0 = com.bytedance.sdk.openadsdk.core.C4600n.m34806g()     // Catch: java.lang.Throwable -> La8
            r0.mo33137b()     // Catch: java.lang.Throwable -> La8
            goto Laf
        La8:
            r8 = move-exception
            r0 = r8
            r0.printStackTrace()
        Laf:
            com.bytedance.sdk.openadsdk.i.b.a r0 = com.bytedance.sdk.openadsdk.core.C4600n.m34804i()     // Catch: java.lang.Throwable -> Lbe
            if (r0 == 0) goto Lbd
            com.bytedance.sdk.openadsdk.i.b.a r0 = com.bytedance.sdk.openadsdk.core.C4600n.m34804i()     // Catch: java.lang.Throwable -> Lbe
            r0.mo33492b()     // Catch: java.lang.Throwable -> Lbe
        Lbd:
            return
        Lbe:
            r8 = move-exception
            r0 = r8
            r0.printStackTrace()
        Lc5:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bytedance.sdk.openadsdk.core.p157h.C4587d.m34918a(int):void");
    }

    /* renamed from: a */
    public static boolean m34919a() {
        return f16730a.get() == 1;
    }
}
