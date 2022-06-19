package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
/* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream.class */
public final class CodedOutputStream {

    /* renamed from: a */
    private final byte[] f65790a;

    /* renamed from: b */
    private final int f65791b;

    /* renamed from: e */
    private final OutputStream f65794e;

    /* renamed from: d */
    private int f65793d = 0;

    /* renamed from: c */
    private int f65792c = 0;

    /* loaded from: classes5-dex2jar.jar:kotlin/reflect/jvm/internal/impl/protobuf/CodedOutputStream$OutOfSpaceException.class */
    public static class OutOfSpaceException extends IOException {
        OutOfSpaceException() {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.");
        }
    }

    private CodedOutputStream(OutputStream outputStream, byte[] bArr) {
        this.f65794e = outputStream;
        this.f65790a = bArr;
        this.f65791b = bArr.length;
    }

    /* renamed from: a */
    public static int m1819a(C19699l c19699l) {
        int m1669b = c19699l.m1669b();
        return m1792f(m1669b) + m1669b;
    }

    /* renamed from: a */
    public static CodedOutputStream m1823a(OutputStream outputStream, int i) {
        return new CodedOutputStream(outputStream, new byte[i]);
    }

    /* renamed from: a */
    private void m1831a(byte b) throws IOException {
        if (this.f65792c == this.f65791b) {
            m1814b();
        }
        byte[] bArr = this.f65790a;
        int i = this.f65792c;
        this.f65792c = i + 1;
        bArr[i] = b;
        this.f65793d++;
    }

    /* renamed from: a */
    private void m1820a(AbstractC19673d abstractC19673d, int i) throws IOException {
        int i2 = this.f65791b;
        int i3 = this.f65792c;
        if (i2 - i3 >= i) {
            abstractC19673d.m1766b(this.f65790a, 0, i3, i);
            this.f65792c += i;
        } else {
            int i4 = i2 - i3;
            abstractC19673d.m1766b(this.f65790a, 0, i3, i4);
            int i5 = i4 + 0;
            i -= i4;
            this.f65792c = this.f65791b;
            this.f65793d += i4;
            m1814b();
            if (i <= this.f65791b) {
                abstractC19673d.m1766b(this.f65790a, i5, 0, i);
                this.f65792c = i;
            } else {
                abstractC19673d.m1773a(this.f65794e, i5, i);
            }
        }
        this.f65793d += i;
    }

    /* renamed from: a */
    private void m1815a(byte[] bArr, int i) throws IOException {
        int i2 = this.f65791b;
        int i3 = this.f65792c;
        if (i2 - i3 >= i) {
            System.arraycopy(bArr, 0, this.f65790a, i3, i);
            this.f65792c += i;
        } else {
            int i4 = i2 - i3;
            System.arraycopy(bArr, 0, this.f65790a, i3, i4);
            int i5 = i4 + 0;
            i -= i4;
            this.f65792c = this.f65791b;
            this.f65793d += i4;
            m1814b();
            if (i <= this.f65791b) {
                System.arraycopy(bArr, i5, this.f65790a, 0, i);
                this.f65792c = i;
            } else {
                this.f65794e.write(bArr, i5, i);
            }
        }
        this.f65793d += i;
    }

    /* renamed from: b */
    public static int m1810b(long j) {
        return m1799d(2) + m1797d(m1791f(j));
    }

    /* renamed from: b */
    public static int m1809b(String str) {
        try {
            byte[] bytes = str.getBytes("UTF-8");
            return m1792f(bytes.length) + bytes.length;
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException("UTF-8 not supported.", e);
        }
    }

    /* renamed from: b */
    public static int m1808b(AbstractC19673d abstractC19673d) {
        return m1799d(6) + m1800c(abstractC19673d);
    }

    /* renamed from: b */
    public static int m1807b(AbstractC19705p abstractC19705p) {
        int mo1660f = abstractC19705p.mo1660f();
        return m1792f(mo1660f) + mo1660f;
    }

