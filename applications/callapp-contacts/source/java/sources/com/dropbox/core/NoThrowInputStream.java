package com.dropbox.core;

import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/NoThrowInputStream.class */
public final class NoThrowInputStream extends InputStream {

    /* renamed from: a */
    private final InputStream f30441a;

    /* renamed from: b */
    private long f30442b = 0;

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/NoThrowInputStream$HiddenException.class */
    public static final class HiddenException extends RuntimeException {
        public HiddenException(IOException iOException) {
            super(iOException);
        }

        @Override // java.lang.Throwable
        public final /* bridge */ /* synthetic */ Throwable getCause() {
            return (IOException) super.getCause();
        }
    }

    public NoThrowInputStream(InputStream inputStream) {
        this.f30441a = inputStream;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new UnsupportedOperationException("don't call close()");
    }

    @Override // java.io.InputStream
    public final int read() {
        try {
            this.f30442b++;
            return this.f30441a.read();
        } catch (IOException e) {
            throw new HiddenException(e);
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) {
        try {
            int read = this.f30441a.read(bArr);
            this.f30442b += read;
            return read;
        } catch (IOException e) {
            throw new HiddenException(e);
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        try {
            int read = this.f30441a.read(bArr, i, i2);
            this.f30442b += read;
            return read;
        } catch (IOException e) {
            throw new HiddenException(e);
        }
    }
}
