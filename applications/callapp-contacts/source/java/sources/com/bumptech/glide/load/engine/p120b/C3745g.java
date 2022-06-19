package com.bumptech.glide.load.engine.p120b;

import com.bumptech.glide.load.AbstractC3818f;
import com.bumptech.glide.load.engine.AbstractC3811u;
import com.bumptech.glide.load.engine.p120b.AbstractC3746h;
import com.bumptech.glide.p116g.C3639g;
/* renamed from: com.bumptech.glide.load.engine.b.g */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b/g.class */
public final class C3745g extends C3639g<AbstractC3818f, AbstractC3811u<?>> implements AbstractC3746h {

    /* renamed from: a */
    private AbstractC3746h.AbstractC3747a f13936a;

    public C3745g(long j) {
        super(j);
    }

    @Override // com.bumptech.glide.load.engine.p120b.AbstractC3746h
    /* renamed from: a */
    public final /* synthetic */ AbstractC3811u mo37429a(AbstractC3818f abstractC3818f) {
        return (AbstractC3811u) super.remove(abstractC3818f);
    }

    @Override // com.bumptech.glide.load.engine.p120b.AbstractC3746h
    /* renamed from: a */
    public final /* synthetic */ AbstractC3811u mo37428a(AbstractC3818f abstractC3818f, AbstractC3811u abstractC3811u) {
        return (AbstractC3811u) super.put(abstractC3818f, abstractC3811u);
    }

    @Override // com.bumptech.glide.load.engine.p120b.AbstractC3746h
    /* renamed from: a */
    public final void mo37431a(int i) {
        if (i >= 40) {
            clearMemory();
        } else if (i < 20 && i != 15) {
        } else {
            trimToSize(getMaxSize() / 2);
        }
    }

    @Override // com.bumptech.glide.load.engine.p120b.AbstractC3746h
    /* renamed from: a */
    public final void mo37430a(AbstractC3746h.AbstractC3747a abstractC3747a) {
        this.f13936a = abstractC3747a;
    }

    @Override // com.bumptech.glide.p116g.C3639g
    public final /* synthetic */ int getSize(AbstractC3811u<?> abstractC3811u) {
        AbstractC3811u<?> abstractC3811u2 = abstractC3811u;
        return abstractC3811u2 == null ? super.getSize(null) : abstractC3811u2.mo37212c();
    }

    @Override // com.bumptech.glide.p116g.C3639g
    public final /* synthetic */ void onItemEvicted(AbstractC3818f abstractC3818f, AbstractC3811u<?> abstractC3811u) {
        AbstractC3811u<?> abstractC3811u2 = abstractC3811u;
        AbstractC3746h.AbstractC3747a abstractC3747a = this.f13936a;
        if (abstractC3747a == null || abstractC3811u2 == null) {
            return;
        }
        abstractC3747a.mo37365b(abstractC3811u2);
    }
}
