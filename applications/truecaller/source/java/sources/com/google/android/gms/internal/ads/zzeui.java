package com.google.android.gms.internal.ads;

import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.TimeUnit;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeui.class */
public final class zzeui implements zzery<zzeuj> {
    private final zzcge zza;
    private final boolean zzb;
    private final ScheduledExecutorService zzc;
    private final zzfsn zzd;
    private final String zze;
    private final zzcfu zzf;

    public zzeui(zzcge zzcgeVar, boolean z, zzcfu zzcfuVar, zzfsn zzfsnVar, String str, ScheduledExecutorService scheduledExecutorService, byte[] bArr) {
        this.zza = zzcgeVar;
        this.zzb = z;
        this.zzf = zzcfuVar;
        this.zzd = zzfsnVar;
        this.zze = str;
        this.zzc = scheduledExecutorService;
    }

    @Override // com.google.android.gms.internal.ads.zzery
    public final zzfsm<zzeuj> zza() {
        return (zzblk.zza.zze().booleanValue() || this.zzb) ? zzfsd.zzf(zzfsd.zzh(zzfsd.zzj(zzfsd.zza(null), zzeug.zza, this.zzd), zzblk.zzc.zze().longValue(), TimeUnit.MILLISECONDS, this.zzc), Exception.class, new zzfln(this) { // from class: com.google.android.gms.internal.ads.zzeuh
            private final zzeui zza;

            {
                this.zza = this;
            }

            @Override // com.google.android.gms.internal.ads.zzfln
            public final Object apply(Object obj) {
                this.zza.zzb((Exception) obj);
                return null;
            }
        }, this.zzd) : zzfsd.zza(null);
    }

    public final /* synthetic */ zzeuj zzb(Exception exc) {
        this.zza.zzk(exc, "TrustlessTokenSignal");
        return null;
    }
}
