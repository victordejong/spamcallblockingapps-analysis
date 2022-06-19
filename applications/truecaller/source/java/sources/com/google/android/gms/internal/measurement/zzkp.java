package com.google.android.gms.internal.measurement;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzkp.class */
public final class zzkp extends zzkq {
    private zzkp() {
        super(null);
    }

    public /* synthetic */ zzkp(zzkn zzknVar) {
        super(null);
    }

    @Override // com.google.android.gms.internal.measurement.zzkq
    public final void zza(Object obj, long j) {
        ((zzke) zzml.zzf(obj, j)).zzb();
    }

    @Override // com.google.android.gms.internal.measurement.zzkq
    public final void zzb(Object obj, Object obj2, long j) {
        zzke zzkeVar = (zzke) zzml.zzf(obj, j);
        zzke zzkeVar2 = (zzke) zzml.zzf(obj2, j);
        int size = zzkeVar.size();
        int size2 = zzkeVar2.size();
        zzke zzkeVar3 = zzkeVar;
        if (size > 0) {
            zzkeVar3 = zzkeVar;
            if (size2 > 0) {
                zzkeVar3 = zzkeVar;
                if (!zzkeVar.zzc()) {
                    zzkeVar3 = zzkeVar.zzd(size2 + size);
                }
                zzkeVar3.addAll(zzkeVar2);
            }
        }
        if (size <= 0) {
            zzkeVar3 = zzkeVar2;
        }
        zzml.zzs(obj, j, zzkeVar3);
    }
}
