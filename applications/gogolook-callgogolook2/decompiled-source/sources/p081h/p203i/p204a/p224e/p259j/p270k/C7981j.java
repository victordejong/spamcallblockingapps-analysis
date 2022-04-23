package p081h.p203i.p204a.p224e.p259j.p270k;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: h.i.a.e.j.k.j */
/* loaded from: classes2-dex2jar.jar:h/i/a/e/j/k/j.class */
public final class C7981j extends FilterInputStream {

    /* renamed from: b */
    public long f18705b = -1;

    /* renamed from: a */
    public long f18704a = 1048577;

    public C7981j(InputStream inputStream, long j) {
        super(inputStream);
        C7976e.m18711a(inputStream);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() throws IOException {
        return (int) Math.min(((FilterInputStream) this).in.available(), this.f18704a);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void mark(int i) {
        synchronized (this) {
            ((FilterInputStream) this).in.mark(i);
            this.f18705b = this.f18704a;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        if (this.f18704a == 0) {
            return -1;
        }
        int read = ((FilterInputStream) this).in.read();
        if (read != -1) {
            this.f18704a--;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        long j = this.f18704a;
        if (j == 0) {
            return -1;
        }
        int read = ((FilterInputStream) this).in.read(bArr, i, (int) Math.min(i2, j));
        if (read != -1) {
            this.f18704a -= read;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void reset() throws IOException {
        synchronized (this) {
            if (!((FilterInputStream) this).in.markSupported()) {
                throw new IOException("Mark not supported");
            } else if (this.f18705b != -1) {
                ((FilterInputStream) this).in.reset();
                this.f18704a = this.f18705b;
            } else {
                throw new IOException("Mark not set");
            }
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j) throws IOException {
        long skip = ((FilterInputStream) this).in.skip(Math.min(j, this.f18704a));
        this.f18704a -= skip;
        return skip;
    }
}
