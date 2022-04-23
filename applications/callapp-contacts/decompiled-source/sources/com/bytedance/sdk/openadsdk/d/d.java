package com.bytedance.sdk.openadsdk.d;

import com.bytedance.sdk.openadsdk.multipro.c.a;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/d.class */
public class d extends c<a> {

    /* renamed from: a  reason: collision with root package name */
    private AtomicBoolean f9402a = new AtomicBoolean(false);

    @Override // com.bytedance.sdk.openadsdk.d.c
    public void a() {
        if (!this.f9402a.getAndSet(true)) {
            a.c();
        }
    }

    public void a(a aVar) {
        if (!this.f9402a.get()) {
            a();
        }
        if (this.f9402a.get()) {
            a.a(aVar.a());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.d.c
    public void b() {
    }
}
