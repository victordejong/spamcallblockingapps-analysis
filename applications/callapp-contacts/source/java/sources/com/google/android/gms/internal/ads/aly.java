package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aly.class */
public final class aly implements dsi<ata> {

    /* renamed from: a */
    private final alx f42398a;

    /* renamed from: b */
    private final dsv<Set<ayi<atb>>> f42399b;

    public aly(alx alxVar, dsv<Set<ayi<atb>>> dsvVar) {
        this.f42398a = alxVar;
        this.f42399b = dsvVar;
    }

    /* renamed from: a */
    public static ata m18573a(alx alxVar, Set<ayi<atb>> set) {
        return (ata) dso.m15764b(alxVar.mo17576a(set));
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return m18573a(this.f42398a, this.f42399b.mo14005a());
    }
}
