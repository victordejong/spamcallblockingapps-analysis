package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/ccz.class */
public final class ccz implements chb<ccw> {

    /* renamed from: a  reason: collision with root package name */
    final cpo f25610a;

    /* renamed from: b  reason: collision with root package name */
    final zzbar f25611b;

    /* renamed from: c  reason: collision with root package name */
    private final dbs f25612c;

    public ccz(dbs dbsVar, cpo cpoVar, zzbar zzbarVar) {
        this.f25612c = dbsVar;
        this.f25610a = cpoVar;
        this.f25611b = zzbarVar;
    }

    @Override // com.google.android.gms.internal.ads.chb
    public final dbt<ccw> a() {
        return this.f25612c.a(new Callable(this) { // from class: com.google.android.gms.internal.ads.ccy

            /* renamed from: a  reason: collision with root package name */
            private final ccz f25609a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25609a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                ccz cczVar = this.f25609a;
                return new ccw(cczVar.f25610a.j, cczVar.f25611b);
            }
        });
    }
}
