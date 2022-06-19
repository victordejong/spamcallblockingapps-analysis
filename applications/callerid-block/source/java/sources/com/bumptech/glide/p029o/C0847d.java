package com.bumptech.glide.p029o;

import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;
/* renamed from: com.bumptech.glide.o.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/o/d.class */
public final class C0847d extends InputStream {

    /* renamed from: d */
    private static final Queue<C0847d> f3813d = C0857k.m10753e(0);

    /* renamed from: b */
    private InputStream f3814b;

    /* renamed from: c */
    private IOException f3815c;

    C0847d() {
    }

    /* renamed from: p */
    public static C0847d m10780p(InputStream inputStream) {
        C0847d poll;
        Queue<C0847d> queue = f3813d;
        synchronized (queue) {
            poll = queue.poll();
        }
        C0847d c0847d = poll;
        if (poll == null) {
            c0847d = new C0847d();
        }
        c0847d.m10782B(inputStream);
        return c0847d;
    }

    /* renamed from: B */
    void m10782B(InputStream inputStream) {
        this.f3814b = inputStream;
    }

    /* renamed from: a */
    public IOException m10781a() {
        return this.f3815c;
    }

    @Override // java.io.InputStream
    public int available() {
        return this.f3814b.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f3814b.close();
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        this.f3814b.mark(i);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f3814b.markSupported();
    }

    @Override // java.io.InputStream
    public int read() {
        try {
            return this.f3814b.read();
        } catch (IOException e) {
            this.f3815c = e;
            throw e;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        try {
            return this.f3814b.read(bArr);
        } catch (IOException e) {
            this.f3815c = e;
            throw e;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        try {
            return this.f3814b.read(bArr, i, i2);
        } catch (IOException e) {
            this.f3815c = e;
            throw e;
        }
    }

    @Override // java.io.InputStream
    public void reset() {
        synchronized (this) {
            this.f3814b.reset();
        }
    }

    @Override // java.io.InputStream
    public long skip(long j) {
        try {
            return this.f3814b.skip(j);
        } catch (IOException e) {
            this.f3815c = e;
            throw e;
        }
    }

    /* renamed from: x */
    public void m10779x() {
        this.f3815c = null;
        this.f3814b = null;
        Queue<C0847d> queue = f3813d;
        synchronized (queue) {
            queue.offer(this);
        }
    }
}
