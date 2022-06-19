package com.bumptech.glide.p029o;

import java.io.FilterInputStream;
import java.io.InputStream;
/* renamed from: com.bumptech.glide.o.h */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/o/h.class */
public class C0854h extends FilterInputStream {

    /* renamed from: b */
    private int f3824b = Integer.MIN_VALUE;

    public C0854h(InputStream inputStream) {
        super(inputStream);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v10, types: [long] */
    /* renamed from: a */
    private long m10765a(long j) {
        int i = this.f3824b;
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

    /* renamed from: p */
    private void m10764p(long j) {
        int i = this.f3824b;
        if (i == Integer.MIN_VALUE || j == -1) {
            return;
        }
        this.f3824b = (int) (i - j);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int available() {
        int i = this.f3824b;
        return i == Integer.MIN_VALUE ? super.available() : Math.min(i, super.available());
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void mark(int i) {
        synchronized (this) {
            super.mark(i);
            this.f3824b = i;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() {
        if (m10765a(1L) == -1) {
            return -1;
        }
        int read = super.read();
        m10764p(1L);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        int m10765a = (int) m10765a(i2);
        if (m10765a == -1) {
            return -1;
        }
        int read = super.read(bArr, i, m10765a);
        m10764p(read);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public void reset() {
        synchronized (this) {
            super.reset();
            this.f3824b = Integer.MIN_VALUE;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public long skip(long j) {
        long m10765a = m10765a(j);
        if (m10765a == -1) {
            return 0L;
        }
        long skip = super.skip(m10765a);
        m10764p(skip);
        return skip;
    }
}
