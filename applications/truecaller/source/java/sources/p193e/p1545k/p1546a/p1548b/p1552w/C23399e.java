package p193e.p1545k.p1546a.p1548b.p1552w;

import java.io.IOException;
import java.io.InputStream;
/* renamed from: e.k.a.b.w.e */
/* loaded from: classes2-dex2jar.jar:e/k/a/b/w/e.class */
public final class C23399e extends InputStream {

    /* renamed from: a */
    public final C23396b f64791a;

    /* renamed from: b */
    public final InputStream f64792b;

    /* renamed from: c */
    public byte[] f64793c;

    /* renamed from: d */
    public int f64794d;

    /* renamed from: e */
    public final int f64795e;

    public C23399e(C23396b c23396b, InputStream inputStream, byte[] bArr, int i, int i2) {
        this.f64791a = c23396b;
        this.f64792b = inputStream;
        this.f64793c = bArr;
        this.f64794d = i;
        this.f64795e = i2;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        return this.f64793c != null ? this.f64795e - this.f64794d : this.f64792b.available();
    }

    /* renamed from: b */
    public final void m7123b() {
        byte[] bArr = this.f64793c;
        if (bArr != null) {
            this.f64793c = null;
            C23396b c23396b = this.f64791a;
            if (c23396b == null) {
                return;
            }
            c23396b.m7129f(bArr);
        }
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        m7123b();
        this.f64792b.close();
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        synchronized (this) {
            if (this.f64793c == null) {
                this.f64792b.mark(i);
            }
        }
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f64793c == null && this.f64792b.markSupported();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        byte[] bArr = this.f64793c;
        if (bArr != null) {
            int i = this.f64794d;
            int i2 = i + 1;
            this.f64794d = i2;
            byte b = bArr[i];
            if (i2 >= this.f64795e) {
                m7123b();
            }
            return b & 255;
        }
        return this.f64792b.read();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        byte[] bArr2 = this.f64793c;
        if (bArr2 != null) {
            int i3 = this.f64795e;
            int i4 = this.f64794d;
            int i5 = i3 - i4;
            int i6 = i2;
            if (i2 > i5) {
                i6 = i5;
            }
            System.arraycopy(bArr2, i4, bArr, i, i6);
            int i7 = this.f64794d + i6;
            this.f64794d = i7;
            if (i7 >= this.f64795e) {
                m7123b();
            }
            return i6;
        }
        return this.f64792b.read(bArr, i, i2);
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        synchronized (this) {
            if (this.f64793c == null) {
                this.f64792b.reset();
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v22, types: [long] */
    /* JADX WARN: Type inference failed for: r0v24, types: [long] */
    /* JADX WARN: Type inference failed for: r0v7, types: [long] */
    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        char c;
        char c2;
        if (this.f64793c != null) {
            int i = this.f64795e;
            int i2 = this.f64794d;
            long j2 = i - i2;
            if (j2 > j) {
                this.f64794d = i2 + ((int) j);
                return j;
            }
            m7123b();
            ?? r0 = j2 + 0;
            ?? r02 = j - j2;
            c2 = r0;
            c = r02;
        } else {
            c = j;
            c2 = 0;
        }
        char c3 = c2;
        if (c > 0) {
            c3 = c2 + this.f64792b.skip(c);
        }
        return c3;
    }
}
