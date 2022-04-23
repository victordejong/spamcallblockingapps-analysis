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
    j<?> m11086a(AbstractC0732c cVar, boolean z) {
        return m11085b(z).get(cVar);
    }

    /* renamed from: c */
    void m11084c(AbstractC0732c cVar, j<?> jVar) {
        m11085b(jVar.p()).put(cVar, jVar);
    }

    /* renamed from: d */
    void m11083d(AbstractC0732c cVar, j<?> jVar) {
        Map<AbstractC0732c, j<?>> b = m11085b(jVar.p());
        if (jVar.equals(b.get(cVar))) {
            b.remove(cVar);
        }
    }
}
