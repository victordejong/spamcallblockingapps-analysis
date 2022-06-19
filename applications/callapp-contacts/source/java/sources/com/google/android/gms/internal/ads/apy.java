package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzp;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/apy.class */
public final class apy implements dsi<ayi<zzp>> {

    /* renamed from: a */
    private final dsv<aue> f42606a;

    /* renamed from: b */
    private final dsv<Executor> f42607b;

    private apy(dsv<aue> dsvVar, dsv<Executor> dsvVar2) {
        this.f42606a = dsvVar;
        this.f42607b = dsvVar2;
    }

    /* renamed from: a */
    public static apy m18477a(dsv<aue> dsvVar, dsv<Executor> dsvVar2) {
        return new apy(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (ayi) dso.m15764b(new ayi(this.f42606a.mo14005a(), this.f42607b.mo14005a()));
    }
}
