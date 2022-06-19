package com.bumptech.glide.p077h;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.h.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/h/c.class */
public final class C1450c extends FilterInputStream {

    /* renamed from: a */
    private final long f4755a;

    /* renamed from: b */
    private int f4756b;

    private C1450c(InputStream inputStream, long j) {
        super(inputStream);
        this.f4755a = j;
    }

    /* renamed from: a */
    private int m17008a(int i) {
        if (i >= 0) {
            this.f4756b += i;
        } else if (this.f4755a - this.f4756b > 0) {
            throw new IOException("Failed to read all expected data, expected: " + this.f4755a + ", but read: " + this.f4756b);
        }
        return i;
    }

    /* renamed from: a */
    public static InputStream m17007a(InputStream inputStream, long j) {
        return new C1450c(inputStream, j);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() {
        int max;
        synchronized (this) {
            max = (int) Math.max(this.f4755a - this.f4756b, this.in.available());
        }
        return max;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() {
        int read;
        synchronized (this) {
            read = super.read();
            m17008a(read >= 0 ? 1 : -1);
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        int m17008a;
        synchronized (this) {
            m17008a = m17008a(super.read(bArr, i, i2));
        }
        return m17008a;
    }
}
