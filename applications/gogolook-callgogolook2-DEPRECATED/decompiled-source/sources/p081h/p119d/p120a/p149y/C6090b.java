package p081h.p119d.p120a.p149y;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: h.d.a.y.b */
/* loaded from: classes-dex2jar.jar:h/d/a/y/b.class */
public final class C6090b extends FilterInputStream {

    /* renamed from: a */
    public final long f15142a;

    /* renamed from: b */
    public int f15143b;

    public C6090b(InputStream inputStream, long j) {
        super(inputStream);
        this.f15142a = j;
    }

    /* renamed from: a */
    public static InputStream m23884a(InputStream inputStream, long j) {
        return new C6090b(inputStream, j);
    }

    /* renamed from: a */
    public final int m23885a(int i) throws IOException {
        if (i >= 0) {
            this.f15143b += i;
        } else if (this.f15142a - this.f15143b > 0) {
            throw new IOException("Failed to read all expected data, expected: " + this.f15142a + ", but read: " + this.f15143b);
        }
        return i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        int max;
        synchronized (this) {
            max = (int) Math.max(this.f15142a - this.f15143b, ((FilterInputStream) this).in.available());
        }
        return max;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int read;
        synchronized (this) {
            read = super.read();
            m23885a(read);
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
            m23885a(read);
        }
        return read;
    }
}
