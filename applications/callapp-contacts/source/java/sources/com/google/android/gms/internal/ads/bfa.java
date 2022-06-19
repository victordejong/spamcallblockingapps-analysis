package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzay;
import com.google.android.gms.common.util.AbstractC12102f;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bfa.class */
public final class bfa implements dsi<bey> {

    /* renamed from: a */
    private final dsv<zzay> f43769a;

    /* renamed from: b */
    private final dsv<AbstractC12102f> f43770b;

    /* renamed from: c */
    private final dsv<Executor> f43771c;

    public bfa(dsv<zzay> dsvVar, dsv<AbstractC12102f> dsvVar2, dsv<Executor> dsvVar3) {
        this.f43769a = dsvVar;
        this.f43770b = dsvVar2;
        this.f43771c = dsvVar3;
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new bey(this.f43769a.mo14005a(), this.f43770b.mo14005a(), this.f43771c.mo14005a());
    }
}
