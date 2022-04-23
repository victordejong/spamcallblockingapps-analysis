package com.bytedance.sdk.a.a;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/a/i.class */
public class i extends t {

    /* renamed from: a  reason: collision with root package name */
    private t f7793a;

    public i(t tVar) {
        if (tVar != null) {
            this.f7793a = tVar;
            return;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    public final i a(t tVar) {
        if (tVar != null) {
            this.f7793a = tVar;
            return this;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    public final t a() {
        return this.f7793a;
    }

    @Override // com.bytedance.sdk.a.a.t
    public t a(long j) {
        return this.f7793a.a(j);
    }

    @Override // com.bytedance.sdk.a.a.t
    public t a(long j, TimeUnit timeUnit) {
        return this.f7793a.a(j, timeUnit);
    }

    @Override // com.bytedance.sdk.a.a.t
    public long b_() {
        return this.f7793a.b_();
    }

    @Override // com.bytedance.sdk.a.a.t
    public boolean c() {
        return this.f7793a.c();
    }

    @Override // com.bytedance.sdk.a.a.t
    public long c_() {
        return this.f7793a.c_();
    }

    @Override // com.bytedance.sdk.a.a.t
    public t e() {
        return this.f7793a.e();
    }

    @Override // com.bytedance.sdk.a.a.t
    public t f() {
        return this.f7793a.f();
    }

    @Override // com.bytedance.sdk.a.a.t
    public void g() throws IOException {
        this.f7793a.g();
    }
}
