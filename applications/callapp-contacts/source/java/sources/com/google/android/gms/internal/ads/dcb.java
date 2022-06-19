package com.google.android.gms.internal.ads;

import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dcb.class */
public final class dcb<V> extends dbb<V> {

    /* renamed from: a */
    private dbt<V> f46935a;

    /* renamed from: b */
    private ScheduledFuture<?> f46936b;

    private dcb(dbt<V> dbtVar) {
        this.f46935a = (dbt) cyg.m17060a(dbtVar);
    }

    /* renamed from: a */
    public static <V> dbt<V> m16886a(dbt<V> dbtVar, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        dcb dcbVar = new dcb(dbtVar);
        dcd dcdVar = new dcd(dcbVar);
        dcbVar.f46936b = scheduledExecutorService.schedule(dcdVar, j, timeUnit);
        dbtVar.addListener(dcdVar, dba.INSTANCE);
        return dcbVar;
    }

    @Override // com.google.android.gms.internal.ads.dag
    /* renamed from: a */
    public final String mo16879a() {
        dbt<V> dbtVar = this.f46935a;
        ScheduledFuture<?> scheduledFuture = this.f46936b;
        if (dbtVar != null) {
            String valueOf = String.valueOf(dbtVar);
            StringBuilder sb = new StringBuilder(String.valueOf(valueOf).length() + 14);
            sb.append("inputFuture=[");
            sb.append(valueOf);
            sb.append("]");
            String sb2 = sb.toString();
            String str = sb2;
            if (scheduledFuture != null) {
                long delay = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
                str = sb2;
                if (delay > 0) {
                    String valueOf2 = String.valueOf(sb2);
                    StringBuilder sb3 = new StringBuilder(String.valueOf(valueOf2).length() + 43);
                    sb3.append(valueOf2);
                    sb3.append(", remaining delay=[");
                    sb3.append(delay);
                    sb3.append(" ms]");
                    str = sb3.toString();
                }
            }
            return str;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.dag
    /* renamed from: b */
    public final void mo16876b() {
        m16959a((Future<?>) this.f46935a);
        ScheduledFuture<?> scheduledFuture = this.f46936b;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.f46935a = null;
        this.f46936b = null;
    }
}
