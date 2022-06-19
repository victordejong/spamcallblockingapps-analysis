package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bvo.class */
public final class bvo implements dsi<bvj> {

    /* renamed from: a */
    private final dsv<Context> f44861a;

    /* renamed from: b */
    private final dsv<bbe> f44862b;

    /* renamed from: c */
    private final dsv<zzbar> f44863c;

    public bvo(dsv<Context> dsvVar, dsv<bbe> dsvVar2, dsv<zzbar> dsvVar3) {
        this.f44861a = dsvVar;
        this.f44862b = dsvVar2;
        this.f44863c = dsvVar3;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bvj(this.f44861a.mo14005a(), this.f44862b.mo14005a(), this.f44863c.mo14005a());
    }
}
