package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ayo.class */
public final class ayo implements dsi<aym> {

    /* renamed from: a */
    private final dsv<Set<ayi<ayn>>> f43325a;

    private ayo(dsv<Set<ayi<ayn>>> dsvVar) {
        this.f43325a = dsvVar;
    }

    /* renamed from: a */
    public static ayo m18318a(dsv<Set<ayi<ayn>>> dsvVar) {
        return new ayo(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new aym(this.f43325a.mo14005a());
    }
}
