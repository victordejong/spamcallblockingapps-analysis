package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.util.zzg;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzegj.class */
public final class zzegj implements zzdgf, zzdeu {
    private static final Object zza = new Object();
    private static int zzb;
    private final zzg zzc;
    private final zzegs zzd;

    public zzegj(zzegs zzegsVar, zzg zzgVar) {
        this.zzd = zzegsVar;
        this.zzc = zzgVar;
    }

    private final void zzb(boolean z) {
        int i;
        int intValue;
        if (((Boolean) zzbgq.zzc().zzb(zzblj.zzeE)).booleanValue() && !this.zzc.zzL()) {
            Object obj = zza;
            synchronized (obj) {
                i = zzb;
                intValue = ((Integer) zzbgq.zzc().zzb(zzblj.zzeF)).intValue();
            }
            if (i >= intValue) {
                return;
            }
            this.zzd.zze(z);
            synchronized (obj) {
                zzb++;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdeu
    public final void zza(zzbew zzbewVar) {
        zzb(false);
    }

    @Override // com.google.android.gms.internal.ads.zzdgf
    public final void zzn() {
        zzb(true);
    }
}
