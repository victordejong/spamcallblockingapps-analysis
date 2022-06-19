package com.bytedance.sdk.openadsdk.p164d;

import com.bytedance.sdk.openadsdk.multipro.p191c.C5098a;
import com.bytedance.sdk.openadsdk.p171i.p173b.C4934c;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.bytedance.sdk.openadsdk.d.n */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/n.class */
public class C4830n extends C4807c<C4934c.C4936a> {

    /* renamed from: a */
    private AtomicBoolean f17727a = new AtomicBoolean(false);

    /* renamed from: b */
    private boolean f17728b;

    public C4830n(boolean z) {
        this.f17728b = true;
        this.f17728b = z;
    }

    @Override // com.bytedance.sdk.openadsdk.p164d.C4807c
    /* renamed from: a */
    public void mo33798a() {
        if (!this.f17727a.getAndSet(true)) {
            C5098a.m33075a(this.f17728b);
        }
    }

    /* renamed from: a */
    public void mo33797a(C4934c.C4936a c4936a) {
        if (!this.f17727a.get()) {
            mo33798a();
        }
        if (this.f17727a.get()) {
            C5098a.m33077a(c4936a.m33498a(), this.f17728b);
        }
    }

    @Override // com.bytedance.sdk.openadsdk.p164d.C4807c
    /* renamed from: b */
    public void mo33795b() {
    }
}
