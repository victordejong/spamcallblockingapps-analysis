package com.bumptech.glide.load.data;

import com.bumptech.glide.load.engine.a.b;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/data/c.class */
public final class c extends OutputStream {

    /* renamed from: a  reason: collision with root package name */
    private final OutputStream f7397a;

    /* renamed from: b  reason: collision with root package name */
    private byte[] f7398b;

    /* renamed from: c  reason: collision with root package name */
    private b f7399c;

    /* renamed from: d  reason: collision with root package name */
    private int f7400d;

    public c(OutputStream outputStream, b bVar) {
        this(outputStream, bVar, 65536);
    }

    c(OutputStream outputStream, b bVar, int i) {
        this.f7397a = outputStream;
        this.f7399c = bVar;
        this.f7398b = (byte[]) bVar.a(i, byte[].class);
    }

    private void a() throws IOException {
        int i = this.f7400d;
        if (i > 0) {
            this.f7397a.write(this.f7398b, 0, i);
            this.f7400d = 0;
        }
    }

    private void b() throws IOException {
        if (this.f7400d == this.f7398b.length) {
            a();
        }
    }

    /* JADX WARN: Finally extract failed */
    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        try {
            flush();
            this.f7397a.close();
            byte[] bArr = this.f7398b;
            if (bArr != null) {
                this.f7399c.a((b) bArr);
                this.f7398b = null;
            }
        } catch (Throwable th) {
            this.f7397a.close();
            throw th;
        }
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        a();
        this.f7397a.flush();
    }

    @Override // java.io.OutputStream
    public final void write(int i) throws IOException {
        byte[] bArr = this.f7398b;
        int i2 = this.f7400d;
        this.f7400d = i2 + 1;
        bArr[i2] = (byte) i;
        b();
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
            int i7 = this.f7400d;
            if (i7 != 0 || i5 < this.f7398b.length) {
                int min = Math.min(i5, this.f7398b.length - i7);
                System.arraycopy(bArr, i6, this.f7398b, this.f7400d, min);
                this.f7400d += min;
                i3 = i4 + min;
                b();
                i4 = i3;
            } else {
                this.f7397a.write(bArr, i6, i5);
                return;
            }
        } while (i3 < i2);
    }
}
