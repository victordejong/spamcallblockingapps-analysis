package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/atc.class */
public final class atc implements dsi<ata> {

    /* renamed from: a */
    private final dsv<Set<ayi<atb>>> f43146a;

    private atc(dsv<Set<ayi<atb>>> dsvVar) {
        this.f43146a = dsvVar;
    }

    /* renamed from: a */
    public static atc m18421a(dsv<Set<ayi<atb>>> dsvVar) {
        return new atc(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new ata(this.f43146a.mo14005a());
    }
}
