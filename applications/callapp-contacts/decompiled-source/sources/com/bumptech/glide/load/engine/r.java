package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.f;
import java.util.HashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/r.class */
public final class r {

    /* renamed from: a  reason: collision with root package name */
    private final Map<f, l<?>> f7594a = new HashMap();

    /* renamed from: b  reason: collision with root package name */
    private final Map<f, l<?>> f7595b = new HashMap();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final Map<f, l<?>> a(boolean z) {
        return z ? this.f7595b : this.f7594a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(f fVar, l<?> lVar) {
        Map<f, l<?>> a2 = a(lVar.f7577b);
        if (lVar.equals(a2.get(fVar))) {
            a2.remove(fVar);
        }
    }
}
