package com.bumptech.glide.load.data;

import java.io.FilterInputStream;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.load.data.g */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/g.class */
public final class C0741g extends FilterInputStream {

    /* renamed from: d */
    private static final byte[] f3518d;

    /* renamed from: e */
    private static final int f3519e;

    /* renamed from: f */
    private static final int f3520f;

    /* renamed from: b */
    private final byte f3521b;

    /* renamed from: c */
    private int f3522c;

    static {
        byte[] bArr = {-1, -31, 0, 28, 69, 120, 105, 102, 0, 0, 77, 77, 0, 0, 0, 0, 0, 8, 0, 1, 1, 18, 0, 2, 0, 0, 0, 1, 0};
        f3518d = bArr;
        int length = bArr.length;
        f3519e = length;
        f3520f = length + 2;
    }

    public C0741g(InputStream inputStream, int i) {
        super(inputStream);
        if (i >= -1 && i <= 8) {
            this.f3521b = (byte) i;
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
        int i2 = this.f3522c;
        byte read = (i2 < 2 || i2 > (i = f3520f)) ? super.read() : i2 == i ? this.f3521b : f3518d[i2 - 2] & 255;
        if (read != -1) {
            this.f3522c++;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        int i3;
        int i4 = this.f3522c;
        int i5 = f3520f;
        if (i4 > i5) {
            i3 = super.read(bArr, i, i2);
        } else if (i4 == i5) {
            bArr[i] = this.f3521b;
            i3 = 1;
        } else if (i4 < 2) {
            i3 = super.read(bArr, i, 2 - i4);
        } else {
            int min = Math.min(i5 - i4, i2);
            System.arraycopy(f3518d, this.f3522c - 2, bArr, i, min);
            i3 = min;
        }
        if (i3 > 0) {
            this.f3522c += i3;
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
            this.f3522c = (int) (this.f3522c + skip);
        }
        return skip;
    }
}
