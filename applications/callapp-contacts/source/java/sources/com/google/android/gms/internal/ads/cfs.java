package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cfs.class */
public final class cfs implements chb<cft> {

    /* renamed from: a */
    final Bundle f45683a;

    /* renamed from: b */
    private final dbs f45684b;

    public cfs(dbs dbsVar, Bundle bundle) {
        this.f45684b = dbsVar;
        this.f45683a = bundle;
    }

    @Override // com.google.android.gms.internal.ads.chb
    /* renamed from: a */
    public final dbt<cft> mo17449a() {
        return this.f45684b.mo16890a(new Callable(this) { // from class: com.google.android.gms.internal.ads.cfw

            /* renamed from: a */
            private final cfs f45689a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45689a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new cft(this.f45689a.f45683a);
            }
        });
    }
}
