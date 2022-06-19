package com.google.android.gms.internal.ads;

import android.util.SparseArray;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaex.class */
public final class zzaex implements zzaeq {
    public final /* synthetic */ zzaez zza;
    private final zzfc zzb = new zzfc(new byte[4], 4);

    public zzaex(zzaez zzaezVar) {
        this.zza = zzaezVar;
    }

    @Override // com.google.android.gms.internal.ads.zzaeq
    public final void zza(zzfd zzfdVar) {
        SparseArray sparseArray;
        SparseArray sparseArray2;
        SparseArray sparseArray3;
        int i;
        if (zzfdVar.zzk() == 0 && (zzfdVar.zzk() & 128) != 0) {
            zzfdVar.zzG(6);
            int zza = zzfdVar.zza() / 4;
            for (int i2 = 0; i2 < zza; i2++) {
                zzfdVar.zzA(this.zzb, 4);
                int zzc = this.zzb.zzc(16);
                this.zzb.zzj(3);
                if (zzc == 0) {
                    this.zzb.zzj(13);
                } else {
                    int zzc2 = this.zzb.zzc(13);
                    sparseArray2 = this.zza.zzf;
                    if (sparseArray2.get(zzc2) == null) {
                        sparseArray3 = this.zza.zzf;
                        sparseArray3.put(zzc2, new zzaer(new zzaey(this.zza, zzc2)));
                        zzaez zzaezVar = this.zza;
                        i = zzaezVar.zzl;
                        zzaezVar.zzl = i + 1;
                    }
                }
            }
            sparseArray = this.zza.zzf;
            sparseArray.remove(0);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaeq
    public final void zzb(zzfk zzfkVar, zzws zzwsVar, zzafd zzafdVar) {
    }
}
