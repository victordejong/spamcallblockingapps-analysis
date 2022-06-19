package com.bumptech.glide.load.p083c;

import com.bumptech.glide.load.engine.AbstractC1771t;
import com.bumptech.glide.p077h.C1456i;
/* renamed from: com.bumptech.glide.load.c.a */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/c/a.class */
public class C1579a<T> implements AbstractC1771t<T> {

    /* renamed from: a */
    protected final T f4949a;

    public C1579a(T t) {
        this.f4949a = (T) C1456i.m16989a(t);
    }

    @Override // com.bumptech.glide.load.engine.AbstractC1771t
    /* renamed from: c */
    public Class<T> mo16348c() {
        return (Class<T>) this.f4949a.getClass();
    }

    @Override // com.bumptech.glide.load.engine.AbstractC1771t
    /* renamed from: d */
    public final T mo16347d() {
        return this.f4949a;
    }

    @Override // com.bumptech.glide.load.engine.AbstractC1771t
    /* renamed from: e */
    public final int mo16346e() {
        return 1;
    }

    @Override // com.bumptech.glide.load.engine.AbstractC1771t
    /* renamed from: f */
    public void mo16345f() {
    }
}
