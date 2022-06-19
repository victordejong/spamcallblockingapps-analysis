package com.bumptech.glide.load.engine.p091b;

import android.annotation.SuppressLint;
import com.bumptech.glide.load.AbstractC1777f;
import com.bumptech.glide.load.engine.AbstractC1771t;
import com.bumptech.glide.load.engine.p091b.AbstractC1710h;
import com.bumptech.glide.p077h.C1453f;
/* renamed from: com.bumptech.glide.load.engine.b.g */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b/g.class */
public class C1709g extends C1453f<AbstractC1777f, AbstractC1771t<?>> implements AbstractC1710h {

    /* renamed from: a */
    private AbstractC1710h.AbstractC1711a f5183a;

    public C1709g(long j) {
        super(j);
    }

    /* renamed from: a */
    public int mo16497a(AbstractC1771t<?> abstractC1771t) {
        return abstractC1771t == null ? super.mo16497a((C1709g) null) : abstractC1771t.mo16346e();
    }

    @Override // com.bumptech.glide.load.engine.p091b.AbstractC1710h
    /* renamed from: a */
    public /* synthetic */ AbstractC1771t mo16492a(AbstractC1777f abstractC1777f) {
        return (AbstractC1771t) super.m16994c(abstractC1777f);
    }

    @Override // com.bumptech.glide.load.engine.p091b.AbstractC1710h
    @SuppressLint({"InlinedApi"})
    /* renamed from: a */
    public void mo16494a(int i) {
        if (i >= 40) {
            m17000a();
        } else if (i < 20 && i != 15) {
        } else {
            m16999a(m16998b() / 2);
        }
    }

    @Override // com.bumptech.glide.load.engine.p091b.AbstractC1710h
    /* renamed from: a */
    public void mo16493a(AbstractC1710h.AbstractC1711a abstractC1711a) {
        this.f5183a = abstractC1711a;
    }

    /* renamed from: a */
    public void mo16496a(AbstractC1777f abstractC1777f, AbstractC1771t<?> abstractC1771t) {
        if (this.f5183a == null || abstractC1771t == null) {
            return;
        }
        this.f5183a.mo16396b(abstractC1771t);
    }

    @Override // com.bumptech.glide.load.engine.p091b.AbstractC1710h
    /* renamed from: b */
    public /* bridge */ /* synthetic */ AbstractC1771t mo16491b(AbstractC1777f abstractC1777f, AbstractC1771t abstractC1771t) {
        return (AbstractC1771t) super.m16996b((C1709g) abstractC1777f, (AbstractC1777f) abstractC1771t);
    }
}
