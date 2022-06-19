package p193e.p1451f.p1452a.p1480t;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: e.f.a.t.h */
/* loaded from: classes-dex2jar.jar:e/f/a/t/h.class */
public class C22621h extends FilterInputStream {

    /* renamed from: a */
    public int f62644a = Integer.MIN_VALUE;

    public C22621h(InputStream inputStream) {
        super(inputStream);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() throws IOException {
        int i = this.f62644a;
        return i == Integer.MIN_VALUE ? super.available() : Math.min(i, super.available());
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* renamed from: b */
    public final long m8025b(long j) {
        int i = this.f62644a;
        if (i == 0) {
            return -1L;
        }
        char c = j;
        if (i != Integer.MIN_VALUE) {
            c = j;
            if (j > i) {
                c = i;
            }
        }
        return c;
    }

    /* renamed from: d */
    public final void m8024d(long j) {
        int i = this.f62644a;
        if (i == Integer.MIN_VALUE || j == -1) {
            return;
        }
        this.f62644a = (int) (i - j);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        synchronized (this) {
            super.mark(i);
            this.f62644a = i;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        if (m8025b(1L) == -1) {
            return -1;
        }
        int read = super.read();
        m8024d(1L);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int m8025b = (int) m8025b(i2);
        if (m8025b == -1) {
            return -1;
        }
        int read = super.read(bArr, i, m8025b);
        m8024d(read);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        synchronized (this) {
            super.reset();
            this.f62644a = Integer.MIN_VALUE;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        long m8025b = m8025b(j);
        if (m8025b == -1) {
            return 0L;
        }
        long skip = super.skip(m8025b);
        m8024d(skip);
        return skip;
    }
}
