package com.bumptech.glide.g;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/c.class */
public final class c extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private final long f7344a;

    /* renamed from: b  reason: collision with root package name */
    private int f7345b;

    private c(InputStream inputStream, long j) {
        super(inputStream);
        this.f7344a = j;
    }

    private int a(int i) throws IOException {
        if (i >= 0) {
            this.f7345b += i;
        } else if (this.f7344a - this.f7345b > 0) {
            throw new IOException("Failed to read all expected data, expected: " + this.f7344a + ", but read: " + this.f7345b);
        }
        return i;
    }

    public static InputStream a(InputStream inputStream, long j) {
        return new c(inputStream, j);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() throws IOException {
        int max;
        synchronized (this) {
            max = (int) Math.max(this.f7344a - this.f7345b, this.in.available());
        }
        return max;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        int read;
        synchronized (this) {
            read = super.read();
            a(read >= 0 ? 1 : -1);
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int a2;
        synchronized (this) {
            a2 = a(super.read(bArr, i, i2));
        }
        return a2;
    }
}
