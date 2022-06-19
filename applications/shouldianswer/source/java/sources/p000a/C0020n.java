package p000a;

import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
/* renamed from: a.n */
/* loaded from: classes-dex2jar.jar:a/n.class */
public final class C0020n implements AbstractC0008e {

    /* renamed from: a */
    public final C0005c f42a = new C0005c();

    /* renamed from: b */
    public final AbstractC0026s f43b;

    /* renamed from: c */
    boolean f44c;

    public C0020n(AbstractC0026s abstractC0026s) {
        if (abstractC0026s != null) {
            this.f43b = abstractC0026s;
            return;
        }
        throw new NullPointerException("source == null");
    }

    @Override // p000a.AbstractC0008e
    /* renamed from: a */
    public long mo8080a(byte b) {
        return m8079a(b, 0L, Long.MAX_VALUE);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v12, types: [a.c] */
    /* JADX WARN: Type inference failed for: r0v29, types: [long] */
    /* JADX WARN: Type inference failed for: r11v1 */
    /* JADX WARN: Type inference failed for: r11v2 */
    /* JADX WARN: Type inference failed for: r11v3 */
    /* renamed from: a */
    public long m8079a(byte b, long j, long j2) {
        if (!this.f44c) {
            if (j >= 0) {
                int i = (j2 > j ? 1 : (j2 == j ? 0 : -1));
                ?? r11 = j;
                if (i >= 0) {
                    while (r11 < j2) {
                        long m8148a = this.f42a.m8148a(b, r11, j2);
                        if (m8148a != -1) {
                            return m8148a;
                        }
                        long j3 = this.f42a.f14b;
                        if (j3 >= j2 || this.f43b.mo2087a(this.f42a, 8192L) == -1) {
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

    @Override // p000a.AbstractC0026s
    /* renamed from: a */
    public long mo2087a(C0005c c0005c, long j) {
        if (c0005c != null) {
            if (j < 0) {
                throw new IllegalArgumentException("byteCount < 0: " + j);
            } else if (this.f44c) {
                throw new IllegalStateException("closed");
            } else {
                if (this.f42a.f14b == 0 && this.f43b.mo2087a(this.f42a, 8192L) == -1) {
                    return -1L;
                }
                return this.f42a.mo2087a(c0005c, Math.min(j, this.f42a.f14b));
            }
        }
        throw new IllegalArgumentException("sink == null");
    }

    @Override // p000a.AbstractC0026s
    /* renamed from: a */
    public C0027t mo2088a() {
        return this.f43b.mo2088a();
    }

    @Override // p000a.AbstractC0008e
    /* renamed from: a */
    public String mo8075a(Charset charset) {
        if (charset != null) {
            this.f42a.m8142a(this.f43b);
            return this.f42a.mo8075a(charset);
        }
        throw new IllegalArgumentException("charset == null");
    }

    @Override // p000a.AbstractC0008e
    /* renamed from: a */
    public void mo8078a(long j) {
        if (m8073b(j)) {
            return;
        }
        throw new EOFException();
    }

    @Override // p000a.AbstractC0008e
    /* renamed from: a */
    public void mo8074a(byte[] bArr) {
        try {
            mo8078a(bArr.length);
            this.f42a.mo8074a(bArr);
        } catch (EOFException e) {
            int i = 0;
            while (true) {
                int i2 = i;
                if (this.f42a.f14b <= 0) {
                    throw e;
                }
                C0005c c0005c = this.f42a;
                int m8138a = c0005c.m8138a(bArr, i2, (int) c0005c.f14b);
                if (m8138a == -1) {
                    throw new AssertionError();
                }
                i = i2 + m8138a;
            }
        }
    }

    @Override // p000a.AbstractC0008e
    /* renamed from: a */
    public boolean mo8077a(long j, C0009f c0009f) {
        return m8076a(j, c0009f, 0, c0009f.mo8038g());
    }

    /* renamed from: a */
    public boolean m8076a(long j, C0009f c0009f, int i, int i2) {
        if (!this.f44c) {
            if (j < 0 || i < 0 || i2 < 0 || c0009f.mo8038g() - i < i2) {
                return false;
            }
            for (int i3 = 0; i3 < i2; i3++) {
                long j2 = i3 + j;
                if (!m8073b(1 + j2) || this.f42a.m8135b(j2) != c0009f.mo8049a(i + i3)) {
                    return false;
                }
            }
            return true;
        }
        throw new IllegalStateException("closed");
    }

    /* renamed from: b */
    public boolean m8073b(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + j);
        } else if (this.f44c) {
            throw new IllegalStateException("closed");
        } else {
            while (this.f42a.f14b < j) {
                if (this.f43b.mo2087a(this.f42a, 8192L) == -1) {
                    return false;
                }
            }
            return true;
        }
    }

    @Override // p000a.AbstractC0008e
    /* renamed from: c */
    public C0005c mo8072c() {
        return this.f42a;
    }

    @Override // p000a.AbstractC0008e
    /* renamed from: c */
    public C0009f mo8071c(long j) {
        mo8078a(j);
        return this.f42a.mo8071c(j);
    }

    @Override // p000a.AbstractC0026s, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.f44c) {
            return;
        }
        this.f44c = true;
        this.f43b.close();
        this.f42a.m8119r();
    }

    /* JADX WARN: Type inference failed for: r0v50, types: [long] */
    @Override // p000a.AbstractC0008e
    /* renamed from: e */
    public String mo8069e(long j) {
        if (j < 0) {
            throw new IllegalArgumentException("limit < 0: " + j);
        }
        char c = j == Long.MAX_VALUE ? (char) 65535 : j + 1;
        long m8079a = m8079a((byte) 10, 0L, c);
        if (m8079a != -1) {
            return this.f42a.m8126f(m8079a);
        }
        if (c < Long.MAX_VALUE && m8073b(c) && this.f42a.m8135b(c - 1) == 13 && m8073b(1 + c) && this.f42a.m8135b((long) c) == 10) {
            return this.f42a.m8126f((long) c);
        }
        C0005c c0005c = new C0005c();
        C0005c c0005c2 = this.f42a;
        c0005c2.m8144a(c0005c, 0L, Math.min(32L, c0005c2.m8137b()));
        throw new EOFException("\\n not found: limit=" + Math.min(this.f42a.m8137b(), j) + " content=" + c0005c.m8122n().mo8040e() + (char) 8230);
    }

    @Override // p000a.AbstractC0008e
    /* renamed from: e */
    public boolean mo8070e() {
        if (!this.f44c) {
            return this.f42a.mo8070e() && this.f43b.mo2087a(this.f42a, 8192L) == -1;
        }
        throw new IllegalStateException("closed");
    }

    @Override // p000a.AbstractC0008e
    /* renamed from: f */
    public InputStream mo8068f() {
        return new InputStream() { // from class: a.n.1
            @Override // java.io.InputStream
            public int available() {
                if (!C0020n.this.f44c) {
                    return (int) Math.min(C0020n.this.f42a.f14b, 2147483647L);
                }
                throw new IOException("closed");
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
                C0020n.this.close();
            }

            @Override // java.io.InputStream
            public int read() {
                if (!C0020n.this.f44c) {
                    if (C0020n.this.f42a.f14b != 0 || C0020n.this.f43b.mo2087a(C0020n.this.f42a, 8192L) != -1) {
                        return C0020n.this.f42a.mo8066h() & 255;
                    }
                    return -1;
                }
                throw new IOException("closed");
            }

            @Override // java.io.InputStream
            public int read(byte[] bArr, int i, int i2) {
                if (!C0020n.this.f44c) {
                    C0029u.m8026a(bArr.length, i, i2);
                    if (C0020n.this.f42a.f14b != 0 || C0020n.this.f43b.mo2087a(C0020n.this.f42a, 8192L) != -1) {
                        return C0020n.this.f42a.m8138a(bArr, i, i2);
                    }
                    return -1;
                }
                throw new IOException("closed");
            }

            public String toString() {
                return C0020n.this + ".inputStream()";
            }
        };
    }

    @Override // p000a.AbstractC0008e
    /* renamed from: g */
    public byte[] mo8067g(long j) {
        mo8078a(j);
        return this.f42a.mo8067g(j);
    }

    @Override // p000a.AbstractC0008e
    /* renamed from: h */
    public byte mo8066h() {
        mo8078a(1L);
        return this.f42a.mo8066h();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [long] */
    /* JADX WARN: Type inference failed for: r6v1 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    @Override // p000a.AbstractC0008e
    /* renamed from: h */
    public void mo8065h(long j) {
        ?? r6 = j;
        if (!this.f44c) {
            while (r6 > 0) {
                if (this.f42a.f14b == 0 && this.f43b.mo2087a(this.f42a, 8192L) == -1) {
                    throw new EOFException();
                }
                long min = Math.min((long) r6, this.f42a.m8137b());
                this.f42a.mo8065h(min);
                r6 -= min;
            }
            return;
        }
        throw new IllegalStateException("closed");
    }

    @Override // p000a.AbstractC0008e
    /* renamed from: i */
    public short mo8064i() {
        mo8078a(2L);
        return this.f42a.mo8064i();
    }

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return !this.f44c;
    }

    @Override // p000a.AbstractC0008e
    /* renamed from: j */
    public int mo8063j() {
        mo8078a(4L);
        return this.f42a.mo8063j();
    }

    @Override // p000a.AbstractC0008e
    /* renamed from: k */
    public short mo8062k() {
        mo8078a(2L);
        return this.f42a.mo8062k();
    }

    @Override // p000a.AbstractC0008e
    /* renamed from: l */
    public int mo8061l() {
        mo8078a(4L);
        return this.f42a.mo8061l();
    }

    @Override // p000a.AbstractC0008e
    /* renamed from: m */
    public long mo8060m() {
        int i;
        byte m8135b;
        mo8078a(1L);
        int i2 = 0;
        while (true) {
            i = i2;
            int i3 = i + 1;
            if (!m8073b(i3)) {
                break;
            }
            m8135b = this.f42a.m8135b(i);
            if ((m8135b < 48 || m8135b > 57) && ((m8135b < 97 || m8135b > 102) && (m8135b < 65 || m8135b > 70))) {
                break;
            }
            i2 = i3;
        }
        if (i == 0) {
            throw new NumberFormatException(String.format("Expected leading [0-9a-fA-F] character but was %#x", Byte.valueOf(m8135b)));
        }
        return this.f42a.mo8060m();
    }

    @Override // p000a.AbstractC0008e
    /* renamed from: p */
    public String mo8059p() {
        return mo8069e(Long.MAX_VALUE);
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) {
        if (this.f42a.f14b == 0 && this.f43b.mo2087a(this.f42a, 8192L) == -1) {
            return -1;
        }
        return this.f42a.read(byteBuffer);
    }

    public String toString() {
        return "buffer(" + this.f43b + ")";
    }
}
