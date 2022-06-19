package com.bumptech.glide.manager;

import com.bumptech.glide.p112e.AbstractC3599d;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
/* renamed from: com.bumptech.glide.manager.q */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/q.class */
public final class C3950q {

    /* renamed from: a */
    public final Set<AbstractC3599d> f14386a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: b */
    public final List<AbstractC3599d> f14387b = new ArrayList();

    /* renamed from: c */
    public boolean f14388c;

    /* renamed from: a */
    public final boolean m37160a(AbstractC3599d abstractC3599d) {
        if (abstractC3599d == null) {
            return true;
        }
        boolean remove = this.f14386a.remove(abstractC3599d);
        boolean z = true;
        if (!this.f14387b.remove(abstractC3599d)) {
            z = remove;
        }
        if (z) {
            abstractC3599d.mo37632b();
        }
        return z;
    }

    public final String toString() {
        return super.toString() + "{numRequests=" + this.f14386a.size() + ", isPaused=" + this.f14388c + "}";
    }
}
