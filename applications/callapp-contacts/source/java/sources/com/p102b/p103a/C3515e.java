package com.p102b.p103a;

import io.objectbox.model.PropertyFlags;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
/* renamed from: com.b.a.e */
/* loaded from: classes-dex2jar.jar:com/b/a/e.class */
public final class C3515e {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [int] */
    /* renamed from: a */
    public static int m37852a(byte b) {
        byte b2 = b;
        if (b < 0) {
            b2 = b + PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
        }
        return b2;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r0v8, types: [long] */
    /* renamed from: a */
    public static long m37851a(ByteBuffer byteBuffer) {
        ?? r0 = byteBuffer.getInt();
        char c = r0;
        if (r0 < 0) {
            c = r0 + 4294967296L;
        }
        return c;
    }

    /* renamed from: a */
    public static String m37850a(ByteBuffer byteBuffer, int i) {
        byte[] bArr = new byte[i];
        byteBuffer.get(bArr);
        return C3518h.m37828a(bArr);
    }

    /* renamed from: b */
    public static int m37849b(ByteBuffer byteBuffer) {
        return (m37848c(byteBuffer) << 8) + 0 + m37852a(byteBuffer.get());
    }

    /* renamed from: c */
    public static int m37848c(ByteBuffer byteBuffer) {
        return (m37852a(byteBuffer.get()) << 8) + 0 + m37852a(byteBuffer.get());
    }

    /* renamed from: d */
    public static long m37847d(ByteBuffer byteBuffer) {
        long m37851a = (m37851a(byteBuffer) << 32) + 0;
        if (m37851a >= 0) {
            return m37851a + m37851a(byteBuffer);
        }
        throw new RuntimeException("I don't know how to deal with UInt64! long is not sufficient and I don't want to use BigInt");
    }

    /* renamed from: e */
    public static double m37846e(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        return ((((0 | ((bArr[0] << 24) & (-16777216))) | ((bArr[1] << 16) & 16711680)) | ((bArr[2] << 8) & 65280)) | (bArr[3] & 255)) / 65536.0d;
    }

    /* renamed from: f */
    public static double m37845f(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        return ((((0 | ((bArr[0] << 24) & (-16777216))) | ((bArr[1] << 16) & 16711680)) | ((bArr[2] << 8) & 65280)) | (bArr[3] & 255)) / 1.073741824E9d;
    }

    /* renamed from: g */
    public static float m37844g(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[2];
        byteBuffer.get(bArr);
        return ((short) (((short) (0 | ((bArr[0] << 8) & 65280))) | (bArr[1] & 255))) / 256.0f;
    }

    /* renamed from: h */
    public static String m37843h(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        try {
            return new String(bArr, "ISO-8859-1");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }

    /* renamed from: i */
    public static long m37842i(ByteBuffer byteBuffer) {
        long m37848c = m37848c(byteBuffer) << 32;
        if (m37848c >= 0) {
            return m37848c + m37851a(byteBuffer);
        }
        throw new RuntimeException("I don't know how to deal with UInt64! long is not sufficient and I don't want to use BigInt");
    }
}
