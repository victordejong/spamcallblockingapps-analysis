package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dks.class */
final class dks {
    /* renamed from: a */
    private static long m16534a(byte[] bArr, int i) {
        return (((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16)) & 4294967295L;
    }

    /* renamed from: a */
    private static long m16533a(byte[] bArr, int i, int i2) {
        return (m16534a(bArr, i) >> i2) & 67108863;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [long] */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v2 */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* renamed from: a */
    private static void m16532a(byte[] bArr, long j, int i) {
        int i2 = 0;
        ?? r8 = j;
        while (i2 < 4) {
            bArr[i + i2] = (byte) (255 & r8);
            i2++;
            r8 >>= '\b';
        }
    }

    /* JADX WARN: Type inference failed for: r0v156, types: [long] */
    /* JADX WARN: Type inference failed for: r0v158, types: [long] */
    /* JADX WARN: Type inference failed for: r0v160, types: [long] */
    /* JADX WARN: Type inference failed for: r0v162, types: [long] */
    /* JADX WARN: Type inference failed for: r0v164, types: [long] */
    /* renamed from: a */
    public static byte[] m16531a(byte[] bArr, byte[] bArr2) {
        long m16533a = m16533a(bArr, 0, 0) & 67108863;
        long m16533a2 = m16533a(bArr, 3, 2) & 67108611;
        long m16533a3 = m16533a(bArr, 6, 4) & 67092735;
        long m16533a4 = m16533a(bArr, 9, 6) & 66076671;
        long m16533a5 = m16533a(bArr, 12, 8) & 1048575;
        long j = m16533a3 * 5;
        long j2 = m16533a4 * 5;
        long j3 = m16533a5 * 5;
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
            long m16533a6 = c3 + m16533a(bArr3, 0, 0);
            long m16533a7 = c5 + m16533a(bArr3, 3, 2);
            long m16533a8 = c + m16533a(bArr3, 6, 4);
            long m16533a9 = c4 + m16533a(bArr3, 9, 6);
            long m16533a10 = c2 + (m16533a(bArr3, 12, 8) | (bArr3[16] << 24));
            long j4 = (m16533a6 * m16533a) + (m16533a7 * j3) + (m16533a8 * j2) + (m16533a9 * j) + (m16533a10 * m16533a2 * 5);
            long j5 = (m16533a6 * m16533a2) + (m16533a7 * m16533a) + (m16533a8 * j3) + (m16533a9 * j2) + (m16533a10 * j) + (j4 >> 26);
            long j6 = (m16533a6 * m16533a3) + (m16533a7 * m16533a2) + (m16533a8 * m16533a) + (m16533a9 * j3) + (m16533a10 * j2) + (j5 >> 26);
            long j7 = (m16533a6 * m16533a4) + (m16533a7 * m16533a3) + (m16533a8 * m16533a2) + (m16533a9 * m16533a) + (m16533a10 * j3) + (j6 >> 26);
            long j8 = (m16533a6 * m16533a5) + (m16533a7 * m16533a4) + (m16533a8 * m16533a3) + (m16533a9 * m16533a2) + (m16533a10 * m16533a) + (j7 >> 26);
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
        long m16534a = (((j26 << 26) | (j17 & j24) | (j19 & 67108863 & j25)) & 4294967295L) + m16534a(bArr, 16);
        long m16534a2 = (((j26 >> 6) | (j27 << 20)) & 4294967295L) + m16534a(bArr, 20) + (m16534a >> 32);
        long m16534a3 = (((j27 >> 12) | (j28 << 14)) & 4294967295L) + m16534a(bArr, 24) + (m16534a2 >> 32);
        long m16534a4 = m16534a(bArr, 28);
        byte[] bArr4 = new byte[16];
        m16532a(bArr4, m16534a & 4294967295L, 0);
        m16532a(bArr4, m16534a2 & 4294967295L, 4);
        m16532a(bArr4, m16534a3 & 4294967295L, 8);
        m16532a(bArr4, ((((((j23 & j25) | (j15 & j24)) << 8) | (j28 >> 18)) & 4294967295L) + m16534a4 + (m16534a3 >> 32)) & 4294967295L, 12);
        return bArr4;
    }
}
