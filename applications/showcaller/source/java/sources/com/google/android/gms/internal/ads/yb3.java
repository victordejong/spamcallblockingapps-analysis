package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/yb3.class */
final class yb3 {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v156, types: [long] */
    /* JADX WARN: Type inference failed for: r0v161, types: [long] */
    /* JADX WARN: Type inference failed for: r0v164, types: [long] */
    /* JADX WARN: Type inference failed for: r0v166, types: [long] */
    /* JADX WARN: Type inference failed for: r0v169 */
    /* renamed from: a */
    public static byte[] m8872a(byte[] bArr, byte[] bArr2) {
        long m8870c = m8870c(bArr, 0, 0);
        long m8870c2 = m8870c(bArr, 3, 2) & 67108611;
        long m8870c3 = m8870c(bArr, 6, 4) & 67092735;
        long m8870c4 = m8870c(bArr, 9, 6) & 66076671;
        long m8870c5 = m8870c(bArr, 12, 8) & 1048575;
        long j = m8870c3 * 5;
        long j2 = m8870c4 * 5;
        long j3 = m8870c5 * 5;
        byte[] bArr3 = new byte[17];
        char c = 0;
        char c2 = 0;
        int i = 0;
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
                long j10 = c2 + ((j8 >> 26) * 5);
                long j11 = j10 & 67108863;
                long j12 = (c4 & 65535) + (j10 >> 26);
                long j13 = j11 + 5;
                long j14 = (j13 >> 26) + j12;
                long j15 = j5 + (j14 >> 26);
                long j16 = j7 + (j15 >> 26);
                long j17 = (j9 + (j16 >> 26)) - 67108864;
                long j18 = j17 >> 63;
                long j19 = j18 ^ (-1);
                long j20 = (j12 & j18) | (j14 & 67108863 & j19);
                long j21 = (j5 & j18) | (j15 & 67108863 & j19);
                long j22 = (j7 & j18) | (j16 & 67108863 & j19);
                long m8871b = (((j11 & j18) | (j13 & 67108863 & j19) | (j20 << 26)) & 4294967295L) + m8871b(bArr, 16);
                long m8871b2 = (((j20 >> 6) | (j21 << 20)) & 4294967295L) + m8871b(bArr, 20) + (m8871b >> 32);
                long m8871b3 = (((j21 >> 12) | (j22 << 14)) & 4294967295L) + m8871b(bArr, 24) + (m8871b2 >> 32);
                long m8871b4 = m8871b(bArr, 28);
                byte[] bArr4 = new byte[16];
                m8869d(bArr4, m8871b & 4294967295L, 0);
                m8869d(bArr4, m8871b2 & 4294967295L, 4);
                m8869d(bArr4, m8871b3 & 4294967295L, 8);
                m8869d(bArr4, ((((((j17 & j19) | (j9 & j18)) << 8) | (j22 >> 18)) & 4294967295L) + m8871b4 + (m8871b3 >> 32)) & 4294967295L, 12);
                return bArr4;
            }
            int min = Math.min(16, length - i);
            System.arraycopy(bArr2, i, bArr3, 0, min);
            bArr3[min] = (byte) 1;
            if (min != 16) {
                Arrays.fill(bArr3, min + 1, 17, (byte) 0);
            }
            long m8870c6 = c2 + m8870c(bArr3, 0, 0);
            long m8870c7 = c4 + m8870c(bArr3, 3, 2);
            long m8870c8 = c6 + m8870c(bArr3, 6, 4);
            long m8870c9 = c3 + m8870c(bArr3, 9, 6);
            long m8870c10 = c + (m8870c(bArr3, 12, 8) | (bArr3[16] << 24));
            long j23 = (m8870c6 * m8870c) + (m8870c7 * j3) + (m8870c8 * j2) + (m8870c9 * j) + (m8870c10 * m8870c2 * 5);
            long j24 = (m8870c6 * m8870c2) + (m8870c7 * m8870c) + (m8870c8 * j3) + (m8870c9 * j2) + (m8870c10 * j) + (j23 >> 26);
            long j25 = (m8870c6 * m8870c3) + (m8870c7 * m8870c2) + (m8870c8 * m8870c) + (m8870c9 * j3) + (m8870c10 * j2) + (j24 >> 26);
            long j26 = (m8870c6 * m8870c4) + (m8870c7 * m8870c3) + (m8870c8 * m8870c2) + (m8870c9 * m8870c) + (m8870c10 * j3) + (j25 >> 26);
            long j27 = (m8870c6 * m8870c5) + (m8870c7 * m8870c4) + (m8870c8 * m8870c3) + (m8870c9 * m8870c2) + (m8870c10 * m8870c) + (j26 >> 26);
            c = j27 & 67108863;
            long j28 = (j23 & 67108863) + ((j27 >> 26) * 5);
            c2 = j28 & 67108863;
            c4 = (j24 & 67108863) + (j28 >> 26);
            i += 16;
            c3 = j26 & 67108863;
            c5 = j25 & 67108863;
        }
    }

    /* renamed from: b */
    private static long m8871b(byte[] bArr, int i) {
        return (((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16)) & 4294967295L;
    }

    /* renamed from: c */
    private static long m8870c(byte[] bArr, int i, int i2) {
        return (m8871b(bArr, i) >> i2) & 67108863;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* renamed from: d */
    private static void m8869d(byte[] bArr, long j, int i) {
        int i2 = 0;
        ?? r8 = j;
        while (i2 < 4) {
            bArr[i + i2] = (byte) (255 & r8);
            i2++;
            r8 >>= '\b';
        }
    }
}
