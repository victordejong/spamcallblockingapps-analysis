package com.bumptech.glide.p116g;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.g.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/c.class */
public final class C3633c extends FilterInputStream {

    /* renamed from: a */
    private final long f13741a;

    /* renamed from: b */
    private int f13742b;

    private C3633c(InputStream inputStream, long j) {
        super(inputStream);
        this.f13741a = j;
    }

    /* renamed from: a */
    private int m37599a(int i) throws IOException {
        if (i >= 0) {
            this.f13742b += i;
        } else if (this.f13741a - this.f13742b > 0) {
            throw new IOException("Failed to read all expected data, expected: " + this.f13741a + ", but read: " + this.f13742b);
        }
        return i;
    }

    /* renamed from: a */
    public static InputStream m37598a(InputStream inputStream, long j) {
        return new C3633c(inputStream, j);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() throws IOException {
        int max;
        synchronized (this) {
            max = (int) Math.max(this.f13741a - this.f13742b, this.in.available());
        }
        return max;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        int read;
        synchronized (this) {
            read = super.read();
            m37599a(read >= 0 ? 1 : -1);
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int m37599a;
        synchronized (this) {
            m37599a = m37599a(super.read(bArr, i, i2));
        }
        return m37599a;
    }
}
