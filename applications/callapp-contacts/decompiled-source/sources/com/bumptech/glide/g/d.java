package com.bumptech.glide.g;

import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/g/d.class */
public final class d extends InputStream {

    /* renamed from: b  reason: collision with root package name */
    private static final Queue<d> f7346b = k.a(0);

    /* renamed from: a  reason: collision with root package name */
    public IOException f7347a;

    /* renamed from: c  reason: collision with root package name */
    private InputStream f7348c;

    d() {
    }

    public static d a(InputStream inputStream) {
        d poll;
        Queue<d> queue = f7346b;
        synchronized (queue) {
            poll = queue.poll();
        }
        d dVar = poll;
        if (poll == null) {
            dVar = new d();
        }
        dVar.f7348c = inputStream;
        return dVar;
    }

    public final void a() {
        this.f7347a = null;
        this.f7348c = null;
        Queue<d> queue = f7346b;
        synchronized (queue) {
            queue.offer(this);
        }
    }

    @Override // java.io.InputStream
    public final int available() throws IOException {
        return this.f7348c.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f7348c.close();
    }

    @Override // java.io.InputStream
    public final void mark(int i) {
        this.f7348c.mark(i);
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return this.f7348c.markSupported();
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        try {
            return this.f7348c.read();
        } catch (IOException e) {
            this.f7347a = e;
            throw e;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        try {
            return this.f7348c.read(bArr);
        } catch (IOException e) {
            this.f7347a = e;
            throw e;
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        try {
            return this.f7348c.read(bArr, i, i2);
        } catch (IOException e) {
            this.f7347a = e;
            throw e;
        }
    }

    @Override // java.io.InputStream
    public final void reset() throws IOException {
        synchronized (this) {
            this.f7348c.reset();
        }
    }

    @Override // java.io.InputStream
    public final long skip(long j) throws IOException {
        try {
            return this.f7348c.skip(j);
        } catch (IOException e) {
            this.f7347a = e;
            throw e;
        }
    }
}
