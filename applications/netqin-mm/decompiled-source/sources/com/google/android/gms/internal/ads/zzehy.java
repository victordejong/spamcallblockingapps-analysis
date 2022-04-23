package com.google.android.gms.internal.ads;

import java.io.PrintWriter;
import p131c.p161d.p170b.p224d.p252g.p253a.n60;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzehy.class */
public final class zzehy {

    /* renamed from: a */
    public static final n60 f28041a;

    /* renamed from: com.google.android.gms.internal.ads.zzehy$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzehy$a.class */
    public static final class C7261a extends n60 {
        @Override // p131c.p161d.p170b.p224d.p252g.p253a.n60
        /* renamed from: a */
        public final void mo12541a(Throwable th, PrintWriter printWriter) {
            th.printStackTrace(printWriter);
        }

        @Override // p131c.p161d.p170b.p224d.p252g.p253a.n60
        /* renamed from: a */
        public final void mo12540a(Throwable th, Throwable th2) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x009b  */
    /* JADX WARN: Removed duplicated region for block: B:24:? A[RETURN, SYNTHETIC] */
    static {
        /*
            java.lang.Integer r0 = m12544a()     // Catch: all -> 0x0040
            r5 = r0
            r0 = r5
            if (r0 == 0) goto L_0x001c
            r0 = r5
            int r0 = r0.intValue()     // Catch: all -> 0x003c
            r1 = 19
            if (r0 < r1) goto L_0x001c
            c.d.b.d.g.a.r60 r0 = new c.d.b.d.g.a.r60     // Catch: all -> 0x003c
            r6 = r0
            r0 = r6
            r0.<init>()     // Catch: all -> 0x003c
            goto L_0x0090
        L_0x001c:
            java.lang.String r0 = "com.google.devtools.build.android.desugar.runtime.twr_disable_mimic"
            boolean r0 = java.lang.Boolean.getBoolean(r0)     // Catch: all -> 0x003c
            r1 = 1
            r0 = r0 ^ r1
            if (r0 == 0) goto L_0x0031
            c.d.b.d.g.a.q60 r0 = new c.d.b.d.g.a.q60     // Catch: all -> 0x003c
            r1 = r0
            r1.<init>()     // Catch: all -> 0x003c
            r6 = r0
            goto L_0x0090
        L_0x0031:
            com.google.android.gms.internal.ads.zzehy$a r0 = new com.google.android.gms.internal.ads.zzehy$a     // Catch: all -> 0x003c
            r1 = r0
            r1.<init>()     // Catch: all -> 0x003c
            r6 = r0
            goto L_0x0090
        L_0x003c:
            r6 = move-exception
            goto L_0x0043
        L_0x0040:
            r6 = move-exception
            r0 = 0
            r5 = r0
        L_0x0043:
            java.io.PrintStream r0 = java.lang.System.err
            r7 = r0
            java.lang.Class<com.google.android.gms.internal.ads.zzehy$a> r0 = com.google.android.gms.internal.ads.zzehy.C7261a.class
            java.lang.String r0 = r0.getName()
            r8 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r2 = r8
            java.lang.String r2 = java.lang.String.valueOf(r2)
            int r2 = r2.length()
            r3 = 133(0x85, float:1.86E-43)
            int r2 = r2 + r3
            r1.<init>(r2)
            r9 = r0
            r0 = r9
            java.lang.String r1 = "An error has occurred when initializing the try-with-resources desuguring strategy. The default strategy "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r9
            r1 = r8
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r9
            java.lang.String r1 = "will be used. The error is: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r7
            r1 = r9
            java.lang.String r1 = r1.toString()
            r0.println(r1)
            r0 = r6
            java.io.PrintStream r1 = java.lang.System.err
            r0.printStackTrace(r1)
            com.google.android.gms.internal.ads.zzehy$a r0 = new com.google.android.gms.internal.ads.zzehy$a
            r1 = r0
            r1.<init>()
            r6 = r0
        L_0x0090:
            r0 = r6
            com.google.android.gms.internal.ads.zzehy.f28041a = r0
            r0 = r5
            if (r0 != 0) goto L_0x009b
            goto L_0x00a0
        L_0x009b:
            r0 = r5
            int r0 = r0.intValue()
        L_0x00a0:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzehy.m41244clinit():void");
    }

    /* renamed from: a */
    public static Integer m12544a() {
        try {
            return (Integer) Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
        } catch (Exception e) {
            System.err.println("Failed to retrieve value from android.os.Build$VERSION.SDK_INT due to the following exception.");
            e.printStackTrace(System.err);
            return null;
        }
    }

    /* renamed from: a */
    public static void m12543a(Throwable th, PrintWriter printWriter) {
        f28041a.mo12541a(th, printWriter);
    }

    /* renamed from: a */
    public static void m12542a(Throwable th, Throwable th2) {
        f28041a.mo12540a(th, th2);
    }
}
