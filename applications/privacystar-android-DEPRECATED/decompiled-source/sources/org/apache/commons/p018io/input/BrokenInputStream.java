package org.apache.commons.p018io.input;

import java.io.IOException;
import java.io.InputStream;
/* renamed from: org.apache.commons.io.input.BrokenInputStream */
/* loaded from: classes2-dex2jar.jar:org/apache/commons/io/input/BrokenInputStream.class */
public class BrokenInputStream extends InputStream {
    private final IOException exception;

    public BrokenInputStream() {
        this(new IOException("Broken input stream"));
    }

    public BrokenInputStream(IOException iOException) {
        this.exception = iOException;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        throw this.exception;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        throw this.exception;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        throw this.exception;
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        synchronized (this) {
            throw this.exception;
        }
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        throw this.exception;
    }
}
