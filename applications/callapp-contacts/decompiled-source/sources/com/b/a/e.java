package com.b.a;

import io.objectbox.model.PropertyFlags;
import java.io.UnsupportedEncodingException;
import java.nio.ByteBuffer;
/* loaded from: classes-dex2jar.jar:com/b/a/e.class */
public final class e {
    public static int a(byte b2) {
        int i = b2;
        if (b2 < 0) {
            i = b2 + PropertyFlags.INDEX_PARTIAL_SKIP_NULL;
        }
        return i;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v2, types: [long] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1, types: [long] */
    /* JADX WARN: Type inference failed for: r8v3 */
    /* JADX WARN: Unknown variable types count: 2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static long a(java.nio.ByteBuffer r5) {
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
        throw new UnsupportedOperationException("Method not decompiled: com.b.a.e.a(java.nio.ByteBuffer):long");
    }

    public static String a(ByteBuffer byteBuffer, int i) {
        byte[] bArr = new byte[i];
        byteBuffer.get(bArr);
        return h.a(bArr);
    }

    public static int b(ByteBuffer byteBuffer) {
        return (c(byteBuffer) << 8) + 0 + a(byteBuffer.get());
    }

    public static int c(ByteBuffer byteBuffer) {
        return (a(byteBuffer.get()) << 8) + 0 + a(byteBuffer.get());
    }

    public static long d(ByteBuffer byteBuffer) {
        long a2 = (a(byteBuffer) << 32) + 0;
        if (a2 >= 0) {
            return a2 + a(byteBuffer);
        }
        throw new RuntimeException("I don't know how to deal with UInt64! long is not sufficient and I don't want to use BigInt");
    }

    public static double e(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        return ((((0 | ((bArr[0] << 24) & (-16777216))) | ((bArr[1] << 16) & 16711680)) | ((bArr[2] << 8) & 65280)) | (bArr[3] & 255)) / 65536.0d;
    }

    public static double f(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        return ((((0 | ((bArr[0] << 24) & (-16777216))) | ((bArr[1] << 16) & 16711680)) | ((bArr[2] << 8) & 65280)) | (bArr[3] & 255)) / 1.073741824E9d;
    }

    public static float g(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[2];
        byteBuffer.get(bArr);
        return ((short) (((short) (0 | ((bArr[0] << 8) & 65280))) | (bArr[1] & 255))) / 256.0f;
    }

    public static String h(ByteBuffer byteBuffer) {
        byte[] bArr = new byte[4];
        byteBuffer.get(bArr);
        try {
            return new String(bArr, "ISO-8859-1");
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }

    public static long i(ByteBuffer byteBuffer) {
        long c2 = c(byteBuffer) << 32;
        if (c2 >= 0) {
            return c2 + a(byteBuffer);
        }
        throw new RuntimeException("I don't know how to deal with UInt64! long is not sufficient and I don't want to use BigInt");
    }
}
