package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cfb.class */
public final class cfb implements chb<cey> {

    /* renamed from: a */
    final cot f45650a;

    /* renamed from: b */
    private final dbs f45651b;

    public cfb(dbs dbsVar, cot cotVar) {
        this.f45651b = dbsVar;
        this.f45650a = cotVar;
    }

    @Override // com.google.android.gms.internal.ads.chb
    /* renamed from: a */
    public final dbt<cey> mo17449a() {
        return this.f45651b.mo16890a(new Callable(this) { // from class: com.google.android.gms.internal.ads.cfa

            /* renamed from: a */
            private final cfb f45649a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45649a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new cey(this.f45649a.f45650a);
            }
        });
    }
}
