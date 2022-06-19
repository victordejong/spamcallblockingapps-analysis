package com.google.api.client.p379a;

import java.io.FilterInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: com.google.api.client.a.t */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/t.class */
public final class C15250t extends FilterInputStream {

    /* renamed from: a */
    private final C15249s f55130a;

    public C15250t(InputStream inputStream, Logger logger, Level level, int i) {
        super(inputStream);
        this.f55130a = new C15249s(logger, level, i);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f55130a.close();
        super.close();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() throws IOException {
        int read = super.read();
        this.f55130a.write(read);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) throws IOException {
        int read = super.read(bArr, i, i2);
        if (read > 0) {
            this.f55130a.write(bArr, i, read);
        }
        return read;
    }
}
