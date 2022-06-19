package com.bumptech.glide.load.resource;

import com.bumptech.glide.load.engine.AbstractC3811u;
import com.bumptech.glide.p116g.C3643j;
/* renamed from: com.bumptech.glide.load.resource.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/b.class */
public class C3840b<T> implements AbstractC3811u<T> {

    /* renamed from: a */
    protected final T f14194a;

    public C3840b(T t) {
        this.f14194a = (T) C3643j.m37588a(t, "Argument must not be null");
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3811u
    /* renamed from: a */
    public final Class<T> mo37213a() {
        return (Class<T>) this.f14194a.getClass();
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3811u
    /* renamed from: b */
    public final T mo37235b() {
        return this.f14194a;
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3811u
    /* renamed from: c */
    public final int mo37212c() {
        return 1;
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3811u
    /* renamed from: d */
    public final void mo37211d() {
    }
}
