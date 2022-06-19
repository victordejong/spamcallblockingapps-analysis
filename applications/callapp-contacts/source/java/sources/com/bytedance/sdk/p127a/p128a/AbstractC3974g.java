package com.bytedance.sdk.p127a.p128a;

import java.io.IOException;
/* renamed from: com.bytedance.sdk.a.a.g */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/a/g.class */
public abstract class AbstractC3974g implements AbstractC3989r {

    /* renamed from: a */
    private final AbstractC3989r f14426a;

    public AbstractC3974g(AbstractC3989r abstractC3989r) {
        if (abstractC3989r != null) {
            this.f14426a = abstractC3989r;
            return;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3989r
    /* renamed from: a */
    public C3991t mo36723a() {
        return this.f14426a.mo36723a();
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3989r
    /* renamed from: a_ */
    public void mo36721a_(C3969c c3969c, long j) throws IOException {
        this.f14426a.mo36721a_(c3969c, j);
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3989r, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f14426a.close();
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3989r, java.io.Flushable
    public void flush() throws IOException {
        this.f14426a.flush();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f14426a.toString() + ")";
    }
}
