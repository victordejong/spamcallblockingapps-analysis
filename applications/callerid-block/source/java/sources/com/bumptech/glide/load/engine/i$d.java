package com.bumptech.glide.load.engine;

import com.bumptech.glide.request.AbstractC0869f;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/i$d.class */
public class i$d {

    /* renamed from: a */
    private final j<?> f3600a;

    /* renamed from: b */
    private final AbstractC0869f f3601b;

    /* renamed from: c */
    final /* synthetic */ i f3602c;

    i$d(i iVar, AbstractC0869f abstractC0869f, j<?> jVar) {
        this.f3602c = iVar;
        this.f3601b = abstractC0869f;
        this.f3600a = jVar;
    }

    /* renamed from: a */
    public void m11098a() {
        synchronized (this.f3602c) {
            this.f3600a.r(this.f3601b);
        }
    }
}
