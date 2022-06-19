package com.bumptech.glide.p223p;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.p.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/p/c.class */
public final class C4372c extends FilterInputStream {

    /* renamed from: d */
    private final long f13373d;

    /* renamed from: e */
    private int f13374e;

    private C4372c(InputStream inputStream, long j) {
        super(inputStream);
        this.f13373d = j;
    }

    /* renamed from: a */
    private int m22744a(int i) {
        if (i >= 0) {
            this.f13374e += i;
        } else if (this.f13373d - this.f13374e > 0) {
            throw new IOException("Failed to read all expected data, expected: " + this.f13373d + ", but read: " + this.f13374e);
        }
        return i;
    }

    /* renamed from: e */
    public static InputStream m22743e(InputStream inputStream, long j) {
        return new C4372c(inputStream, j);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() {
        int max;
        synchronized (this) {
            max = (int) Math.max(this.f13373d - this.f13374e, ((FilterInputStream) this).in.available());
        }
        return max;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() {
        int read;
        synchronized (this) {
            read = super.read();
            m22744a(read >= 0 ? 1 : -1);
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr) {
        return read(bArr, 0, bArr.length);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        int m22744a;
        synchronized (this) {
            m22744a = m22744a(super.read(bArr, i, i2));
        }
        return m22744a;
    }
}
