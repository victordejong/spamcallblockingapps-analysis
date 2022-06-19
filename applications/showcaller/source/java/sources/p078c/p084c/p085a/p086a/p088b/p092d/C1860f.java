package p078c.p084c.p085a.p086a.p088b.p092d;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
/* renamed from: c.c.a.a.b.d.f */
/* loaded from: classes2-dex2jar.jar:c/c/a/a/b/d/f.class */
final class C1860f extends FilterInputStream {

    /* renamed from: e */
    private long f6763e = -1;

    /* renamed from: d */
    private long f6762d = 1048577;

    public C1860f(InputStream inputStream, long j) {
        super(inputStream);
        Objects.requireNonNull(inputStream);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() {
        return (int) Math.min(((FilterInputStream) this).in.available(), this.f6762d);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void mark(int i) {
        synchronized (this) {
            ((FilterInputStream) this).in.mark(i);
            this.f6763e = this.f6762d;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        if (this.f6762d == 0) {
            return -1;
        }
        int read = ((FilterInputStream) this).in.read();
        if (read != -1) {
            this.f6762d--;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        long j = this.f6762d;
        if (j == 0) {
            return -1;
        }
        int read = ((FilterInputStream) this).in.read(bArr, i, (int) Math.min(i2, j));
        if (read != -1) {
            this.f6762d -= read;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void reset() {
        synchronized (this) {
            if (!((FilterInputStream) this).in.markSupported()) {
                throw new IOException("Mark not supported");
            }
            if (this.f6763e == -1) {
                throw new IOException("Mark not set");
            }
            ((FilterInputStream) this).in.reset();
            this.f6762d = this.f6763e;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j) {
        long skip = ((FilterInputStream) this).in.skip(Math.min(j, this.f6762d));
        this.f6762d -= skip;
        return skip;
    }
}
