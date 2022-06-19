package com.google.android.gms.internal.ads;

import android.util.SparseArray;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzuh.class */
public final class zzuh implements zzua {
    public final /* synthetic */ zzuj zza;
    private final zzame zzb = new zzame(new byte[4], 4);

    public zzuh(zzuj zzujVar) {
        this.zza = zzujVar;
    }

    @Override // com.google.android.gms.internal.ads.zzua
    public final void zza(zzamn zzamnVar, zznx zznxVar, zzun zzunVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzua
    public final void zzb(zzamf zzamfVar) {
        SparseArray sparseArray;
        SparseArray sparseArray2;
        SparseArray sparseArray3;
        int i;
        if (zzamfVar.zzn() == 0 && (zzamfVar.zzn() & 128) != 0) {
            zzamfVar.zzk(6);
            int zzd = zzamfVar.zzd() / 4;
            for (int i2 = 0; i2 < zzd; i2++) {
                zzamfVar.zzl(this.zzb, 4);
                int zzh = this.zzb.zzh(16);
                this.zzb.zzf(3);
                if (zzh == 0) {
                    this.zzb.zzf(13);
                } else {
                    int zzh2 = this.zzb.zzh(13);
                    sparseArray2 = this.zza.zzf;
                    if (sparseArray2.get(zzh2) == null) {
                        sparseArray3 = this.zza.zzf;
                        sparseArray3.put(zzh2, new zzub(new zzui(this.zza, zzh2)));
                        zzuj zzujVar = this.zza;
                        i = zzujVar.zzl;
                        zzujVar.zzl = i + 1;
                    }
                }
            }
            sparseArray = this.zza.zzf;
            sparseArray.remove(0);
        }
    }
}
