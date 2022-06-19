package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzexw.class */
public final class zzexw implements zzevn<zzexx> {
    private final zzcik zza;
    private final boolean zzb;
    private final ScheduledExecutorService zzc;
    private final zzfxb zzd;
    private final String zze;
    private final zzcia zzf;

    public zzexw(zzcik zzcikVar, boolean z, zzcia zzciaVar, zzfxb zzfxbVar, String str, ScheduledExecutorService scheduledExecutorService, byte[] bArr) {
        this.zza = zzcikVar;
        this.zzb = z;
        this.zzf = zzciaVar;
        this.zzd = zzfxbVar;
        this.zze = str;
        this.zzc = scheduledExecutorService;
    }

    public final /* synthetic */ zzexx zza(Exception exc) {
        this.zza.zzs(exc, "TrustlessTokenSignal");
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzevn
    public final zzfxa<zzexx> zzb() {
        return (zzbnj.zza.zze().booleanValue() || this.zzb) ? zzfwq.zzf(zzfwq.zzo(zzfwq.zzm(zzfwq.zzi(null), zzexv.zza, this.zzd), zzbnj.zzc.zze().longValue(), TimeUnit.MILLISECONDS, this.zzc), Exception.class, new zzfpv() { // from class: com.google.android.gms.internal.ads.zzexu
            @Override // com.google.android.gms.internal.ads.zzfpv
            public final Object apply(Object obj) {
                zzexw.this.zza((Exception) obj);
                return null;
            }
        }, this.zzd) : zzfwq.zzi(null);
    }
}
