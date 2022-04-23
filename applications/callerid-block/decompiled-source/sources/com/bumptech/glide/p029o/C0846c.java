package com.bumptech.glide.p029o;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.o.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/o/c.class */
public final class C0846c extends FilterInputStream {

    /* renamed from: b */
    private final long f3811b;

    /* renamed from: c */
    private int f3812c;

    private C0846c(InputStream inputStream, long j) {
        super(inputStream);
        this.f3811b = j;
    }

    /* renamed from: a */
    private int m10784a(int i) {
        if (i >= 0) {
            this.f3812c += i;
        } else if (this.f3811b - this.f3812c > 0) {
            throw new IOException("Failed to read all expected data, expected: " + this.f3811b + ", but read: " + this.f3812c);
        }
        return i;
    }

    /* renamed from: p */
    public static InputStream m10783p(InputStream inputStream, long j) {
        return new C0846c(inputStream, j);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() {
        int max;
        synchronized (this) {
            max = (int) Math.max(this.f3811b - this.f3812c, ((FilterInputStream) this).in.available());
        }
        return max;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() {
        int read;
        synchronized (this) {
            read = super.read();
            m10784a(read >= 0 ? 1 : -1);
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        int read;
        synchronized (this) {
            read = super.read(bArr, i, i2);
            m10784a(read);
        }
        return read;
    }
}
