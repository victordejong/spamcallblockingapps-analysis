package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ayf.class */
public final class ayf implements dsi<aye> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Set<ayi<ayb>>> f23999a;

    private ayf(dsv<Set<ayi<ayb>>> dsvVar) {
        this.f23999a = dsvVar;
    }

    public static ayf a(dsv<Set<ayi<ayb>>> dsvVar) {
        return new ayf(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new aye(this.f23999a.a());
    }
}
