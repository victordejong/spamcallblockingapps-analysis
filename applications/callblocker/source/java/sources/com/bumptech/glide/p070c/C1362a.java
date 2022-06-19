package com.bumptech.glide.p070c;

import com.bumptech.glide.p077h.C1457j;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
/* renamed from: com.bumptech.glide.c.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/c/a.class */
class C1362a implements AbstractC1371h {

    /* renamed from: a */
    private final Set<AbstractC1372i> f4545a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: b */
    private boolean f4546b;

    /* renamed from: c */
    private boolean f4547c;

    /* renamed from: a */
    public void m17290a() {
        this.f4546b = true;
        for (AbstractC1372i abstractC1372i : C1457j.m16974a(this.f4545a)) {
            abstractC1372i.mo16955c();
        }
    }

    @Override // com.bumptech.glide.p070c.AbstractC1371h
    /* renamed from: a */
    public void mo17283a(AbstractC1372i abstractC1372i) {
        this.f4545a.add(abstractC1372i);
        if (this.f4547c) {
            abstractC1372i.mo16952e();
        } else if (this.f4546b) {
            abstractC1372i.mo16955c();
        } else {
            abstractC1372i.mo16953d();
        }
    }

    /* renamed from: b */
    public void m17289b() {
        this.f4546b = false;
        for (AbstractC1372i abstractC1372i : C1457j.m16974a(this.f4545a)) {
            abstractC1372i.mo16953d();
        }
    }

    @Override // com.bumptech.glide.p070c.AbstractC1371h
    /* renamed from: b */
    public void mo17282b(AbstractC1372i abstractC1372i) {
        this.f4545a.remove(abstractC1372i);
    }

    /* renamed from: c */
    public void m17288c() {
        this.f4547c = true;
        for (AbstractC1372i abstractC1372i : C1457j.m16974a(this.f4545a)) {
            abstractC1372i.mo16952e();
        }
    }
}
