package com.bumptech.glide.manager;

import com.bumptech.glide.p112e.p113a.AbstractC3585j;
import com.bumptech.glide.p116g.C3644k;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
/* renamed from: com.bumptech.glide.manager.s */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/s.class */
public final class C3953s implements AbstractC3944m {

    /* renamed from: a */
    public final Set<AbstractC3585j<?>> f14396a = Collections.newSetFromMap(new WeakHashMap());

    @Override // com.bumptech.glide.manager.AbstractC3944m
    /* renamed from: a */
    public final void mo37150a() {
        for (AbstractC3585j abstractC3585j : C3644k.m37575a(this.f14396a)) {
            abstractC3585j.mo37150a();
        }
    }

    @Override // com.bumptech.glide.manager.AbstractC3944m
    /* renamed from: b */
    public final void mo37149b() {
        for (AbstractC3585j abstractC3585j : C3644k.m37575a(this.f14396a)) {
            abstractC3585j.mo37149b();
        }
    }

    @Override // com.bumptech.glide.manager.AbstractC3944m
    /* renamed from: c */
    public final void mo37148c() {
        for (AbstractC3585j abstractC3585j : C3644k.m37575a(this.f14396a)) {
            abstractC3585j.mo37148c();
        }
    }
}
