package com.google.api.client.p379a;

import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.util.logging.Level;
import java.util.logging.Logger;
/* renamed from: com.google.api.client.a.u */
/* loaded from: classes4-dex2jar.jar:com/google/api/client/a/u.class */
public final class C15251u extends FilterOutputStream {

    /* renamed from: a */
    final C15249s f55131a;

    public C15251u(OutputStream outputStream, Logger logger, Level level, int i) {
        super(outputStream);
        this.f55131a = new C15249s(logger, level, i);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f55131a.close();
        super.close();
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(int i) throws IOException {
        this.out.write(i);
        this.f55131a.write(i);
    }

    @Override // java.io.FilterOutputStream, java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        this.out.write(bArr, i, i2);
        this.f55131a.write(bArr, i, i2);
    }
}
