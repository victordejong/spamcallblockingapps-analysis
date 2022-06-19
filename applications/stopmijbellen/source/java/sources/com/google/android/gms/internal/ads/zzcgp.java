package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcgp.class */
public final class zzcgp extends zzchi {
    private final Clock zzb;
    private final zzcgp zzc = this;
    private final zzgqe<Context> zzd;
    private final zzgqe<zzg> zze;
    private final zzgqe<zzchh> zzf;
    private final zzgqe<zzcgg> zzg;
    private final zzgqe<Clock> zzh;
    private final zzgqe<zzcgi> zzi;
    private final zzgqe<zzcgk> zzj;
    private final zzgqe<zzchm> zzk;

    public /* synthetic */ zzcgp(Context context, Clock clock, zzg zzgVar, zzchh zzchhVar, zzcgo zzcgoVar) {
        this.zzb = clock;
        zzgpr zza = zzgps.zza(context);
        this.zzd = zza;
        zzgpr zza2 = zzgps.zza(zzgVar);
        this.zze = zza2;
        zzgpr zza3 = zzgps.zza(zzchhVar);
        this.zzf = zza3;
        this.zzg = zzgpq.zzc(new zzcgh(zza, zza2, zza3));
        zzgpr zza4 = zzgps.zza(clock);
        this.zzh = zza4;
        zzgqe<zzcgi> zzc = zzgpq.zzc(new zzcgj(zza4, zza2, zza3));
        this.zzi = zzc;
        zzcgl zzcglVar = new zzcgl(zza4, zzc);
        this.zzj = zzcglVar;
        this.zzk = zzgpq.zzc(new zzchn(zza, zzcglVar));
    }

    @Override // com.google.android.gms.internal.ads.zzchi
    public final zzcgg zza() {
        return this.zzg.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzchi
    public final zzcgk zzb() {
        return new zzcgk(this.zzb, this.zzi.zzb());
    }

    @Override // com.google.android.gms.internal.ads.zzchi
    public final zzchm zzc() {
        return this.zzk.zzb();
    }
}
