package com.google.api.client.a;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/u.class */
public final class u extends FilterOutputStream {

    /* renamed from: a  reason: collision with root package name */
    final s f31664a;

    public u(OutputStream outputStream, Logger logger, Level level, int i) {
        super(outputStream);
        this.f31664a = new s(logger, level, i);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f31664a.close();
        super.close();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(int i) throws IOException {
        this.out.write(i);
        this.f31664a.write(i);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        this.out.write(bArr, i, i2);
        this.f31664a.write(bArr, i, i2);
    }
}
