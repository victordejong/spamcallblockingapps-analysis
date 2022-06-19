package com.google.android.gms.internal.vision;

import android.content.Context;
import android.content.pm.PackageManager;
import io.agora.rtc.Constants;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzbc.class */
public final class zzbc {
    private static volatile zzcn<Boolean> zzfv = zzcn.zzbx();
    private static final Object zzfw = new Object();

    /* JADX WARN: Removed duplicated region for block: B:30:0x008f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean zza(android.content.Context r4, android.net.Uri r5) {
        /*
            r0 = r5
            java.lang.String r0 = r0.getAuthority()
            r5 = r0
            java.lang.String r0 = "com.google.android.gms.phenotype"
            r1 = r5
            boolean r0 = r0.equals(r1)
            r6 = r0
            r0 = 0
            r7 = r0
            r0 = r6
            if (r0 != 0) goto L1c
            r0 = r5
            java.lang.String r0 = java.lang.String.valueOf(r0)
            int r0 = r0.length()
            r0 = 0
            return r0
        L1c:
            com.google.android.gms.internal.vision.zzcn<java.lang.Boolean> r0 = com.google.android.gms.internal.vision.zzbc.zzfv
            boolean r0 = r0.isPresent()
            if (r0 == 0) goto L32
            com.google.android.gms.internal.vision.zzcn<java.lang.Boolean> r0 = com.google.android.gms.internal.vision.zzbc.zzfv
            java.lang.Object r0 = r0.get()
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            return r0
        L32:
            java.lang.Object r0 = com.google.android.gms.internal.vision.zzbc.zzfw
            r5 = r0
            r0 = r5
            monitor-enter(r0)
            com.google.android.gms.internal.vision.zzcn<java.lang.Boolean> r0 = com.google.android.gms.internal.vision.zzbc.zzfv     // Catch: java.lang.Throwable -> Lb3
            boolean r0 = r0.isPresent()     // Catch: java.lang.Throwable -> Lb3
            if (r0 == 0) goto L52
            com.google.android.gms.internal.vision.zzcn<java.lang.Boolean> r0 = com.google.android.gms.internal.vision.zzbc.zzfv     // Catch: java.lang.Throwable -> Lb3
            java.lang.Object r0 = r0.get()     // Catch: java.lang.Throwable -> Lb3
            java.lang.Boolean r0 = (java.lang.Boolean) r0     // Catch: java.lang.Throwable -> Lb3
            boolean r0 = r0.booleanValue()     // Catch: java.lang.Throwable -> Lb3
            r6 = r0
            r0 = r5
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lb3
            r0 = r6
            return r0
        L52:
            java.lang.String r0 = "com.google.android.gms"
            r1 = r4
            java.lang.String r1 = r1.getPackageName()     // Catch: java.lang.Throwable -> Lb3
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> Lb3
            if (r0 == 0) goto L64
        L5e:
            r0 = 1
            r8 = r0
            goto L88
        L64:
            r0 = r4
            android.content.pm.PackageManager r0 = r0.getPackageManager()     // Catch: java.lang.Throwable -> Lb3
            java.lang.String r1 = "com.google.android.gms.phenotype"
            r2 = 0
            android.content.pm.ProviderInfo r0 = r0.resolveContentProvider(r1, r2)     // Catch: java.lang.Throwable -> Lb3
            r9 = r0
            r0 = r9
            if (r0 == 0) goto L85
            java.lang.String r0 = "com.google.android.gms"
            r1 = r9
            java.lang.String r1 = r1.packageName     // Catch: java.lang.Throwable -> Lb3
            boolean r0 = r0.equals(r1)     // Catch: java.lang.Throwable -> Lb3
            if (r0 == 0) goto L85
            goto L5e
        L85:
            r0 = 0
            r8 = r0
        L88:
            r0 = r7
            r6 = r0
            r0 = r8
            if (r0 == 0) goto L9a
            r0 = r7
            r6 = r0
            r0 = r4
            boolean r0 = zzh(r0)     // Catch: java.lang.Throwable -> Lb3
            if (r0 == 0) goto L9a
            r0 = 1
            r6 = r0
        L9a:
            r0 = r6
            java.lang.Boolean r0 = java.lang.Boolean.valueOf(r0)     // Catch: java.lang.Throwable -> Lb3
            com.google.android.gms.internal.vision.zzcn r0 = com.google.android.gms.internal.vision.zzcn.zzb(r0)     // Catch: java.lang.Throwable -> Lb3
            com.google.android.gms.internal.vision.zzbc.zzfv = r0     // Catch: java.lang.Throwable -> Lb3
            r0 = r5
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lb3
            com.google.android.gms.internal.vision.zzcn<java.lang.Boolean> r0 = com.google.android.gms.internal.vision.zzbc.zzfv     // Catch: java.lang.Throwable -> Lb3
            java.lang.Object r0 = r0.get()
            java.lang.Boolean r0 = (java.lang.Boolean) r0
            boolean r0 = r0.booleanValue()
            return r0
        Lb3:
            r4 = move-exception
            r0 = r5
            monitor-exit(r0)     // Catch: java.lang.Throwable -> Lb3
            r0 = r4
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.vision.zzbc.zza(android.content.Context, android.net.Uri):boolean");
    }

    private static boolean zzh(Context context) {
        try {
            return (context.getPackageManager().getApplicationInfo("com.google.android.gms", 0).flags & Constants.ERR_WATERMARK_READ) != 0;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }
}
