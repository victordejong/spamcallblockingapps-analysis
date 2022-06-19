package p068d2;

import java.io.IOException;
import java.io.InputStream;
/* renamed from: d2.a3 */
/* loaded from: classes-dex2jar.jar:d2/a3.class */
public class C2166a3 extends InputStream {

    /* renamed from: a */
    public InputStream f7916a;

    /* renamed from: b */
    public int f7917b;

    public C2166a3(InputStream inputStream, int i, int i2) throws IOException {
        this.f7916a = inputStream;
        while (i > 0) {
            i -= (int) inputStream.skip(i);
        }
        this.f7917b = i2;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        int available = this.f7916a.available();
        int i = this.f7917b;
        return available <= i ? available : i;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f7916a.close();
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        int i = this.f7917b;
        if (i == 0) {
            return -1;
        }
        this.f7917b = i - 1;
        return this.f7916a.read();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3 = this.f7917b;
        if (i3 == 0) {
            return -1;
        }
        int i4 = i2;
        if (i2 > i3) {
            i4 = i3;
        }
        int read = this.f7916a.read(bArr, i, i4);
        if (read == -1) {
            return -1;
        }
        this.f7917b -= read;
        return read;
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        int i = (int) j;
        if (i <= 0) {
            return 0L;
        }
        int i2 = this.f7917b;
        int i3 = i;
        if (i > i2) {
            i3 = i2;
        }
        this.f7917b = i2 - i3;
        while (i3 > 0) {
            i3 -= (int) this.f7916a.skip(j);
        }
        return j;
    }
}
