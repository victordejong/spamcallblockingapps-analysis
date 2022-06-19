package p193e.p1451f.p1452a.p1453k;

import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
/* renamed from: e.f.a.k.b */
/* loaded from: classes-dex2jar.jar:e/f/a/k/b.class */
public class C22246b implements Closeable {

    /* renamed from: a */
    public final InputStream f61819a;

    /* renamed from: b */
    public final Charset f61820b;

    /* renamed from: c */
    public byte[] f61821c;

    /* renamed from: d */
    public int f61822d;

    /* renamed from: e */
    public int f61823e;

    /* renamed from: e.f.a.k.b$a */
    /* loaded from: classes-dex2jar.jar:e/f/a/k/b$a.class */
    public class C22247a extends ByteArrayOutputStream {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C22247a(int i) {
            super(i);
            C22246b.this = r4;
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
            try {
                return new String(((ByteArrayOutputStream) this).buf, 0, i2, C22246b.this.f61820b.name());
            } catch (UnsupportedEncodingException e) {
                throw new AssertionError(e);
            }
        }
    }

    public C22246b(InputStream inputStream, Charset charset) {
        if (charset != null) {
            if (!charset.equals(C22248c.f61825a)) {
                throw new IllegalArgumentException("Unsupported encoding");
            }
            this.f61819a = inputStream;
            this.f61820b = charset;
            this.f61821c = new byte[8192];
            return;
        }
        throw null;
    }

    /* renamed from: b */
    public final void m8382b() throws IOException {
        InputStream inputStream = this.f61819a;
        byte[] bArr = this.f61821c;
        int read = inputStream.read(bArr, 0, bArr.length);
        if (read != -1) {
            this.f61822d = 0;
            this.f61823e = read;
            return;
        }
        throw new EOFException();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this.f61819a) {
            if (this.f61821c != null) {
                this.f61821c = null;
                this.f61819a.close();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x004a, code lost:
        if (r0[r10] == 13) goto L23;
     */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String m8381d() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 281
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p1451f.p1452a.p1453k.C22246b.m8381d():java.lang.String");
    }
}
