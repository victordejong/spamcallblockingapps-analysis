package com.dropbox.core.util;

import com.dropbox.core.util.IOUtil;
import java.io.IOException;
import java.io.OutputStream;
/* renamed from: com.dropbox.core.util.e */
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/util/e.class */
public final class C8637e extends OutputStream {

    /* renamed from: a */
    public IOUtil.AbstractC8630a f30644a;

    /* renamed from: b */
    private int f30645b;

    /* renamed from: c */
    private OutputStream f30646c;

    public C8637e(OutputStream outputStream) {
        this.f30646c = outputStream;
        this.f30645b = 0;
    }

    public C8637e(OutputStream outputStream, IOUtil.AbstractC8630a abstractC8630a) {
        this(outputStream);
        this.f30644a = abstractC8630a;
    }

    /* renamed from: a */
    private void m25220a(int i) {
        this.f30645b += i;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f30646c.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        this.f30646c.flush();
    }

    @Override // java.io.OutputStream
    public final void write(int i) throws IOException {
        this.f30646c.write(i);
        m25220a(1);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        this.f30646c.write(bArr);
        m25220a(bArr.length);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        this.f30646c.write(bArr, i, i2);
        m25220a(i2);
    }
}
