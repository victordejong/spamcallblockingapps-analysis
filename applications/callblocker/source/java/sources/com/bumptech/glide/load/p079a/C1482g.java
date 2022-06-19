package com.bumptech.glide.load.p079a;

import java.io.FilterInputStream;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.load.a.g */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/a/g.class */
public final class C1482g extends FilterInputStream {

    /* renamed from: a */
    private static final byte[] f4821a = {-1, -31, 0, 28, 69, 120, 105, 102, 0, 0, 77, 77, 0, 0, 0, 0, 0, 8, 0, 1, 1, 18, 0, 2, 0, 0, 0, 1, 0};

    /* renamed from: b */
    private static final int f4822b = f4821a.length;

    /* renamed from: c */
    private static final int f4823c = f4822b + 2;

    /* renamed from: d */
    private final byte f4824d;

    /* renamed from: e */
    private int f4825e;

    public C1482g(InputStream inputStream, int i) {
        super(inputStream);
        if (i < -1 || i > 8) {
            throw new IllegalArgumentException("Cannot add invalid orientation: " + i);
        }
        this.f4824d = (byte) i;
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
        byte read = (this.f4825e < 2 || this.f4825e > f4823c) ? super.read() : this.f4825e == f4823c ? this.f4824d : f4821a[this.f4825e - 2] & 255;
        if (read != -1) {
            this.f4825e++;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        int i3;
        if (this.f4825e > f4823c) {
            i3 = super.read(bArr, i, i2);
        } else if (this.f4825e == f4823c) {
            bArr[i] = this.f4824d;
            i3 = 1;
        } else if (this.f4825e < 2) {
            i3 = super.read(bArr, i, 2 - this.f4825e);
        } else {
            int min = Math.min(f4823c - this.f4825e, i2);
            System.arraycopy(f4821a, this.f4825e - 2, bArr, i, min);
            i3 = min;
        }
        if (i3 > 0) {
            this.f4825e += i3;
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
            this.f4825e = (int) (this.f4825e + skip);
        }
        return skip;
    }
}
