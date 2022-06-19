package com.bumptech.glide.load.data;

import com.bumptech.glide.load.engine.p209x.AbstractC4091b;
import java.io.OutputStream;
/* renamed from: com.bumptech.glide.load.data.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/c.class */
public final class C4006c extends OutputStream {

    /* renamed from: d */
    private final OutputStream f12644d;

    /* renamed from: e */
    private byte[] f12645e;

    /* renamed from: f */
    private AbstractC4091b f12646f;

    /* renamed from: g */
    private int f12647g;

    public C4006c(OutputStream outputStream, AbstractC4091b abstractC4091b) {
        this(outputStream, abstractC4091b, 65536);
    }

    C4006c(OutputStream outputStream, AbstractC4091b abstractC4091b, int i) {
        this.f12644d = outputStream;
        this.f12646f = abstractC4091b;
        this.f12645e = (byte[]) abstractC4091b.mo23275e(i, byte[].class);
    }

    /* renamed from: a */
    private void m23503a() {
        int i = this.f12647g;
        if (i > 0) {
            this.f12644d.write(this.f12645e, 0, i);
            this.f12647g = 0;
        }
    }

    /* renamed from: e */
    private void m23502e() {
        if (this.f12647g == this.f12645e.length) {
            m23503a();
        }
    }

    /* renamed from: f */
    private void m23501f() {
        byte[] bArr = this.f12645e;
        if (bArr != null) {
            this.f12646f.mo23276d(bArr);
            this.f12645e = null;
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        try {
            flush();
            this.f12644d.close();
            m23501f();
        } catch (Throwable th) {
            this.f12644d.close();
            throw th;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() {
        m23503a();
        this.f12644d.flush();
    }

    @Override // java.io.OutputStream
    public void write(int i) {
        byte[] bArr = this.f12645e;
        int i2 = this.f12647g;
        this.f12647g = i2 + 1;
        bArr[i2] = (byte) i;
        m23502e();
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
            int i7 = this.f12647g;
            if (i7 == 0 && i5 >= this.f12645e.length) {
                this.f12644d.write(bArr, i6, i5);
                return;
            }
            int min = Math.min(i5, this.f12645e.length - i7);
            System.arraycopy(bArr, i6, this.f12645e, this.f12647g, min);
            this.f12647g += min;
            i3 = i4 + min;
            m23502e();
            i4 = i3;
        } while (i3 < i2);
    }
}
