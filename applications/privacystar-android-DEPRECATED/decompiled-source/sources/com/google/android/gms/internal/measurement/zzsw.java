package com.google.android.gms.internal.measurement;

import java.io.PrintStream;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzsw.class */
public final class zzsw {
    private static final zzsx zzbrt;
    private static final int zzbru;

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzsw$zza.class */
    static final class zza extends zzsx {
        zza() {
        }

        @Override // com.google.android.gms.internal.measurement.zzsx
        public final void zza(Throwable th, PrintStream printStream) {
            th.printStackTrace(printStream);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00a0  */
    static {
        /*
            r0 = 1
            r5 = r0
            java.lang.Integer r0 = zztk()     // Catch: Throwable -> 0x0042
            r6 = r0
            r0 = r6
            if (r0 == 0) goto L_0x0022
            r0 = r6
            int r0 = r0.intValue()     // Catch: Throwable -> 0x001e
            r1 = 19
            if (r0 < r1) goto L_0x0022
            com.google.android.gms.internal.measurement.zztb r0 = new com.google.android.gms.internal.measurement.zztb     // Catch: Throwable -> 0x001e
            r7 = r0
            r0 = r7
            r0.<init>()     // Catch: Throwable -> 0x001e
            goto L_0x0095
        L_0x001e:
            r7 = move-exception
            goto L_0x0045
        L_0x0022:
            java.lang.String r0 = "com.google.devtools.build.android.desugar.runtime.twr_disable_mimic"
            boolean r0 = java.lang.Boolean.getBoolean(r0)     // Catch: Throwable -> 0x001e
            r1 = 1
            r0 = r0 ^ r1
            if (r0 == 0) goto L_0x0037
            com.google.android.gms.internal.measurement.zzta r0 = new com.google.android.gms.internal.measurement.zzta     // Catch: Throwable -> 0x001e
            r1 = r0
            r1.<init>()     // Catch: Throwable -> 0x001e
            r7 = r0
            goto L_0x0095
        L_0x0037:
            com.google.android.gms.internal.measurement.zzsw$zza r0 = new com.google.android.gms.internal.measurement.zzsw$zza     // Catch: Throwable -> 0x001e
            r1 = r0
            r1.<init>()     // Catch: Throwable -> 0x001e
            r7 = r0
            goto L_0x0095
        L_0x0042:
            r7 = move-exception
            r0 = 0
            r6 = r0
        L_0x0045:
            java.io.PrintStream r0 = java.lang.System.err
            r8 = r0
            java.lang.Class<com.google.android.gms.internal.measurement.zzsw$zza> r0 = com.google.android.gms.internal.measurement.zzsw.zza.class
            java.lang.String r0 = r0.getName()
            r9 = r0
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            r1 = r0
            r2 = r9
            java.lang.String r2 = java.lang.String.valueOf(r2)
            int r2 = r2.length()
            r3 = 132(0x84, float:1.85E-43)
            int r2 = r2 + r3
            r1.<init>(r2)
            r10 = r0
            r0 = r10
            java.lang.String r1 = "An error has occured when initializing the try-with-resources desuguring strategy. The default strategy "
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
            com.google.android.gms.internal.measurement.zzsw$zza r0 = new com.google.android.gms.internal.measurement.zzsw$zza
            r1 = r0
            r1.<init>()
            r7 = r0
        L_0x0095:
            r0 = r7
            com.google.android.gms.internal.measurement.zzsw.zzbrt = r0
            r0 = r6
            if (r0 != 0) goto L_0x00a0
            goto L_0x00a5
        L_0x00a0:
            r0 = r6
            int r0 = r0.intValue()
            r5 = r0
        L_0x00a5:
            r0 = r5
            com.google.android.gms.internal.measurement.zzsw.zzbru = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzsw.m1303clinit():void");
    }

    public static void zza(Throwable th, PrintStream printStream) {
        zzbrt.zza(th, printStream);
    }

    private static Integer zztk() {
        try {
            return (Integer) Class.forName("android.os.Build$VERSION").getField("SDK_INT").get(null);
        } catch (Exception e) {
            System.err.println("Failed to retrieve value from android.os.Build$VERSION.SDK_INT due to the following exception.");
            e.printStackTrace(System.err);
            return null;
        }
    }
}
