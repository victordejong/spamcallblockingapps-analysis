package com.google.android.gms.internal.ads;

import com.google.android.gms.common.util.AbstractC12102f;
import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ajz.class */
public final class ajz implements dsi<aju> {

    /* renamed from: a */
    private final dsv<C12729lw> f42272a;

    /* renamed from: b */
    private final dsv<ajs> f42273b;

    /* renamed from: c */
    private final dsv<Executor> f42274c;

    /* renamed from: d */
    private final dsv<ajp> f42275d;

    /* renamed from: e */
    private final dsv<AbstractC12102f> f42276e;

    private ajz(dsv<C12729lw> dsvVar, dsv<ajs> dsvVar2, dsv<Executor> dsvVar3, dsv<ajp> dsvVar4, dsv<AbstractC12102f> dsvVar5) {
        this.f42272a = dsvVar;
        this.f42273b = dsvVar2;
        this.f42274c = dsvVar3;
        this.f42275d = dsvVar4;
        this.f42276e = dsvVar5;
    }

    /* renamed from: a */
    public static ajz m18624a(dsv<C12729lw> dsvVar, dsv<ajs> dsvVar2, dsv<Executor> dsvVar3, dsv<ajp> dsvVar4, dsv<AbstractC12102f> dsvVar5) {
        return new ajz(dsvVar, dsvVar2, dsvVar3, dsvVar4, dsvVar5);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return new aju(this.f42272a.mo14005a(), this.f42273b.mo14005a(), this.f42274c.mo14005a(), this.f42275d.mo14005a(), this.f42276e.mo14005a());
    }
}
