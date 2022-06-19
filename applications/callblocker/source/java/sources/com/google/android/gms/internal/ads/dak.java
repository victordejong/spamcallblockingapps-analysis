package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/dak.class */
final class dak {
    /* renamed from: a */
    private static long m10270a(byte[] bArr, int i) {
        return ((bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24)) & 4294967295L;
    }

    /* renamed from: a */
    private static long m10269a(byte[] bArr, int i, int i2) {
        return (m10270a(bArr, i) >> i2) & 67108863;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* renamed from: a */
    private static void m10268a(byte[] bArr, long j, int i) {
        int i2 = 0;
        ?? r8 = j;
        while (i2 < 4) {
            bArr[i + i2] = (byte) (255 & r8);
            i2++;
            r8 >>= '\b';
        }
    }

    /* JADX WARN: Type inference failed for: r0v130, types: [long] */
    /* JADX WARN: Type inference failed for: r0v139, types: [long] */
    /* JADX WARN: Type inference failed for: r0v145, types: [long] */
    /* JADX WARN: Type inference failed for: r0v150, types: [long] */
    /* JADX WARN: Type inference failed for: r0v153, types: [long] */
    /* renamed from: a */
    public static byte[] m10267a(byte[] bArr, byte[] bArr2) {
        if (bArr.length != 32) {
            throw new IllegalArgumentException("The key length in bytes must be 32.");
        }
        char c = 0;
        char c2 = 0;
        char c3 = 0;
        char c4 = 0;
        char c5 = 0;
        long m10269a = 67108863 & m10269a(bArr, 0, 0);
        long m10269a2 = 67108611 & m10269a(bArr, 3, 2);
        long m10269a3 = 67092735 & m10269a(bArr, 6, 4);
        long m10269a4 = 66076671 & m10269a(bArr, 9, 6);
        long m10269a5 = 1048575 & m10269a(bArr, 12, 8);
        long j = m10269a3 * 5;
        long j2 = m10269a4 * 5;
        long j3 = m10269a5 * 5;
        byte[] bArr3 = new byte[17];
        for (int i = 0; i < bArr2.length; i += 16) {
            int min = Math.min(16, bArr2.length - i);
            System.arraycopy(bArr2, i, bArr3, 0, min);
            bArr3[min] = (byte) 1;
            if (min != 16) {
                Arrays.fill(bArr3, min + 1, 17, (byte) 0);
            }
            long m10269a6 = c + m10269a(bArr3, 0, 0);
            long m10269a7 = c2 + m10269a(bArr3, 3, 2);
            long m10269a8 = c3 + m10269a(bArr3, 6, 4);
            long m10269a9 = c4 + m10269a(bArr3, 9, 6);
            long m10269a10 = c5 + (m10269a(bArr3, 12, 8) | (bArr3[16] << 24));
            long j4 = (m10269a6 * m10269a) + (m10269a7 * j3) + (m10269a8 * j2) + (m10269a9 * j) + (m10269a10 * m10269a2 * 5);
            long j5 = (j4 >> 26) + (m10269a6 * m10269a2) + (m10269a7 * m10269a) + (m10269a8 * j3) + (m10269a9 * j2) + (m10269a10 * j);
            long j6 = (m10269a6 * m10269a3) + (m10269a7 * m10269a2) + (m10269a8 * m10269a) + (m10269a9 * j3) + (m10269a10 * j2) + (j5 >> 26);
            c3 = 67108863 & j6;
            long j7 = (m10269a6 * m10269a4) + (m10269a7 * m10269a3) + (m10269a8 * m10269a2) + (m10269a9 * m10269a) + (m10269a10 * j3) + (j6 >> 26);
            c4 = j7 & 67108863;
            long j8 = (m10269a10 * m10269a) + (m10269a9 * m10269a2) + (m10269a8 * m10269a3) + (m10269a7 * m10269a4) + (m10269a6 * m10269a5) + (j7 >> 26);
            c5 = j8 & 67108863;
            long j9 = (j4 & 67108863) + ((j8 >> 26) * 5);
            c = 67108863 & j9;
            c2 = (j5 & 67108863) + (j9 >> 26);
        }
        long j10 = (c2 >> 26) + c3;
        long j11 = j10 & 67108863;
        long j12 = c4 + (j10 >> 26);
        long j13 = j12 & 67108863;
        long j14 = c5 + (j12 >> 26);
        long j15 = j14 & 67108863;
        long j16 = ((j14 >> 26) * 5) + c;
        long j17 = j16 & 67108863;
        long j18 = (c2 & 65535) + (j16 >> 26);
        long j19 = 5 + j17;
        long j20 = (j19 >> 26) + j18;
        long j21 = (j20 >> 26) + j11;
        long j22 = (j21 >> 26) + j13;
        long j23 = ((j22 >> 26) + j15) - 67108864;
        long j24 = j23 >> 63;
        long j25 = j24 ^ (-1);
        long j26 = (j18 & j24) | (j20 & 67108863 & j25);
        long j27 = (j11 & j24) | (j21 & 67108863 & j25);
        long j28 = (j13 & j24) | (j22 & 67108863 & j25);
        long m10270a = m10270a(bArr, 16) + (((j17 & j24) | (j19 & 67108863 & j25) | (j26 << 26)) & 4294967295L);
        long m10270a2 = (m10270a >> 32) + (((j26 >> 6) | (j27 << 20)) & 4294967295L) + m10270a(bArr, 20);
        long m10270a3 = (((j27 >> 12) | (j28 << 14)) & 4294967295L) + m10270a(bArr, 24) + (m10270a2 >> 32);
        long m10270a4 = m10270a(bArr, 28);
        byte[] bArr4 = new byte[16];
        m10268a(bArr4, 4294967295L & m10270a, 0);
        m10268a(bArr4, 4294967295L & m10270a2, 4);
        m10268a(bArr4, 4294967295L & m10270a3, 8);
        m10268a(bArr4, ((m10270a3 >> 32) + (((((j15 & j24) | (j23 & j25)) << 8) | (j28 >> 18)) & 4294967295L) + m10270a4) & 4294967295L, 12);
        return bArr4;
    }
}
