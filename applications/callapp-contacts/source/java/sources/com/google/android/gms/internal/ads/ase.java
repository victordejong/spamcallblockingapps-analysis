package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ase.class */
public final class ase implements dsi<asc> {

    /* renamed from: a */
    private final dsv<Set<ayi<ash>>> f43128a;

    private ase(dsv<Set<ayi<ash>>> dsvVar) {
        this.f43128a = dsvVar;
    }

    /* renamed from: a */
    public static ase m18433a(dsv<Set<ayi<ash>>> dsvVar) {
        return new ase(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new asc(this.f43128a.mo14005a());
    }
}
