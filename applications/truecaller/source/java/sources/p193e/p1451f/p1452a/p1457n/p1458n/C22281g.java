package p193e.p1451f.p1452a.p1457n.p1458n;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* renamed from: e.f.a.n.n.g */
/* loaded from: classes-dex2jar.jar:e/f/a/n/n/g.class */
public final class C22281g extends FilterInputStream {

    /* renamed from: c */
    public static final byte[] f61915c;

    /* renamed from: d */
    public static final int f61916d;

    /* renamed from: e */
    public static final int f61917e;

    /* renamed from: a */
    public final byte f61918a;

    /* renamed from: b */
    public int f61919b;

    static {
        byte[] bArr = {-1, -31, 0, 28, 69, 120, 105, 102, 0, 0, 77, 77, 0, 0, 0, 0, 0, 8, 0, 1, 1, 18, 0, 2, 0, 0, 0, 1, 0};
        f61915c = bArr;
        int length = bArr.length;
        f61916d = length;
        f61917e = length + 2;
    }

    public C22281g(InputStream inputStream, int i) {
        super(inputStream);
        if (i < -1 || i > 8) {
            throw new IllegalArgumentException(C22128a.m8611i2("Cannot add invalid orientation: ", i));
        }
        this.f61918a = (byte) i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() throws IOException {
        int i;
        int i2 = this.f61919b;
        byte read = (i2 < 2 || i2 > (i = f61917e)) ? super.read() : i2 == i ? this.f61918a : f61915c[i2 - 2] & 255;
        if (read != -1) {
            this.f61919b++;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        int i4 = this.f61919b;
        int i5 = f61917e;
        if (i4 > i5) {
            i3 = super.read(bArr, i, i2);
        } else if (i4 == i5) {
            bArr[i] = this.f61918a;
            i3 = 1;
        } else if (i4 < 2) {
            i3 = super.read(bArr, i, 2 - i4);
        } else {
            int min = Math.min(i5 - i4, i2);
            System.arraycopy(f61915c, this.f61919b - 2, bArr, i, min);
            i3 = min;
        }
        if (i3 > 0) {
            this.f61919b += i3;
        }
        return i3;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) throws IOException {
        long skip = super.skip(j);
        if (skip > 0) {
            this.f61919b = (int) (this.f61919b + skip);
        }
        return skip;
    }
}
