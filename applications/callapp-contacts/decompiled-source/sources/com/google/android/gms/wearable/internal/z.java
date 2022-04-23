package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.internal.o;
import com.google.android.gms.wearable.ChannelIOException;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/z.class */
public final class z extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    volatile m f30163a;

    /* renamed from: b  reason: collision with root package name */
    private final InputStream f30164b;

    public z(InputStream inputStream) {
        this.f30164b = (InputStream) o.a(inputStream);
    }

    private final int a(int i) throws ChannelIOException {
        m mVar;
        if (i != -1 || (mVar = this.f30163a) == null) {
            return i;
        }
        throw new ChannelIOException("Channel closed unexpectedly before stream was finished", mVar.f30144a, mVar.f30145b);
    }

    @Override // java.io.InputStream
    public final int available() throws IOException {
        return this.f30164b.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f30164b.close();
    }

    @Override // java.io.InputStream
    public final void mark(int i) {
        this.f30164b.mark(i);
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return this.f30164b.markSupported();
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        return a(this.f30164b.read());
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        return a(this.f30164b.read(bArr));
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        return a(this.f30164b.read(bArr, i, i2));
    }

    @Override // java.io.InputStream
    public final void reset() throws IOException {
        this.f30164b.reset();
    }

    @Override // java.io.InputStream
    public final long skip(long j) throws IOException {
        return this.f30164b.skip(j);
    }
}
