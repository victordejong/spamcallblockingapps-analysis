package com.bumptech.glide.load.data;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/g.class */
public final class g extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private static final byte[] f7404a = {-1, -31, 0, 28, 69, 120, 105, 102, 0, 0, 77, 77, 0, 0, 0, 0, 0, 8, 0, 1, 1, 18, 0, 2, 0, 0, 0, 1, 0};

    /* renamed from: b  reason: collision with root package name */
    private static final int f7405b = 29;

    /* renamed from: c  reason: collision with root package name */
    private static final int f7406c = 31;

    /* renamed from: d  reason: collision with root package name */
    private final byte f7407d;
    private int e;

    public g(InputStream inputStream, int i) {
        super(inputStream);
        if (i < -1 || i > 8) {
            throw new IllegalArgumentException("Cannot add invalid orientation: ".concat(String.valueOf(i)));
        }
        this.f7407d = (byte) i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void mark(int i) {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final boolean markSupported() {
        return false;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        int i;
        int i2 = this.e;
        int read = (i2 < 2 || i2 > (i = f7406c)) ? super.read() : i2 == i ? this.f7407d : f7404a[i2 - 2] & 255;
        if (read != -1) {
            this.e++;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        int i4 = this.e;
        int i5 = f7406c;
        if (i4 > i5) {
            i3 = super.read(bArr, i, i2);
        } else if (i4 == i5) {
            bArr[i] = this.f7407d;
            i3 = 1;
        } else if (i4 < 2) {
            i3 = super.read(bArr, i, 2 - i4);
        } else {
            int min = Math.min(i5 - i4, i2);
            System.arraycopy(f7404a, this.e - 2, bArr, i, min);
            i3 = min;
        }
        if (i3 > 0) {
            this.e += i3;
        }
        return i3;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void reset() throws IOException {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j) throws IOException {
        long skip = super.skip(j);
        if (skip > 0) {
            this.e = (int) (this.e + skip);
        }
        return skip;
    }
}
