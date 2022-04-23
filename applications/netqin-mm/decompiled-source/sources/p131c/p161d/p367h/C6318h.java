package p131c.p161d.p367h;

import java.io.IOException;
import java.io.OutputStream;
import java.lang.ref.SoftReference;
import java.nio.ByteBuffer;
import java.nio.channels.WritableByteChannel;
/* renamed from: c.d.h.h */
/* loaded from: classes2-dex2jar.jar:c/d/h/h.class */
public final class C6318h {

    /* renamed from: a */
    public static final ThreadLocal<SoftReference<byte[]>> f19922a = new ThreadLocal<>();

    /* renamed from: b */
    public static final Class<?> f19923b;

    /* renamed from: c */
    public static final long f19924c;

    static {
        Class<?> a = m21484a("java.io.FileOutputStream");
        f19923b = a;
        f19924c = m21485a(a);
    }

    /* renamed from: a */
    public static long m21485a(Class<?> cls) {
        if (cls == null) {
            return -1L;
        }
        try {
            if (C6347m1.m21220d()) {
                return C6347m1.m21226b(cls.getDeclaredField("channel"));
            }
            return -1L;
        } catch (Throwable th) {
            return -1L;
        }
    }

    /* renamed from: a */
    public static Class<?> m21484a(String str) {
        try {
            return Class.forName(str);
        } catch (ClassNotFoundException e) {
            return null;
        }
    }

    /* renamed from: a */
    public static void m21483a(ByteBuffer byteBuffer, OutputStream outputStream) throws IOException {
        int position = byteBuffer.position();
        try {
            if (byteBuffer.hasArray()) {
                outputStream.write(byteBuffer.array(), byteBuffer.arrayOffset() + byteBuffer.position(), byteBuffer.remaining());
            } else if (!m21481b(byteBuffer, outputStream)) {
                byte[] a = m21487a(byteBuffer.remaining());
                while (byteBuffer.hasRemaining()) {
                    int min = Math.min(byteBuffer.remaining(), a.length);
                    byteBuffer.get(a, 0, min);
                    outputStream.write(a, 0, min);
                }
            }
            byteBuffer.position(position);
        } catch (Throwable th) {
            byteBuffer.position(position);
            throw th;
        }
    }

    /* renamed from: a */
    public static void m21482a(byte[] bArr) {
        f19922a.set(new SoftReference<>(bArr));
    }

    /* renamed from: a */
    public static boolean m21486a(int i, int i2) {
        return i2 < i && ((float) i2) < ((float) i) * 0.5f;
    }

    /* renamed from: a */
    public static byte[] m21488a() {
        SoftReference<byte[]> softReference = f19922a.get();
        return softReference == null ? null : softReference.get();
    }

    /* JADX WARN: Code restructure failed: missing block: B:5:0x0018, code lost:
        if (m21486a(r0, r0.length) != false) goto L_0x001b;
     */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static byte[] m21487a(int r3) {
        /*
            r0 = r3
            r1 = 1024(0x400, float:1.435E-42)
            int r0 = java.lang.Math.max(r0, r1)
            r3 = r0
            byte[] r0 = m21488a()
            r4 = r0
            r0 = r4
            if (r0 == 0) goto L_0x001b
            r0 = r4
            r5 = r0
            r0 = r3
            r1 = r4
            int r1 = r1.length
            boolean r0 = m21486a(r0, r1)
            if (r0 == 0) goto L_0x002e
        L_0x001b:
            r0 = r3
            byte[] r0 = new byte[r0]
            r4 = r0
            r0 = r4
            r5 = r0
            r0 = r3
            r1 = 16384(0x4000, float:2.2959E-41)
            if (r0 > r1) goto L_0x002e
            r0 = r4
            m21482a(r0)
            r0 = r4
            r5 = r0
        L_0x002e:
            r0 = r5
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p161d.p367h.C6318h.m21487a(int):byte[]");
    }

    /* renamed from: b */
    public static boolean m21481b(ByteBuffer byteBuffer, OutputStream outputStream) throws IOException {
        if (f19924c < 0 || !f19923b.isInstance(outputStream)) {
            return false;
        }
        WritableByteChannel writableByteChannel = null;
        try {
            writableByteChannel = (WritableByteChannel) C6347m1.m21202n(outputStream, f19924c);
        } catch (ClassCastException e) {
        }
        if (writableByteChannel == null) {
            return false;
        }
        writableByteChannel.write(byteBuffer);
        return true;
    }
}
