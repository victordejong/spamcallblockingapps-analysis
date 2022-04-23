package com.google.android.gms.internal.ads;

import android.os.Bundle;
import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cfs.class */
public final class cfs implements chb<cft> {

    /* renamed from: a  reason: collision with root package name */
    final Bundle f25748a;

    /* renamed from: b  reason: collision with root package name */
    private final dbs f25749b;

    public cfs(dbs dbsVar, Bundle bundle) {
        this.f25749b = dbsVar;
        this.f25748a = bundle;
    }

    @Override // com.google.android.gms.internal.ads.chb
    public final dbt<cft> a() {
        return this.f25749b.a(new Callable(this) { // from class: com.google.android.gms.internal.ads.cfw

            /* renamed from: a  reason: collision with root package name */
            private final cfs f25754a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25754a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new cft(this.f25754a.f25748a);
            }
        });
    }
}
