package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/aod.class */
final class aod implements dbi<anv> {

    /* renamed from: a  reason: collision with root package name */
    private final /* synthetic */ dbi f23655a;

    /* renamed from: b  reason: collision with root package name */
    private final /* synthetic */ aoa f23656b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public aod(aoa aoaVar, dbi dbiVar) {
        this.f23656b = aoaVar;
        this.f23655a = dbiVar;
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final /* synthetic */ void a(anv anvVar) {
        final aoa aoaVar = this.f23656b;
        List<? extends dbt<? extends anp>> list = anvVar.f23641a;
        final dbi dbiVar = this.f23655a;
        if (list == null || list.isEmpty()) {
            aoaVar.f23647a.execute(new Runnable(dbiVar) { // from class: com.google.android.gms.internal.ads.anz

                /* renamed from: a  reason: collision with root package name */
                private final dbi f23645a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f23645a = dbiVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f23645a.a((Throwable) new zzcnp(cqj.NO_FILL));
                }
            });
            return;
        }
        dbt a2 = dbh.a((Object) null);
        Iterator<? extends dbt<? extends anp>> it2 = list.iterator();
        while (it2.hasNext()) {
            final dbt dbtVar = (dbt) it2.next();
            a2 = daj.a(dac.a(a2, Throwable.class, new daq(dbiVar) { // from class: com.google.android.gms.internal.ads.aoc

                /* renamed from: a  reason: collision with root package name */
                private final dbi f23654a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f23654a = dbiVar;
                }

                @Override // com.google.android.gms.internal.ads.daq
                public final dbt zzf(Object obj) {
                    this.f23654a.a((Throwable) obj);
                    return dbh.a((Object) null);
                }
            }, aoaVar.f23647a), new daq(aoaVar, dbiVar, dbtVar) { // from class: com.google.android.gms.internal.ads.aob

                /* renamed from: a  reason: collision with root package name */
                private final aoa f23651a;

                /* renamed from: b  reason: collision with root package name */
                private final dbi f23652b;

                /* renamed from: c  reason: collision with root package name */
                private final dbt f23653c;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f23651a = aoaVar;
                    this.f23652b = dbiVar;
                    this.f23653c = dbtVar;
                }

                @Override // com.google.android.gms.internal.ads.daq
                public final dbt zzf(Object obj) {
                    aoa aoaVar2 = this.f23651a;
                    dbi dbiVar2 = this.f23652b;
                    dbt dbtVar2 = this.f23653c;
                    anp anpVar = (anp) obj;
                    if (anpVar != null) {
                        dbiVar2.a((dbi) anpVar);
                    }
                    return dbh.a(dbtVar2, cy.f26556a.a().longValue(), TimeUnit.MILLISECONDS, aoaVar2.f23648b);
                }
            }, aoaVar.f23647a);
        }
        dbh.a(a2, new aog(aoaVar, dbiVar), aoaVar.f23647a);
    }

    @Override // com.google.android.gms.internal.ads.dbi
    public final void a(Throwable th) {
        this.f23655a.a(th);
        zd.e.execute(new Runnable(this.f23656b) { // from class: com.google.android.gms.internal.ads.aoe

            /* renamed from: a  reason: collision with root package name */
            private final aoa f23657a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f23657a = r4;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f23657a.f23650d = false;
            }
        });
    }
}
