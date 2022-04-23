package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aly.class */
public final class aly implements dsi<ata> {

    /* renamed from: a  reason: collision with root package name */
    private final alx f23556a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Set<ayi<atb>>> f23557b;

    public aly(alx alxVar, dsv<Set<ayi<atb>>> dsvVar) {
        this.f23556a = alxVar;
        this.f23557b = dsvVar;
    }

    public static ata a(alx alxVar, Set<ayi<atb>> set) {
        return (ata) dso.b(alxVar.a(set));
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return a(this.f23556a, this.f23557b.a());
    }
}
