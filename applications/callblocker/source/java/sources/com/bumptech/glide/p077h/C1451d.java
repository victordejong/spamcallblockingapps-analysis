package com.bumptech.glide.p077h;

import java.io.IOException;
import java.io.InputStream;
import java.util.Queue;
/* renamed from: com.bumptech.glide.h.d */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/h/d.class */
public class C1451d extends InputStream {

    /* renamed from: a */
    private static final Queue<C1451d> f4757a = C1457j.m16981a(0);

    /* renamed from: b */
    private InputStream f4758b;

    /* renamed from: c */
    private IOException f4759c;

    C1451d() {
    }

    /* renamed from: a */
    public static C1451d m17005a(InputStream inputStream) {
        C1451d poll;
        synchronized (f4757a) {
            poll = f4757a.poll();
        }
        C1451d c1451d = poll;
        if (poll == null) {
            c1451d = new C1451d();
        }
        c1451d.m17003b(inputStream);
        return c1451d;
    }

    /* renamed from: a */
    public IOException m17006a() {
        return this.f4759c;
    }

    @Override // java.io.InputStream
    public int available() {
        return this.f4758b.available();
    }

    /* renamed from: b */
    public void m17004b() {
        this.f4759c = null;
        this.f4758b = null;
        synchronized (f4757a) {
            f4757a.offer(this);
        }
    }

    /* renamed from: b */
    void m17003b(InputStream inputStream) {
        this.f4758b = inputStream;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f4758b.close();
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        this.f4758b.mark(i);
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return this.f4758b.markSupported();
    }

    @Override // java.io.InputStream
    public int read() {
        int i;
        try {
            i = this.f4758b.read();
        } catch (IOException e) {
            this.f4759c = e;
            i = -1;
        }
        return i;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) {
        int i;
        try {
            i = this.f4758b.read(bArr);
        } catch (IOException e) {
            this.f4759c = e;
            i = -1;
        }
        return i;
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        int i3;
        try {
            i3 = this.f4758b.read(bArr, i, i2);
        } catch (IOException e) {
            this.f4759c = e;
            i3 = -1;
        }
        return i3;
    }

    @Override // java.io.InputStream
    public void reset() {
        synchronized (this) {
            this.f4758b.reset();
        }
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [long] */
    @Override // java.io.InputStream
    public long skip(long j) {
        char c;
        try {
            c = this.f4758b.skip(j);
        } catch (IOException e) {
            this.f4759c = e;
            c = 0;
        }
        return c;
    }
}
