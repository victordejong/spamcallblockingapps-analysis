package com.google.android.gms.internal.ads;

import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aod.class */
final class aod implements dbi<anv> {

    /* renamed from: a */
    private final /* synthetic */ dbi f42514a;

    /* renamed from: b */
    private final /* synthetic */ aoa f42515b;

    public aod(aoa aoaVar, dbi dbiVar) {
        this.f42515b = aoaVar;
        this.f42514a = dbiVar;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final /* synthetic */ void mo13892a(anv anvVar) {
        aoa aoaVar = this.f42515b;
        List<? extends dbt<? extends anp>> list = anvVar.f42500a;
        dbi dbiVar = this.f42514a;
        if (list == null || list.isEmpty()) {
            aoaVar.f42506a.execute(new Runnable(dbiVar) { // from class: com.google.android.gms.internal.ads.anz

                /* renamed from: a */
                private final dbi f42504a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f42504a = dbiVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f42504a.mo13891a((Throwable) new zzcnp(cqj.NO_FILL));
                }
            });
            return;
        }
        dbt m16899a = dbh.m16899a((Object) null);
        for (dbt<? extends anp> dbtVar : list) {
            m16899a = daj.m16941a(dac.m16972a(m16899a, Throwable.class, new daq(dbiVar) { // from class: com.google.android.gms.internal.ads.aoc

                /* renamed from: a */
                private final dbi f42513a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f42513a = dbiVar;
                }

                @Override // com.google.android.gms.internal.ads.daq
                public final dbt zzf(Object obj) {
                    this.f42513a.mo13891a((Throwable) obj);
                    return dbh.m16899a((Object) null);
                }
            }, aoaVar.f42506a), new daq(aoaVar, dbiVar, dbtVar) { // from class: com.google.android.gms.internal.ads.aob

                /* renamed from: a */
                private final aoa f42510a;

                /* renamed from: b */
                private final dbi f42511b;

                /* renamed from: c */
                private final dbt f42512c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f42510a = aoaVar;
                    this.f42511b = dbiVar;
                    this.f42512c = dbtVar;
                }

                @Override // com.google.android.gms.internal.ads.daq
                public final dbt zzf(Object obj) {
                    aoa aoaVar2 = this.f42510a;
                    dbi dbiVar2 = this.f42511b;
                    dbt dbtVar2 = this.f42512c;
                    anp anpVar = (anp) obj;
                    if (anpVar != null) {
                        dbiVar2.mo13892a((dbi) anpVar);
                    }
                    return dbh.m16902a(dbtVar2, C12294cy.f46750a.mo17481a().longValue(), TimeUnit.MILLISECONDS, aoaVar2.f42507b);
                }
            }, aoaVar.f42506a);
        }
        dbh.m16901a(m16899a, new aog(aoaVar, dbiVar), aoaVar.f42506a);
    }

    @Override // com.google.android.gms.internal.ads.dbi
    /* renamed from: a */
    public final void mo13891a(Throwable th) {
        this.f42514a.mo13891a(th);
        C13091zd.f50122e.execute(new Runnable(this.f42515b) { // from class: com.google.android.gms.internal.ads.aoe

            /* renamed from: a */
            private final aoa f42516a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f42516a = r4;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f42516a.f42509d = false;
            }
        });
    }
}
