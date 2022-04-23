package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bly.class */
public final class bly implements dsi<Set<ayi<aro>>> {

    /* renamed from: a  reason: collision with root package name */
    private final blv f24672a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<bmf> f24673b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<Executor> f24674c;

    private bly(blv blvVar, dsv<bmf> dsvVar, dsv<Executor> dsvVar2) {
        this.f24672a = blvVar;
        this.f24673b = dsvVar;
        this.f24674c = dsvVar2;
    }

    public static bly a(blv blvVar, dsv<bmf> dsvVar, dsv<Executor> dsvVar2) {
        return new bly(blvVar, dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (Set) dso.b(blv.a(this.f24673b.a(), this.f24674c.a()));
    }
}
