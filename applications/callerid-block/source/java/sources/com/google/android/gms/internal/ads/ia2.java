package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/ia2.class */
final class ia2 {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v160, types: [long] */
    /* JADX WARN: Type inference failed for: r0v165, types: [long] */
    /* JADX WARN: Type inference failed for: r0v168, types: [long] */
    /* JADX WARN: Type inference failed for: r0v170, types: [long] */
    /* JADX WARN: Type inference failed for: r0v173 */
    /* renamed from: a */
    static byte[] m7194a(byte[] bArr, byte[] bArr2) {
        if (bArr.length == 32) {
            long m7192c = m7192c(bArr, 0, 0);
            long m7192c2 = m7192c(bArr, 3, 2) & 67108611;
            long m7192c3 = m7192c(bArr, 6, 4) & 67092735;
            long m7192c4 = m7192c(bArr, 9, 6) & 66076671;
            long m7192c5 = m7192c(bArr, 12, 8) & 1048575;
            long j = m7192c3 * 5;
            long j2 = m7192c4 * 5;
            long j3 = m7192c5 * 5;
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
                    long m7193b = (((j11 & j18) | (j13 & 67108863 & j19) | (j20 << 26)) & 4294967295L) + m7193b(bArr, 16);
                    long m7193b2 = (((j20 >> 6) | (j21 << 20)) & 4294967295L) + m7193b(bArr, 20) + (m7193b >> 32);
                    long m7193b3 = (((j21 >> 12) | (j22 << 14)) & 4294967295L) + m7193b(bArr, 24) + (m7193b2 >> 32);
                    long m7193b4 = m7193b(bArr, 28);
                    byte[] bArr4 = new byte[16];
                    m7191d(bArr4, m7193b & 4294967295L, 0);
                    m7191d(bArr4, m7193b2 & 4294967295L, 4);
                    m7191d(bArr4, m7193b3 & 4294967295L, 8);
                    m7191d(bArr4, ((((j22 >> 18) | (((j9 & j18) | (j17 & j19)) << 8)) & 4294967295L) + m7193b4 + (m7193b3 >> 32)) & 4294967295L, 12);
                    return bArr4;
                }
                int min = Math.min(16, length - i);
                System.arraycopy(bArr2, i, bArr3, 0, min);
                bArr3[min] = (byte) 1;
                if (min != 16) {
                    Arrays.fill(bArr3, min + 1, 17, (byte) 0);
                }
                long m7192c6 = c2 + m7192c(bArr3, 0, 0);
                long m7192c7 = c4 + m7192c(bArr3, 3, 2);
                long m7192c8 = c6 + m7192c(bArr3, 6, 4);
                long m7192c9 = c3 + m7192c(bArr3, 9, 6);
                long m7192c10 = c + (m7192c(bArr3, 12, 8) | (bArr3[16] << 24));
                long j23 = (m7192c6 * m7192c) + (m7192c7 * j3) + (m7192c8 * j2) + (m7192c9 * j) + (m7192c10 * m7192c2 * 5);
                long j24 = (m7192c6 * m7192c2) + (m7192c7 * m7192c) + (m7192c8 * j3) + (m7192c9 * j2) + (m7192c10 * j) + (j23 >> 26);
                long j25 = (m7192c6 * m7192c3) + (m7192c7 * m7192c2) + (m7192c8 * m7192c) + (m7192c9 * j3) + (m7192c10 * j2) + (j24 >> 26);
                long j26 = (m7192c6 * m7192c4) + (m7192c7 * m7192c3) + (m7192c8 * m7192c2) + (m7192c9 * m7192c) + (m7192c10 * j3) + (j25 >> 26);
                long j27 = (m7192c6 * m7192c5) + (m7192c7 * m7192c4) + (m7192c8 * m7192c3) + (m7192c9 * m7192c2) + (m7192c10 * m7192c) + (j26 >> 26);
                c = j27 & 67108863;
                long j28 = (j23 & 67108863) + ((j27 >> 26) * 5);
                c2 = j28 & 67108863;
                c4 = (j24 & 67108863) + (j28 >> 26);
                i += 16;
                c3 = j26 & 67108863;
                c5 = j25 & 67108863;
            }
        } else {
            throw new IllegalArgumentException("The key length in bytes must be 32.");
        }
    }

    /* renamed from: b */
    private static long m7193b(byte[] bArr, int i) {
        return (((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16)) & 4294967295L;
    }

    /* renamed from: c */
    private static long m7192c(byte[] bArr, int i, int i2) {
        return (m7193b(bArr, i) >> i2) & 67108863;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* renamed from: d */
    private static void m7191d(byte[] bArr, long j, int i) {
        int i2 = 0;
        ?? r8 = j;
        while (i2 < 4) {
            bArr[i + i2] = (byte) (255 & r8);
            i2++;
            r8 >>= '\b';
        }
    }
}
