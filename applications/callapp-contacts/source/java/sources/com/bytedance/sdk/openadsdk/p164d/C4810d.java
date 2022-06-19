package com.bytedance.sdk.openadsdk.p164d;

import com.bytedance.sdk.openadsdk.multipro.p191c.C5098a;
import java.util.concurrent.atomic.AtomicBoolean;
/* renamed from: com.bytedance.sdk.openadsdk.d.d */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/d/d.class */
public class C4810d extends C4807c<C4805a> {

    /* renamed from: a */
    private AtomicBoolean f17665a = new AtomicBoolean(false);

    @Override // com.bytedance.sdk.openadsdk.p164d.C4807c
    /* renamed from: a */
    public void mo33798a() {
        if (!this.f17665a.getAndSet(true)) {
            C5098a.m33073c();
        }
    }

    /* renamed from: a */
    public void mo33797a(C4805a c4805a) {
        if (!this.f17665a.get()) {
            mo33798a();
        }
        if (this.f17665a.get()) {
            C5098a.m33078a(c4805a.m33898a());
        }
    }

    @Override // com.bytedance.sdk.openadsdk.p164d.C4807c
    /* renamed from: b */
    public void mo33795b() {
    }
}
