package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bad.class */
public final class bad implements dsi<ayi<avs>> {

    /* renamed from: a  reason: collision with root package name */
    private final azj f24069a;

    /* renamed from: b  reason: collision with root package name */
    private final dsv<Executor> f24070b;

    private bad(azj azjVar, dsv<Executor> dsvVar) {
        this.f24069a = azjVar;
        this.f24070b = dsvVar;
    }

    public static bad a(azj azjVar, dsv<Executor> dsvVar) {
        return new bad(azjVar, dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    public final /* synthetic */ Object a() {
        final adt adtVar = this.f24069a.f24035b;
        return (ayi) dso.b(new ayi(new avs(adtVar) { // from class: com.google.android.gms.internal.ads.azl

            /* renamed from: a  reason: collision with root package name */
            private final adt f24036a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f24036a = adtVar;
            }

            @Override // com.google.android.gms.internal.ads.avs
            public final void a() {
                adt adtVar2 = this.f24036a;
                if (adtVar2.x() != null) {
                    adtVar2.x().close();
                }
            }
        }, this.f24070b.a()));
    }
}
