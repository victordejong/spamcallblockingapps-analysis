package com.bumptech.glide.load.resource.p125d;

import com.bumptech.glide.load.engine.AbstractC3806q;
import com.bumptech.glide.load.resource.p123b.AbstractC3842b;
import com.bumptech.glide.p112e.p113a.AbstractC3585j;
/* renamed from: com.bumptech.glide.load.resource.d.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/d/e.class */
public final class C3912e extends AbstractC3842b<C3909c> implements AbstractC3806q {
    public C3912e(C3909c c3909c) {
        super(c3909c);
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3811u
    /* renamed from: a */
    public final Class<C3909c> mo37213a() {
        return C3909c.class;
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3811u
    /* renamed from: c */
    public final int mo37212c() {
        C3914g c3914g = ((C3909c) this.f14196a).f14307a.f14318a;
        return c3914g.f14320a.mo37728h() + c3914g.f14329j;
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3811u
    /* renamed from: d */
    public final void mo37211d() {
        ((C3909c) this.f14196a).stop();
        C3909c c3909c = (C3909c) this.f14196a;
        c3909c.f14308b = true;
        C3914g c3914g = c3909c.f14307a.f14318a;
        c3914g.f14321b.clear();
        c3914g.m37204b();
        c3914g.f14323d = false;
        if (c3914g.f14324e != null) {
            c3914g.f14322c.m37548a((AbstractC3585j<?>) c3914g.f14324e);
            c3914g.f14324e = null;
        }
        if (c3914g.f14326g != null) {
            c3914g.f14322c.m37548a((AbstractC3585j<?>) c3914g.f14326g);
            c3914g.f14326g = null;
        }
        if (c3914g.f14328i != null) {
            c3914g.f14322c.m37548a((AbstractC3585j<?>) c3914g.f14328i);
            c3914g.f14328i = null;
        }
        c3914g.f14320a.mo37726j();
        c3914g.f14325f = true;
    }

    @Override // com.bumptech.glide.load.resource.p123b.AbstractC3842b, com.bumptech.glide.load.engine.AbstractC3806q
    /* renamed from: e */
    public final void mo37210e() {
        ((C3909c) this.f14196a).m37223a().prepareToDraw();
    }
}
