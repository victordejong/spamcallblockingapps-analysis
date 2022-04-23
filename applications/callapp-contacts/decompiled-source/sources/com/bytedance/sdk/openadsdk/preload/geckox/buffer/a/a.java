package com.bytedance.sdk.openadsdk.preload.geckox.buffer.a;

import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/buffer/a/a.class */
public class a extends InputStream {

    /* renamed from: a  reason: collision with root package name */
    private com.bytedance.sdk.openadsdk.preload.geckox.buffer.a f10164a;

    /* renamed from: b  reason: collision with root package name */
    private long f10165b;

    public a(com.bytedance.sdk.openadsdk.preload.geckox.buffer.a aVar) {
        this.f10164a = aVar;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        long b2 = this.f10164a.b() - this.f10164a.c();
        if (b2 > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) b2;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        synchronized (this) {
            this.f10165b = i;
        }
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        return this.f10164a.d();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return this.f10164a.b(bArr);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        return this.f10164a.b(bArr, i, i2);
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        synchronized (this) {
            this.f10164a.b(this.f10165b);
        }
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        return this.f10164a.a(j);
    }
}
