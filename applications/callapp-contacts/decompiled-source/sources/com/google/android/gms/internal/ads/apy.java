package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.overlay.zzp;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/apy.class */
public final class apy implements dsi<ayi<zzp>> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<aue> f23735a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f23736b;

    private apy(dsv<aue> dsvVar, dsv<Executor> dsvVar2) {
        this.f23735a = dsvVar;
        this.f23736b = dsvVar2;
    }

    public static apy a(dsv<aue> dsvVar, dsv<Executor> dsvVar2) {
        return new apy(dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (ayi) dso.b(new ayi(this.f23735a.a(), this.f23736b.a()));
    }
}
