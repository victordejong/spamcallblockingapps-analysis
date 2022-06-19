package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cip.class */
public final class cip implements chb<ciq> {

    /* renamed from: a */
    private AbstractC13055xv f45866a;

    /* renamed from: b */
    private dbs f45867b;

    /* renamed from: c */
    private String f45868c;

    public cip(AbstractC13055xv abstractC13055xv, dbs dbsVar, String str) {
        this.f45866a = abstractC13055xv;
        this.f45867b = dbsVar;
        this.f45868c = str;
    }

    @Override // com.google.android.gms.internal.ads.chb
    /* renamed from: a */
    public final dbt<ciq> mo17449a() {
        new C13103zp();
        dbt<String> m16899a = dbh.m16899a((Object) null);
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42843du)).booleanValue()) {
            m16899a = this.f45866a.mo13989a();
        }
        dbt<String> mo13988b = this.f45866a.mo13988b();
        return dbh.m16896a(m16899a, mo13988b).m16893a(new Callable(m16899a, mo13988b) { // from class: com.google.android.gms.internal.ads.cis

            /* renamed from: a */
            private final dbt f45874a;

            /* renamed from: b */
            private final dbt f45875b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45874a = m16899a;
                this.f45875b = mo13988b;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return new ciq((String) this.f45874a.get(), (String) this.f45875b.get());
            }
        }, C13091zd.f50118a);
    }
}
