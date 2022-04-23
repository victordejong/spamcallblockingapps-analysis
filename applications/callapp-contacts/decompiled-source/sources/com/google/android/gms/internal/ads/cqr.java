package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzf;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cqr.class */
public final class cqr implements dsi<zzf> {

    /* renamed from: a  reason: collision with root package name */
    private final cqo f26269a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<yd> f26270b;

    private cqr(cqo cqoVar, dsv<yd> dsvVar) {
        this.f26269a = cqoVar;
        this.f26270b = dsvVar;
    }

    public static zzf a(yd ydVar) {
        return (zzf) dso.b(ydVar.d());
    }

    public static cqr a(cqo cqoVar, dsv<yd> dsvVar) {
        return new cqr(cqoVar, dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return a(this.f26270b.a());
    }
}
