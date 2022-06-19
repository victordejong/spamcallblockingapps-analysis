package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.AbstractC0732c;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.bumptech.glide.load.engine.p */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/p.class */
final class C0762p {

    /* renamed from: a */
    private final Map<AbstractC0732c, j<?>> f3610a = new HashMap();

    /* renamed from: b */
    private final Map<AbstractC0732c, j<?>> f3611b = new HashMap();

    C0762p() {
    }

    /* renamed from: b */
    private Map<AbstractC0732c, j<?>> m11085b(boolean z) {
        return z ? this.f3611b : this.f3610a;
    }

    /* renamed from: a */
    j<?> m11086a(AbstractC0732c abstractC0732c, boolean z) {
        return m11085b(z).get(abstractC0732c);
    }

    /* renamed from: c */
    void m11084c(AbstractC0732c abstractC0732c, j<?> jVar) {
        m11085b(jVar.p()).put(abstractC0732c, jVar);
    }

    /* renamed from: d */
    void m11083d(AbstractC0732c abstractC0732c, j<?> jVar) {
        Map<AbstractC0732c, j<?>> m11085b = m11085b(jVar.p());
        if (jVar.equals(m11085b.get(abstractC0732c))) {
            m11085b.remove(abstractC0732c);
        }
    }
}
