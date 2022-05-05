package p081h.p430l.p431a;

import com.mopub.common.DiskLruCacheUtil;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
/* renamed from: h.l.a.e */
/* loaded from: classes2-dex2jar.jar:h/l/a/e.class */
public class C10687e implements Closeable {

    /* renamed from: a */
    public final InputStream f24326a;

    /* renamed from: b */
    public final Charset f24327b;

    /* renamed from: c */
    public byte[] f24328c;

    /* renamed from: d */
    public int f24329d;

    /* renamed from: e */
    public int f24330e;

    /* renamed from: h.l.a.e$a */
    /* loaded from: classes2-dex2jar.jar:h/l/a/e$a.class */
    public class C10688a extends ByteArrayOutputStream {
        public C10688a(int i) {
            super(i);
        }

        @Override // java.io.ByteArrayOutputStream
        public String toString() {
            int i = ((ByteArrayOutputStream) this).count;
            try {
                return new String(((ByteArrayOutputStream) this).buf, 0, (i <= 0 || ((ByteArrayOutputStream) this).buf[i - 1] != 13) ? ((ByteArrayOutputStream) this).count : i - 1, C10687e.this.f24327b.name());
            } catch (UnsupportedEncodingException e) {
                throw new AssertionError(e);
            }
        }
    }

    public C10687e(InputStream inputStream, int i, Charset charset) {
        if (inputStream == null || charset == null) {
            throw new NullPointerException();
        } else if (i < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        } else if (charset.equals(DiskLruCacheUtil.f8078a)) {
            this.f24326a = inputStream;
            this.f24327b = charset;
            this.f24328c = new byte[i];
        } else {
            throw new IllegalArgumentException("Unsupported encoding");
        }
    }

    public C10687e(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    /* renamed from: a */
    public final void m10942a() throws IOException {
        InputStream inputStream = this.f24326a;
        byte[] bArr = this.f24328c;
        int read = inputStream.read(bArr, 0, bArr.length);
        if (read != -1) {
            this.f24329d = 0;
            this.f24330e = read;
            return;
        }
        throw new EOFException();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this.f24326a) {
            if (this.f24328c != null) {
                this.f24328c = null;
                this.f24326a.close();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x004d, code lost:
        if (r6.f24328c[r10] == 13) goto L_0x0056;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String readLine() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 273
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p081h.p430l.p431a.C10687e.readLine():java.lang.String");
    }
}
