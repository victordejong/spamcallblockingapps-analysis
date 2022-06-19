package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Executor;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdgk.class */
public final class zzdgk implements zzdfi<zzdgl> {
    private final Context context;
    private final Executor executor;
    private final zzayo zzbqd;
    private final ScheduledExecutorService zzfri;
    private final int zzgqc;
    private final zzayk zzhdv;

    public zzdgk(zzayk zzaykVar, int i, Context context, zzayo zzayoVar, ScheduledExecutorService scheduledExecutorService, Executor executor) {
        this.zzhdv = zzaykVar;
        this.zzgqc = i;
        this.context = context;
        this.zzbqd = zzayoVar;
        this.zzfri = scheduledExecutorService;
        this.executor = executor;
    }

    @Override // com.google.android.gms.internal.ads.zzdfi
    public final zzdzw<zzdgl> zzasy() {
        return zzdzf.zzg(zzdzk.zza(new zzdyv(this) { // from class: com.google.android.gms.internal.ads.zzdgn
            private final zzdgk zzheh;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzheh = this;
            }

            @Override // com.google.android.gms.internal.ads.zzdyv
            public final zzdzw zzatm() {
                return this.zzheh.zzatu();
            }
        }, this.executor)).zza(zzdgm.zzeaj, this.executor).zza(((Long) zzwr.zzqr().zzd(zzabp.zzcpo)).longValue(), TimeUnit.MILLISECONDS, this.zzfri).zza(Exception.class, new zzdvz(this) { // from class: com.google.android.gms.internal.ads.zzdgp
            private final zzdgk zzheh;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.zzheh = this;
            }

            @Override // com.google.android.gms.internal.ads.zzdvz
            public final Object apply(Object obj) {
                return this.zzheh.zzb((Exception) obj);
            }
        }, zzdzy.zzbaf());
    }

    public final /* synthetic */ zzdzw zzatu() throws Exception {
        return this.zzhdv.zzb(this.context, this.zzgqc);
    }

    public final /* synthetic */ zzdgl zzb(Exception exc) {
        this.zzbqd.zza(exc, "AttestationTokenSignal");
        return null;
    }
}
