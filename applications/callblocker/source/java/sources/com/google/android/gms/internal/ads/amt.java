package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/amt.class */
public final class amt {

    /* renamed from: a */
    private final Executor f10015a;

    /* renamed from: b */
    private final ScheduledExecutorService f10016b;

    /* renamed from: c */
    private final crt<amn> f10017c;

    /* renamed from: d */
    private volatile boolean f10018d = true;

    public amt(Executor executor, ScheduledExecutorService scheduledExecutorService, crt<amn> crtVar) {
        this.f10015a = executor;
        this.f10016b = scheduledExecutorService;
        this.f10017c = crtVar;
    }

    /* renamed from: a */
    public final void m12912a(List<? extends crt<? extends amh>> list, crh<amh> crhVar) {
        if (list == null || list.isEmpty()) {
            this.f10015a.execute(new Runnable(crhVar) { // from class: com.google.android.gms.internal.ads.ams

                /* renamed from: a */
                private final crh f10014a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f10014a = crhVar;
                }

                @Override // java.lang.Runnable
                public final void run() {
                    this.f10014a.mo6718a((Throwable) new zzcjk(3));
                }
            });
            return;
        }
        crt m10778a = crg.m10778a((Object) null);
        Iterator<? extends crt<? extends amh>> it = list.iterator();
        crt crtVar = m10778a;
        while (true) {
            crt crtVar2 = crtVar;
            if (!it.hasNext()) {
                crg.m10781a(crtVar2, new amz(this, crhVar), this.f10015a);
                return;
            } else {
                crtVar = crg.m10782a(crg.m10780a(crtVar2, Throwable.class, new cqt(crhVar) { // from class: com.google.android.gms.internal.ads.amv

                    /* renamed from: a */
                    private final crh f10022a;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f10022a = crhVar;
                    }

                    @Override // com.google.android.gms.internal.ads.cqt
                    /* renamed from: a */
                    public final crt mo7012a(Object obj) {
                        this.f10022a.mo6718a((Throwable) obj);
                        return crg.m10778a((Object) null);
                    }
                }, this.f10015a), new cqt(this, crhVar, it.next()) { // from class: com.google.android.gms.internal.ads.amu

                    /* renamed from: a */
                    private final amt f10019a;

                    /* renamed from: b */
                    private final crh f10020b;

                    /* renamed from: c */
                    private final crt f10021c;

                    /* JADX INFO: Access modifiers changed from: package-private */
                    {
                        this.f10019a = this;
                        this.f10020b = crhVar;
                        this.f10021c = next;
                    }

                    @Override // com.google.android.gms.internal.ads.cqt
                    /* renamed from: a */
                    public final crt mo7012a(Object obj) {
                        return this.f10019a.m12913a(this.f10020b, this.f10021c, (amh) obj);
                    }
                }, this.f10015a);
            }
        }
    }

    /* renamed from: c */
    public final void m12910c() {
        C3650yg.f17646e.execute(new Runnable(this) { // from class: com.google.android.gms.internal.ads.amx

            /* renamed from: a */
            private final amt f10025a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10025a = this;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f10025a.m12911b();
            }
        });
    }

    /* renamed from: a */
    public final /* synthetic */ crt m12913a(crh crhVar, crt crtVar, amh amhVar) {
        if (amhVar != null) {
            crhVar.mo6719a((crh) amhVar);
        }
        return crg.m10784a(crtVar, C2824ba.f10764a.mo13599a().longValue(), TimeUnit.MILLISECONDS, this.f10016b);
    }

    /* renamed from: a */
    public final void m12914a(crh<amh> crhVar) {
        crg.m10781a(this.f10017c, new amw(this, crhVar), this.f10015a);
    }

    /* renamed from: a */
    public final boolean m12917a() {
        return this.f10018d;
    }

    /* renamed from: b */
    public final /* synthetic */ void m12911b() {
        this.f10018d = false;
    }
}
