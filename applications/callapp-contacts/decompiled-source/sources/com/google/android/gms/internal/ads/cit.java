package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cit.class */
public final class cit implements chb<ciu> {

    /* renamed from: a  reason: collision with root package name */
    ac f25911a;

    /* renamed from: b  reason: collision with root package name */
    List<String> f25912b;

    /* renamed from: c  reason: collision with root package name */
    private dbs f25913c;

    public cit(ac acVar, dbs dbsVar, List<String> list) {
        this.f25911a = acVar;
        this.f25913c = dbsVar;
        this.f25912b = list;
    }

    @Override // com.google.android.gms.internal.ads.chb
    public final dbt<ciu> a() {
        return this.f25913c.a(new Callable(this) { // from class: com.google.android.gms.internal.ads.ciw

            /* renamed from: a  reason: collision with root package name */
            private final cit f25916a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25916a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                cit citVar = this.f25916a;
                return new ciu(citVar.f25911a.a(citVar.f25912b));
            }
        });
    }
}