    /* renamed from: b */
    public static int m1805b(byte[] bArr) {
        return m1792f(bArr.length) + bArr.length;
    }

    /* renamed from: b */
    private void m1814b() throws IOException {
        OutputStream outputStream = this.f65794e;
        if (outputStream != null) {
            outputStream.write(this.f65790a, 0, this.f65792c);
            this.f65792c = 0;
            return;
        }
        throw new OutOfSpaceException();
    }

    /* renamed from: c */
    public static int m1804c(int i) {
        if (i >= 0) {
            return m1792f(i);
        }
        return 10;
    }

    /* renamed from: c */
    public static int m1803c(int i, int i2) {
        return m1799d(i) + m1804c(i2);
    }

    /* renamed from: c */
    public static int m1802c(int i, AbstractC19705p abstractC19705p) {
        return m1799d(i) + m1807b(abstractC19705p);
    }

    /* renamed from: c */
    public static int m1800c(AbstractC19673d abstractC19673d) {
        return m1792f(abstractC19673d.mo1649a()) + abstractC19673d.mo1649a();
    }

    /* renamed from: d */
    public static int m1799d(int i) {
        return m1792f(C19728x.m1590a(i, 0));
    }

    /* renamed from: d */
    public static int m1798d(int i, int i2) {
        return m1799d(i) + m1804c(i2);
    }

    /* renamed from: d */
    public static int m1797d(long j) {
        if (((-128) & j) == 0) {
            return 1;
        }
        if (((-16384) & j) == 0) {
            return 2;
        }
        if (((-2097152) & j) == 0) {
            return 3;
        }
        if (((-268435456) & j) == 0) {
            return 4;
        }
        if (((-34359738368L) & j) == 0) {
            return 5;
        }
        if (((-4398046511104L) & j) == 0) {
            return 6;
        }
        if (((-562949953421312L) & j) == 0) {
            return 7;
        }
        if (((-72057594037927936L) & j) == 0) {
            return 8;
        }
        return (j & Long.MIN_VALUE) == 0 ? 9 : 10;
    }

    /* renamed from: f */
    public static int m1792f(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }

    /* renamed from: f */
    public static long m1791f(long j) {
        return (j >> 63) ^ (j << 1);
    }

    /* renamed from: h */
    public static int m1789h(int i) {
        return (i >> 31) ^ (i << 1);
    }

    /* renamed from: a */
    public final void m1832a() throws IOException {
        if (this.f65794e != null) {
            m1814b();
        }
    }

    /* renamed from: a */
    public final void m1830a(double d) throws IOException {
        m1793e(Double.doubleToRawLongBits(d));
    }

    /* renamed from: a */
    public final void m1829a(float f) throws IOException {
        m1790g(Float.floatToRawIntBits(f));
    }

    /* renamed from: a */
    public final void m1828a(int i) throws IOException {
        if (i >= 0) {
            m1795e(i);
        } else {
            m1801c(i);
        }
    }

    /* renamed from: a */
    public final void m1827a(int i, int i2) throws IOException {
        m1794e(i, 0);
        m1828a(i2);
    }

    /* renamed from: a */
    public final void m1826a(int i, AbstractC19673d abstractC19673d) throws IOException {
        m1794e(i, 2);
        m1821a(abstractC19673d);
    }

    /* renamed from: a */
    public final void m1825a(int i, AbstractC19705p abstractC19705p) throws IOException {
        m1794e(i, 2);
        m1818a(abstractC19705p);
    }

    /* renamed from: a */
    public final void m1824a(long j) throws IOException {
        m1801c(m1791f(j));
    }

    /* renamed from: a */
    public final void m1822a(String str) throws IOException {
        byte[] bytes = str.getBytes("UTF-8");
        m1795e(bytes.length);
        m1815a(bytes, bytes.length);
    }

    /* renamed from: a */
    public final void m1821a(AbstractC19673d abstractC19673d) throws IOException {
        m1795e(abstractC19673d.mo1649a());
        m1796d(abstractC19673d);
    }

