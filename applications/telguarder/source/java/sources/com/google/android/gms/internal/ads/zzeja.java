package com.google.android.gms.internal.ads;

import java.io.PrintWriter;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeja.class */
public final class zzeja {
    private static final zzeiz zzild;
    private static final int zzile;

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeja$zza.class */
    static final class zza extends zzeiz {
        zza() {
        }

        @Override // com.google.android.gms.internal.ads.zzeiz
        public final void zza(Throwable th, PrintWriter printWriter) {
            th.printStackTrace(printWriter);
        }

        @Override // com.google.android.gms.internal.ads.zzeiz
        public final void zza(Throwable th, Throwable th2) {
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00a0  */
    static {
        /*
            r0 = 1
            r5 = r0
            java.lang.Integer r0 = zzbfx()     // Catch: java.lang.Throwable -> L42
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L1e
            r0 = r6
            int r0 = r0.intValue()     // Catch: java.lang.Throwable -> L3e
            r1 = 19
            if (r0 < r1) goto L1e
            com.google.android.gms.internal.ads.zzejf r0 = new com.google.android.gms.internal.ads.zzejf     // Catch: java.lang.Throwable -> L3e
            r7 = r0
            r0 = r7
            r0.<init>()     // Catch: java.lang.Throwable -> L3e
            goto L95
        L1e:
            java.lang.String r0 = "com.google.devtools.build.android.desugar.runtime.twr_disable_mimic"
            boolean r0 = java.lang.Boolean.getBoolean(r0)     // Catch: java.lang.Throwable -> L3e
            r1 = 1
            r0 = r0 ^ r1
            if (r0 == 0) goto L33
            com.google.android.gms.internal.ads.zzejd r0 = new com.google.android.gms.internal.ads.zzejd     // Catch: java.lang.Throwable -> L3e
            r1 = r0
            r1.<init>()     // Catch: java.lang.Throwable -> L3e
            r7 = r0
            goto L95
        L33:
            com.google.android.gms.internal.ads.zzeja$zza r0 = new com.google.android.gms.internal.ads.zzeja$zza     // Catch: java.lang.Throwable -> L3e
            r1 = r0
            r1.<init>()     // Catch: java.lang.Throwable -> L3e
            r7 = r0
            goto L95
        L3e:
            r7 = move-exception
            goto L45
        L42:
            r7 = move-exception
            r0 = 0
            r6 = r0
        L45:
            java.io.PrintStream r0 = java.lang.System.err
            r8 = r0
            java.lang.Class<com.google.android.gms.internal.ads.zzeja$zza> r0 = com.google.android.gms.internal.ads.zzeja.zza.class
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
            com.google.android.gms.internal.ads.zzeja$zza r0 = new com.google.android.gms.internal.ads.zzeja$zza
            r1 = r0
            r1.<init>()
            r7 = r0
        L95:
            r0 = r7
            com.google.android.gms.internal.ads.zzeja.zzild = r0
            r0 = r6
            if (r0 != 0) goto La0
            goto La5
        La0:
            r0 = r6
            int r0 = r0.intValue()
            r5 = r0
        La5:
            r0 = r5
            com.google.android.gms.internal.ads.zzeja.zzile = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzeja.m2849clinit():void");
    }

    public static void zza(Throwable th, PrintWriter printWriter) {
        zzild.zza(th, printWriter);
    }

    public static void zza(Throwable th, Throwable th2) {
        zzild.zza(th, th2);
    }

    private static Integer zzbfx() {
        try {
            return (Integer) Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
        } catch (Exception e) {
            System.err.println("Failed to retrieve value from android.os.Build$VERSION.SDK_INT due to the following exception.");
            e.printStackTrace(System.err);
            return null;
        }
    }
}
