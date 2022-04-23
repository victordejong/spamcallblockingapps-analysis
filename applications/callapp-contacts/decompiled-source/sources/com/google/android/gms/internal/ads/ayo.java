package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ayo.class */
public final class ayo implements dsi<aym> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Set<ayi<ayn>>> f24011a;

    private ayo(dsv<Set<ayi<ayn>>> dsvVar) {
        this.f24011a = dsvVar;
    }

    public static ayo a(dsv<Set<ayi<ayn>>> dsvVar) {
        return new ayo(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new aym(this.f24011a.a());
    }
}
