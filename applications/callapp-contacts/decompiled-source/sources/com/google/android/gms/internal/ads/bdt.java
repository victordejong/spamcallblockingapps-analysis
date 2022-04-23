package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.f;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bdt.class */
public final class bdt implements dsi<bdr> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<bgy> f24239a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<f> f24240b;

    public bdt(dsv<bgy> dsvVar, dsv<f> dsvVar2) {
        this.f24239a = dsvVar;
        this.f24240b = dsvVar2;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bdr(this.f24239a.a(), this.f24240b.a());
    }
}
