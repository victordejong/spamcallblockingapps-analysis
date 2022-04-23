package com.google.android.gms.internal.ads;

import java.util.Set;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/blz.class */
public final class blz implements dsi<Set<ayi<atb>>> {

    /* renamed from: a  reason: collision with root package name */
    private final blv f24675a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<bmf> f24676b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<Executor> f24677c;

    private blz(blv blvVar, dsv<bmf> dsvVar, dsv<Executor> dsvVar2) {
        this.f24675a = blvVar;
        this.f24676b = dsvVar;
        this.f24677c = dsvVar2;
    }

    public static blz a(blv blvVar, dsv<bmf> dsvVar, dsv<Executor> dsvVar2) {
        return new blz(blvVar, dsvVar, dsvVar2);
    }

    public static Set<ayi<atb>> a(bmf bmfVar, Executor executor) {
        return (Set) dso.b(blv.a(bmfVar, executor));
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return a(this.f24676b.a(), this.f24677c.a());
    }
}
