package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/atc.class */
public final class atc implements dsi<ata> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Set<ayi<atb>>> f23860a;

    private atc(dsv<Set<ayi<atb>>> dsvVar) {
        this.f23860a = dsvVar;
    }

    public static atc a(dsv<Set<ayi<atb>>> dsvVar) {
        return new atc(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new ata(this.f23860a.a());
    }
}
