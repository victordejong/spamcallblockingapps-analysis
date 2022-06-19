package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzg;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzecs.class */
public final class zzecs implements zzdcq, zzdbf {
    private static final Object zza = new Object();
    private static int zzb;
    private final zzg zzc;
    private final zzedb zzd;

    public zzecs(zzedb zzedbVar, zzg zzgVar) {
        this.zzd = zzedbVar;
        this.zzc = zzgVar;
    }

    private final void zzb(boolean z) {
        int i;
        int intValue;
        if (((Boolean) zzbet.zzc().zzc(zzbjl.zzex)).booleanValue() && !this.zzc.zzC()) {
            Object obj = zza;
            synchronized (obj) {
                i = zzb;
                intValue = ((Integer) zzbet.zzc().zzc(zzbjl.zzey)).intValue();
            }
            if (i >= intValue) {
                return;
            }
            this.zzd.zzf(z);
            synchronized (obj) {
                zzb++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdbf
    public final void zzbD(zzbcz zzbczVar) {
        zzb(false);
    }

    @Override // com.google.android.gms.internal.ads.zzdcq
    public final void zzf() {
        zzb(true);
    }
}
