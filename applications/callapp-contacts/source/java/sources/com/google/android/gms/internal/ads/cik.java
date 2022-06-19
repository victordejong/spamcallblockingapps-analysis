package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cik.class */
public final class cik implements chb<cih> {

    /* renamed from: a */
    egv f45857a;

    /* renamed from: b */
    Context f45858b;

    /* renamed from: c */
    private dbs f45859c;

    public cik(egv egvVar, dbs dbsVar, Context context) {
        this.f45857a = egvVar;
        this.f45859c = dbsVar;
        this.f45858b = context;
    }

    @Override // com.google.android.gms.internal.ads.chb
    /* renamed from: a */
    public final dbt<cih> mo17449a() {
        return this.f45859c.mo16890a(new Callable(this) { // from class: com.google.android.gms.internal.ads.cij

            /* renamed from: a */
            private final cik f45856a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45856a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new cih(this.f45856a.f45857a.mo15051a());
            }
        });
    }
}
