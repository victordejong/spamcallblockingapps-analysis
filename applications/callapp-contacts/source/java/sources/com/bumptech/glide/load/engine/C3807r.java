package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.AbstractC3818f;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.bumptech.glide.load.engine.r */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/r.class */
public final class C3807r {

    /* renamed from: a */
    private final Map<AbstractC3818f, C3795l<?>> f14135a = new HashMap();

    /* renamed from: b */
    private final Map<AbstractC3818f, C3795l<?>> f14136b = new HashMap();

    /* renamed from: a */
    public final Map<AbstractC3818f, C3795l<?>> m37340a(boolean z) {
        return z ? this.f14136b : this.f14135a;
    }

    /* renamed from: a */
    public final void m37341a(AbstractC3818f abstractC3818f, C3795l<?> c3795l) {
        Map<AbstractC3818f, C3795l<?>> m37340a = m37340a(c3795l.f14088b);
        if (c3795l.equals(m37340a.get(abstractC3818f))) {
            m37340a.remove(abstractC3818f);
        }
    }
}
