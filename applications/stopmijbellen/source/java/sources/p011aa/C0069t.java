package p011aa;

import android.support.p012v4.media.C0082b;
import java.io.EOFException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.Objects;
/* renamed from: aa.t */
/* loaded from: classes2-dex2jar.jar:aa/t.class */
public final class C0069t implements AbstractC0055h {

    /* renamed from: a */
    public final C0053f f148a = new C0053f();

    /* renamed from: b */
    public final AbstractC0074y f149b;

    /* renamed from: c */
    public boolean f150c;

    public C0069t(AbstractC0074y abstractC0074y) {
        Objects.requireNonNull(abstractC0074y, "source == null");
        this.f149b = abstractC0074y;
    }

    @Override // p011aa.AbstractC0055h
    /* renamed from: C */
    public short mo8813C() throws IOException {
        mo8810Q(2L);
        return this.f148a.mo8813C();
    }

    @Override // p011aa.AbstractC0055h
    /* renamed from: G */
    public long mo8812G() throws IOException {
        int i;
        byte m8844l;
        mo8810Q(1L);
        int i2 = 0;
        while (true) {
            i = i2;
            int i3 = i + 1;
            if (!m8801o(i3)) {
                break;
            }
            m8844l = this.f148a.m8844l(i);
            if ((m8844l < 48 || m8844l > 57) && !(i == 0 && m8844l == 45)) {
                break;
            }
            i2 = i3;
        }
        if (i == 0) {
            throw new NumberFormatException(String.format("Expected leading [0-9] or '-' character but was %#x", Byte.valueOf(m8844l)));
        }
        return this.f148a.mo8812G();
    }

    /* JADX WARN: Type inference failed for: r0v49, types: [long] */
    @Override // p011aa.AbstractC0055h
    /* renamed from: H */
    public String mo8811H(long j) throws IOException {
        if (j < 0) {
            throw new IllegalArgumentException("limit < 0: " + j);
        }
        char c = j == Long.MAX_VALUE ? (char) 65535 : j + 1;
        long m8806d = m8806d((byte) 10, 0L, c);
        if (m8806d != -1) {
            return this.f148a.m8860J(m8806d);
        }
        if (c < Long.MAX_VALUE && m8801o(c) && this.f148a.m8844l(c - 1) == 13 && m8801o(1 + c) && this.f148a.m8844l(c) == 10) {
            return this.f148a.m8860J(c);
        }
        C0053f c0053f = new C0053f();
        C0053f c0053f2 = this.f148a;
        c0053f2.m8845k(c0053f, 0L, Math.min(32L, c0053f2.f120b));
        StringBuilder m8752j = C0082b.m8752j("\\n not found: limit=");
        m8752j.append(Math.min(this.f148a.f120b, j));
        m8752j.append(" content=");
        m8752j.append(c0053f.m8840s().mo8788h());
        m8752j.append((char) 8230);
        throw new EOFException(m8752j.toString());
    }

    @Override // p011aa.AbstractC0055h
    /* renamed from: Q */
    public void mo8810Q(long j) throws IOException {
        if (m8801o(j)) {
            return;
        }
        throw new EOFException();
    }

    @Override // p011aa.AbstractC0055h
    /* renamed from: V */
    public long mo8809V(byte b) throws IOException {
        return m8806d(b, 0L, Long.MAX_VALUE);
    }

    @Override // p011aa.AbstractC0055h
    /* renamed from: X */
    public long mo8808X() throws IOException {
        int i;
        byte m8844l;
        mo8810Q(1L);
        int i2 = 0;
        while (true) {
            i = i2;
            int i3 = i + 1;
            if (!m8801o(i3)) {
                break;
            }
            m8844l = this.f148a.m8844l(i);
            if ((m8844l < 48 || m8844l > 57) && ((m8844l < 97 || m8844l > 102) && (m8844l < 65 || m8844l > 70))) {
                break;
            }
            i2 = i3;
        }
        if (i == 0) {
            throw new NumberFormatException(String.format("Expected leading [0-9a-fA-F] character but was %#x", Byte.valueOf(m8844l)));
        }
        return this.f148a.mo8808X();
    }

    @Override // p011aa.AbstractC0055h, p011aa.AbstractC0054g
    /* renamed from: a */
    public C0053f mo8807a() {
        return this.f148a;
    }

    @Override // p011aa.AbstractC0074y
    /* renamed from: b */
    public C0075z mo610b() {
        return this.f149b.mo610b();
    }

