package com.bumptech.glide.load.data;

import java.io.FilterInputStream;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.load.data.g */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/g.class */
public final class C4014g extends FilterInputStream {

    /* renamed from: d */
    private static final byte[] f12651d;

    /* renamed from: e */
    private static final int f12652e;

    /* renamed from: f */
    private static final int f12653f;

    /* renamed from: g */
    private final byte f12654g;

    /* renamed from: h */
    private int f12655h;

    static {
        byte[] bArr = {-1, -31, 0, 28, 69, 120, 105, 102, 0, 0, 77, 77, 0, 0, 0, 0, 0, 8, 0, 1, 1, 18, 0, 2, 0, 0, 0, 1, 0};
        f12651d = bArr;
        int length = bArr.length;
        f12652e = length;
        f12653f = length + 2;
    }

    public C4014g(InputStream inputStream, int i) {
        super(inputStream);
        if (i >= -1 && i <= 8) {
            this.f12654g = (byte) i;
            return;
        }
        throw new IllegalArgumentException("Cannot add invalid orientation: " + i);
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
    public int read() {
        int i;
        int i2 = this.f12655h;
        byte read = (i2 < 2 || i2 > (i = f12653f)) ? super.read() : i2 == i ? this.f12654g : f12651d[i2 - 2] & 255;
        if (read != -1) {
            this.f12655h++;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        int i3;
        int i4 = this.f12655h;
        int i5 = f12653f;
        if (i4 > i5) {
            i3 = super.read(bArr, i, i2);
        } else if (i4 == i5) {
            bArr[i] = this.f12654g;
            i3 = 1;
        } else if (i4 < 2) {
            i3 = super.read(bArr, i, 2 - i4);
        } else {
            int min = Math.min(i5 - i4, i2);
            System.arraycopy(f12651d, this.f12655h - 2, bArr, i, min);
            i3 = min;
        }
        if (i3 > 0) {
            this.f12655h += i3;
        }
        return i3;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() {
        throw new UnsupportedOperationException();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) {
        long skip = super.skip(j);
        if (skip > 0) {
            this.f12655h = (int) (this.f12655h + skip);
        }
        return skip;
    }
}
