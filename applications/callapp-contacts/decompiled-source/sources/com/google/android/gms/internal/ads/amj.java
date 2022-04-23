package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/amj.class */
public final class amj implements dsi<Set<ayi<eeg>>> {

    /* renamed from: a  reason: collision with root package name */
    private final alx f23581a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<anj> f23582b;

    public amj(alx alxVar, dsv<anj> dsvVar) {
        this.f23581a = alxVar;
        this.f23582b = dsvVar;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (Set) dso.b(Collections.singleton(new ayi(this.f23582b.a(), zd.f)));
    }
}
