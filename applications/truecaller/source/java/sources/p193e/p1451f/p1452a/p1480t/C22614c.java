package p193e.p1451f.p1452a.p1480t;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.f.a.t.c */
/* loaded from: classes-dex2jar.jar:e/f/a/t/c.class */
public final class C22614c extends FilterInputStream {

    /* renamed from: a */
    public final long f62631a;

    /* renamed from: b */
    public int f62632b;

    public C22614c(InputStream inputStream, long j) {
        super(inputStream);
        this.f62631a = j;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        int max;
        synchronized (this) {
            max = (int) Math.max(this.f62631a - this.f62632b, ((FilterInputStream) this).in.available());
        }
        return max;
    }

    /* renamed from: b */
    public final int m8033b(int i) throws IOException {
        if (i >= 0) {
            this.f62632b += i;
        } else if (this.f62631a - this.f62632b > 0) {
            StringBuilder m8728C = C22128a.m8728C("Failed to read all expected data, expected: ");
            m8728C.append(this.f62631a);
            m8728C.append(", but read: ");
            m8728C.append(this.f62632b);
            throw new IOException(m8728C.toString());
        }
        return i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read;
        synchronized (this) {
            read = super.read();
            m8033b(read >= 0 ? 1 : -1);
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int read;
        synchronized (this) {
            read = super.read(bArr, i, i2);
            m8033b(read);
        }
        return read;
    }
}
