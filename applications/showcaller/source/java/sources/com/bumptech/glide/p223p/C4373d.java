package com.bumptech.glide.p223p;

import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;
/* renamed from: com.bumptech.glide.p.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/p/d.class */
public final class C4373d extends InputStream {

    /* renamed from: d */
    private static final Queue<C4373d> f13375d = C4383k.m22713e(0);

    /* renamed from: e */
    private InputStream f13376e;

    /* renamed from: f */
    private IOException f13377f;

    C4373d() {
    }

    /* renamed from: e */
    public static C4373d m22741e(InputStream inputStream) {
        C4373d poll;
        Queue<C4373d> queue = f13375d;
        synchronized (queue) {
            poll = queue.poll();
        }
        C4373d c4373d = poll;
        if (poll == null) {
            c4373d = new C4373d();
        }
        c4373d.m22739g(inputStream);
        return c4373d;
    }

    /* renamed from: a */
    public IOException m22742a() {
        return this.f13377f;
    }

    @Override // java.io.InputStream
    public int available() {
        return this.f13376e.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f13376e.close();
    }

    /* renamed from: f */
    public void m22740f() {
        this.f13377f = null;
        this.f13376e = null;
        Queue<C4373d> queue = f13375d;
        synchronized (queue) {
            queue.offer(this);
        }
    }

    /* renamed from: g */
    void m22739g(InputStream inputStream) {
        this.f13376e = inputStream;
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        this.f13376e.mark(i);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f13376e.markSupported();
    }

    @Override // java.io.InputStream
    public int read() {
        try {
            return this.f13376e.read();
        } catch (IOException e) {
            this.f13377f = e;
            throw e;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        try {
            return this.f13376e.read(bArr);
        } catch (IOException e) {
            this.f13377f = e;
            throw e;
        }
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        try {
            return this.f13376e.read(bArr, i, i2);
        } catch (IOException e) {
            this.f13377f = e;
            throw e;
        }
    }

    @Override // java.io.InputStream
    public void reset() {
        synchronized (this) {
            this.f13376e.reset();
        }
    }

    @Override // java.io.InputStream
    public long skip(long j) {
        try {
            return this.f13376e.skip(j);
        } catch (IOException e) {
            this.f13377f = e;
            throw e;
        }
    }
}
