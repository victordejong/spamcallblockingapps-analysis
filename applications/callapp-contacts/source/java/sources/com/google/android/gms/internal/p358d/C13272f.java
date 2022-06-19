package com.google.android.gms.internal.p358d;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
/* renamed from: com.google.android.gms.internal.d.f */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/d/f.class */
final class C13272f extends FilterInputStream {

    /* renamed from: b */
    private long f50528b = -1;

    /* renamed from: a */
    private long f50527a = 1048577;

    public C13272f(InputStream inputStream, long j) {
        super(inputStream);
        Objects.requireNonNull(inputStream);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() throws IOException {
        return (int) Math.min(this.in.available(), this.f50527a);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void mark(int i) {
        synchronized (this) {
            this.in.mark(i);
            this.f50528b = this.f50527a;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        if (this.f50527a == 0) {
            return -1;
        }
        int read = this.in.read();
        if (read != -1) {
            this.f50527a--;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        long j = this.f50527a;
        if (j == 0) {
            return -1;
        }
        int read = this.in.read(bArr, i, (int) Math.min(i2, j));
        if (read != -1) {
            this.f50527a -= read;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void reset() throws IOException {
        synchronized (this) {
            if (!this.in.markSupported()) {
                throw new IOException("Mark not supported");
            }
            if (this.f50528b == -1) {
                throw new IOException("Mark not set");
            }
            this.in.reset();
            this.f50527a = this.f50528b;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j) throws IOException {
        long skip = this.in.skip(Math.min(j, this.f50527a));
        this.f50527a -= skip;
        return skip;
    }
}
