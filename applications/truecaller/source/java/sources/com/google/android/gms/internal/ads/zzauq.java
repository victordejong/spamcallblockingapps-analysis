package com.google.android.gms.internal.ads;

import com.huawei.hms.support.api.entity.core.JosStatusCodes;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzauq.class */
public final class zzauq {
    private static final byte[] zza = {0, 0, 0, 1};
    private static final int[] zzb = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, JosStatusCodes.RTN_CODE_COMMON_ERROR, 7350};
    private static final int[] zzc = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0026, code lost:
        if (r0 == 29) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> zza(byte[] r5) {
        /*
            com.google.android.gms.internal.ads.zzauw r0 = new com.google.android.gms.internal.ads.zzauw
            r1 = r0
            r2 = r5
            r3 = r5
            int r3 = r3.length
            r1.<init>(r2, r3)
            r5 = r0
            r0 = r5
            int r0 = zzc(r0)
            r6 = r0
            r0 = r5
            int r0 = zzd(r0)
            r7 = r0
            r0 = r5
            r1 = 4
            int r0 = r0.zza(r1)
            r8 = r0
            r0 = r6
            r1 = 5
            if (r0 == r1) goto L29
            r0 = r8
            r9 = r0
            r0 = r6
            r1 = 29
            if (r0 != r1) goto L45
        L29:
            r0 = r5
            int r0 = zzd(r0)
            r6 = r0
            r0 = r6
            r7 = r0
            r0 = r8
            r9 = r0
            r0 = r5
            int r0 = zzc(r0)
            r1 = 22
            if (r0 != r1) goto L45
            r0 = r5
            r1 = 4
            int r0 = r0.zza(r1)
            r9 = r0
            r0 = r6
            r7 = r0
        L45:
            int[] r0 = com.google.android.gms.internal.ads.zzauq.zzc
            r1 = r9
            r0 = r0[r1]
            r9 = r0
            r0 = r9
            r1 = -1
            if (r0 == r1) goto L59
            r0 = 1
            r10 = r0
            goto L5c
        L59:
            r0 = 0
            r10 = r0
        L5c:
            r0 = r10
            com.google.android.gms.internal.ads.zzaup.zza(r0)
            r0 = r7
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r1 = r9
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            android.util.Pair r0 = android.util.Pair.create(r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzauq.zza(byte[]):android.util.Pair");
    }

    public static byte[] zzb(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2 + 4];
        System.arraycopy(zza, 0, bArr2, 0, 4);
        System.arraycopy(bArr, i, bArr2, 4, i2);
        return bArr2;
    }

    private static int zzc(zzauw zzauwVar) {
        int zza2 = zzauwVar.zza(5);
        return zza2 == 31 ? zzauwVar.zza(6) + 32 : zza2;
    }

    private static int zzd(zzauw zzauwVar) {
        int i;
        int zza2 = zzauwVar.zza(4);
        if (zza2 == 15) {
            i = zzauwVar.zza(24);
        } else {
            zzaup.zza(zza2 < 13);
            i = zzb[zza2];
        }
        return i;
    }
}
