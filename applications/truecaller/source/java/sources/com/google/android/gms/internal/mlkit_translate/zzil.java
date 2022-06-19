package com.google.android.gms.internal.mlkit_translate;

import java.security.SecureRandom;
import java.util.Random;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzil.class */
public final class zzil {
    private static final int[] zza = {0, 0, 1, 2, 4, 8, 16, 32, 64, 128, 256};
    private static final int zzb = 11;
    private static zzip zzc = zzik.zza;
    private static Random zzd = new SecureRandom();

    /* JADX WARN: Removed duplicated region for block: B:15:0x0065  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0070  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean zza(com.google.android.gms.internal.mlkit_translate.zzim r4) throws java.lang.InterruptedException {
        /*
            int[] r0 = com.google.android.gms.internal.mlkit_translate.zzil.zza
            r5 = r0
            r0 = r5
            int r0 = r0.length
            r6 = r0
            r0 = 0
            r7 = r0
        L9:
            r0 = r7
            r1 = r6
            if (r0 >= r1) goto L83
            r0 = r5
            r1 = r7
            r0 = r0[r1]
            r8 = r0
            r0 = r8
            if (r0 <= 0) goto L3d
            r0 = r8
            r1 = 60000(0xea60, float:8.4078E-41)
            int r0 = r0 * r1
            r9 = r0
            r0 = r9
            r1 = 2
            int r0 = r0 / r1
            r8 = r0
            java.util.Random r0 = com.google.android.gms.internal.mlkit_translate.zzil.zzd
            r1 = r9
            int r0 = r0.nextInt(r1)
            r9 = r0
            com.google.android.gms.internal.mlkit_translate.zzip r0 = com.google.android.gms.internal.mlkit_translate.zzil.zzc
            r1 = r9
            r2 = r8
            int r1 = r1 + r2
            long r1 = (long) r1
            r0.zza(r1)
        L3d:
            r0 = r4
            boolean r0 = r0.zza()     // Catch: java.io.IOException -> L4c com.google.android.gms.internal.mlkit_translate.zzin -> L51 java.lang.InterruptedException -> L80
            r10 = r0
            r0 = r10
            if (r0 == 0) goto L7a
            r0 = 1
            return r0
        L4c:
            r11 = move-exception
            goto L53
        L51:
            r11 = move-exception
        L53:
            r0 = r11
            java.lang.String r0 = r0.getMessage()
            java.lang.String r0 = java.lang.String.valueOf(r0)
            r11 = r0
            r0 = r11
            int r0 = r0.length()
            if (r0 == 0) goto L70
            java.lang.String r0 = "retryWithRandomizedExponentialBackoff: "
            r1 = r11
            java.lang.String r0 = r0.concat(r1)
            goto L7a
        L70:
            java.lang.String r0 = new java.lang.String
            r1 = r0
            java.lang.String r2 = "retryWithRandomizedExponentialBackoff: "
            r1.<init>(r2)
        L7a:
            int r7 = r7 + 1
            goto L9
        L80:
            r4 = move-exception
            r0 = r4
            throw r0
        L83:
            r0 = 0
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_translate.zzil.zza(com.google.android.gms.internal.mlkit_translate.zzim):boolean");
    }
}
