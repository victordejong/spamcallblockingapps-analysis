package com.bumptech.glide.load.p083c.p088e;

import com.bumptech.glide.load.engine.AbstractC1766p;
import com.bumptech.glide.load.p083c.p086c.AbstractC1633b;
/* renamed from: com.bumptech.glide.load.c.e.e */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/e/e.class */
public class C1646e extends AbstractC1633b<C1643c> implements AbstractC1766p {
    public C1646e(C1643c c1643c) {
        super(c1643c);
    }

    @Override // com.bumptech.glide.load.p083c.p086c.AbstractC1633b, com.bumptech.glide.load.engine.AbstractC1766p
    /* renamed from: a */
    public void mo16362a() {
        ((C1643c) this.f5032a).m16661b().prepareToDraw();
    }

    @Override // com.bumptech.glide.load.engine.AbstractC1771t
    /* renamed from: c */
    public Class<C1643c> mo16348c() {
        return C1643c.class;
    }

    @Override // com.bumptech.glide.load.engine.AbstractC1771t
    /* renamed from: e */
    public int mo16346e() {
        return ((C1643c) this.f5032a).m16663a();
    }

    @Override // com.bumptech.glide.load.engine.AbstractC1771t
    /* renamed from: f */
    public void mo16345f() {
        ((C1643c) this.f5032a).stop();
        ((C1643c) this.f5032a).m16657g();
    }
}
