package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.AbstractC3999c;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.bumptech.glide.load.engine.p */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/p.class */
final class C4079p {

    /* renamed from: a */
    private final Map<AbstractC3999c, C4067j<?>> f12870a = new HashMap();

    /* renamed from: b */
    private final Map<AbstractC3999c, C4067j<?>> f12871b = new HashMap();

    /* renamed from: b */
    private Map<AbstractC3999c, C4067j<?>> m23325b(boolean z) {
        return z ? this.f12871b : this.f12870a;
    }

    /* renamed from: a */
    public C4067j<?> m23326a(AbstractC3999c abstractC3999c, boolean z) {
        return m23325b(z).get(abstractC3999c);
    }

    /* renamed from: c */
    public void m23324c(AbstractC3999c abstractC3999c, C4067j<?> c4067j) {
        m23325b(c4067j.m23344p()).put(abstractC3999c, c4067j);
    }

    /* renamed from: d */
    public void m23323d(AbstractC3999c abstractC3999c, C4067j<?> c4067j) {
        Map<AbstractC3999c, C4067j<?>> m23325b = m23325b(c4067j.m23344p());
        if (c4067j.equals(m23325b.get(abstractC3999c))) {
            m23325b.remove(abstractC3999c);
        }
    }
}
