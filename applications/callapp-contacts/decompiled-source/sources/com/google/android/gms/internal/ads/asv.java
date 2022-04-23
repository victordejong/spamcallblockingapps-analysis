package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/asv.class */
public final class asv implements dsi<asp> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Set<ayi<aro>>> f23856a;

    private asv(dsv<Set<ayi<aro>>> dsvVar) {
        this.f23856a = dsvVar;
    }

    public static asv a(dsv<Set<ayi<aro>>> dsvVar) {
        return new asv(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new asp(this.f23856a.a());
    }
}
