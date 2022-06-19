package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ctq.class */
public final class ctq implements dsi<ctl> {

    /* renamed from: a */
    private final dsv<Set<ayi<cto>>> f46523a;

    private ctq(dsv<Set<ayi<cto>>> dsvVar) {
        this.f46523a = dsvVar;
    }

    /* renamed from: a */
    public static ctq m17233a(dsv<Set<ayi<cto>>> dsvVar) {
        return new ctq(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new ctl(this.f46523a.mo14005a());
    }
}
