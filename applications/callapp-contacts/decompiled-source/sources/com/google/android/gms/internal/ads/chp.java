package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/chp.class */
public final class chp implements chb<chm> {

    /* renamed from: a  reason: collision with root package name */
    final Context f25848a;

    /* renamed from: b  reason: collision with root package name */
    private final xz f25849b;

    /* renamed from: c  reason: collision with root package name */
    private final ScheduledExecutorService f25850c;

    /* renamed from: d  reason: collision with root package name */
    private final Executor f25851d;
    private final int e;

    public chp(xz xzVar, Context context, ScheduledExecutorService scheduledExecutorService, Executor executor, int i) {
        this.f25849b = xzVar;
        this.f25848a = context;
        this.f25850c = scheduledExecutorService;
        this.f25851d = executor;
        this.e = i;
    }

    @Override // com.google.android.gms.internal.ads.chb
    public final dbt<chm> a() {
        if (!((Boolean) ekb.e().a(aq.aD)).booleanValue()) {
            return dbh.a((Throwable) new Exception("Did not ad Ad ID into query param."));
        }
        return dbc.c((dbt) this.f25849b.a(this.f25848a)).a(cho.f25847a, this.f25851d).a(((Long) ekb.e().a(aq.aE)).longValue(), TimeUnit.MILLISECONDS, this.f25850c).a(Throwable.class, new cxu(this) { // from class: com.google.android.gms.internal.ads.chr

            /* renamed from: a  reason: collision with root package name */
            private final chp f25856a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f25856a = this;
            }

            @Override // com.google.android.gms.internal.ads.cxu
            public final Object a(Object obj) {
                chp chpVar = this.f25856a;
                ekb.a();
                return new chm(null, yq.b(chpVar.f25848a));
            }
        }, this.f25851d);
    }
}