    /* renamed from: a */
    public final void m1818a(AbstractC19705p abstractC19705p) throws IOException {
        m1795e(abstractC19705p.mo1660f());
        abstractC19705p.mo1662a(this);
    }

    /* renamed from: a */
    public final void m1817a(boolean z) throws IOException {
        m1794e(3, 0);
        m1806b(z);
    }

    /* renamed from: a */
    public final void m1816a(byte[] bArr) throws IOException {
        m1795e(bArr.length);
        m1815a(bArr, bArr.length);
    }

    /* renamed from: b */
    public final void m1813b(int i) throws IOException {
        m1795e(m1789h(i));
    }

    /* renamed from: b */
    public final void m1812b(int i, int i2) throws IOException {
        m1794e(i, 0);
        m1828a(i2);
    }

    /* renamed from: b */
    public final void m1811b(int i, AbstractC19705p abstractC19705p) throws IOException {
        m1794e(1, 3);
        m1794e(2, 0);
        m1795e(i);
        m1825a(3, abstractC19705p);
        m1794e(1, 4);
    }

    /* renamed from: b */
    public final void m1806b(boolean z) throws IOException {
        m1831a(z ? (byte) 1 : (byte) 0);
    }

    /* JADX WARN: Code restructure failed: missing block: B:0:?, code lost:
        r6 = r6;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v6, types: [long] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m1801c(long r6) throws java.io.IOException {
        /*
            r5 = this;
        L0:
            r0 = -128(0xffffffffffffff80, double:NaN)
            r1 = r6
            long r0 = r0 & r1
            r1 = 0
            int r0 = (r0 > r1 ? 1 : (r0 == r1 ? 0 : -1))
            if (r0 != 0) goto L12
            r0 = r5
            r1 = r6
            int r1 = (int) r1
            byte r1 = (byte) r1
            r0.m1831a(r1)
            return
        L12:
            r0 = r5
            r1 = r6
            int r1 = (int) r1
            r2 = 127(0x7f, float:1.78E-43)
            r1 = r1 & r2
            r2 = 128(0x80, float:1.794E-43)
            r1 = r1 | r2
            byte r1 = (byte) r1
            r0.m1831a(r1)
            r0 = r6
            r1 = 7
            long r0 = r0 >>> r1
            r6 = r0
            goto L0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.protobuf.CodedOutputStream.m1801c(long):void");
    }

    /* renamed from: d */
    public final void m1796d(AbstractC19673d abstractC19673d) throws IOException {
        m1820a(abstractC19673d, abstractC19673d.mo1649a());
    }

    /* renamed from: e */
    public final void m1795e(int i) throws IOException {
        while ((i & (-128)) != 0) {
            m1831a((byte) ((i & 127) | 128));
            i >>>= 7;
        }
        m1831a((byte) i);
    }

    /* renamed from: e */
    public final void m1794e(int i, int i2) throws IOException {
        m1795e(C19728x.m1590a(i, i2));
    }

    /* renamed from: e */
    public final void m1793e(long j) throws IOException {
        m1831a((byte) (((int) j) & 255));
        m1831a((byte) (((int) (j >> 8)) & 255));
        m1831a((byte) (((int) (j >> 16)) & 255));
        m1831a((byte) (((int) (j >> 24)) & 255));
        m1831a((byte) (((int) (j >> 32)) & 255));
        m1831a((byte) (((int) (j >> 40)) & 255));
        m1831a((byte) (((int) (j >> 48)) & 255));
        m1831a((byte) (((int) (j >> 56)) & 255));
    }

    /* renamed from: g */
    public final void m1790g(int i) throws IOException {
        m1831a((byte) (i & 255));
        m1831a((byte) ((i >> 8) & 255));
        m1831a((byte) ((i >> 16) & 255));
        m1831a((byte) ((i >> 24) & 255));
    }
}
