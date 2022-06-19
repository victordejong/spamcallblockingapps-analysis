package com.google.android.gms.wearable.internal;

import com.google.android.gms.common.internal.C12045o;
import com.google.android.gms.wearable.ChannelIOException;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.google.android.gms.wearable.internal.z */
/* loaded from: classes4-dex2jar.jar:com/google/android/gms/wearable/internal/z.class */
public final class C14353z extends InputStream {

    /* renamed from: a */
    volatile C14340m f52328a;

    /* renamed from: b */
    private final InputStream f52329b;

    public C14353z(InputStream inputStream) {
        this.f52329b = (InputStream) C12045o.m19162a(inputStream);
    }

    /* renamed from: a */
    private final int m11350a(int i) throws ChannelIOException {
        C14340m c14340m;
        if (i != -1 || (c14340m = this.f52328a) == null) {
            return i;
        }
        throw new ChannelIOException("Channel closed unexpectedly before stream was finished", c14340m.f52305a, c14340m.f52306b);
    }

    @Override // java.io.InputStream
    public final int available() throws IOException {
        return this.f52329b.available();
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f52329b.close();
    }

    @Override // java.io.InputStream
    public final void mark(int i) {
        this.f52329b.mark(i);
    }

    @Override // java.io.InputStream
    public final boolean markSupported() {
        return this.f52329b.markSupported();
    }

    @Override // java.io.InputStream
    public final int read() throws IOException {
        return m11350a(this.f52329b.read());
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        return m11350a(this.f52329b.read(bArr));
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        return m11350a(this.f52329b.read(bArr, i, i2));
    }

    @Override // java.io.InputStream
    public final void reset() throws IOException {
        this.f52329b.reset();
    }

    @Override // java.io.InputStream
    public final long skip(long j) throws IOException {
        return this.f52329b.skip(j);
    }
}
