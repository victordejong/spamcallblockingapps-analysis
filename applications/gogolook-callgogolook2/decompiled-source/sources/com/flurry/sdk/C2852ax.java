package com.flurry.sdk;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.flurry.sdk.ax */
/* loaded from: classes2-dex2jar.jar:com/flurry/sdk/ax.class */
public final class C2852ax extends FilterInputStream {

    /* renamed from: a */
    public final long f4107a;

    /* renamed from: b */
    public long f4108b;

    public C2852ax(InputStream inputStream, long j) {
        super(inputStream);
        this.f4107a = j;
    }

    /* renamed from: a */
    public final int m33540a(int i) throws IOException {
        this.f4108b += i;
        if (this.f4108b <= this.f4107a) {
            return i;
        }
        throw new IOException("Size limit exceeded: " + this.f4107a + " bytes, read " + this.f4108b + " bytes!");
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ((FilterInputStream) this).in = null;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        int read = super.read();
        m33540a(read);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr) throws IOException {
        int read = super.read(bArr);
        m33540a(read);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int read = super.read(bArr, i, i2);
        m33540a(read);
        return read;
    }
}
