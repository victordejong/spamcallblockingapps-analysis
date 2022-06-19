package com.bytedance.sdk.openadsdk.preload.geckox.p218e;

import com.bytedance.sdk.openadsdk.preload.p201b.AbstractC5283d;
import com.bytedance.sdk.openadsdk.preload.p201b.p203b.AbstractC5280a;
import com.bytedance.sdk.openadsdk.preload.p201b.p203b.C5281b;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.bytedance.sdk.openadsdk.preload.geckox.e.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/preload/geckox/e/b.class */
public class C5370b {

    /* renamed from: a */
    private final Map<Class<? extends AbstractC5283d<?, ?>>, C5281b> f18857a = new HashMap();

    /* renamed from: a */
    public AbstractC5280a m32456a(Class<? extends AbstractC5283d<?, ?>> cls) {
        C5281b c5281b;
        synchronized (this.f18857a) {
            c5281b = this.f18857a.get(cls);
        }
        return c5281b;
    }

    /* renamed from: a */
    public void m32455a(Class<? extends AbstractC5283d<?, ?>> cls, AbstractC5280a abstractC5280a) {
        synchronized (this.f18857a) {
            C5281b c5281b = this.f18857a.get(cls);
            C5281b c5281b2 = c5281b;
            if (c5281b == null) {
                c5281b2 = new C5281b(new AbstractC5280a[0]);
                this.f18857a.put(cls, c5281b2);
            }
            c5281b2.m32667a(abstractC5280a);
        }
    }
}
