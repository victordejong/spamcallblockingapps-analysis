package com.bytedance.sdk.openadsdk.preload.geckox.buffer.p209a;

import com.bytedance.sdk.openadsdk.preload.geckox.buffer.AbstractC5326a;
import java.io.IOException;
import java.io.InputStream;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.buffer.a.a */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/buffer/a/a.class */
public class C5327a extends InputStream {

    /* renamed from: a */
    private AbstractC5326a f18812a;

    /* renamed from: b */
    private long f18813b;

    public C5327a(AbstractC5326a abstractC5326a) {
        this.f18812a = abstractC5326a;
    }

    @Override // java.io.InputStream
    public int available() throws IOException {
        long mo32528b = this.f18812a.mo32528b() - this.f18812a.mo32524c();
        if (mo32528b > 2147483647L) {
            return Integer.MAX_VALUE;
        }
        return (int) mo32528b;
    }

    @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    @Override // java.io.InputStream
    public void mark(int i) {
        synchronized (this) {
            this.f18813b = i;
        }
    }

    @Override // java.io.InputStream
    public boolean markSupported() {
        return true;
    }

    @Override // java.io.InputStream
    public int read() throws IOException {
        return this.f18812a.mo32523d();
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr) throws IOException {
        return this.f18812a.mo32526b(bArr);
    }

    @Override // java.io.InputStream
    public int read(byte[] bArr, int i, int i2) throws IOException {
        return this.f18812a.mo32525b(bArr, i, i2);
    }

    @Override // java.io.InputStream
    public void reset() throws IOException {
        synchronized (this) {
            this.f18812a.mo32527b(this.f18813b);
        }
    }

    @Override // java.io.InputStream
    public long skip(long j) throws IOException {
        return this.f18812a.mo32531a(j);
    }
}
