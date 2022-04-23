package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ctq.class */
public final class ctq implements dsi<ctl> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Set<ayi<cto>>> f26377a;

    private ctq(dsv<Set<ayi<cto>>> dsvVar) {
        this.f26377a = dsvVar;
    }

    public static ctq a(dsv<Set<ayi<cto>>> dsvVar) {
        return new ctq(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new ctl(this.f26377a.a());
    }
}