    @Override // p011aa.AbstractC0074y, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (this.f150c) {
            return;
        }
        this.f150c = true;
        this.f149b.close();
        this.f148a.m8849d();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [aa.f] */
    /* JADX WARN: Type inference failed for: r0v30, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* renamed from: d */
    public long m8806d(byte b, long j, long j2) throws IOException {
        if (!this.f150c) {
            if (j >= 0) {
                int i = (j2 > j ? 1 : (j2 == j ? 0 : -1));
                ?? r11 = j;
                if (i >= 0) {
                    while (r11 < j2) {
                        long m8843o = this.f148a.m8843o(b, r11, j2);
                        if (m8843o != -1) {
                            return m8843o;
                        }
                        C0053f c0053f = this.f148a;
                        long j3 = c0053f.f120b;
                        if (j3 >= j2 || this.f149b.mo609f(c0053f, 8192L) == -1) {
                            return -1L;
                        }
                        r11 = Math.max((long) r11, j3);
                    }
                    return -1L;
                }
            }
            throw new IllegalArgumentException(String.format("fromIndex=%s toIndex=%s", Long.valueOf(j), Long.valueOf(j2)));
        }
        throw new IllegalStateException("closed");
    }

    @Override // p011aa.AbstractC0074y
    /* renamed from: f */
    public long mo609f(C0053f c0053f, long j) throws IOException {
        if (c0053f != null) {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            } else if (this.f150c) {
                throw new IllegalStateException("closed");
            } else {
                C0053f c0053f2 = this.f148a;
                if (c0053f2.f120b == 0 && this.f149b.mo609f(c0053f2, 8192L) == -1) {
                    return -1L;
                }
                return this.f148a.mo609f(c0053f, Math.min(j, this.f148a.f120b));
            }
        }
        throw new IllegalArgumentException("sink == null");
    }

    @Override // p011aa.AbstractC0055h
    /* renamed from: i */
    public C0056i mo8805i(long j) throws IOException {
        if (m8801o(j)) {
            return this.f148a.mo8805i(j);
        }
        throw new EOFException();
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f150c;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v15, types: [long] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    @Override // p011aa.AbstractC0055h
    /* renamed from: j */
    public void mo8804j(long j) throws IOException {
        ?? r6 = j;
        if (!this.f150c) {
            while (r6 > 0) {
                C0053f c0053f = this.f148a;
                if (c0053f.f120b == 0 && this.f149b.mo609f(c0053f, 8192L) == -1) {
                    throw new EOFException();
                }
                long min = Math.min((long) r6, this.f148a.f120b);
                this.f148a.mo8804j(min);
                r6 -= min;
            }
            return;
        }
        throw new IllegalStateException("closed");
    }

    /* renamed from: k */
    public boolean m8803k(long j, C0056i c0056i) throws IOException {
        int mo8785l = c0056i.mo8785l();
        if (!this.f150c) {
            boolean z = false;
            if (j >= 0) {
                z = false;
                if (mo8785l >= 0) {
                    if (c0056i.mo8785l() - 0 >= mo8785l) {
                        int i = 0;
                        while (true) {
                            if (i >= mo8785l) {
                                z = true;
                                break;
                            }
                            long j2 = i + j;
                            if (!m8801o(1 + j2)) {
                                z = false;
                                break;
                            } else if (this.f148a.m8844l(j2) != c0056i.mo8789g(0 + i)) {
                                z = false;
                                break;
                            } else {
                                i++;
                            }
                        }
                    } else {
                        z = false;
                    }
                }
            }
            return z;
        }
        throw new IllegalStateException("closed");
    }

    /* renamed from: l */
    public void m8802l(byte[] bArr) throws IOException {
        try {
            mo8810Q(bArr.length);
            this.f148a.m8863A(bArr);
        } catch (EOFException e) {
            int i = 0;
            while (true) {
                int i2 = i;
                C0053f c0053f = this.f148a;
                long j = c0053f.f120b;
                if (j <= 0) {
                    throw e;
                }
                int m8842p = c0053f.m8842p(bArr, i2, (int) j);
                if (m8842p == -1) {
                    throw new AssertionError();
                }
                i = i2 + m8842p;
            }
        }
    }

    /* renamed from: o */
    public boolean m8801o(long j) throws IOException {
        C0053f c0053f;
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        } else if (this.f150c) {
            throw new IllegalStateException("closed");
        } else {
            do {
                c0053f = this.f148a;
                if (c0053f.f120b >= j) {
                    return true;
                }
            } while (this.f149b.mo609f(c0053f, 8192L) != -1);
            return false;
        }
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        C0053f c0053f = this.f148a;
        if (c0053f.f120b == 0 && this.f149b.mo609f(c0053f, 8192L) == -1) {
            return -1;
        }
        return this.f148a.read(byteBuffer);
    }

    @Override // p011aa.AbstractC0055h
    public byte readByte() throws IOException {
        mo8810Q(1L);
        return this.f148a.readByte();
    }

    @Override // p011aa.AbstractC0055h
    public int readInt() throws IOException {
        mo8810Q(4L);
        return this.f148a.readInt();
    }

    @Override // p011aa.AbstractC0055h
    public short readShort() throws IOException {
        mo8810Q(2L);
        return this.f148a.readShort();
    }

    @Override // p011aa.AbstractC0055h
    /* renamed from: t */
    public String mo8800t() throws IOException {
        return mo8811H(Long.MAX_VALUE);
    }

    public String toString() {
        StringBuilder m8752j = C0082b.m8752j("buffer(");
        m8752j.append(this.f149b);
        m8752j.append(")");
        return m8752j.toString();
    }

    @Override // p011aa.AbstractC0055h
    /* renamed from: u */
    public int mo8799u() throws IOException {
        mo8810Q(4L);
        return this.f148a.mo8799u();
    }

    @Override // p011aa.AbstractC0055h
    /* renamed from: v */
    public boolean mo8798v() throws IOException {
        if (!this.f150c) {
            return this.f148a.mo8798v() && this.f149b.mo609f(this.f148a, 8192L) == -1;
        }
        throw new IllegalStateException("closed");
    }

    @Override // p011aa.AbstractC0055h
    /* renamed from: x */
    public byte[] mo8797x(long j) throws IOException {
        if (m8801o(j)) {
            return this.f148a.mo8797x(j);
        }
        throw new EOFException();
    }
}
