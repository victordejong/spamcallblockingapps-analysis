package com.bytedance.sdk.openadsdk.d;

import com.bytedance.sdk.openadsdk.i.b.c;
import com.bytedance.sdk.openadsdk.multipro.c.a;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/n.class */
public class n extends c<c.a> {

    /* renamed from: a  reason: collision with root package name */
    private AtomicBoolean f9434a = new AtomicBoolean(false);

    /* renamed from: b  reason: collision with root package name */
    private boolean f9435b;

    public n(boolean z) {
        this.f9435b = true;
        this.f9435b = z;
    }

    @Override // com.bytedance.sdk.openadsdk.d.c
    public void a() {
        if (!this.f9434a.getAndSet(true)) {
            a.a(this.f9435b);
        }
    }

    public void a(c.a aVar) {
        if (!this.f9434a.get()) {
            a();
        }
        if (this.f9434a.get()) {
            a.a(aVar.a(), this.f9435b);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.d.c
    public void b() {
    }
}
