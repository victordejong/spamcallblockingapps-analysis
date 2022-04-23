package com.dropbox.core;

import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/NoThrowInputStream.class */
public final class NoThrowInputStream extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    private final InputStream f17699a;

    /* renamed from: b  reason: collision with root package name */
    private long f17700b = 0;

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
        this.f17699a = inputStream;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new UnsupportedOperationException("don't call close()");
    }

    @Override // java.io.InputStream
    public final int read() {
        try {
            this.f17700b++;
            return this.f17699a.read();
        } catch (IOException e) {
            throw new HiddenException(e);
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr) {
        try {
            int read = this.f17699a.read(bArr);
            this.f17700b += read;
            return read;
        } catch (IOException e) {
            throw new HiddenException(e);
        }
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        try {
            int read = this.f17699a.read(bArr, i, i2);
            this.f17700b += read;
            return read;
        } catch (IOException e) {
            throw new HiddenException(e);
        }
    }
}
