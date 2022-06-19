package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/asv.class */
public final class asv implements dsi<asp> {

    /* renamed from: a */
    private final dsv<Set<ayi<aro>>> f43142a;

    private asv(dsv<Set<ayi<aro>>> dsvVar) {
        this.f43142a = dsvVar;
    }

    /* renamed from: a */
    public static asv m18422a(dsv<Set<ayi<aro>>> dsvVar) {
        return new asv(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new asp(this.f43142a.mo14005a());
    }
}
