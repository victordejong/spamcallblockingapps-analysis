package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/awj.class */
public final class awj implements dsi<awa> {

    /* renamed from: a */
    private final dsv<Set<ayi<awi>>> f43234a;

    private awj(dsv<Set<ayi<awi>>> dsvVar) {
        this.f43234a = dsvVar;
    }

    /* renamed from: a */
    public static awj m18375a(dsv<Set<ayi<awi>>> dsvVar) {
        return new awj(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new awa(this.f43234a.mo14005a());
    }
}
