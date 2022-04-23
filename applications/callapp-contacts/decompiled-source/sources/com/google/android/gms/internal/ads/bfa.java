package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzay;
import com.google.android.gms.common.util.f;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bfa.class */
public final class bfa implements dsi<bey> {

    /* renamed from: a  reason: collision with root package name */
    private final dsv<zzay> f24307a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<f> f24308b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<Executor> f24309c;

    public bfa(dsv<zzay> dsvVar, dsv<f> dsvVar2, dsv<Executor> dsvVar3) {
        this.f24307a = dsvVar;
        this.f24308b = dsvVar2;
        this.f24309c = dsvVar3;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return new bey(this.f24307a.a(), this.f24308b.a(), this.f24309c.a());
    }
}
