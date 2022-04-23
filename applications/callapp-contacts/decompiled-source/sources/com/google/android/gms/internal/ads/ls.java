package com.google.android.gms.internal.ads;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ls.class */
public final class ls<I, O> implements lg<I, O> {

    /* renamed from: a  reason: collision with root package name */
    final lh<O> f28165a;

    /* renamed from: b  reason: collision with root package name */
    final lk<I> f28166b;

    /* renamed from: c  reason: collision with root package name */
    final String f28167c;

    /* renamed from: d  reason: collision with root package name */
    private final ke f28168d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ls(ke keVar, String str, lk<I> lkVar, lh<O> lhVar) {
        this.f28168d = keVar;
        this.f28167c = str;
        this.f28166b = lkVar;
        this.f28165a = lhVar;
    }

    @Override // com.google.android.gms.internal.ads.lg
    public final dbt<O> a(I i) {
        zp zpVar = new zp();
        kv a2 = this.f28168d.a();
        a2.a(new lr(this, a2, i, zpVar), new lu(this, zpVar, a2));
        return zpVar;
    }

    @Override // com.google.android.gms.internal.ads.daq
    public final dbt<O> zzf(I i) throws Exception {
        return a(i);
    }
}
