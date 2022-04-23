package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/awj.class */
public final class awj implements dsi<awa> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Set<ayi<awi>>> f23945a;

    private awj(dsv<Set<ayi<awi>>> dsvVar) {
        this.f23945a = dsvVar;
    }

    public static awj a(dsv<Set<ayi<awi>>> dsvVar) {
        return new awj(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new awa(this.f23945a.a());
    }
}
