package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zze;
import com.google.android.gms.ads.internal.util.zzg;
import com.google.android.gms.common.util.Clock;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzceb.class */
public final class zzceb {
    private final Clock zza;
    private final zzg zzb;
    private final zzcfa zzc;

    public zzceb(Clock clock, zzg zzgVar, zzcfa zzcfaVar) {
        this.zza = clock;
        this.zzb = zzgVar;
        this.zzc = zzcfaVar;
    }

    public final void zza(int i, long j) {
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzak)).booleanValue()) {
            return;
        }
        if (j - this.zzb.zzE() < 0) {
            zze.zza("Receiving npa decision in the past, ignoring.");
            return;
        }
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzal)).booleanValue()) {
            this.zzb.zzD(-1);
            this.zzb.zzF(j);
        } else {
            this.zzb.zzD(i);
            this.zzb.zzF(j);
        }
        zzb();
    }

    public final void zzb() {
        if (!((Boolean) zzbet.zzc().zzc(zzbjl.zzal)).booleanValue()) {
            return;
        }
        this.zzc.zza();
    }
}
