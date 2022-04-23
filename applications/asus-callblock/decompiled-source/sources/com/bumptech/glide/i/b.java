package com.bumptech.glide.i;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/i/b.class */
public final class b extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private final long f3461a;

    /* renamed from: b  reason: collision with root package name */
    private int f3462b;

    private b(InputStream inputStream, long j) {
        super(inputStream);
        this.f3461a = j;
    }

    private int a(int i) {
        if (i >= 0) {
            this.f3462b += i;
        } else if (this.f3461a - this.f3462b > 0) {
            throw new IOException("Failed to read all expected data, expected: " + this.f3461a + ", but read: " + this.f3462b);
        }
        return i;
    }

    public static InputStream a(InputStream inputStream, long j) {
        return new b(inputStream, j);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() {
        int max;
        synchronized (this) {
            max = (int) Math.max(this.f3461a - this.f3462b, this.in.available());
        }
        return max;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        int a2;
        synchronized (this) {
            a2 = a(super.read());
        }
        return a2;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int a2;
        synchronized (this) {
            a2 = a(super.read(bArr, i, i2));
        }
        return a2;
    }
}
