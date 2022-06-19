package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.AbstractC1777f;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.bumptech.glide.load.engine.q */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/q.class */
final class C1767q {

    /* renamed from: a */
    private final Map<AbstractC1777f, C1758k<?>> f5371a = new HashMap();

    /* renamed from: b */
    private final Map<AbstractC1777f, C1758k<?>> f5372b = new HashMap();

    /* renamed from: a */
    private Map<AbstractC1777f, C1758k<?>> m16359a(boolean z) {
        return z ? this.f5372b : this.f5371a;
    }

    /* renamed from: a */
    public C1758k<?> m16360a(AbstractC1777f abstractC1777f, boolean z) {
        return m16359a(z).get(abstractC1777f);
    }

    /* renamed from: a */
    public void m16361a(AbstractC1777f abstractC1777f, C1758k<?> c1758k) {
        m16359a(c1758k.m16388a()).put(abstractC1777f, c1758k);
    }

    /* renamed from: b */
    public void m16358b(AbstractC1777f abstractC1777f, C1758k<?> c1758k) {
        Map<AbstractC1777f, C1758k<?>> m16359a = m16359a(c1758k.m16388a());
        if (c1758k.equals(m16359a.get(abstractC1777f))) {
            m16359a.remove(abstractC1777f);
        }
    }
}
