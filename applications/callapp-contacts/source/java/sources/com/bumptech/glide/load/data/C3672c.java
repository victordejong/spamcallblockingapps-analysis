package com.bumptech.glide.load.data;

import com.bumptech.glide.load.engine.p119a.AbstractC3707b;
import java.io.IOException;
import java.io.OutputStream;
/* renamed from: com.bumptech.glide.load.data.c */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/c.class */
public final class C3672c extends OutputStream {

    /* renamed from: a */
    private final OutputStream f13819a;

    /* renamed from: b */
    private byte[] f13820b;

    /* renamed from: c */
    private AbstractC3707b f13821c;

    /* renamed from: d */
    private int f13822d;

    public C3672c(OutputStream outputStream, AbstractC3707b abstractC3707b) {
        this(outputStream, abstractC3707b, 65536);
    }

    C3672c(OutputStream outputStream, AbstractC3707b abstractC3707b, int i) {
        this.f13819a = outputStream;
        this.f13821c = abstractC3707b;
        this.f13820b = (byte[]) abstractC3707b.mo37474a(i, byte[].class);
    }

    /* renamed from: a */
    private void m37528a() throws IOException {
        int i = this.f13822d;
        if (i > 0) {
            this.f13819a.write(this.f13820b, 0, i);
            this.f13822d = 0;
        }
    }

    /* renamed from: b */
    private void m37527b() throws IOException {
        if (this.f13822d == this.f13820b.length) {
            m37528a();
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        try {
            flush();
            this.f13819a.close();
            byte[] bArr = this.f13820b;
            if (bArr == null) {
                return;
            }
            this.f13821c.mo37470a((AbstractC3707b) bArr);
            this.f13820b = null;
        } catch (Throwable th) {
            this.f13819a.close();
            throw th;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        m37528a();
        this.f13819a.flush();
    }

    @Override // java.io.OutputStream
    public final void write(int i) throws IOException {
        byte[] bArr = this.f13820b;
        int i2 = this.f13822d;
        this.f13822d = i2 + 1;
        bArr[i2] = (byte) i;
        m37527b();
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        write(bArr, 0, bArr.length);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        int i3;
        int i4 = 0;
        do {
            int i5 = i2 - i4;
            int i6 = i + i4;
            int i7 = this.f13822d;
            if (i7 == 0 && i5 >= this.f13820b.length) {
                this.f13819a.write(bArr, i6, i5);
                return;
            }
            int min = Math.min(i5, this.f13820b.length - i7);
            System.arraycopy(bArr, i6, this.f13820b, this.f13822d, min);
            this.f13822d += min;
            i3 = i4 + min;
            m37527b();
            i4 = i3;
        } while (i3 < i2);
    }
}
