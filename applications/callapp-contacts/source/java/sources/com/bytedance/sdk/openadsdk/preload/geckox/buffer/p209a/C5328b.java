package com.bytedance.sdk.openadsdk.preload.geckox.buffer.p209a;

import com.bytedance.sdk.openadsdk.preload.geckox.buffer.AbstractC5326a;
import java.io.IOException;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.buffer.a.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/buffer/a/b.class */
public class C5328b extends AbstractC5329c {

    /* renamed from: a */
    private AbstractC5326a f18814a;

    public C5328b(AbstractC5326a abstractC5326a) {
        this.f18814a = abstractC5326a;
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
        this.f18814a.mo32532a(i);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr) throws IOException {
        this.f18814a.mo32530a(bArr);
    }

    @Override // java.io.OutputStream
    public void write(byte[] bArr, int i, int i2) throws IOException {
        this.f18814a.mo32529a(bArr, i, i2);
    }
}
