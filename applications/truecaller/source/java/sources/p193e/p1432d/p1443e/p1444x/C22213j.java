package p193e.p1432d.p1443e.p1444x;

import java.io.ByteArrayOutputStream;
import java.io.IOException;
/* renamed from: e.d.e.x.j */
/* loaded from: classes-dex2jar.jar:e/d/e/x/j.class */
public class C22213j extends ByteArrayOutputStream {

    /* renamed from: a */
    public final C22203c f61694a;

    public C22213j(C22203c c22203c, int i) {
        this.f61694a = c22203c;
        ((ByteArrayOutputStream) this).buf = c22203c.m8474a(Math.max(i, 256));
    }

    /* renamed from: b */
    public final void m8451b(int i) {
        int i2 = ((ByteArrayOutputStream) this).count;
        if (i2 + i <= ((ByteArrayOutputStream) this).buf.length) {
            return;
        }
        byte[] m8474a = this.f61694a.m8474a((i2 + i) * 2);
        System.arraycopy(((ByteArrayOutputStream) this).buf, 0, m8474a, 0, ((ByteArrayOutputStream) this).count);
        this.f61694a.m8473b(((ByteArrayOutputStream) this).buf);
        ((ByteArrayOutputStream) this).buf = m8474a;
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f61694a.m8473b(((ByteArrayOutputStream) this).buf);
        ((ByteArrayOutputStream) this).buf = null;
        super.close();
    }

    public void finalize() {
        this.f61694a.m8473b(((ByteArrayOutputStream) this).buf);
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public void write(int i) {
        synchronized (this) {
            m8451b(1);
            super.write(i);
        }
    }

    @Override // java.io.ByteArrayOutputStream, java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        synchronized (this) {
            m8451b(i2);
            super.write(bArr, i, i2);
        }
    }
}
