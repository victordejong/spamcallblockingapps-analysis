package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/avp.class */
public final class avp implements dsi<avn> {

    /* renamed from: a */
    private final dsv<Set<ayi<avs>>> f43218a;

    private avp(dsv<Set<ayi<avs>>> dsvVar) {
        this.f43218a = dsvVar;
    }

    /* renamed from: a */
    public static avp m18380a(dsv<Set<ayi<avs>>> dsvVar) {
        return new avp(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new avn(this.f43218a.mo14005a());
    }
}
