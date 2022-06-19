package com.google.android.gms.internal.ads;

import java.util.concurrent.Callable;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzejn.class */
public final class zzejn implements zzeht<zzcyw> {
    private final zzczt zza;
    private final zzeiu zzb;
    private final zzfxb zzc;
    private final zzdet zzd;
    private final ScheduledExecutorService zze;

    public zzejn(zzczt zzcztVar, zzeiu zzeiuVar, zzdet zzdetVar, ScheduledExecutorService scheduledExecutorService, zzfxb zzfxbVar) {
        this.zza = zzcztVar;
        this.zzb = zzeiuVar;
        this.zzd = zzdetVar;
        this.zze = scheduledExecutorService;
        this.zzc = zzfxbVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeht
    public final zzfxa<zzcyw> zza(final zzfdz zzfdzVar, final zzfdn zzfdnVar) {
        return this.zzc.zzb(new Callable() { // from class: com.google.android.gms.internal.ads.zzejl
            @Override // java.util.concurrent.Callable
            public final Object call() {
                return zzejn.this.zzc(zzfdzVar, zzfdnVar);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzeht
    public final boolean zzb(zzfdz zzfdzVar, zzfdn zzfdnVar) {
        return zzfdzVar.zza.zza.zza() != null && this.zzb.zzb(zzfdzVar, zzfdnVar);
    }

    public final /* synthetic */ zzcyw zzc(final zzfdz zzfdzVar, final zzfdn zzfdnVar) throws Exception {
        return this.zza.zzb(new zzdbk(zzfdzVar, zzfdnVar, null), new zzdag(zzfdzVar.zza.zza.zza(), new Runnable() { // from class: com.google.android.gms.internal.ads.zzejk
            @Override // java.lang.Runnable
            public final void run() {
                zzejn.this.zzf(zzfdzVar, zzfdnVar);
            }
        })).zza();
    }

    public final /* synthetic */ void zzf(zzfdz zzfdzVar, zzfdn zzfdnVar) {
        zzfwq.zzr(zzfwq.zzo(this.zzb.zza(zzfdzVar, zzfdnVar), zzfdnVar.zzO, TimeUnit.SECONDS, this.zze), new zzejm(this), this.zzc);
    }
}
