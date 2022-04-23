package com.dropbox.core;

import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/NoThrowOutputStream.class */
public final class NoThrowOutputStream extends OutputStream {

    /* renamed from: a  reason: collision with root package name */
    private final OutputStream f17701a;

    /* renamed from: b  reason: collision with root package name */
    private long f17702b = 0;

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/NoThrowOutputStream$HiddenException.class */
    public static final class HiddenException extends RuntimeException {

        /* renamed from: a  reason: collision with root package name */
        public final NoThrowOutputStream f17703a;

        public HiddenException(NoThrowOutputStream noThrowOutputStream, IOException iOException) {
            super(iOException);
            this.f17703a = noThrowOutputStream;
        }

        @Override // java.lang.Throwable
        public final /* bridge */ /* synthetic */ Throwable getCause() {
            return (IOException) super.getCause();
        }
    }

    public NoThrowOutputStream(OutputStream outputStream) {
        this.f17701a = outputStream;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new UnsupportedOperationException("don't call close()");
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() {
        try {
            this.f17701a.flush();
        } catch (IOException e) {
            throw new HiddenException(this, e);
        }
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        try {
            this.f17702b++;
            this.f17701a.write(i);
        } catch (IOException e) {
            throw new HiddenException(this, e);
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        try {
            this.f17702b += bArr.length;
            this.f17701a.write(bArr);
        } catch (IOException e) {
            throw new HiddenException(this, e);
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        try {
            this.f17702b += i2;
            this.f17701a.write(bArr, i, i2);
        } catch (IOException e) {
            throw new HiddenException(this, e);
        }
    }
}
