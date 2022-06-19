package p000;

import com.mopub.common.DiskLruCacheUtil;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.InputStream;
import java.io.UnsupportedEncodingException;
import java.nio.charset.Charset;
/* renamed from: zf1 */
/* loaded from: classes3-dex2jar.jar:zf1.class */
public class zf1 implements Closeable {

    /* renamed from: a */
    public final InputStream f8813a;

    /* renamed from: b */
    public final Charset f8814b;

    /* renamed from: c */
    public byte[] f8815c;

    /* renamed from: d */
    public int f8816d;

    /* renamed from: f */
    public int f8817f;

    /* renamed from: zf1$a */
    /* loaded from: classes3-dex2jar.jar:zf1$a.class */
    public class C1745a extends ByteArrayOutputStream {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C1745a(int i) {
            super(i);
            zf1.this = r4;
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
                return new String(((ByteArrayOutputStream) this).buf, 0, i2, zf1.this.f8814b.name());
            } catch (UnsupportedEncodingException e) {
                throw new AssertionError(e);
            }
        }
    }

    public zf1(InputStream inputStream, int i, Charset charset) {
        if (inputStream == null || charset == null) {
            throw null;
        }
        if (i < 0) {
            throw new IllegalArgumentException("capacity <= 0");
        }
        if (!charset.equals(DiskLruCacheUtil.f4236a)) {
            throw new IllegalArgumentException("Unsupported encoding");
        }
        this.f8813a = inputStream;
        this.f8814b = charset;
        this.f8815c = new byte[i];
    }

    public zf1(InputStream inputStream, Charset charset) {
        this(inputStream, 8192, charset);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        synchronized (this.f8813a) {
            if (this.f8815c != null) {
                this.f8815c = null;
                this.f8813a.close();
            }
        }
    }

    /* renamed from: e */
    public final void m27e() {
        InputStream inputStream = this.f8813a;
        byte[] bArr = this.f8815c;
        int read = inputStream.read(bArr, 0, bArr.length);
        if (read != -1) {
            this.f8816d = 0;
            this.f8817f = read;
            return;
        }
        throw new EOFException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x004a, code lost:
        if (r0[r10] == 13) goto L23;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String readLine() {
        /*
            Method dump skipped, instructions count: 282
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p000.zf1.readLine():java.lang.String");
    }
}
