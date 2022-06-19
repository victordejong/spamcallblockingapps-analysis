package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cca.class */
public final class cca implements cah<ccb> {

    /* renamed from: a */
    ecu f12706a;

    /* renamed from: b */
    List<String> f12707b;

    /* renamed from: c */
    private crs f12708c;

    public cca(ecu ecuVar, crs crsVar, List<String> list) {
        this.f12706a = ecuVar;
        this.f12708c = crsVar;
        this.f12707b = list;
    }

    @Override // com.google.android.gms.internal.ads.cah
    /* renamed from: a */
    public final crt<ccb> mo11479a() {
        return this.f12708c.mo10767a(new Callable(this) { // from class: com.google.android.gms.internal.ads.ccd

            /* renamed from: a */
            private final cca f12711a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12711a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                cca ccaVar = this.f12711a;
                return new ccb(ccaVar.f12706a.mo7890a(ccaVar.f12707b));
            }
        });
    }
}
