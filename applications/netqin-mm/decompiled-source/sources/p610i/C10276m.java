package p610i;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import okio.ByteString;
/* renamed from: i.m */
/* loaded from: classes2-dex2jar.jar:i/m.class */
public final class C10276m implements AbstractC10264e {

    /* renamed from: a */
    public final C10260c f37913a = new C10260c();

    /* renamed from: b */
    public final AbstractC10281q f37914b;

    /* renamed from: c */
    public boolean f37915c;

    /* renamed from: i.m$a */
    /* loaded from: classes2-dex2jar.jar:i/m$a.class */
    public class C10277a extends InputStream {
        public C10277a() {
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            C10276m mVar = C10276m.this;
            if (!mVar.f37915c) {
                return (int) Math.min(mVar.f37913a.f37889b, 2147483647L);
            }
            throw new IOException("closed");
        }

        @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            C10276m.this.close();
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            C10276m mVar = C10276m.this;
            if (!mVar.f37915c) {
                C10260c cVar = mVar.f37913a;
                if (cVar.f37889b == 0 && mVar.f37914b.mo704b(cVar, 8192L) == -1) {
                    return -1;
                }
                return C10276m.this.f37913a.readByte() & 255;
            }
            throw new IOException("closed");
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) throws IOException {
            if (!C10276m.this.f37915c) {
                C10284s.m693a(bArr.length, i, i2);
                C10276m mVar = C10276m.this;
                C10260c cVar = mVar.f37913a;
                if (cVar.f37889b == 0 && mVar.f37914b.mo704b(cVar, 8192L) == -1) {
                    return -1;
                }
                return C10276m.this.f37913a.read(bArr, i, i2);
            }
            throw new IOException("closed");
        }

