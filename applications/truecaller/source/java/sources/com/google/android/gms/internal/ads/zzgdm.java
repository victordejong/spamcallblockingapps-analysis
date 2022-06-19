package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgdm.class */
public final class zzgdm {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v148, types: [long] */
    /* JADX WARN: Type inference failed for: r0v151, types: [long] */
    /* JADX WARN: Type inference failed for: r0v153, types: [long] */
    /* JADX WARN: Type inference failed for: r0v155, types: [long] */
    /* JADX WARN: Type inference failed for: r0v158 */
    public static byte[] zza(byte[] bArr, byte[] bArr2) {
        long zzc = zzc(bArr, 0, 0);
        long zzc2 = zzc(bArr, 3, 2) & 67108611;
        long zzc3 = zzc(bArr, 6, 4) & 67092735;
        long zzc4 = zzc(bArr, 9, 6) & 66076671;
        long zzc5 = zzc(bArr, 12, 8) & 1048575;
        long j = zzc3 * 5;
        long j2 = zzc4 * 5;
        long j3 = zzc5 * 5;
        byte[] bArr3 = new byte[17];
        int i = 0;
        char c = 0;
        char c2 = 0;
        char c3 = 0;
        char c4 = 0;
        char c5 = 0;
        while (true) {
            char c6 = c5;
            int length = bArr2.length;
            if (i >= length) {
                long j4 = c6 + (c4 >> 26);
                long j5 = j4 & 67108863;
                long j6 = c3 + (j4 >> 26);
                long j7 = j6 & 67108863;
                long j8 = c + (j6 >> 26);
                long j9 = j8 & 67108863;
                long j10 = ((j8 >> 26) * 5) + c2;
                long j11 = j10 & 67108863;
                long j12 = (c4 & 65535) + (j10 >> 26);
                long j13 = j11 + 5;
                long j14 = (j13 >> 26) + j12;
                long j15 = j5 + (j14 >> 26);
                long j16 = j7 + (j15 >> 26);
                long j17 = (j9 + (j16 >> 26)) - 67108864;
                long j18 = j17 >> 63;
                long j19 = j18 ^ (-1);
                long j20 = (j14 & 67108863 & j19) | (j12 & j18);
                long j21 = (j5 & j18) | (j15 & 67108863 & j19);
                long j22 = (j7 & j18) | (j16 & 67108863 & j19);
                long zzb = (((j11 & j18) | (j13 & 67108863 & j19) | (j20 << 26)) & 4294967295L) + zzb(bArr, 16);
                long zzb2 = (((j20 >> 6) | (j21 << 20)) & 4294967295L) + zzb(bArr, 20) + (zzb >> 32);
                long zzb3 = (((j21 >> 12) | (j22 << 14)) & 4294967295L) + zzb(bArr, 24) + (zzb2 >> 32);
                long zzb4 = zzb(bArr, 28);
                byte[] bArr4 = new byte[16];
                zzd(bArr4, zzb & 4294967295L, 0);
                zzd(bArr4, zzb2 & 4294967295L, 4);
                zzd(bArr4, zzb3 & 4294967295L, 8);
                zzd(bArr4, ((((((j17 & j19) | (j9 & j18)) << 8) | (j22 >> 18)) & 4294967295L) + zzb4 + (zzb3 >> 32)) & 4294967295L, 12);
                return bArr4;
            }
            int min = Math.min(16, length - i);
            System.arraycopy(bArr2, i, bArr3, 0, min);
            bArr3[min] = (byte) 1;
            if (min != 16) {
                Arrays.fill(bArr3, min + 1, 17, (byte) 0);
            }
            long zzc6 = c2 + zzc(bArr3, 0, 0);
            long zzc7 = c4 + zzc(bArr3, 3, 2);
            long zzc8 = c6 + zzc(bArr3, 6, 4);
            long zzc9 = c3 + zzc(bArr3, 9, 6);
            long zzc10 = c + (zzc(bArr3, 12, 8) | (bArr3[16] << 24));
            long j23 = (zzc10 * zzc2 * 5) + (zzc9 * j) + (zzc8 * j2) + (zzc7 * j3) + (zzc6 * zzc);
            long j24 = (zzc10 * j) + (zzc9 * j2) + (zzc8 * j3) + (zzc7 * zzc) + (zzc6 * zzc2) + (j23 >> 26);
            long j25 = (zzc10 * j2) + (zzc9 * j3) + (zzc8 * zzc) + (zzc7 * zzc2) + (zzc6 * zzc3) + (j24 >> 26);
            long j26 = (zzc10 * j3) + (zzc9 * zzc) + (zzc8 * zzc2) + (zzc7 * zzc3) + (zzc6 * zzc4) + (j25 >> 26);
            long j27 = (zzc10 * zzc) + (zzc9 * zzc2) + (zzc8 * zzc3) + (zzc7 * zzc4) + (zzc6 * zzc5) + (j26 >> 26);
            long j28 = ((j27 >> 26) * 5) + (j23 & 67108863);
            c2 = j28 & 67108863;
            c4 = (j24 & 67108863) + (j28 >> 26);
            i += 16;
            c = j27 & 67108863;
            c3 = j26 & 67108863;
            c5 = j25 & 67108863;
        }
    }

    private static long zzb(byte[] bArr, int i) {
        return (((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16)) & 4294967295L;
    }

    private static long zzc(byte[] bArr, int i, int i2) {
        return (zzb(bArr, i) >> i2) & 67108863;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    private static void zzd(byte[] bArr, long j, int i) {
        int i2 = 0;
        ?? r8 = j;
        while (i2 < 4) {
            bArr[i + i2] = (byte) (255 & r8);
            i2++;
            r8 >>= '\b';
        }
    }
}
