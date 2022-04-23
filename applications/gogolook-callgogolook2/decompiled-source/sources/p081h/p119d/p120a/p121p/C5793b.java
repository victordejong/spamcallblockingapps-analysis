package p081h.p119d.p120a.p121p;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
/* renamed from: h.d.a.p.b */
/* loaded from: classes-dex2jar.jar:h/d/a/p/b.class */
public class C5793b implements Closeable {

    /* renamed from: a */
    public final InputStream f14544a;

    /* renamed from: b */
    public final Charset f14545b;

    /* renamed from: c */
    public byte[] f14546c;

    /* renamed from: d */
    public int f14547d;

    /* renamed from: e */
    public int f14548e;

    /* renamed from: h.d.a.p.b$a */
    /* loaded from: classes-dex2jar.jar:h/d/a/p/b$a.class */
    public class C5794a extends ByteArrayOutputStream {
        public C5794a(int i) {
            super(i);
        }

        @Override // java.io.ByteArrayOutputStream
        public String toString() {
            int i = ((ByteArrayOutputStream) this).count;
            try {
                return new String(((ByteArrayOutputStream) this).buf, 0, (i <= 0 || ((ByteArrayOutputStream) this).buf[i - 1] != 13) ? ((ByteArrayOutputStream) this).count : i - 1, C5793b.this.f14545b.name());
            } catch (UnsupportedEncodingException e) {
                throw new AssertionError(e);
            }
        }
    }

    public C5793b(InputStream inputStream, int i, Charset charset) {
        if (inputStream == null || charset == null) {
            throw new NullPointerException();
        } else if (i < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        } else if (charset.equals(C5795c.f14550a)) {
            this.f14544a = inputStream;
            this.f14545b = charset;
            this.f14546c = new byte[i];
        } else {
            throw new IllegalArgumentException("Unsupported encoding");
        }
    }

    public C5793b(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    /* renamed from: a */
    public final void m24383a() throws IOException {
        InputStream inputStream = this.f14544a;
        byte[] bArr = this.f14546c;
        int read = inputStream.read(bArr, 0, bArr.length);
        if (read != -1) {
            this.f14547d = 0;
            this.f14548e = read;
            return;
        }
        throw new EOFException();
    }

    /* renamed from: b */
    public boolean m24381b() {
        return this.f14548e == -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x004d, code lost:
        if (r6.f14546c[r10] == 13) goto L_0x0056;
     */
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String m24380c() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p119d.p120a.p121p.C5793b.m24380c():java.lang.String");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this.f14544a) {
            if (this.f14546c != null) {
                this.f14546c = null;
                this.f14544a.close();
            }
        }
    }
}
