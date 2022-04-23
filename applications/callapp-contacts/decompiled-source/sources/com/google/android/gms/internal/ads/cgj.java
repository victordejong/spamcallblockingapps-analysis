package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cgj.class */
public final class cgj implements dsi<cgh> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<wo> f25788a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<dbs> f25789b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<Context> f25790c;

    private cgj(dsv<wo> dsvVar, dsv<dbs> dsvVar2, dsv<Context> dsvVar3) {
        this.f25788a = dsvVar;
        this.f25789b = dsvVar2;
        this.f25790c = dsvVar3;
    }

    public static cgj a(dsv<wo> dsvVar, dsv<dbs> dsvVar2, dsv<Context> dsvVar3) {
        return new cgj(dsvVar, dsvVar2, dsvVar3);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new cgh(this.f25788a.a(), this.f25789b.a(), this.f25790c.a());
    }
}
