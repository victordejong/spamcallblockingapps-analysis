package com.google.android.gms.internal.consent_sdk;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/bk.class */
public final class bk {

    /* renamed from: a  reason: collision with root package name */
    private static final bj f28760a;

    /* renamed from: b  reason: collision with root package name */
    private static final int f28761b;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/consent_sdk/bk$a.class */
    static final class a extends bj {
        a() {
        }

        @Override // com.google.android.gms.internal.consent_sdk.bj
        public final void a(Throwable th, Throwable th2) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00a0  */
    static {
        /*
            r0 = 1
            r5 = r0
            java.lang.Integer r0 = a()     // Catch: all -> 0x0042
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x001e
            r0 = r6
            int r0 = r0.intValue()     // Catch: all -> 0x003e
            r1 = 19
            if (r0 < r1) goto L_0x001e
            com.google.android.gms.internal.consent_sdk.bp r0 = new com.google.android.gms.internal.consent_sdk.bp     // Catch: all -> 0x003e
            r7 = r0
            r0 = r7
            r0.<init>()     // Catch: all -> 0x003e
            goto L_0x0095
        L_0x001e:
            java.lang.String r0 = "com.google.devtools.build.android.desugar.runtime.twr_disable_mimic"
            boolean r0 = java.lang.Boolean.getBoolean(r0)     // Catch: all -> 0x003e
            r1 = 1
            r0 = r0 ^ r1
            if (r0 == 0) goto L_0x0033
            com.google.android.gms.internal.consent_sdk.bn r0 = new com.google.android.gms.internal.consent_sdk.bn     // Catch: all -> 0x003e
            r1 = r0
            r1.<init>()     // Catch: all -> 0x003e
            r7 = r0
            goto L_0x0095
        L_0x0033:
            com.google.android.gms.internal.consent_sdk.bk$a r0 = new com.google.android.gms.internal.consent_sdk.bk$a     // Catch: all -> 0x003e
            r1 = r0
            r1.<init>()     // Catch: all -> 0x003e
            r7 = r0
            goto L_0x0095
        L_0x003e:
            r7 = move-exception
            goto L_0x0045
        L_0x0042:
            r7 = move-exception
            r0 = 0
            r6 = r0
        L_0x0045:
            java.io.PrintStream r0 = java.lang.System.err
            r8 = r0
            java.lang.Class<com.google.android.gms.internal.consent_sdk.bk$a> r0 = com.google.android.gms.internal.consent_sdk.bk.a.class
            java.lang.String r0 = r0.getName()
            r9 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r2 = r9
            java.lang.String r2 = java.lang.String.valueOf(r2)
            int r2 = r2.length()
            r3 = 133(0x85, float:1.86E-43)
            int r2 = r2 + r3
            r1.<init>(r2)
            r10 = r0
            r0 = r10
            java.lang.String r1 = "An error has occurred when initializing the try-with-resources desuguring strategy. The default strategy "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r10
            r1 = r9
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r10
            java.lang.String r1 = "will be used. The error is: "
            java.lang.StringBuilder r0 = r0.append(r1)
            r0 = r8
            r1 = r10
            java.lang.String r1 = r1.toString()
            r0.println(r1)
            r0 = r7
            java.io.PrintStream r1 = java.lang.System.err
            r0.printStackTrace(r1)
            com.google.android.gms.internal.consent_sdk.bk$a r0 = new com.google.android.gms.internal.consent_sdk.bk$a
            r1 = r0
            r1.<init>()
            r7 = r0
        L_0x0095:
            r0 = r7
            com.google.android.gms.internal.consent_sdk.bk.f28760a = r0
            r0 = r6
            if (r0 != 0) goto L_0x00a0
            goto L_0x00a5
        L_0x00a0:
            r0 = r6
            int r0 = r0.intValue()
            r5 = r0
        L_0x00a5:
            r0 = r5
            com.google.android.gms.internal.consent_sdk.bk.f28761b = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.consent_sdk.bk.m5110clinit():void");
    }

    private static Integer a() {
        try {
            return (Integer) Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
        } catch (Exception e) {
            System.err.println("Failed to retrieve value from android.os.Build$VERSION.SDK_INT due to the following exception.");
            e.printStackTrace(System.err);
            return null;
        }
    }

    public static void a(Throwable th, Throwable th2) {
        f28760a.a(th, th2);
    }
}
