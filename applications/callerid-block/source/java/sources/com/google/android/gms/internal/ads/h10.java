package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/h10.class */
public final class h10 {
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: a */
    public static long m7317a(ByteBuffer byteBuffer) {
        ?? r0 = byteBuffer.getInt();
        char c = r0;
        if (r0 < 0) {
            c = r0 + 4294967296L;
        }
        return c;
    }

    /* renamed from: b */
    public static int m7316b(ByteBuffer byteBuffer) {
        return (m7315c(byteBuffer.get()) << 8) + m7315c(byteBuffer.get());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [int] */
    /* renamed from: c */
    public static int m7315c(byte b) {
        byte b2 = b;
        if (b < 0) {
            b2 = b + 256;
        }
        return b2;
    }

    /* renamed from: d */
    public static long m7314d(ByteBuffer byteBuffer) {
        long m7317a = m7317a(byteBuffer) << 32;
        if (m7317a >= 0) {
            return m7317a + m7317a(byteBuffer);
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
