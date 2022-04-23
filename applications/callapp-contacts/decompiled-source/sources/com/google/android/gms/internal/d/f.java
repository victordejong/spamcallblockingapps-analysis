package com.google.android.gms.internal.d;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.Objects;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/d/f.class */
final class f extends FilterInputStream {

    /* renamed from: b  reason: collision with root package name */
    private long f28868b = -1;

    /* renamed from: a  reason: collision with root package name */
    private long f28867a = 1048577;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(InputStream inputStream, long j) {
        super(inputStream);
        Objects.requireNonNull(inputStream);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() throws IOException {
        return (int) Math.min(this.in.available(), this.f28867a);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void mark(int i) {
        synchronized (this) {
            this.in.mark(i);
            this.f28868b = this.f28867a;
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        if (this.f28867a == 0) {
            return -1;
        }
        int read = this.in.read();
        if (read != -1) {
            this.f28867a--;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        long j = this.f28867a;
        if (j == 0) {
            return -1;
        }
        int read = this.in.read(bArr, i, (int) Math.min(i2, j));
        if (read != -1) {
            this.f28867a -= read;
        }
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final void reset() throws IOException {
        synchronized (this) {
            if (!this.in.markSupported()) {
                throw new IOException("Mark not supported");
            } else if (this.f28868b != -1) {
                this.in.reset();
                this.f28867a = this.f28868b;
            } else {
                throw new IOException("Mark not set");
            }
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j) throws IOException {
        long skip = this.in.skip(Math.min(j, this.f28867a));
        this.f28867a -= skip;
        return skip;
    }
}
