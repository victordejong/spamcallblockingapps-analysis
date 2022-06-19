package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/cbq.class */
public final class cbq implements cah<cbn> {

    /* renamed from: a */
    dvw f12686a;

    /* renamed from: b */
    Context f12687b;

    /* renamed from: c */
    private crs f12688c;

    public cbq(dvw dvwVar, crs crsVar, Context context) {
        this.f12686a = dvwVar;
        this.f12688c = crsVar;
        this.f12687b = context;
    }

    @Override // com.google.android.gms.internal.ads.cah
    /* renamed from: a */
    public final crt<cbn> mo11479a() {
        return this.f12688c.mo10767a(new Callable(this) { // from class: com.google.android.gms.internal.ads.cbp

            /* renamed from: a */
            private final cbq f12685a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f12685a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                cbq cbqVar = this.f12685a;
                return new cbn(cbqVar.f12686a.mo8444a(cbqVar.f12687b));
            }
        });
    }
}
