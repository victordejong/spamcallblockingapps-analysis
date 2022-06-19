package com.bumptech.glide.manager;

import com.bumptech.glide.p116g.C3644k;
import java.util.Collections;
import java.util.Set;
import java.util.WeakHashMap;
/* renamed from: com.bumptech.glide.manager.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/manager/a.class */
final class C3930a implements AbstractC3943l {

    /* renamed from: a */
    private final Set<AbstractC3944m> f14367a = Collections.newSetFromMap(new WeakHashMap());

    /* renamed from: b */
    private boolean f14368b;

    /* renamed from: c */
    private boolean f14369c;

    /* renamed from: a */
    public final void m37181a() {
        this.f14368b = true;
        for (AbstractC3944m abstractC3944m : C3644k.m37575a(this.f14367a)) {
            abstractC3944m.mo37150a();
        }
    }

    @Override // com.bumptech.glide.manager.AbstractC3943l
    /* renamed from: a */
    public final void mo37175a(AbstractC3944m abstractC3944m) {
        this.f14367a.add(abstractC3944m);
        if (this.f14369c) {
            abstractC3944m.mo37148c();
        } else if (this.f14368b) {
            abstractC3944m.mo37150a();
        } else {
            abstractC3944m.mo37149b();
        }
    }

    /* renamed from: b */
    public final void m37180b() {
        this.f14368b = false;
        for (AbstractC3944m abstractC3944m : C3644k.m37575a(this.f14367a)) {
            abstractC3944m.mo37149b();
        }
    }

    @Override // com.bumptech.glide.manager.AbstractC3943l
    /* renamed from: b */
    public final void mo37174b(AbstractC3944m abstractC3944m) {
        this.f14367a.remove(abstractC3944m);
    }

    /* renamed from: c */
    public final void m37179c() {
        this.f14369c = true;
        for (AbstractC3944m abstractC3944m : C3644k.m37575a(this.f14367a)) {
            abstractC3944m.mo37148c();
        }
    }
}
