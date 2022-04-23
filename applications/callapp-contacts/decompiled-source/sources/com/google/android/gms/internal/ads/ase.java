package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ase.class */
public final class ase implements dsi<asc> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Set<ayi<ash>>> f23842a;

    private ase(dsv<Set<ayi<ash>>> dsvVar) {
        this.f23842a = dsvVar;
    }

    public static ase a(dsv<Set<ayi<ash>>> dsvVar) {
        return new ase(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new asc(this.f23842a.a());
    }
}
