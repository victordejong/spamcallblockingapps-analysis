package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/btx.class */
public final class btx implements dsi<btq> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f25095a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<amn> f25096b;

    public btx(dsv<Context> dsvVar, dsv<amn> dsvVar2) {
        this.f25095a = dsvVar;
        this.f25096b = dsvVar2;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new btq(this.f25095a.a(), this.f25096b.a());
    }
}
