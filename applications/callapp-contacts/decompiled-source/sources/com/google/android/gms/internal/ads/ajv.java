package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ajv.class */
public final class ajv implements dsi<ajs> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<Context> f23449a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<eed> f23450b;

    private ajv(dsv<Context> dsvVar, dsv<eed> dsvVar2) {
        this.f23449a = dsvVar;
        this.f23450b = dsvVar2;
    }

    public static ajv a(dsv<Context> dsvVar, dsv<eed> dsvVar2) {
        return new ajv(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new ajs(this.f23449a.a(), this.f23450b.a());
    }
}
