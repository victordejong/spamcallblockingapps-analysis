package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/akp.class */
public final class akp implements dsi<Set<ayi<eeg>>> {

    /* renamed from: a  reason: collision with root package name */
    private final ako f23501a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<anj> f23502b;

    public akp(ako akoVar, dsv<anj> dsvVar) {
        this.f23501a = akoVar;
        this.f23502b = dsvVar;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (Set) dso.b(Collections.singleton(new ayi(this.f23502b.a(), zd.f)));
    }
}
