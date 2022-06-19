package p202p7;

import android.support.p012v4.media.C0082b;
import java.io.ByteArrayOutputStream;
import java.io.Closeable;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.nio.charset.Charset;
import java.util.Objects;
import p255u7.C4538c;
/* renamed from: p7.f */
/* loaded from: classes2-dex2jar.jar:p7/f.class */
public class C4044f implements Closeable {

    /* renamed from: a */
    public final InputStream f12708a;

    /* renamed from: b */
    public byte[] f12709b;

    /* renamed from: c */
    public int f12710c;

    /* renamed from: d */
    public int f12711d;

    /* renamed from: p7.f$a */
    /* loaded from: classes2-dex2jar.jar:p7/f$a.class */
    public class C4045a extends ByteArrayOutputStream {
        public C4045a(C4044f c4044f, int i) {
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
            return new String(((ByteArrayOutputStream) this).buf, 0, i2);
        }
    }

    public C4044f(InputStream inputStream, Charset charset) {
        Objects.requireNonNull(inputStream, "in == null");
        Objects.requireNonNull(charset, "charset == null");
        if (charset.equals(C4538c.f13950a) || charset.equals(C4538c.f13951b)) {
            this.f12708a = inputStream;
            this.f12709b = new byte[8192];
            return;
        }
        throw new IllegalArgumentException("Unsupported encoding");
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        synchronized (this.f12708a) {
            if (this.f12709b != null) {
                this.f12709b = null;
                this.f12708a.close();
            }
        }
    }

    /* renamed from: d */
    public final void m1471d() throws IOException {
        InputStream inputStream = this.f12708a;
        byte[] bArr = this.f12709b;
        int read = inputStream.read(bArr, 0, bArr.length);
        if (read != -1) {
            this.f12710c = 0;
            this.f12711d = read;
            return;
        }
        throw new EOFException();
    }

    /* JADX WARN: Code restructure failed: missing block: B:21:0x004e, code lost:
        if (r0[r11] == 13) goto L23;
     */
    /* renamed from: k */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String m1470k() throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 275
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p202p7.C4044f.m1470k():java.lang.String");
    }

    public int readInt() throws IOException {
        String m1470k = m1470k();
        try {
            return Integer.parseInt(m1470k);
        } catch (NumberFormatException e) {
            throw new IOException(C0082b.m8755g("expected an int but was \"", m1470k, "\""));
        }
    }
}
