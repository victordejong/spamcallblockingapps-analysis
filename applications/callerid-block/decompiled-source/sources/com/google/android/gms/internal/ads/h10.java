package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/h10.class */
public final class h10 {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long m7317a(java.nio.ByteBuffer r5) {
        /*
            r0 = r5
            int r0 = r0.getInt()
            long r0 = (long) r0
            r6 = r0
            r0 = r6
            r8 = r0
            r0 = r6
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 >= 0) goto L_0x0014
            r0 = r6
            r1 = 4294967296(0x100000000, double:2.121995791E-314)
            long r0 = r0 + r1
            r8 = r0
        L_0x0014:
            r0 = r8
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.h10.m7317a(java.nio.ByteBuffer):long");
    }

    /* renamed from: b */
    public static int m7316b(ByteBuffer byteBuffer) {
        return (m7315c(byteBuffer.get()) << 8) + m7315c(byteBuffer.get());
    }

    /* renamed from: c */
    public static int m7315c(byte b) {
        int i = b;
        if (b < 0) {
            i = b + 256;
        }
        return i;
    }

    /* renamed from: d */
    public static long m7314d(ByteBuffer byteBuffer) {
        long a = m7317a(byteBuffer) << 32;
        if (a >= 0) {
            return a + m7317a(byteBuffer);
        }
        throw new RuntimeException("I don't know how to deal with UInt64! long is not sufficient and I don't want to use BigInt");
    }

    /* renamed from: e */
    public static double m7313e(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        double d = ((bArr[0] << 24) & (-16777216)) | ((bArr[1] << 16) & 16711680) | ((bArr[2] << 8) & 65280) | (bArr[3] & 255);
        Double.isNaN(d);
        return d / 65536.0d;
    }

    /* renamed from: f */
    public static double m7312f(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        double d = ((bArr[0] << 24) & (-16777216)) | ((bArr[1] << 16) & 16711680) | ((bArr[2] << 8) & 65280) | (bArr[3] & 255);
        Double.isNaN(d);
        return d / 1.073741824E9d;
    }
}
