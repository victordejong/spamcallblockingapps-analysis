package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cie.class */
public final class cie implements chb<cib> {

    /* renamed from: a */
    final AbstractC13059xz f45841a;

    /* renamed from: b */
    final C13064yd f45842b;

    /* renamed from: c */
    private final int f45843c;

    /* renamed from: d */
    private final Context f45844d;

    /* renamed from: e */
    private final ScheduledExecutorService f45845e;

    /* renamed from: f */
    private final Executor f45846f;

    public cie(AbstractC13059xz abstractC13059xz, int i, Context context, C13064yd c13064yd, ScheduledExecutorService scheduledExecutorService, Executor executor) {
        this.f45841a = abstractC13059xz;
        this.f45843c = i;
        this.f45844d = context;
        this.f45842b = c13064yd;
        this.f45845e = scheduledExecutorService;
        this.f45846f = executor;
    }

    @Override // com.google.android.gms.internal.ads.chb
    /* renamed from: a */
    public final dbt<cib> mo17449a() {
        return dbc.m16907c(dbh.m16903a(new dar(this) { // from class: com.google.android.gms.internal.ads.cid

            /* renamed from: a */
            private final cie f45840a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45840a = this;
            }

            @Override // com.google.android.gms.internal.ads.dar
            /* renamed from: a */
            public final dbt mo16921a() {
                return this.f45840a.f45841a.mo13987a();
            }
        }, this.f45846f)).m16911a(cig.f45848a, this.f45846f).m16912a(((Long) ekb.m14831e().m18571a(C12187aq.f42642aE)).longValue(), TimeUnit.MILLISECONDS, this.f45845e).m16909a(Exception.class, new cxu(this) { // from class: com.google.android.gms.internal.ads.cif

            /* renamed from: a */
            private final cie f45847a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f45847a = this;
            }

            @Override // com.google.android.gms.internal.ads.cxu
            /* renamed from: a */
            public final Object mo14064a(Object obj) {
                this.f45847a.f45842b.m13979a((Exception) obj, "AttestationTokenSignal");
                return null;
            }
        }, dba.INSTANCE);
    }
}
