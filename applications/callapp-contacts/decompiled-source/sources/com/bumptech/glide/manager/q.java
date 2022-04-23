package com.bumptech.glide.manager;

import com.bumptech.glide.e.d;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/q.class */
public final class q {

    /* renamed from: a  reason: collision with root package name */
    public final Set<d> f7765a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: b  reason: collision with root package name */
    public final List<d> f7766b = new ArrayList();

    /* renamed from: c  reason: collision with root package name */
    public boolean f7767c;

    public final boolean a(d dVar) {
        if (dVar == null) {
            return true;
        }
        boolean remove = this.f7765a.remove(dVar);
        boolean z = true;
        if (!this.f7766b.remove(dVar)) {
            z = remove;
        }
        if (z) {
            dVar.b();
        }
        return z;
    }

    public final String toString() {
        return super.toString() + "{numRequests=" + this.f7765a.size() + ", isPaused=" + this.f7767c + "}";
    }
}
