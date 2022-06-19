package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ccz.class */
public final class ccz implements chb<ccw> {

    /* renamed from: a */
    final cpo f45537a;

    /* renamed from: b */
    final zzbar f45538b;

    /* renamed from: c */
    private final dbs f45539c;

    public ccz(dbs dbsVar, cpo cpoVar, zzbar zzbarVar) {
        this.f45539c = dbsVar;
        this.f45537a = cpoVar;
        this.f45538b = zzbarVar;
    }

    @Override // com.google.android.gms.internal.ads.chb
    /* renamed from: a */
    public final dbt<ccw> mo17449a() {
        return this.f45539c.mo16890a(new Callable(this) { // from class: com.google.android.gms.internal.ads.ccy

            /* renamed from: a */
            private final ccz f45536a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45536a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                ccz cczVar = this.f45536a;
                return new ccw(cczVar.f45537a.f46330j, cczVar.f45538b);
            }
        });
    }
}
