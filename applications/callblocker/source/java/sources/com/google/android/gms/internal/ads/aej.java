package com.google.android.gms.internal.ads;

import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aej.class */
public final class aej {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [int] */
    /* renamed from: a */
    public static int m13545a(byte b) {
        byte b2 = b;
        if (b < 0) {
            b2 = b + 256;
        }
        return b2;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: a */
    public static long m13544a(ByteBuffer byteBuffer) {
        ?? r0 = byteBuffer.getInt();
        char c = r0;
        if (r0 < 0) {
            c = r0 + 4294967296L;
        }
        return c;
    }

    /* renamed from: b */
    public static int m13543b(ByteBuffer byteBuffer) {
        return (m13545a(byteBuffer.get()) << 8) + 0 + m13545a(byteBuffer.get());
    }

    /* renamed from: c */
    public static long m13542c(ByteBuffer byteBuffer) {
        long m13544a = (m13544a(byteBuffer) << 32) + 0;
        if (m13544a < 0) {
            throw new RuntimeException("I don't know how to deal with UInt64! long is not sufficient and I don't want to use BigInt");
        }
        return m13544a + m13544a(byteBuffer);
    }

    /* renamed from: d */
    public static double m13541d(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        return ((bArr[3] & 255) | (((((bArr[0] << 24) & (-16777216)) | 0) | ((bArr[1] << 16) & 16711680)) | ((bArr[2] << 8) & 65280))) / 65536.0d;
    }

    /* renamed from: e */
    public static double m13540e(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        return ((bArr[3] & 255) | (((((bArr[0] << 24) & (-16777216)) | 0) | ((bArr[1] << 16) & 16711680)) | ((bArr[2] << 8) & 65280))) / 1.073741824E9d;
    }

    /* renamed from: f */
    public static String m13539f(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        try {
            return new String(bArr, "ISO-8859-1");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }
}
