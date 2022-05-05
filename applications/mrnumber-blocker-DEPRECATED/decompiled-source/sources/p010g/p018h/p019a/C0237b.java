package p010g.p018h.p019a;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
/* renamed from: g.h.a.b */
/* loaded from: classes2-dex2jar.jar:g/h/a/b.class */
class C0237b implements Closeable {

    /* renamed from: f */
    private final InputStream f497f;

    /* renamed from: g */
    private final Charset f498g;

    /* renamed from: h */
    private byte[] f499h;

    /* renamed from: i */
    private int f500i;

    /* renamed from: j */
    private int f501j;

    /* renamed from: g.h.a.b$a */
    /* loaded from: classes2-dex2jar.jar:g/h/a/b$a.class */
    class C0238a extends ByteArrayOutputStream {
        C0238a(int i) {
            super(i);
        }

        @Override // java.io.ByteArrayOutputStream
        public String toString() {
            int i = ((ByteArrayOutputStream) this).count;
            int i2 = i;
            if (i > 0) {
                i2 = i;
                if (((ByteArrayOutputStream) this).buf[i - 1] == 13) {
                    i2 = i - 1;
                }
            }
            return new String(((ByteArrayOutputStream) this).buf, 0, i2, C0237b.this.f498g.name());
        }
    }

    public C0237b(InputStream inputStream, int i, Charset charset) {
        if (inputStream == null || charset == null) {
            throw null;
        } else if (i < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        } else if (charset.equals(C0239c.f503a)) {
            this.f497f = inputStream;
            this.f498g = charset;
            this.f499h = new byte[i];
        } else {
            throw new IllegalArgumentException("Unsupported encoding");
        }
    }

    public C0237b(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    /* renamed from: b */
    private void m586b() throws IOException {
        InputStream inputStream = this.f497f;
        byte[] bArr = this.f499h;
        int read = inputStream.read(bArr, 0, bArr.length);
        if (read != -1) {
            this.f500i = 0;
            this.f501j = read;
            return;
        }
        throw new EOFException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x004a, code lost:
        if (r0[r11] == 13) goto L_0x0053;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String m585c() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 272
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p010g.p018h.p019a.C0237b.m585c():java.lang.String");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this.f497f) {
            if (this.f499h != null) {
                this.f499h = null;
                this.f497f.close();
            }
        }
    }
}
