package com.bytedance.sdk.a.a;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/a/h.class */
public abstract class h implements s {

    /* renamed from: a  reason: collision with root package name */
    private final s f7792a;

    public h(s sVar) {
        if (sVar != null) {
            this.f7792a = sVar;
            return;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    @Override // com.bytedance.sdk.a.a.s
    public long a(c cVar, long j) throws IOException {
        return this.f7792a.a(cVar, j);
    }

    @Override // com.bytedance.sdk.a.a.s
    public t a() {
        return this.f7792a.a();
    }

    public final s b() {
        return this.f7792a;
    }

    @Override // com.bytedance.sdk.a.a.s, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f7792a.close();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f7792a.toString() + ")";
    }
}
