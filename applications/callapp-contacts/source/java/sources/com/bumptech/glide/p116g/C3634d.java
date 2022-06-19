package com.bumptech.glide.p116g;

import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;
/* renamed from: com.bumptech.glide.g.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/d.class */
public final class C3634d extends InputStream {

    /* renamed from: b */
    private static final Queue<C3634d> f13743b = C3644k.m37582a(0);

    /* renamed from: a */
    public IOException f13744a;

    /* renamed from: c */
    private InputStream f13745c;

    C3634d() {
    }

    /* renamed from: a */
    public static C3634d m37596a(InputStream inputStream) {
        C3634d poll;
        Queue<C3634d> queue = f13743b;
        synchronized (queue) {
            poll = queue.poll();
        }
        C3634d c3634d = poll;
        if (poll == null) {
            c3634d = new C3634d();
        }
        c3634d.f13745c = inputStream;
        return c3634d;
    }

    /* renamed from: a */
    public final void m37597a() {
        this.f13744a = null;
        this.f13745c = null;
        Queue<C3634d> queue = f13743b;
        synchronized (queue) {
            queue.offer(this);
        }
    }

    @Override // java.io.InputStream
    public final int available() throws IOException {
        return this.f13745c.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f13745c.close();
    }

    @Override // java.io.InputStream
    public final void mark(int i) {
        this.f13745c.mark(i);
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return this.f13745c.markSupported();
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        try {
            return this.f13745c.read();
        } catch (IOException e) {
            this.f13744a = e;
            throw e;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        try {
            return this.f13745c.read(bArr);
        } catch (IOException e) {
            this.f13744a = e;
            throw e;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        try {
            return this.f13745c.read(bArr, i, i2);
        } catch (IOException e) {
            this.f13744a = e;
            throw e;
        }
    }

    @Override // java.io.InputStream
    public final void reset() throws IOException {
        synchronized (this) {
            this.f13745c.reset();
        }
    }

    @Override // java.io.InputStream
    public final long skip(long j) throws IOException {
        try {
            return this.f13745c.skip(j);
        } catch (IOException e) {
            this.f13744a = e;
            throw e;
        }
    }
}
