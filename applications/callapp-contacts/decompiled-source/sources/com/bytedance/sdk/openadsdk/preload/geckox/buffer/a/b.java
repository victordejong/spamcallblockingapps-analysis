package com.bytedance.sdk.openadsdk.preload.geckox.buffer.a;

import com.bytedance.sdk.openadsdk.preload.geckox.buffer.a;
import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/buffer/a/b.class */
public class b extends c {

    /* renamed from: a  reason: collision with root package name */
    private a f10166a;

    public b(a aVar) {
        this.f10166a = aVar;
    }

    @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        flush();
    }

    @Override // java.io.OutputStream, java.io.Flushable
    public void flush() throws IOException {
    }

    @Override // java.io.OutputStream
    public void write(int i) throws IOException {
        this.f10166a.a(i);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        this.f10166a.a(bArr);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.f10166a.a(bArr, i, i2);
    }
}
