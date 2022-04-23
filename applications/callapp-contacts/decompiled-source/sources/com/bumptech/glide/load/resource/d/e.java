package com.bumptech.glide.load.resource.d;

import com.bumptech.glide.e.a.j;
import com.bumptech.glide.load.engine.q;
import com.bumptech.glide.load.resource.b.b;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/d/e.class */
public final class e extends b<c> implements q {
    public e(c cVar) {
        super(cVar);
    }

    @Override // com.bumptech.glide.load.engine.u
    public final Class<c> a() {
        return c.class;
    }

    @Override // com.bumptech.glide.load.engine.u
    public final int c() {
        g gVar = ((c) this.f7635a).f7716a.f7720a;
        return gVar.f7722a.h() + gVar.j;
    }

    @Override // com.bumptech.glide.load.engine.u
    public final void d() {
        ((c) this.f7635a).stop();
        c cVar = (c) this.f7635a;
        cVar.f7717b = true;
        g gVar = cVar.f7716a.f7720a;
        gVar.f7723b.clear();
        gVar.b();
        gVar.f7725d = false;
        if (gVar.e != null) {
            gVar.f7724c.a((j<?>) gVar.e);
            gVar.e = null;
        }
        if (gVar.g != null) {
            gVar.f7724c.a((j<?>) gVar.g);
            gVar.g = null;
        }
        if (gVar.i != null) {
            gVar.f7724c.a((j<?>) gVar.i);
            gVar.i = null;
        }
        gVar.f7722a.j();
        gVar.f = true;
    }

    @Override // com.bumptech.glide.load.resource.b.b, com.bumptech.glide.load.engine.q
    public final void e() {
        ((c) this.f7635a).a().prepareToDraw();
    }
}
