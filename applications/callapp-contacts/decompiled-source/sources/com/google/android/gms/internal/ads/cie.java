package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/cie.class */
public final class cie implements chb<cib> {

    /* renamed from: a  reason: collision with root package name */
    final xz f25880a;

    /* renamed from: b  reason: collision with root package name */
    final yd f25881b;

    /* renamed from: c  reason: collision with root package name */
    private final int f25882c;

    /* renamed from: d  reason: collision with root package name */
    private final Context f25883d;
    private final ScheduledExecutorService e;
    private final Executor f;

    public cie(xz xzVar, int i, Context context, yd ydVar, ScheduledExecutorService scheduledExecutorService, Executor executor) {
        this.f25880a = xzVar;
        this.f25882c = i;
        this.f25883d = context;
        this.f25881b = ydVar;
        this.e = scheduledExecutorService;
        this.f = executor;
    }

    @Override // com.google.android.gms.internal.ads.chb
    public final dbt<cib> a() {
        return dbc.c(dbh.a(new dar(this) { // from class: com.google.android.gms.internal.ads.cid

            /* renamed from: a  reason: collision with root package name */
            private final cie f25879a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25879a = this;
            }

            @Override // com.google.android.gms.internal.ads.dar
            public final dbt a() {
                return this.f25879a.f25880a.a();
            }
        }, this.f)).a(cig.f25885a, this.f).a(((Long) ekb.e().a(aq.aE)).longValue(), TimeUnit.MILLISECONDS, this.e).a(Exception.class, new cxu(this) { // from class: com.google.android.gms.internal.ads.cif

            /* renamed from: a  reason: collision with root package name */
            private final cie f25884a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25884a = this;
            }

            @Override // com.google.android.gms.internal.ads.cxu
            public final Object a(Object obj) {
                this.f25884a.f25881b.a((Exception) obj, "AttestationTokenSignal");
                return null;
            }
        }, dba.INSTANCE);
    }
}
