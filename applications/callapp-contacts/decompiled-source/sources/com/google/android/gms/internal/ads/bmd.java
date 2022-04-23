package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bmd.class */
public final class bmd implements dsi<Set<ayi<ash>>> {

    /* renamed from: a  reason: collision with root package name */
    private final blv f24684a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<bmf> f24685b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<Executor> f24686c;

    private bmd(blv blvVar, dsv<bmf> dsvVar, dsv<Executor> dsvVar2) {
        this.f24684a = blvVar;
        this.f24685b = dsvVar;
        this.f24686c = dsvVar2;
    }

    public static bmd a(blv blvVar, dsv<bmf> dsvVar, dsv<Executor> dsvVar2) {
        return new bmd(blvVar, dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (Set) dso.b(blv.a(this.f24685b.a(), this.f24686c.a()));
    }
}
