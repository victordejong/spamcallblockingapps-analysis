package com.google.api.client.util;

import java.io.FilterInputStream;
import java.io.InputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: com.google.api.client.util.q */
/* loaded from: classes2-dex2jar.jar:com/google/api/client/util/q.class */
public class C8722q extends FilterInputStream {

    /* renamed from: d */
    private final C8721p f38554d;

    public C8722q(InputStream inputStream, Logger logger, Level level, int i) {
        super(inputStream);
        this.f38554d = new C8721p(logger, level, i);
    }

    @Override // java.io.FilterInputStream, java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.f38554d.close();
        super.close();
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read() {
        int read = super.read();
        this.f38554d.write(read);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public int read(byte[] bArr, int i, int i2) {
        int read = super.read(bArr, i, i2);
        if (read > 0) {
            this.f38554d.write(bArr, i, read);
        }
        return read;
    }
}
