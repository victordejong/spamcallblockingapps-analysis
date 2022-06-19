package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cit.class */
public final class cit implements chb<ciu> {

    /* renamed from: a */
    AbstractC12168ac f45876a;

    /* renamed from: b */
    List<String> f45877b;

    /* renamed from: c */
    private dbs f45878c;

    public cit(AbstractC12168ac abstractC12168ac, dbs dbsVar, List<String> list) {
        this.f45876a = abstractC12168ac;
        this.f45878c = dbsVar;
        this.f45877b = list;
    }

    @Override // com.google.android.gms.internal.ads.chb
    /* renamed from: a */
    public final dbt<ciu> mo17449a() {
        return this.f45878c.mo16890a(new Callable(this) { // from class: com.google.android.gms.internal.ads.ciw

            /* renamed from: a */
            private final cit f45881a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45881a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                cit citVar = this.f45881a;
                return new ciu(citVar.f45876a.mo18870a(citVar.f45877b));
            }
        });
    }
}
