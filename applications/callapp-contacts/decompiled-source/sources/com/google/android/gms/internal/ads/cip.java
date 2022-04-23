package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cip.class */
public final class cip implements chb<ciq> {

    /* renamed from: a  reason: collision with root package name */
    private xv f25901a;

    /* renamed from: b  reason: collision with root package name */
    private dbs f25902b;

    /* renamed from: c  reason: collision with root package name */
    private String f25903c;

    public cip(xv xvVar, dbs dbsVar, String str) {
        this.f25901a = xvVar;
        this.f25902b = dbsVar;
        this.f25903c = str;
    }

    @Override // com.google.android.gms.internal.ads.chb
    public final dbt<ciq> a() {
        new zp();
        final dbt<String> a2 = dbh.a((Object) null);
        if (((Boolean) ekb.e().a(aq.du)).booleanValue()) {
            a2 = this.f25901a.a();
        }
        final dbt<String> b2 = this.f25901a.b();
        return dbh.a(a2, b2).a(new Callable(a2, b2) { // from class: com.google.android.gms.internal.ads.cis

            /* renamed from: a  reason: collision with root package name */
            private final dbt f25909a;

            /* renamed from: b  reason: collision with root package name */
            private final dbt f25910b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25909a = a2;
                this.f25910b = b2;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new ciq((String) this.f25909a.get(), (String) this.f25910b.get());
            }
        }, zd.f28573a);
    }
}
