package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/arl.class */
public final class arl implements dsi<arj> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Set<ayi<eir>>> f23826a;

    private arl(dsv<Set<ayi<eir>>> dsvVar) {
        this.f23826a = dsvVar;
    }

    public static arl a(dsv<Set<ayi<eir>>> dsvVar) {
        return new arl(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new arj(this.f23826a.a());
    }
}
