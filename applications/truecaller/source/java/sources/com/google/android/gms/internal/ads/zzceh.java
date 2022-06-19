package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.common.util.Clock;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzceh.class */
public final class zzceh extends zzcfb {
    private final Clock zzb;
    private final zzceh zzc = this;
    private final zzgln<Context> zzd;
    private final zzgln<zzg> zze;
    private final zzgln<zzcfa> zzf;
    private final zzgln<zzcdz> zzg;
    private final zzgln<Clock> zzh;
    private final zzgln<zzceb> zzi;
    private final zzgln<zzced> zzj;
    private final zzgln<zzcfg> zzk;

    public /* synthetic */ zzceh(Context context, Clock clock, zzg zzgVar, zzcfa zzcfaVar, zzceg zzcegVar) {
        this.zzb = clock;
        zzgla zza = zzglb.zza(context);
        this.zzd = zza;
        zzgla zza2 = zzglb.zza(zzgVar);
        this.zze = zza2;
        zzgla zza3 = zzglb.zza(zzcfaVar);
        this.zzf = zza3;
        this.zzg = zzgkz.zza(new zzcea(zza, zza2, zza3));
        zzgla zza4 = zzglb.zza(clock);
        this.zzh = zza4;
        zzgln<zzceb> zza5 = zzgkz.zza(new zzcec(zza4, zza2, zza3));
        this.zzi = zza5;
        zzcee zzceeVar = new zzcee(zza4, zza5);
        this.zzj = zzceeVar;
        this.zzk = zzgkz.zza(new zzcfh(zza, zzceeVar));
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final zzcdz zza() {
        return this.zzg.zzb();
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final zzced zzb() {
        return new zzced(this.zzb, this.zzi.zzb());
    }

    @Override // com.google.android.gms.internal.ads.zzcfb
    public final zzcfg zzc() {
        return this.zzk.zzb();
    }
}
