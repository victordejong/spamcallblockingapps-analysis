package com.bumptech.glide.load.p079a;

import com.bumptech.glide.load.engine.p090a.AbstractC1673b;
import java.io.OutputStream;
/* renamed from: com.bumptech.glide.load.a.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/a/c.class */
public final class C1474c extends OutputStream {

    /* renamed from: a */
    private final OutputStream f4814a;

    /* renamed from: b */
    private byte[] f4815b;

    /* renamed from: c */
    private AbstractC1673b f4816c;

    /* renamed from: d */
    private int f4817d;

    public C1474c(OutputStream outputStream, AbstractC1673b abstractC1673b) {
        this(outputStream, abstractC1673b, 65536);
    }

    C1474c(OutputStream outputStream, AbstractC1673b abstractC1673b, int i) {
        this.f4814a = outputStream;
        this.f4816c = abstractC1673b;
        this.f4815b = (byte[]) abstractC1673b.mo16562a(i, byte[].class);
    }

    /* renamed from: a */
    private void m16926a() {
        if (this.f4817d > 0) {
            this.f4814a.write(this.f4815b, 0, this.f4817d);
            this.f4817d = 0;
        }
    }

    /* renamed from: b */
    private void m16925b() {
        if (this.f4817d == this.f4815b.length) {
            m16926a();
        }
    }

    /* renamed from: c */
    private void m16924c() {
        if (this.f4815b != null) {
            this.f4816c.mo16557a((AbstractC1673b) this.f4815b);
            this.f4815b = null;
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            flush();
            this.f4814a.close();
            m16924c();
        } catch (Throwable th) {
            this.f4814a.close();
            throw th;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
        m16926a();
        this.f4814a.flush();
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        byte[] bArr = this.f4815b;
        int i2 = this.f4817d;
        this.f4817d = i2 + 1;
        bArr[i2] = (byte) i;
        m16925b();
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) {
        int i3;
        int i4 = 0;
        do {
            int i5 = i2 - i4;
            int i6 = i + i4;
            if (this.f4817d == 0 && i5 >= this.f4815b.length) {
                this.f4814a.write(bArr, i6, i5);
                return;
            }
            int min = Math.min(i5, this.f4815b.length - this.f4817d);
            System.arraycopy(bArr, i6, this.f4815b, this.f4817d, min);
            this.f4817d += min;
            i3 = i4 + min;
            m16925b();
            i4 = i3;
        } while (i3 < i2);
    }
}
