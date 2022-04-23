package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cfb.class */
public final class cfb implements chb<cey> {

    /* renamed from: a  reason: collision with root package name */
    final cot f25715a;

    /* renamed from: b  reason: collision with root package name */
    private final dbs f25716b;

    public cfb(dbs dbsVar, cot cotVar) {
        this.f25716b = dbsVar;
        this.f25715a = cotVar;
    }

    @Override // com.google.android.gms.internal.ads.chb
    public final dbt<cey> a() {
        return this.f25716b.a(new Callable(this) { // from class: com.google.android.gms.internal.ads.cfa

            /* renamed from: a  reason: collision with root package name */
            private final cfb f25714a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25714a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new cey(this.f25714a.f25715a);
            }
        });
    }
}
