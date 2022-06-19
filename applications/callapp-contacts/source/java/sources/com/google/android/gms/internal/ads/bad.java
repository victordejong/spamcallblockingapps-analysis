package com.google.android.gms.internal.ads;

import java.util.concurrent.Executor;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bad.class */
public final class bad implements dsi<ayi<avs>> {

    /* renamed from: a */
    private final azj f43388a;

    /* renamed from: b */
    private final dsv<Executor> f43389b;

    private bad(azj azjVar, dsv<Executor> dsvVar) {
        this.f43388a = azjVar;
        this.f43389b = dsvVar;
    }

    /* renamed from: a */
    public static bad m18282a(azj azjVar, dsv<Executor> dsvVar) {
        return new bad(azjVar, dsvVar);
    }

    @Override // com.google.android.gms.internal.ads.dsv
    /* renamed from: a */
    public final /* synthetic */ Object mo14005a() {
        return (ayi) dso.m15764b(new ayi(new avs(this.f43388a.f43353b) { // from class: com.google.android.gms.internal.ads.azl

            /* renamed from: a */
            private final adt f43354a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f43354a = adtVar;
            }

            @Override // com.google.android.gms.internal.ads.avs
            /* renamed from: a */
            public final void mo18304a() {
                adt adtVar2 = this.f43354a;
                if (adtVar2.mo13726x() != null) {
                    adtVar2.mo13726x().close();
                }
            }
        }, this.f43389b.mo14005a()));
    }
}
