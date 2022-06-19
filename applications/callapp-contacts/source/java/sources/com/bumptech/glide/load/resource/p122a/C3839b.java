package com.bumptech.glide.load.resource.p122a;

import com.bumptech.glide.load.engine.AbstractC3811u;
import com.bumptech.glide.p116g.C3643j;
/* renamed from: com.bumptech.glide.load.resource.a.b */
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/load/resource/a/b.class */
public final class C3839b implements AbstractC3811u<byte[]> {

    /* renamed from: a */
    private final byte[] f14193a;

    public C3839b(byte[] bArr) {
        this.f14193a = (byte[]) C3643j.m37588a(bArr, "Argument must not be null");
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3811u
    /* renamed from: a */
    public final Class<byte[]> mo37213a() {
        return byte[].class;
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3811u
    /* renamed from: b */
    public final /* bridge */ /* synthetic */ byte[] mo37235b() {
        return this.f14193a;
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3811u
    /* renamed from: c */
    public final int mo37212c() {
        return this.f14193a.length;
    }

    @Override // com.bumptech.glide.load.engine.AbstractC3811u
    /* renamed from: d */
    public final void mo37211d() {
    }
}
