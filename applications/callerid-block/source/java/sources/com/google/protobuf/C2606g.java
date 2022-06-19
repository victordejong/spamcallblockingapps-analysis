package com.google.protobuf;

import java.io.OutputStream;
import java.lang.ref.SoftReference;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
/* renamed from: com.google.protobuf.g */
/* loaded from: classes2-dex2jar.jar:com/google/protobuf/g.class */
final class C2606g {

    /* renamed from: a */
    private static final ThreadLocal<SoftReference<byte[]>> f11097a = new ThreadLocal<>();

    /* renamed from: b */
    private static final Class<?> f11098b;

    /* renamed from: c */
    private static final long f11099c;

    static {
        Class<?> m2733e = m2733e("java.io.FileOutputStream");
        f11098b = m2733e;
        f11099c = m2736b(m2733e);
    }

    /* renamed from: a */
    private static byte[] m2737a() {
        SoftReference<byte[]> softReference = f11097a.get();
        return softReference == null ? null : softReference.get();
    }

    /* renamed from: b */
    private static long m2736b(Class<?> cls) {
        if (cls != null) {
            try {
                if (!C2630k1.m2501G()) {
                    return -1L;
                }
                return C2630k1.m2499I(cls.getDeclaredField("channel"));
            } catch (Throwable th) {
                return -1L;
            }
        }
        return -1L;
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0018, code lost:
        if (m2734d(r0, r0.length) != false) goto L6;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private static byte[] m2735c(int r3) {
        /*
            r0 = r3
            r1 = 1024(0x400, float:1.435E-42)
            int r0 = java.lang.Math.max(r0, r1)
            r3 = r0
            byte[] r0 = m2737a()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L1b
            r0 = r4
            r5 = r0
            r0 = r3
            r1 = r4
            int r1 = r1.length
            boolean r0 = m2734d(r0, r1)
            if (r0 == 0) goto L2e
        L1b:
            r0 = r3
            byte[] r0 = new byte[r0]
            r4 = r0
            r0 = r4
            r5 = r0
            r0 = r3
            r1 = 16384(0x4000, float:2.2959E-41)
            if (r0 > r1) goto L2e
            r0 = r4
            m2732f(r0)
            r0 = r4
            r5 = r0
        L2e:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.protobuf.C2606g.m2735c(int):byte[]");
    }

    /* renamed from: d */
    private static boolean m2734d(int i, int i2) {
        return i2 < i && ((float) i2) < ((float) i) * 0.5f;
    }

    /* renamed from: e */
    private static Class<?> m2733e(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            return null;
        }
    }

    /* renamed from: f */
    private static void m2732f(byte[] bArr) {
        f11097a.set(new SoftReference<>(bArr));
    }

    /* renamed from: g */
    public static void m2731g(ByteBuffer byteBuffer, OutputStream outputStream) {
        int position = byteBuffer.position();
        try {
            if (byteBuffer.hasArray()) {
                outputStream.write(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
            } else if (!m2730h(byteBuffer, outputStream)) {
                byte[] m2735c = m2735c(byteBuffer.remaining());
                while (byteBuffer.hasRemaining()) {
                    int min = Math.min(byteBuffer.remaining(), m2735c.length);
                    byteBuffer.get(m2735c, 0, min);
                    outputStream.write(m2735c, 0, min);
                }
            }
            byteBuffer.position(position);
        } catch (Throwable th) {
            byteBuffer.position(position);
            throw th;
        }
    }

    /* renamed from: h */
    private static boolean m2730h(ByteBuffer byteBuffer, OutputStream outputStream) {
        WritableByteChannel writableByteChannel;
        long j = f11099c;
        if (j < 0 || !f11098b.isInstance(outputStream)) {
            return false;
        }
        try {
            writableByteChannel = (WritableByteChannel) C2630k1.m2503E(outputStream, j);
        } catch (ClassCastException e) {
            writableByteChannel = null;
        }
        if (writableByteChannel == null) {
            return false;
        }
        writableByteChannel.write(byteBuffer);
        return true;
    }
}
