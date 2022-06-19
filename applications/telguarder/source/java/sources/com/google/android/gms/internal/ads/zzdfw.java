package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdfw.class */
public final class zzdfw implements zzdfi<zzdfx> {
    private final Context context;
    private final Executor executor;
    private final ScheduledExecutorService zzfri;
    private final int zzgqc;
    private final zzayk zzhdv;

    public zzdfw(zzayk zzaykVar, Context context, ScheduledExecutorService scheduledExecutorService, Executor executor, int i) {
        this.zzhdv = zzaykVar;
        this.context = context;
        this.zzfri = scheduledExecutorService;
        this.executor = executor;
        this.zzgqc = i;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdfx> zzasy() {
        if (((Boolean) zzwr.zzqr().zzd(zzabp.zzcpn)).booleanValue()) {
            return zzdzf.zzg(this.zzhdv.zza(this.context, this.zzgqc)).zza(zzdfz.zzeaj, this.executor).zza(((Long) zzwr.zzqr().zzd(zzabp.zzcpo)).longValue(), TimeUnit.MILLISECONDS, this.zzfri).zza(Throwable.class, new zzdvz(this) { // from class: com.google.android.gms.internal.ads.zzdfy
                private final zzdfw zzhdy;

                /* JADX INFO: Access modifiers changed from: package-private */
                {
                    this.zzhdy = this;
                }

                @Override // com.google.android.gms.internal.ads.zzdvz
                public final Object apply(Object obj) {
                    return this.zzhdy.zzf((Throwable) obj);
                }
            }, this.executor);
        }
        return zzdzk.immediateFailedFuture(new Exception("Did not ad Ad ID into query param."));
    }

    public final /* synthetic */ zzdfx zzf(Throwable th) {
        zzwr.zzqn();
        return new zzdfx(null, zzaza.zzbn(this.context));
    }
}
