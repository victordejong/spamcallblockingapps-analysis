package com.bytedance.sdk.p127a.p128a;

import java.io.IOException;
/* renamed from: com.bytedance.sdk.a.a.h */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/a/h.class */
public abstract class AbstractC3975h implements AbstractC3990s {

    /* renamed from: a */
    private final AbstractC3990s f14427a;

    public AbstractC3975h(AbstractC3990s abstractC3990s) {
        if (abstractC3990s != null) {
            this.f14427a = abstractC3990s;
            return;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3990s
    /* renamed from: a */
    public long mo36719a(C3969c c3969c, long j) throws IOException {
        return this.f14427a.mo36719a(c3969c, j);
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3990s
    /* renamed from: a */
    public C3991t mo36720a() {
        return this.f14427a.mo36720a();
    }

    /* renamed from: b */
    public final AbstractC3990s m37095b() {
        return this.f14427a;
    }

    @Override // com.bytedance.sdk.p127a.p128a.AbstractC3990s, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f14427a.close();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f14427a.toString() + ")";
    }
}
