package com.bumptech.glide.p070c;

import com.bumptech.glide.p073f.p074a.AbstractC1410h;
import com.bumptech.glide.p077h.C1457j;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import java.util.WeakHashMap;
/* renamed from: com.bumptech.glide.c.p */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/c/p.class */
public final class C1383p implements AbstractC1372i {

    /* renamed from: a */
    private final Set<AbstractC1410h<?>> f4580a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: a */
    public List<AbstractC1410h<?>> m17239a() {
        return C1457j.m16974a(this.f4580a);
    }

    /* renamed from: a */
    public void m17238a(AbstractC1410h<?> abstractC1410h) {
        this.f4580a.add(abstractC1410h);
    }

    /* renamed from: b */
    public void m17237b() {
        this.f4580a.clear();
    }

    /* renamed from: b */
    public void m17236b(AbstractC1410h<?> abstractC1410h) {
        this.f4580a.remove(abstractC1410h);
    }

    @Override // com.bumptech.glide.p070c.AbstractC1372i
    /* renamed from: c */
    public void mo16955c() {
        for (AbstractC1410h abstractC1410h : C1457j.m16974a(this.f4580a)) {
            abstractC1410h.mo16955c();
        }
    }

    @Override // com.bumptech.glide.p070c.AbstractC1372i
    /* renamed from: d */
    public void mo16953d() {
        for (AbstractC1410h abstractC1410h : C1457j.m16974a(this.f4580a)) {
            abstractC1410h.mo16953d();
        }
    }

    @Override // com.bumptech.glide.p070c.AbstractC1372i
    /* renamed from: e */
    public void mo16952e() {
        for (AbstractC1410h abstractC1410h : C1457j.m16974a(this.f4580a)) {
            abstractC1410h.mo16952e();
        }
    }
}
