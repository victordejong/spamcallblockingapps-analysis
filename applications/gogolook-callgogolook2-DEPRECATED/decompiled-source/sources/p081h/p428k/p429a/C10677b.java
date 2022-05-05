package p081h.p428k.p429a;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
/* renamed from: h.k.a.b */
/* loaded from: classes2-dex2jar.jar:h/k/a/b.class */
public class C10677b implements Closeable {

    /* renamed from: a */
    public final InputStream f24306a;

    /* renamed from: b */
    public final Charset f24307b;

    /* renamed from: c */
    public byte[] f24308c;

    /* renamed from: d */
    public int f24309d;

    /* renamed from: e */
    public int f24310e;

    /* renamed from: h.k.a.b$a */
    /* loaded from: classes2-dex2jar.jar:h/k/a/b$a.class */
    public class C10678a extends ByteArrayOutputStream {
        public C10678a(int i) {
            super(i);
        }

        @Override // java.io.ByteArrayOutputStream
        public String toString() {
            int i = ((ByteArrayOutputStream) this).count;
            try {
                return new String(((ByteArrayOutputStream) this).buf, 0, (i <= 0 || ((ByteArrayOutputStream) this).buf[i - 1] != 13) ? ((ByteArrayOutputStream) this).count : i - 1, C10677b.this.f24307b.name());
            } catch (UnsupportedEncodingException e) {
                throw new AssertionError(e);
            }
        }
    }

    public C10677b(InputStream inputStream, int i, Charset charset) {
        if (inputStream == null || charset == null) {
            throw new NullPointerException();
        } else if (i < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        } else if (charset.equals(C10679c.f24312a)) {
            this.f24306a = inputStream;
            this.f24307b = charset;
            this.f24308c = new byte[i];
        } else {
            throw new IllegalArgumentException("Unsupported encoding");
        }
    }

    public C10677b(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    /* renamed from: a */
    public final void m10957a() throws IOException {
        InputStream inputStream = this.f24306a;
        byte[] bArr = this.f24308c;
        int read = inputStream.read(bArr, 0, bArr.length);
        if (read != -1) {
            this.f24309d = 0;
            this.f24310e = read;
            return;
        }
        throw new EOFException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x004d, code lost:
        if (r6.f24308c[r10] == 13) goto L_0x0056;
     */
    /* renamed from: b */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String m10955b() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p428k.p429a.C10677b.m10955b():java.lang.String");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this.f24306a) {
            if (this.f24308c != null) {
                this.f24308c = null;
                this.f24306a.close();
            }
        }
    }
}
