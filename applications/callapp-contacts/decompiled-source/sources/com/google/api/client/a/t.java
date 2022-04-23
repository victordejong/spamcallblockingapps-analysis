package com.google.api.client.a;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/t.class */
public final class t extends FilterInputStream {

    /* renamed from: a  reason: collision with root package name */
    private final s f31663a;

    public t(InputStream inputStream, Logger logger, Level level, int i) {
        super(inputStream);
        this.f31663a = new s(logger, level, i);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f31663a.close();
        super.close();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        int read = super.read();
        this.f31663a.write(read);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int read = super.read(bArr, i, i2);
        if (read > 0) {
            this.f31663a.write(bArr, i, read);
        }
        return read;
    }
}
