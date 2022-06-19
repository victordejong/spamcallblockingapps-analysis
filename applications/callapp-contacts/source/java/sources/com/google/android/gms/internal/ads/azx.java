package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/azx.class */
public final class azx implements dsi<ayi<aro>> {

    /* renamed from: a */
    private final azj f43380a;

    /* renamed from: b */
    private final dsv<bav> f43381b;

    /* renamed from: c */
    private final dsv<Executor> f43382c;

    private azx(azj azjVar, dsv<bav> dsvVar, dsv<Executor> dsvVar2) {
        this.f43380a = azjVar;
        this.f43381b = dsvVar;
        this.f43382c = dsvVar2;
    }

    /* renamed from: a */
    public static azx m18294a(azj azjVar, dsv<bav> dsvVar, dsv<Executor> dsvVar2) {
        return new azx(azjVar, dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (ayi) dso.m15764b(new ayi(this.f43381b.mo14005a(), this.f43382c.mo14005a()));
    }
}
