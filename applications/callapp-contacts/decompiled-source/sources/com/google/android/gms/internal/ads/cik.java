package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cik.class */
public final class cik implements chb<cih> {

    /* renamed from: a  reason: collision with root package name */
    egv f25892a;

    /* renamed from: b  reason: collision with root package name */
    Context f25893b;

    /* renamed from: c  reason: collision with root package name */
    private dbs f25894c;

    public cik(egv egvVar, dbs dbsVar, Context context) {
        this.f25892a = egvVar;
        this.f25894c = dbsVar;
        this.f25893b = context;
    }

    @Override // com.google.android.gms.internal.ads.chb
    public final dbt<cih> a() {
        return this.f25894c.a(new Callable(this) { // from class: com.google.android.gms.internal.ads.cij

            /* renamed from: a  reason: collision with root package name */
            private final cik f25891a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25891a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new cih(this.f25891a.f25892a.a());
            }
        });
    }
}
