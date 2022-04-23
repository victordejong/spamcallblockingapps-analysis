package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bme.class */
public final class bme implements dsi<Set<ayi<eir>>> {

    /* renamed from: a  reason: collision with root package name */
    private final blv f24687a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<bmf> f24688b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<Executor> f24689c;

    private bme(blv blvVar, dsv<bmf> dsvVar, dsv<Executor> dsvVar2) {
        this.f24687a = blvVar;
        this.f24688b = dsvVar;
        this.f24689c = dsvVar2;
    }

    public static bme a(blv blvVar, dsv<bmf> dsvVar, dsv<Executor> dsvVar2) {
        return new bme(blvVar, dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (Set) dso.b(blv.a(this.f24688b.a(), this.f24689c.a()));
    }
}
