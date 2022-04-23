package p131c.p421j.p422a;

import com.mopub.common.DiskLruCacheUtil;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
/* renamed from: c.j.a.e */
/* loaded from: classes2-dex2jar.jar:c/j/a/e.class */
public class C6636e implements Closeable {

    /* renamed from: a */
    public final InputStream f20474a;

    /* renamed from: b */
    public final Charset f20475b;

    /* renamed from: c */
    public byte[] f20476c;

    /* renamed from: d */
    public int f20477d;

    /* renamed from: e */
    public int f20478e;

    /* renamed from: c.j.a.e$a */
    /* loaded from: classes2-dex2jar.jar:c/j/a/e$a.class */
    public class C6637a extends ByteArrayOutputStream {
        public C6637a(int i) {
            super(i);
        }

        @Override // java.io.ByteArrayOutputStream
        public String toString() {
            int i = ((ByteArrayOutputStream) this).count;
            try {
                return new String(((ByteArrayOutputStream) this).buf, 0, (i <= 0 || ((ByteArrayOutputStream) this).buf[i - 1] != 13) ? ((ByteArrayOutputStream) this).count : i - 1, C6636e.this.f20475b.name());
            } catch (UnsupportedEncodingException e) {
                throw new AssertionError(e);
            }
        }
    }

    public C6636e(InputStream inputStream, int i, Charset charset) {
        if (inputStream == null || charset == null) {
            throw null;
        } else if (i < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        } else if (charset.equals(DiskLruCacheUtil.f33727a)) {
            this.f20474a = inputStream;
            this.f20475b = charset;
            this.f20476c = new byte[i];
        } else {
            throw new IllegalArgumentException("Unsupported encoding");
        }
    }

    public C6636e(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    /* renamed from: a */
    public final void m20261a() throws IOException {
        InputStream inputStream = this.f20474a;
        byte[] bArr = this.f20476c;
        int read = inputStream.read(bArr, 0, bArr.length);
        if (read != -1) {
            this.f20477d = 0;
            this.f20478e = read;
            return;
        }
        throw new EOFException();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this.f20474a) {
            if (this.f20476c != null) {
                this.f20476c = null;
                this.f20474a.close();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x004d, code lost:
        if (r6.f20476c[r10] == 13) goto L_0x0056;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String readLine() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 279
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p131c.p421j.p422a.C6636e.readLine():java.lang.String");
    }
}
