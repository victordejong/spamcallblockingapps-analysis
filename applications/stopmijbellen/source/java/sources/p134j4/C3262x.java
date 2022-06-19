package p134j4;

import java.io.IOException;
import java.io.InputStream;
/* renamed from: j4.x */
/* loaded from: classes-dex2jar.jar:j4/x.class */
public final class C3262x extends InputStream {

    /* renamed from: a */
    public final InputStream f11049a;

    /* renamed from: b */
    public long f11050b;

    public C3262x(InputStream inputStream, long j) {
        this.f11049a = inputStream;
        this.f11050b = j;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        super.close();
        this.f11049a.close();
        this.f11050b = 0L;
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        long j = this.f11050b;
        if (j <= 0) {
            return -1;
        }
        this.f11050b = j - 1;
        return this.f11049a.read();
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        long j = this.f11050b;
        if (j <= 0) {
            return -1;
        }
        int read = this.f11049a.read(bArr, i, (int) Math.min(i2, j));
        if (read != -1) {
            this.f11050b -= read;
        }
        return read;
    }
}
