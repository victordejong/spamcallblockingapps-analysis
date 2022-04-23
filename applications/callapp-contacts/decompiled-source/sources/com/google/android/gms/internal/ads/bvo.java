package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bvo.class */
public final class bvo implements dsi<bvj> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f25205a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<bbe> f25206b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<zzbar> f25207c;

    public bvo(dsv<Context> dsvVar, dsv<bbe> dsvVar2, dsv<zzbar> dsvVar3) {
        this.f25205a = dsvVar;
        this.f25206b = dsvVar2;
        this.f25207c = dsvVar3;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bvj(this.f25205a.a(), this.f25206b.a(), this.f25207c.a());
    }
}
