package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/blx.class */
public final class blx implements dsi<Set<ayi<arp>>> {

    /* renamed from: a */
    private final blv f44231a;

    /* renamed from: b */
    private final dsv<bmf> f44232b;

    /* renamed from: c */
    private final dsv<Executor> f44233c;

    private blx(blv blvVar, dsv<bmf> dsvVar, dsv<Executor> dsvVar2) {
        this.f44231a = blvVar;
        this.f44232b = dsvVar;
        this.f44233c = dsvVar2;
    }

    /* renamed from: a */
    public static blx m17750a(blv blvVar, dsv<bmf> dsvVar, dsv<Executor> dsvVar2) {
        return new blx(blvVar, dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (Set) dso.m15764b(blv.m17751a(this.f44232b.mo14005a(), this.f44233c.mo14005a()));
    }
}
