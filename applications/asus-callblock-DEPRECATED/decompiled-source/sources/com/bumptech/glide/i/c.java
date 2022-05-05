package com.bumptech.glide.i;

import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/i/c.class */
public final class c extends InputStream {

    /* renamed from: b  reason: collision with root package name */
    private static final Queue<c> f3463b = h.a(0);

    /* renamed from: a  reason: collision with root package name */
    public IOException f3464a;
    private InputStream c;

    c() {
    }

    public static c a(InputStream inputStream) {
        c poll;
        synchronized (f3463b) {
            poll = f3463b.poll();
        }
        c cVar = poll;
        if (poll == null) {
            cVar = new c();
        }
        cVar.c = inputStream;
        return cVar;
    }

    public final void a() {
        this.f3464a = null;
        this.c = null;
        synchronized (f3463b) {
            f3463b.offer(this);
        }
    }

    @Override // java.io.InputStream
    public final int available() {
        return this.c.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.c.close();
    }

    @Override // java.io.InputStream
    public final void mark(int i) {
        this.c.mark(i);
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return this.c.markSupported();
    }

    @Override // java.io.InputStream
    public final int read() {
        int i;
        try {
            i = this.c.read();
        } catch (IOException e) {
            this.f3464a = e;
            i = -1;
        }
        return i;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) {
        int i;
        try {
            i = this.c.read(bArr);
        } catch (IOException e) {
            this.f3464a = e;
            i = -1;
        }
        return i;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int i3;
        try {
            i3 = this.c.read(bArr, i, i2);
        } catch (IOException e) {
            this.f3464a = e;
            i3 = -1;
        }
        return i3;
    }

    @Override // java.io.InputStream
    public final void reset() {
        synchronized (this) {
            this.c.reset();
        }
    }

    @Override // java.io.InputStream
    public final long skip(long j) {
        long j2;
        try {
            j2 = this.c.skip(j);
        } catch (IOException e) {
            this.f3464a = e;
            j2 = 0;
        }
        return j2;
    }
}
