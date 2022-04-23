package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cgn.class */
public final class cgn implements dsi<cgl> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<dbs> f25799a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Context> f25800b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<zzbar> f25801c;

    private cgn(dsv<dbs> dsvVar, dsv<Context> dsvVar2, dsv<zzbar> dsvVar3) {
        this.f25799a = dsvVar;
        this.f25800b = dsvVar2;
        this.f25801c = dsvVar3;
    }

    public static cgn a(dsv<dbs> dsvVar, dsv<Context> dsvVar2, dsv<zzbar> dsvVar3) {
        return new cgn(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new cgl(this.f25799a.a(), this.f25800b.a(), this.f25801c.a());
    }
}
