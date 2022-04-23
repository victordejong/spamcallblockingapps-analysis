package com.dropbox.core.util;

import com.dropbox.core.util.IOUtil;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes2-dex2jar.jar:com/dropbox/core/util/e.class */
public final class e extends OutputStream {

    /* renamed from: a  reason: collision with root package name */
    public IOUtil.a f17844a;

    /* renamed from: b  reason: collision with root package name */
    private int f17845b;

    /* renamed from: c  reason: collision with root package name */
    private OutputStream f17846c;

    public e(OutputStream outputStream) {
        this.f17846c = outputStream;
        this.f17845b = 0;
    }

    public e(OutputStream outputStream, IOUtil.a aVar) {
        this(outputStream);
        this.f17844a = aVar;
    }

    private void a(int i) {
        this.f17845b += i;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public final void close() throws IOException {
        this.f17846c.close();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public final void flush() throws IOException {
        this.f17846c.flush();
    }

    @Override // java.io.OutputStream
    public final void write(int i) throws IOException {
        this.f17846c.write(i);
        a(1);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr) throws IOException {
        this.f17846c.write(bArr);
        a(bArr.length);
    }

    @Override // java.io.OutputStream
    public final void write(byte[] bArr, int i, int i2) throws IOException {
        this.f17846c.write(bArr, i, i2);
        a(i2);
    }
}
