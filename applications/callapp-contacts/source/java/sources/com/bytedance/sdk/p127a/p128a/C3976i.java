package com.bytedance.sdk.p127a.p128a;

import java.io.IOException;
import java.util.concurrent.TimeUnit;
/* renamed from: com.bytedance.sdk.a.a.i */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/a/a/i.class */
public class C3976i extends C3991t {

    /* renamed from: a */
    private C3991t f14428a;

    public C3976i(C3991t c3991t) {
        if (c3991t != null) {
            this.f14428a = c3991t;
            return;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    /* renamed from: a */
    public final C3976i m37093a(C3991t c3991t) {
        if (c3991t != null) {
            this.f14428a = c3991t;
            return this;
        }
        throw new IllegalArgumentException("delegate == null");
    }

    /* renamed from: a */
    public final C3991t m37094a() {
        return this.f14428a;
    }

    @Override // com.bytedance.sdk.p127a.p128a.C3991t
    /* renamed from: a */
    public C3991t mo37018a(long j) {
        return this.f14428a.mo37018a(j);
    }

    @Override // com.bytedance.sdk.p127a.p128a.C3991t
    /* renamed from: a */
    public C3991t mo37017a(long j, TimeUnit timeUnit) {
        return this.f14428a.mo37017a(j, timeUnit);
    }

    @Override // com.bytedance.sdk.p127a.p128a.C3991t
    /* renamed from: b_ */
    public long mo37023b_() {
        return this.f14428a.mo37023b_();
    }

    @Override // com.bytedance.sdk.p127a.p128a.C3991t
    /* renamed from: c */
    public boolean mo37022c() {
        return this.f14428a.mo37022c();
    }

    @Override // com.bytedance.sdk.p127a.p128a.C3991t
    /* renamed from: c_ */
    public long mo37021c_() {
        return this.f14428a.mo37021c_();
    }

    @Override // com.bytedance.sdk.p127a.p128a.C3991t
    /* renamed from: e */
    public C3991t mo37020e() {
        return this.f14428a.mo37020e();
    }

    @Override // com.bytedance.sdk.p127a.p128a.C3991t
    /* renamed from: f */
    public C3991t mo37019f() {
        return this.f14428a.mo37019f();
    }

    @Override // com.bytedance.sdk.p127a.p128a.C3991t
    /* renamed from: g */
    public void mo37016g() throws IOException {
        this.f14428a.mo37016g();
    }
}
