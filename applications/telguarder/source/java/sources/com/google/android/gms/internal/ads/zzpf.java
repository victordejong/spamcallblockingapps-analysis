package com.google.android.gms.internal.ads;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzpf.class */
public final class zzpf {
    private static final byte[] zzbjt = {0, 0, 0, 1};
    private static final int[] zzbju = {96000, 88200, 64000, 48000, 44100, 32000, 24000, 22050, 16000, 12000, 11025, 8000, 7350};
    private static final int[] zzbjv = {0, 1, 2, 3, 4, 5, 6, 8, -1, -1, -1, 7, 8, -1, 8, -1};

    private static int zza(zzpo zzpoVar) {
        int zzbl = zzpoVar.zzbl(5);
        int i = zzbl;
        if (zzbl == 31) {
            i = zzpoVar.zzbl(6) + 32;
        }
        return i;
    }

    private static int zzb(zzpo zzpoVar) {
        int i;
        int zzbl = zzpoVar.zzbl(4);
        if (zzbl == 15) {
            i = zzpoVar.zzbl(24);
        } else {
            zzpg.checkArgument(zzbl < 13);
            i = zzbju[zzbl];
        }
        return i;
    }

    public static byte[] zzc(byte[] bArr, int i, int i2) {
        byte[] bArr2 = zzbjt;
        byte[] bArr3 = new byte[bArr2.length + i2];
        System.arraycopy(bArr2, 0, bArr3, 0, bArr2.length);
        System.arraycopy(bArr, i, bArr3, bArr2.length, i2);
        return bArr3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0024, code lost:
        if (r0 == 29) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.util.Pair<java.lang.Integer, java.lang.Integer> zze(byte[] r4) {
        /*
            com.google.android.gms.internal.ads.zzpo r0 = new com.google.android.gms.internal.ads.zzpo
            r1 = r0
            r2 = r4
            r1.<init>(r2)
            r4 = r0
            r0 = r4
            int r0 = zza(r0)
            r5 = r0
            r0 = r4
            int r0 = zzb(r0)
            r6 = r0
            r0 = r4
            r1 = 4
            int r0 = r0.zzbl(r1)
            r7 = r0
            r0 = r5
            r1 = 5
            if (r0 == r1) goto L27
            r0 = r7
            r8 = r0
            r0 = r5
            r1 = 29
            if (r0 != r1) goto L43
        L27:
            r0 = r4
            int r0 = zzb(r0)
            r5 = r0
            r0 = r5
            r6 = r0
            r0 = r7
            r8 = r0
            r0 = r4
            int r0 = zza(r0)
            r1 = 22
            if (r0 != r1) goto L43
            r0 = r4
            r1 = 4
            int r0 = r0.zzbl(r1)
            r8 = r0
            r0 = r5
            r6 = r0
        L43:
            int[] r0 = com.google.android.gms.internal.ads.zzpf.zzbjv
            r1 = r8
            r0 = r0[r1]
            r8 = r0
            r0 = r8
            r1 = -1
            if (r0 == r1) goto L57
            r0 = 1
            r9 = r0
            goto L5a
        L57:
            r0 = 0
            r9 = r0
        L5a:
            r0 = r9
            com.google.android.gms.internal.ads.zzpg.checkArgument(r0)
            r0 = r6
            java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
            r1 = r8
            java.lang.Integer r1 = java.lang.Integer.valueOf(r1)
            android.util.Pair r0 = android.util.Pair.create(r0, r1)
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzpf.zze(byte[]):android.util.Pair");
    }
}
