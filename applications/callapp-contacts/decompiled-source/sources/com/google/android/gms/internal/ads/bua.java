package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/bua.class */
public final class bua implements bsk<alq> {

    /* renamed from: a  reason: collision with root package name */
    final amn f25102a;

    /* renamed from: b  reason: collision with root package name */
    final btd f25103b;

    /* renamed from: c  reason: collision with root package name */
    final dbs f25104c;

    /* renamed from: d  reason: collision with root package name */
    final arn f25105d;
    final ScheduledExecutorService e;

    public bua(amn amnVar, btd btdVar, arn arnVar, ScheduledExecutorService scheduledExecutorService, dbs dbsVar) {
        this.f25102a = amnVar;
        this.f25103b = btdVar;
        this.f25105d = arnVar;
        this.e = scheduledExecutorService;
        this.f25104c = dbsVar;
    }

    @Override // com.google.android.gms.internal.ads.bsk
    public final boolean a(cpk cpkVar, cov covVar) {
        return cpkVar.f26221a.f26209a.a() != null && this.f25103b.a(cpkVar, covVar);
    }

    @Override // com.google.android.gms.internal.ads.bsk
    public final dbt<alq> b(final cpk cpkVar, final cov covVar) {
        return this.f25104c.a(new Callable(this, cpkVar, covVar) { // from class: com.google.android.gms.internal.ads.bud

            /* renamed from: a  reason: collision with root package name */
            private final bua f25113a;

            /* renamed from: b  reason: collision with root package name */
            private final cpk f25114b;

            /* renamed from: c  reason: collision with root package name */
            private final cov f25115c;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25113a = this;
                this.f25114b = cpkVar;
                this.f25115c = covVar;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                bua buaVar = this.f25113a;
                cpk cpkVar2 = this.f25114b;
                cov covVar2 = this.f25115c;
                return buaVar.f25102a.a(new aof(cpkVar2, covVar2, null), new anb(cpkVar2.f26221a.f26209a.a(), new Runnable(buaVar, cpkVar2, covVar2) { // from class: com.google.android.gms.internal.ads.buc

                    /* renamed from: a  reason: collision with root package name */
                    private final bua f25110a;

                    /* renamed from: b  reason: collision with root package name */
                    private final cpk f25111b;

                    /* renamed from: c  reason: collision with root package name */
                    private final cov f25112c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f25110a = buaVar;
                        this.f25111b = cpkVar2;
                        this.f25112c = covVar2;
                    }

                    @Override // java.lang.Runnable
                    public final void run() {
                        bua buaVar2 = this.f25110a;
                        cpk cpkVar3 = this.f25111b;
                        cov covVar3 = this.f25112c;
                        dbh.a(dbh.a(buaVar2.f25103b.b(cpkVar3, covVar3), covVar3.M, TimeUnit.SECONDS, buaVar2.e), new buf(buaVar2), buaVar2.f25104c);
                    }
                })).a();
            }
        });
    }
}
