package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzein.class */
final class zzein {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    private static void zza(byte[] bArr, long j, int i) {
        int i2 = 0;
        ?? r8 = j;
        while (i2 < 4) {
            bArr[i + i2] = (byte) (255 & r8);
            i2++;
            r8 >>= '\b';
        }
    }

    /* JADX WARN: Type inference failed for: r0v159, types: [long] */
    /* JADX WARN: Type inference failed for: r0v161, types: [long] */
    /* JADX WARN: Type inference failed for: r0v163, types: [long] */
    /* JADX WARN: Type inference failed for: r0v165, types: [long] */
    /* JADX WARN: Type inference failed for: r0v167, types: [long] */
    public static byte[] zze(byte[] bArr, byte[] bArr2) {
        if (bArr.length == 32) {
            long zzg = zzg(bArr, 0, 0) & 67108863;
            long zzg2 = zzg(bArr, 3, 2) & 67108611;
            long zzg3 = zzg(bArr, 6, 4) & 67092735;
            long zzg4 = zzg(bArr, 9, 6) & 66076671;
            long zzg5 = zzg(bArr, 12, 8) & 1048575;
            long j = zzg3 * 5;
            long j2 = zzg4 * 5;
            long j3 = zzg5 * 5;
            byte[] bArr3 = new byte[17];
            char c = 0;
            char c2 = 0;
            char c3 = 0;
            int i = 0;
            char c4 = 0;
            char c5 = 0;
            while (i < bArr2.length) {
                int min = Math.min(16, bArr2.length - i);
                System.arraycopy(bArr2, i, bArr3, 0, min);
                bArr3[min] = (byte) 1;
                if (min != 16) {
                    Arrays.fill(bArr3, min + 1, 17, (byte) 0);
                }
                long zzg6 = c3 + zzg(bArr3, 0, 0);
                long zzg7 = c5 + zzg(bArr3, 3, 2);
                long zzg8 = c + zzg(bArr3, 6, 4);
                long zzg9 = c4 + zzg(bArr3, 9, 6);
                long zzg10 = c2 + (zzg(bArr3, 12, 8) | (bArr3[16] << 24));
                long j4 = (zzg6 * zzg) + (zzg7 * j3) + (zzg8 * j2) + (zzg9 * j) + (zzg10 * zzg2 * 5);
                long j5 = (zzg6 * zzg2) + (zzg7 * zzg) + (zzg8 * j3) + (zzg9 * j2) + (zzg10 * j) + (j4 >> 26);
                long j6 = (zzg6 * zzg3) + (zzg7 * zzg2) + (zzg8 * zzg) + (zzg9 * j3) + (zzg10 * j2) + (j5 >> 26);
                long j7 = (zzg6 * zzg4) + (zzg7 * zzg3) + (zzg8 * zzg2) + (zzg9 * zzg) + (zzg10 * j3) + (j6 >> 26);
                long j8 = (zzg6 * zzg5) + (zzg7 * zzg4) + (zzg8 * zzg3) + (zzg9 * zzg2) + (zzg10 * zzg) + (j7 >> 26);
                long j9 = (j4 & 67108863) + ((j8 >> 26) * 5);
                c5 = (j5 & 67108863) + (j9 >> 26);
                i += 16;
                c = j6 & 67108863;
                c4 = j7 & 67108863;
                c2 = j8 & 67108863;
                c3 = j9 & 67108863;
            }
            long j10 = c + (c5 >> 26);
            long j11 = j10 & 67108863;
            long j12 = c4 + (j10 >> 26);
            long j13 = j12 & 67108863;
            long j14 = c2 + (j12 >> 26);
            long j15 = j14 & 67108863;
            long j16 = c3 + ((j14 >> 26) * 5);
            long j17 = j16 & 67108863;
            long j18 = (c5 & 65535) + (j16 >> 26);
            long j19 = j17 + 5;
            long j20 = (j19 >> 26) + j18;
            long j21 = j11 + (j20 >> 26);
            long j22 = j13 + (j21 >> 26);
            long j23 = (j15 + (j22 >> 26)) - 67108864;
            long j24 = j23 >> 63;
            long j25 = j24 ^ (-1);
            long j26 = (j18 & j24) | (j20 & 67108863 & j25);
            long j27 = (j11 & j24) | (j21 & 67108863 & j25);
            long j28 = (j13 & j24) | (j22 & 67108863 & j25);
            long zzg11 = (((j26 << 26) | (j17 & j24) | (j19 & 67108863 & j25)) & 4294967295L) + zzg(bArr, 16);
            long zzg12 = (((j26 >> 6) | (j27 << 20)) & 4294967295L) + zzg(bArr, 20) + (zzg11 >> 32);
            long zzg13 = (((j27 >> 12) | (j28 << 14)) & 4294967295L) + zzg(bArr, 24) + (zzg12 >> 32);
            long zzg14 = zzg(bArr, 28);
            byte[] bArr4 = new byte[16];
            zza(bArr4, zzg11 & 4294967295L, 0);
            zza(bArr4, zzg12 & 4294967295L, 4);
            zza(bArr4, zzg13 & 4294967295L, 8);
            zza(bArr4, ((((((j23 & j25) | (j15 & j24)) << 8) | (j28 >> 18)) & 4294967295L) + zzg14 + (zzg13 >> 32)) & 4294967295L, 12);
            return bArr4;
        }
        throw new IllegalArgumentException("The key length in bytes must be 32.");
    }

    private static long zzg(byte[] bArr, int i) {
        return (((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16)) & 4294967295L;
    }

    private static long zzg(byte[] bArr, int i, int i2) {
        return (zzg(bArr, i) >> i2) & 67108863;
    }
}
