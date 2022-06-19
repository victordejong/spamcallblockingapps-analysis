package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzf;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cqr.class */
public final class cqr implements dsi<zzf> {

    /* renamed from: a */
    private final cqo f46391a;

    /* renamed from: b */
    private final dsv<C13064yd> f46392b;

    private cqr(cqo cqoVar, dsv<C13064yd> dsvVar) {
        this.f46391a = cqoVar;
        this.f46392b = dsvVar;
    }

    /* renamed from: a */
    public static zzf m17314a(C13064yd c13064yd) {
        return (zzf) dso.m15764b(c13064yd.m13975d());
    }

    /* renamed from: a */
    public static cqr m17315a(cqo cqoVar, dsv<C13064yd> dsvVar) {
        return new cqr(cqoVar, dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return m17314a(this.f46392b.mo14005a());
    }
}
