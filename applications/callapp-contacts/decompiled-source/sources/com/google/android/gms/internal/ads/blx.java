package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/blx.class */
public final class blx implements dsi<Set<ayi<arp>>> {

    /* renamed from: a  reason: collision with root package name */
    private final blv f24669a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<bmf> f24670b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<Executor> f24671c;

    private blx(blv blvVar, dsv<bmf> dsvVar, dsv<Executor> dsvVar2) {
        this.f24669a = blvVar;
        this.f24670b = dsvVar;
        this.f24671c = dsvVar2;
    }

    public static blx a(blv blvVar, dsv<bmf> dsvVar, dsv<Executor> dsvVar2) {
        return new blx(blvVar, dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (Set) dso.b(blv.a(this.f24670b.a(), this.f24671c.a()));
    }
}
