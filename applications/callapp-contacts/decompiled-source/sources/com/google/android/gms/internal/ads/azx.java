package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/azx.class */
public final class azx implements dsi<ayi<aro>> {

    /* renamed from: a  reason: collision with root package name */
    private final azj f24061a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<bav> f24062b;

    /* renamed from: c  reason: collision with root package name */
    private final dsv<Executor> f24063c;

    private azx(azj azjVar, dsv<bav> dsvVar, dsv<Executor> dsvVar2) {
        this.f24061a = azjVar;
        this.f24062b = dsvVar;
        this.f24063c = dsvVar2;
    }

    public static azx a(azj azjVar, dsv<bav> dsvVar, dsv<Executor> dsvVar2) {
        return new azx(azjVar, dsvVar, dsvVar2);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        return (ayi) dso.b(new ayi(this.f24062b.a(), this.f24063c.a()));
    }
}
