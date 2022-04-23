package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bzu.class */
public final class bzu implements dsi<bza> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<cty> f25464a;

    private bzu(dsv<cty> dsvVar) {
        this.f25464a = dsvVar;
    }

    public static bzu a(dsv<cty> dsvVar) {
        return new bzu(dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bza(this.f25464a.a());
    }
}
