package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/n04.class */
public final class n04 {
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: a */
    public static long m13023a(ByteBuffer byteBuffer) {
        ?? r0 = byteBuffer.getInt();
        char c = r0;
        if (r0 < 0) {
            c = r0 + 4294967296L;
        }
        return c;
    }

    /* renamed from: b */
    public static int m13022b(ByteBuffer byteBuffer) {
        return (m13021c(byteBuffer.get()) << 8) + m13021c(byteBuffer.get());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [int] */
    /* renamed from: c */
    public static int m13021c(byte b) {
        byte b2 = b;
        if (b < 0) {
            b2 = b + 256;
        }
        return b2;
    }

    /* renamed from: d */
    public static long m13020d(ByteBuffer byteBuffer) {
        long m13023a = m13023a(byteBuffer) << 32;
        if (m13023a >= 0) {
            return m13023a + m13023a(byteBuffer);
        }
        throw new RuntimeException("I don't know how to deal with UInt64! long is not sufficient and I don't want to use BigInt");
    }

    /* renamed from: e */
    public static double m13019e(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        return (((((bArr[0] << 24) & (-16777216)) | ((bArr[1] << 16) & 16711680)) | ((bArr[2] << 8) & 65280)) | (bArr[3] & 255)) / 65536.0d;
    }

    /* renamed from: f */
    public static double m13018f(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        return (((((bArr[0] << 24) & (-16777216)) | ((bArr[1] << 16) & 16711680)) | ((bArr[2] << 8) & 65280)) | (bArr[3] & 255)) / 1.073741824E9d;
    }
}
