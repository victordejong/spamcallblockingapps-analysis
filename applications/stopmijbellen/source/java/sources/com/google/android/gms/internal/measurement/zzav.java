package com.google.android.gms.internal.measurement;

import java.util.List;
import p007a6.C0028d;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzav.class */
public final class zzav extends zzaw {
    public zzav() {
        this.zza.add(zzbl.BITWISE_AND);
        this.zza.add(zzbl.BITWISE_LEFT_SHIFT);
        this.zza.add(zzbl.BITWISE_NOT);
        this.zza.add(zzbl.BITWISE_OR);
        this.zza.add(zzbl.BITWISE_RIGHT_SHIFT);
        this.zza.add(zzbl.BITWISE_UNSIGNED_RIGHT_SHIFT);
        this.zza.add(zzbl.BITWISE_XOR);
    }

    @Override // com.google.android.gms.internal.measurement.zzaw
    public final zzap zza(String str, zzg zzgVar, List<zzap> list) {
        zzbl zzblVar = zzbl.ADD;
        switch (zzh.zze(str).ordinal()) {
            case 4:
                return new zzah(Double.valueOf(zzh.zzg(zzgVar.zza((zzap) C0028d.m8916d(zzbl.BITWISE_AND, 2, list, 0)).zzd().doubleValue()) & zzh.zzg(zzgVar.zza(list.get(1)).zzd().doubleValue())));
            case 5:
                return new zzah(Double.valueOf(zzh.zzg(zzgVar.zza((zzap) C0028d.m8916d(zzbl.BITWISE_LEFT_SHIFT, 2, list, 0)).zzd().doubleValue()) << ((int) (zzh.zzh(zzgVar.zza(list.get(1)).zzd().doubleValue()) & 31))));
            case 6:
                return new zzah(Double.valueOf(zzh.zzg(zzgVar.zza((zzap) C0028d.m8916d(zzbl.BITWISE_NOT, 1, list, 0)).zzd().doubleValue()) ^ (-1)));
            case 7:
                return new zzah(Double.valueOf(zzh.zzg(zzgVar.zza((zzap) C0028d.m8916d(zzbl.BITWISE_OR, 2, list, 0)).zzd().doubleValue()) | zzh.zzg(zzgVar.zza(list.get(1)).zzd().doubleValue())));
            case 8:
                return new zzah(Double.valueOf(zzh.zzg(zzgVar.zza((zzap) C0028d.m8916d(zzbl.BITWISE_RIGHT_SHIFT, 2, list, 0)).zzd().doubleValue()) >> ((int) (zzh.zzh(zzgVar.zza(list.get(1)).zzd().doubleValue()) & 31))));
            case 9:
                return new zzah(Double.valueOf(zzh.zzh(zzgVar.zza((zzap) C0028d.m8916d(zzbl.BITWISE_UNSIGNED_RIGHT_SHIFT, 2, list, 0)).zzd().doubleValue()) >>> ((int) (zzh.zzh(zzgVar.zza(list.get(1)).zzd().doubleValue()) & 31))));
            case 10:
                return new zzah(Double.valueOf(zzh.zzg(zzgVar.zza((zzap) C0028d.m8916d(zzbl.BITWISE_XOR, 2, list, 0)).zzd().doubleValue()) ^ zzh.zzg(zzgVar.zza(list.get(1)).zzd().doubleValue())));
            default:
                return super.zzb(str);
        }
    }
}