        public String toString() {
            return C10276m.this + ".inputStream()";
        }
    }

    public C10276m(AbstractC10281q qVar) {
        if (qVar != null) {
            this.f37914b = qVar;
            return;
        }
        throw new NullPointerException("source == null");
    }

    @Override // p610i.AbstractC10264e
    /* renamed from: G0 */
    public byte[] mo733G0() throws IOException {
        this.f37913a.mo739a(this.f37914b);
        return this.f37913a.mo733G0();
    }

    @Override // p610i.AbstractC10264e
    /* renamed from: I1 */
    public String mo732I1() throws IOException {
        return mo721c(Long.MAX_VALUE);
    }

    @Override // p610i.AbstractC10264e
    /* renamed from: L1 */
    public int mo731L1() throws IOException {
        mo715g(4L);
        return this.f37913a.mo731L1();
    }

    @Override // p610i.AbstractC10264e
    /* renamed from: M0 */
    public boolean mo730M0() throws IOException {
        if (!this.f37915c) {
            return this.f37913a.mo730M0() && this.f37914b.mo704b(this.f37913a, 8192L) == -1;
        }
        throw new IllegalStateException("closed");
    }

    @Override // p610i.AbstractC10264e
    /* renamed from: Q1 */
    public short mo729Q1() throws IOException {
        mo715g(2L);
        return this.f37913a.mo729Q1();
    }

    @Override // p610i.AbstractC10264e, p610i.AbstractC10263d
    /* renamed from: W */
    public C10260c mo728W() {
        return this.f37913a;
    }

    @Override // p610i.AbstractC10264e
    /* renamed from: a */
    public long mo727a(byte b) throws IOException {
        return m726a(b, 0L, Long.MAX_VALUE);
    }

    /* renamed from: a */
    public long m726a(byte b, long j, long j2) throws IOException {
        if (this.f37915c) {
            throw new IllegalStateException("closed");
        } else if (j < 0 || j2 < j) {
            throw new IllegalArgumentException(String.format("fromIndex=%s toIndex=%s", Long.valueOf(j), Long.valueOf(j2)));
        } else {
            while (j < j2) {
                long a = this.f37913a.m782a(b, j, j2);
                if (a != -1) {
                    return a;
                }
                C10260c cVar = this.f37913a;
                long j3 = cVar.f37889b;
                if (j3 >= j2 || this.f37914b.mo704b(cVar, 8192L) == -1) {
                    return -1L;
                }
                j = Math.max(j, j3);
            }
            return -1L;
        }
    }

    @Override // p610i.AbstractC10264e
    /* renamed from: a */
    public String mo722a(Charset charset) throws IOException {
        if (charset != null) {
            this.f37913a.mo739a(this.f37914b);
            return this.f37913a.mo722a(charset);
        }
        throw new IllegalArgumentException("charset == null");
    }

    @Override // p610i.AbstractC10264e
    /* renamed from: a */
    public ByteString mo725a(long j) throws IOException {
        mo715g(j);
        return this.f37913a.mo725a(j);
    }

    @Override // p610i.AbstractC10264e
    /* renamed from: a */
    public boolean mo724a(long j, ByteString byteString) throws IOException {
        return m723a(j, byteString, 0, byteString.size());
    }

    /* renamed from: a */
    public boolean m723a(long j, ByteString byteString, int i, int i2) throws IOException {
        if (this.f37915c) {
            throw new IllegalStateException("closed");
        } else if (j < 0 || i < 0 || i2 < 0 || byteString.size() - i < i2) {
            return false;
        } else {
            for (int i3 = 0; i3 < i2; i3++) {
                long j2 = i3 + j;
                if (!(m719d(1 + j2) && this.f37913a.m772d(j2) == byteString.getByte(i + i3))) {
                    return false;
                }
            }
            return true;
        }
    }

    @Override // p610i.AbstractC10281q
    /* renamed from: b */
    public long mo704b(C10260c cVar, long j) throws IOException {
        if (cVar == null) {
            throw new IllegalArgumentException("sink == null");
        } else if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        } else if (!this.f37915c) {
            C10260c cVar2 = this.f37913a;
            if (cVar2.f37889b == 0 && this.f37914b.mo704b(cVar2, 8192L) == -1) {
                return -1L;
            }
            return this.f37913a.mo704b(cVar, Math.min(j, this.f37913a.f37889b));
        } else {
            throw new IllegalStateException("closed");
        }
    }

    @Override // p610i.AbstractC10264e
    /* renamed from: c */
    public String mo721c(long j) throws IOException {
        if (j >= 0) {
            long j2 = j == Long.MAX_VALUE ? Long.MAX_VALUE : j + 1;
            long a = m726a((byte) 10, 0L, j2);
            if (a != -1) {
                return this.f37913a.m766j(a);
            }
            if (j2 < Long.MAX_VALUE && m719d(j2) && this.f37913a.m772d(j2 - 1) == 13 && m719d(1 + j2) && this.f37913a.m772d(j2) == 10) {
                return this.f37913a.m766j(j2);
            }
            C10260c cVar = new C10260c();
            C10260c cVar2 = this.f37913a;
            cVar2.m778a(cVar, 0L, Math.min(32L, cVar2.size()));
            throw new EOFException("\\n not found: limit=" + Math.min(this.f37913a.size(), j) + " content=" + cVar.m769h().hex() + (char) 8230);
        }
        throw new IllegalArgumentException("limit < 0: " + j);
    }

    @Override // p610i.AbstractC10264e
    /* renamed from: c1 */
    public long mo720c1() throws IOException {
        byte d;
        mo715g(1L);
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (!m719d(i2)) {
                break;
            }
            d = this.f37913a.m772d(i);
            if ((d < 48 || d > 57) && !(i == 0 && d == 45)) {
                break;
            }
            i = i2;
        }
        if (i == 0) {
            throw new NumberFormatException(String.format("Expected leading [0-9] or '-' character but was %#x", Byte.valueOf(d)));
        }
        return this.f37913a.mo720c1();
    }

    @Override // p610i.AbstractC10281q, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.f37915c) {
            this.f37915c = true;
            this.f37914b.close();
            this.f37913a.m774c();
        }
    }

    /* renamed from: d */
    public boolean m719d(long j) throws IOException {
        C10260c cVar;
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        } else if (!this.f37915c) {
            do {
                cVar = this.f37913a;
                if (cVar.f37889b >= j) {
                    return true;
                }
            } while (this.f37914b.mo704b(cVar, 8192L) != -1);
            return false;
        } else {
            throw new IllegalStateException("closed");
        }
    }

    @Override // p610i.AbstractC10264e
    /* renamed from: d2 */
    public long mo718d2() throws IOException {
        byte d;
        mo715g(1L);
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (!m719d(i2)) {
                break;
            }
            d = this.f37913a.m772d(i);
            if ((d < 48 || d > 57) && ((d < 97 || d > 102) && (d < 65 || d > 70))) {
                break;
            }
            i = i2;
        }
        if (i == 0) {
            throw new NumberFormatException(String.format("Expected leading [0-9a-fA-F] character but was %#x", Byte.valueOf(d)));
        }
        return this.f37913a.mo718d2();
    }

    @Override // p610i.AbstractC10264e
    /* renamed from: e2 */
    public InputStream mo717e2() {
        return new C10277a();
    }

    @Override // p610i.AbstractC10264e
    /* renamed from: f */
    public byte[] mo716f(long j) throws IOException {
        mo715g(j);
        return this.f37913a.mo716f(j);
    }

    @Override // p610i.AbstractC10281q
    /* renamed from: f0 */
    public C10282r mo703f0() {
        return this.f37914b.mo703f0();
    }

    @Override // p610i.AbstractC10264e
    /* renamed from: g */
    public void mo715g(long j) throws IOException {
        if (!m719d(j)) {
            throw new EOFException();
        }
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f37915c;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        C10260c cVar = this.f37913a;
        if (cVar.f37889b == 0 && this.f37914b.mo704b(cVar, 8192L) == -1) {
            return -1;
        }
        return this.f37913a.read(byteBuffer);
    }

    @Override // p610i.AbstractC10264e
    public byte readByte() throws IOException {
        mo715g(1L);
        return this.f37913a.readByte();
    }

    @Override // p610i.AbstractC10264e
    public void readFully(byte[] bArr) throws IOException {
        try {
            mo715g(bArr.length);
            this.f37913a.readFully(bArr);
        } catch (EOFException e) {
            int i = 0;
            while (true) {
                C10260c cVar = this.f37913a;
                long j = cVar.f37889b;
                if (j > 0) {
                    int read = cVar.read(bArr, i, (int) j);
                    if (read != -1) {
                        i += read;
                    } else {
                        throw new AssertionError();
                    }
                } else {
                    throw e;
                }
            }
        }
    }

    @Override // p610i.AbstractC10264e
    public int readInt() throws IOException {
        mo715g(4L);
        return this.f37913a.readInt();
    }

    @Override // p610i.AbstractC10264e
    public short readShort() throws IOException {
        mo715g(2L);
        return this.f37913a.readShort();
    }

    @Override // p610i.AbstractC10264e
    public void skip(long j) throws IOException {
        if (!this.f37915c) {
            while (j > 0) {
                C10260c cVar = this.f37913a;
                if (cVar.f37889b == 0 && this.f37914b.mo704b(cVar, 8192L) == -1) {
                    throw new EOFException();
                }
                long min = Math.min(j, this.f37913a.size());
                this.f37913a.skip(min);
                j -= min;
            }
            return;
        }
        throw new IllegalStateException("closed");
    }

    public String toString() {
        return "buffer(" + this.f37914b + ")";
    }
}
