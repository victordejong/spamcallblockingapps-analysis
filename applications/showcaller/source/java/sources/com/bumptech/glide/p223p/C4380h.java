package com.bumptech.glide.p223p;

import java.io.FilterInputStream;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.p.h */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/p/h.class */
public class C4380h extends FilterInputStream {

    /* renamed from: d */
    private int f13387d = Integer.MIN_VALUE;

    public C4380h(InputStream inputStream) {
        super(inputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* renamed from: a */
    private long m22725a(long j) {
        int i = this.f13387d;
        if (i == 0) {
            return -1L;
        }
        char c = j;
        if (i != Integer.MIN_VALUE) {
            c = j;
            if (j > i) {
                c = i;
            }
        }
        return c;
    }

    /* renamed from: e */
    private void m22724e(long j) {
        int i = this.f13387d;
        if (i == Integer.MIN_VALUE || j == -1) {
            return;
        }
        this.f13387d = (int) (i - j);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() {
        int i = this.f13387d;
        return i == Integer.MIN_VALUE ? super.available() : Math.min(i, super.available());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        synchronized (this) {
            super.mark(i);
            this.f13387d = i;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() {
        if (m22725a(1L) == -1) {
            return -1;
        }
        int read = super.read();
        m22724e(1L);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        int m22725a = (int) m22725a(i2);
        if (m22725a == -1) {
            return -1;
        }
        int read = super.read(bArr, i, m22725a);
        m22724e(read);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() {
        synchronized (this) {
            super.reset();
            this.f13387d = Integer.MIN_VALUE;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) {
        long m22725a = m22725a(j);
        if (m22725a == -1) {
            return 0L;
        }
        long skip = super.skip(m22725a);
        m22724e(skip);
        return skip;
    }
}
