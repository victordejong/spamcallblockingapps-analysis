package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/arl.class */
public final class arl implements dsi<arj> {

    /* renamed from: a */
    private final dsv<Set<ayi<eir>>> f43101a;

    private arl(dsv<Set<ayi<eir>>> dsvVar) {
        this.f43101a = dsvVar;
    }

    /* renamed from: a */
    public static arl m18438a(dsv<Set<ayi<eir>>> dsvVar) {
        return new arl(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new arj(this.f43101a.mo14005a());
    }
}
