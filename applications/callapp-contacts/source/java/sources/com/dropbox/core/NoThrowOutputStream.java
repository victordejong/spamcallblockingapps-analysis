package com.dropbox.core;

import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/NoThrowOutputStream.class */
public final class NoThrowOutputStream extends OutputStream {

    /* renamed from: a */
    private final OutputStream f30443a;

    /* renamed from: b */
    private long f30444b = 0;

    /* loaded from: classes2-dex2jar.jar:com/dropbox/core/NoThrowOutputStream$HiddenException.class */
    public static final class HiddenException extends RuntimeException {

        /* renamed from: a */
        public final NoThrowOutputStream f30445a;

        public HiddenException(NoThrowOutputStream noThrowOutputStream, IOException iOException) {
            super(iOException);
            this.f30445a = noThrowOutputStream;
        }

        @Override // java.lang.Throwable
        public final /* bridge */ /* synthetic */ Throwable getCause() {
            return (IOException) super.getCause();
        }
    }

    public NoThrowOutputStream(OutputStream outputStream) {
        this.f30443a = outputStream;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        throw new UnsupportedOperationException("don't call close()");
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() {
        try {
            this.f30443a.flush();
        } catch (IOException e) {
            throw new HiddenException(this, e);
        }
    }

    @Override // java.io.OutputStream
    public final void write(int i) {
        try {
            this.f30444b++;
            this.f30443a.write(i);
        } catch (IOException e) {
            throw new HiddenException(this, e);
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) {
        try {
            this.f30444b += bArr.length;
            this.f30443a.write(bArr);
        } catch (IOException e) {
            throw new HiddenException(this, e);
        }
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) {
        try {
            this.f30444b += i2;
            this.f30443a.write(bArr, i, i2);
        } catch (IOException e) {
            throw new HiddenException(this, e);
        }
    }
}
