package com.bumptech.glide.load.engine.b;

import com.bumptech.glide.load.engine.b.h;
import com.bumptech.glide.load.engine.u;
import com.bumptech.glide.load.f;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/engine/b/g.class */
public final class g extends com.bumptech.glide.g.g<f, u<?>> implements h {

    /* renamed from: a  reason: collision with root package name */
    private h.a f7490a;

    public g(long j) {
        super(j);
    }

    @Override // com.bumptech.glide.load.engine.b.h
    public final /* synthetic */ u a(f fVar) {
        return (u) super.remove(fVar);
    }

    @Override // com.bumptech.glide.load.engine.b.h
    public final /* synthetic */ u a(f fVar, u uVar) {
        return (u) super.put(fVar, uVar);
    }

    @Override // com.bumptech.glide.load.engine.b.h
    public final void a(int i) {
        if (i >= 40) {
            clearMemory();
        } else if (i >= 20 || i == 15) {
            trimToSize(getMaxSize() / 2);
        }
    }

    @Override // com.bumptech.glide.load.engine.b.h
    public final void a(h.a aVar) {
        this.f7490a = aVar;
    }

    @Override // com.bumptech.glide.g.g
    public final /* synthetic */ int getSize(u<?> uVar) {
        u<?> uVar2 = uVar;
        return uVar2 == null ? super.getSize(null) : uVar2.c();
    }

    @Override // com.bumptech.glide.g.g
    public final /* synthetic */ void onItemEvicted(f fVar, u<?> uVar) {
        u<?> uVar2 = uVar;
        h.a aVar = this.f7490a;
        if (aVar != null && uVar2 != null) {
            aVar.b(uVar2);
        }
    }
}
