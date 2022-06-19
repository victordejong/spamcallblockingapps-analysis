package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bua.class */
public final class bua implements bsk<alq> {

    /* renamed from: a */
    final amn f44743a;

    /* renamed from: b */
    final btd f44744b;

    /* renamed from: c */
    final dbs f44745c;

    /* renamed from: d */
    final arn f44746d;

    /* renamed from: e */
    final ScheduledExecutorService f44747e;

    public bua(amn amnVar, btd btdVar, arn arnVar, ScheduledExecutorService scheduledExecutorService, dbs dbsVar) {
        this.f44743a = amnVar;
        this.f44744b = btdVar;
        this.f44746d = arnVar;
        this.f44747e = scheduledExecutorService;
        this.f44745c = dbsVar;
    }

    @Override // com.google.android.gms.internal.ads.bsk
    /* renamed from: a */
    public final boolean mo17575a(cpk cpkVar, cov covVar) {
        return cpkVar.f46318a.f46306a.m17363a() != null && this.f44744b.mo17575a(cpkVar, covVar);
    }

    @Override // com.google.android.gms.internal.ads.bsk
    /* renamed from: b */
    public final dbt<alq> mo17574b(cpk cpkVar, cov covVar) {
        return this.f44745c.mo16890a(new Callable(this, cpkVar, covVar) { // from class: com.google.android.gms.internal.ads.bud

            /* renamed from: a */
            private final bua f44755a;

            /* renamed from: b */
            private final cpk f44756b;

            /* renamed from: c */
            private final cov f44757c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f44755a = this;
                this.f44756b = cpkVar;
                this.f44757c = covVar;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                bua buaVar = this.f44755a;
                cpk cpkVar2 = this.f44756b;
                cov covVar2 = this.f44757c;
                return buaVar.f44743a.mo18559a(new aof(cpkVar2, covVar2, null), new anb(cpkVar2.f46318a.f46306a.m17363a(), new Runnable(buaVar, cpkVar2, covVar2) { // from class: com.google.android.gms.internal.ads.buc

                    /* renamed from: a */
                    private final bua f44752a;

                    /* renamed from: b */
                    private final cpk f44753b;

                    /* renamed from: c */
                    private final cov f44754c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f44752a = buaVar;
                        this.f44753b = cpkVar2;
                        this.f44754c = covVar2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        bua buaVar2 = this.f44752a;
                        cpk cpkVar3 = this.f44753b;
                        cov covVar3 = this.f44754c;
                        dbh.m16901a(dbh.m16902a(buaVar2.f44744b.mo17574b(cpkVar3, covVar3), covVar3.f46233M, TimeUnit.SECONDS, buaVar2.f44747e), new buf(buaVar2), buaVar2.f44745c);
                    }
                })).mo18539a();
            }
        });
    }
}
