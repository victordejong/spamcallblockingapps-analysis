package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/chp.class */
public final class chp implements chb<chm> {

    /* renamed from: a */
    final Context f45806a;

    /* renamed from: b */
    private final AbstractC13059xz f45807b;

    /* renamed from: c */
    private final ScheduledExecutorService f45808c;

    /* renamed from: d */
    private final Executor f45809d;

    /* renamed from: e */
    private final int f45810e;

    public chp(AbstractC13059xz abstractC13059xz, Context context, ScheduledExecutorService scheduledExecutorService, Executor executor, int i) {
        this.f45807b = abstractC13059xz;
        this.f45806a = context;
        this.f45808c = scheduledExecutorService;
        this.f45809d = executor;
        this.f45810e = i;
    }

    @Override // com.google.android.gms.internal.ads.chb
    /* renamed from: a */
    public final dbt<chm> mo17449a() {
        if (((Boolean) ekb.m14831e().m18571a(C12187aq.f42641aD)).booleanValue()) {
            return dbc.m16907c((dbt) this.f45807b.mo13986a(this.f45806a)).m16911a(cho.f45805a, this.f45809d).m16912a(((Long) ekb.m14831e().m18571a(C12187aq.f42642aE)).longValue(), TimeUnit.MILLISECONDS, this.f45808c).m16909a(Throwable.class, new cxu(this) { // from class: com.google.android.gms.internal.ads.chr

                /* renamed from: a */
                private final chp f45816a;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.f45816a = this;
                }

                @Override // com.google.android.gms.internal.ads.cxu
                /* renamed from: a */
                public final Object mo14064a(Object obj) {
                    chp chpVar = this.f45816a;
                    ekb.m14835a();
                    return new chm(null, C13077yq.m13937b(chpVar.f45806a));
                }
            }, this.f45809d);
        }
        return dbh.m16898a((Throwable) new Exception("Did not ad Ad ID into query param."));
    }
}
