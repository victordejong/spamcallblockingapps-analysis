package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.common.util.Clock;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcgi.class */
public final class zzcgi {
    private final Clock zza;
    private final zzg zzb;
    private final zzchh zzc;

    public zzcgi(Clock clock, zzg zzgVar, zzchh zzchhVar) {
        this.zza = clock;
        this.zzb = zzgVar;
        this.zzc = zzchhVar;
    }

    public final void zza() {
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzal)).booleanValue()) {
            return;
        }
        this.zzc.zzt();
    }

    public final void zzb(int i, long j) {
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzak)).booleanValue()) {
            return;
        }
        if (j - this.zzb.zze() < 0) {
            zze.zza("Receiving npa decision in the past, ignoring.");
            return;
        }
        if (!((Boolean) zzbgq.zzc().zzb(zzblj.zzal)).booleanValue()) {
            this.zzb.zzG(-1);
            this.zzb.zzH(j);
        } else {
            this.zzb.zzG(i);
            this.zzb.zzH(j);
        }
        zza();
    }
}
