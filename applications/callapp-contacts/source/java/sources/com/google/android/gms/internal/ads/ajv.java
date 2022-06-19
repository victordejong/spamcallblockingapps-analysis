package com.google.android.gms.internal.ads;

import android.content.Context;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ajv.class */
public final class ajv implements dsi<ajs> {

    /* renamed from: a */
    private final dsv<Context> f42259a;

    /* renamed from: b */
    private final dsv<eed> f42260b;

    private ajv(dsv<Context> dsvVar, dsv<eed> dsvVar2) {
        this.f42259a = dsvVar;
        this.f42260b = dsvVar2;
    }

    /* renamed from: a */
    public static ajv m18626a(dsv<Context> dsvVar, dsv<eed> dsvVar2) {
        return new ajv(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new ajs(this.f42259a.mo14005a(), this.f42260b.mo14005a());
    }
}
