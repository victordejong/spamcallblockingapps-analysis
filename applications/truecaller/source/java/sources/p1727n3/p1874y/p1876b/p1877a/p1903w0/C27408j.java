package p1727n3.p1874y.p1876b.p1877a.p1903w0;

import android.support.p001v4.media.session.MediaSessionCompat;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: n3.y.b.a.w0.j */
/* loaded from: classes-dex2jar.jar:n3/y/b/a/w0/j.class */
public final class C27408j extends InputStream {

    /* renamed from: a */
    public final AbstractC27405h f77121a;

    /* renamed from: b */
    public final C27409k f77122b;

    /* renamed from: f */
    public long f77126f;

    /* renamed from: d */
    public boolean f77124d = false;

    /* renamed from: e */
    public boolean f77125e = false;

    /* renamed from: c */
    public final byte[] f77123c = new byte[1];

    public C27408j(AbstractC27405h abstractC27405h, C27409k c27409k) {
        this.f77121a = abstractC27405h;
        this.f77122b = c27409k;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        if (!this.f77125e) {
            this.f77121a.close();
            this.f77125e = true;
        }
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int i = -1;
        if (read(this.f77123c) != -1) {
            i = this.f77123c[0] & 255;
        }
        return i;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        MediaSessionCompat.m43184y(!this.f77125e);
        if (!this.f77124d) {
            this.f77121a.m385b(this.f77122b);
            this.f77124d = true;
        }
        int read = this.f77121a.read(bArr, i, i2);
        if (read == -1) {
            return -1;
        }
        this.f77126f += read;
        return read;
    }
}
