package com.google.android.gms.internal.ads;

import androidx.recyclerview.widget.C0608b;
import java.util.Objects;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import javax.annotation.CheckForNull;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzfxm.class */
public final class zzfxm<V> extends zzfwg<V> {
    @CheckForNull
    private zzfxa<V> zza;
    @CheckForNull
    private ScheduledFuture<?> zzb;

    private zzfxm(zzfxa<V> zzfxaVar) {
        Objects.requireNonNull(zzfxaVar);
        this.zza = zzfxaVar;
    }

    public static <V> zzfxa<V> zzb(zzfxa<V> zzfxaVar, long j, TimeUnit timeUnit, ScheduledExecutorService scheduledExecutorService) {
        zzfxm zzfxmVar = new zzfxm(zzfxaVar);
        zzfxj zzfxjVar = new zzfxj(zzfxmVar);
        zzfxmVar.zzb = scheduledExecutorService.schedule(zzfxjVar, j, timeUnit);
        zzfxaVar.zzc(zzfxjVar, zzfwe.INSTANCE);
        return zzfxmVar;
    }

    @Override // com.google.android.gms.internal.ads.zzfvg
    @CheckForNull
    public final String zzd() {
        zzfxa<V> zzfxaVar = this.zza;
        ScheduledFuture<?> scheduledFuture = this.zzb;
        if (zzfxaVar != null) {
            String obj = zzfxaVar.toString();
            String m7625j = C0608b.m7625j(new StringBuilder(obj.length() + 14), "inputFuture=[", obj, "]");
            String str = m7625j;
            if (scheduledFuture != null) {
                long delay = scheduledFuture.getDelay(TimeUnit.MILLISECONDS);
                str = m7625j;
                if (delay > 0) {
                    StringBuilder sb = new StringBuilder(m7625j.length() + 43);
                    sb.append(m7625j);
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

    @Override // com.google.android.gms.internal.ads.zzfvg
    public final void zze() {
        zzq(this.zza);
        ScheduledFuture<?> scheduledFuture = this.zzb;
        if (scheduledFuture != null) {
            scheduledFuture.cancel(false);
        }
        this.zza = null;
        this.zzb = null;
    }
}
