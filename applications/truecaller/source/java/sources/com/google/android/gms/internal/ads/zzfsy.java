package com.google.android.gms.internal.ads;

import java.util.Objects;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzfsy.class */
public final class zzfsy<V> extends zzfrt<V> {
    private zzfsm<V> zza;
    private ScheduledFuture<?> zzb;

    private zzfsy(zzfsm<V> zzfsmVar) {
        Objects.requireNonNull(zzfsmVar);
        this.zza = zzfsmVar;
    }

    public static <V> zzfsm<V> zzy(zzfsm<V> zzfsmVar, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        zzfsy zzfsyVar = new zzfsy(zzfsmVar);
        zzfsv zzfsvVar = new zzfsv(zzfsyVar);
        zzfsyVar.zzb = scheduledExecutorService.schedule(zzfsvVar, j, timeUnit);
        zzfsmVar.zze(zzfsvVar, zzfrr.INSTANCE);
        return zzfsyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfqw
    public final String zzc() {
        zzfsm<V> zzfsmVar = this.zza;
        ScheduledFuture<?> scheduledFuture = this.zzb;
        if (zzfsmVar != null) {
            String obj = zzfsmVar.toString();
            String m8610j = C22128a.m8610j(new StringBuilder(obj.length() + 14), "inputFuture=[", obj, "]");
            String str = m8610j;
            if (scheduledFuture != null) {
                long delay = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
                str = m8610j;
                if (delay > 0) {
                    StringBuilder sb = new StringBuilder(m8610j.length() + 43);
                    sb.append(m8610j);
                    sb.append(", remaining delay=[");
                    sb.append(delay);
                    sb.append(" ms]");
                    str = sb.toString();
                }
            }
            return str;
        }
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzfqw
    public final void zzd() {
        zzv(this.zza);
        ScheduledFuture<?> scheduledFuture = this.zzb;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.zza = null;
        this.zzb = null;
    }
}
