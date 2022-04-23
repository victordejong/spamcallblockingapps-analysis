package com.bytedance.sdk.a.a;

import java.io.IOException;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/a/g.class */
public abstract class g implements r {

    /* renamed from: a  reason: collision with root package name */
    private final r f7791a;

    public g(r rVar) {
        if (rVar != null) {
            this.f7791a = rVar;
            return;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    @Override // com.bytedance.sdk.a.a.r
    public t a() {
        return this.f7791a.a();
    }

    @Override // com.bytedance.sdk.a.a.r
    public void a_(c cVar, long j) throws IOException {
        this.f7791a.a_(cVar, j);
    }

    @Override // com.bytedance.sdk.a.a.r, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f7791a.close();
    }

    @Override // com.bytedance.sdk.a.a.r, java.io.Flushable
    public void flush() throws IOException {
        this.f7791a.flush();
    }

    public String toString() {
        return getClass().getSimpleName() + "(" + this.f7791a.toString() + ")";
    }
}
