package com.google.android.gms.internal.ads;

import java.util.concurrent.Future;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/ads/dcb.class */
public final class dcb<V> extends dbb<V> {

    /* renamed from: a  reason: collision with root package name */
    private dbt<V> f26716a;

    /* renamed from: b  reason: collision with root package name */
    private ScheduledFuture<?> f26717b;

    private dcb(dbt<V> dbtVar) {
        this.f26716a = (dbt) cyg.a(dbtVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <V> dbt<V> a(dbt<V> dbtVar, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        dcb dcbVar = new dcb(dbtVar);
        dcd dcdVar = new dcd(dcbVar);
        dcbVar.f26717b = scheduledExecutorService.schedule(dcdVar, j, timeUnit);
        dbtVar.addListener(dcdVar, dba.INSTANCE);
        return dcbVar;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dag
    public final String a() {
        dbt<V> dbtVar = this.f26716a;
        ScheduledFuture<?> scheduledFuture = this.f26717b;
        if (dbtVar == null) {
            return null;
        }
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.internal.ads.dag
    public final void b() {
        a((Future<?>) this.f26716a);
        ScheduledFuture<?> scheduledFuture = this.f26717b;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.f26716a = null;
        this.f26717b = null;
    }
}
