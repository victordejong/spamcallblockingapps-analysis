package com.bumptech.glide.load.data;

import com.bumptech.glide.load.engine.p020x.AbstractC0768b;
import java.io.OutputStream;
/* renamed from: com.bumptech.glide.load.data.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/c.class */
public final class C0735c extends OutputStream {

    /* renamed from: b */
    private final OutputStream f3512b;

    /* renamed from: c */
    private byte[] f3513c;

    /* renamed from: d */
    private AbstractC0768b f3514d;

    /* renamed from: e */
    private int f3515e;

    public C0735c(OutputStream outputStream, AbstractC0768b abstractC0768b) {
        this(outputStream, abstractC0768b, 65536);
    }

    C0735c(OutputStream outputStream, AbstractC0768b abstractC0768b, int i) {
        this.f3512b = outputStream;
        this.f3514d = abstractC0768b;
        this.f3513c = (byte[]) abstractC0768b.m11070d(i, byte[].class);
    }

    /* renamed from: a */
    private void m11192a() {
        int i = this.f3515e;
        if (i > 0) {
            this.f3512b.write(this.f3513c, 0, i);
            this.f3515e = 0;
        }
    }

    /* renamed from: p */
    private void m11191p() {
        if (this.f3515e == this.f3513c.length) {
            m11192a();
        }
    }

    /* renamed from: x */
    private void m11190x() {
        byte[] bArr = this.f3513c;
        if (bArr != null) {
            this.f3514d.put(bArr);
            this.f3513c = null;
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            flush();
            this.f3512b.close();
            m11190x();
        } catch (Throwable th) {
            this.f3512b.close();
            throw th;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
        m11192a();
        this.f3512b.flush();
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        byte[] bArr = this.f3513c;
        int i2 = this.f3515e;
        this.f3515e = i2 + 1;
        bArr[i2] = (byte) i;
        m11191p();
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
            int i7 = this.f3515e;
            if (i7 == 0 && i5 >= this.f3513c.length) {
                this.f3512b.write(bArr, i6, i5);
                return;
            }
            int min = Math.min(i5, this.f3513c.length - i7);
            System.arraycopy(bArr, i6, this.f3513c, this.f3515e, min);
            this.f3515e += min;
            i3 = i4 + min;
            m11191p();
            i4 = i3;
        } while (i3 < i2);
    }
}
