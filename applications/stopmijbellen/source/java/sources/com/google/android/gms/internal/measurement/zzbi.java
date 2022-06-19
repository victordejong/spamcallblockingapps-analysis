package com.google.android.gms.internal.measurement;

import java.util.List;
import me.zhanghai.android.materialprogressbar.C3681R;
import p007a6.C0028d;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzbi.class */
public final class zzbi extends zzaw {
    public zzbi() {
        this.zza.add(zzbl.ADD);
        this.zza.add(zzbl.DIVIDE);
        this.zza.add(zzbl.MODULUS);
        this.zza.add(zzbl.MULTIPLY);
        this.zza.add(zzbl.NEGATE);
        this.zza.add(zzbl.POST_DECREMENT);
        this.zza.add(zzbl.POST_INCREMENT);
        this.zza.add(zzbl.PRE_DECREMENT);
        this.zza.add(zzbl.PRE_INCREMENT);
        this.zza.add(zzbl.SUBTRACT);
    }

    @Override // com.google.android.gms.internal.measurement.zzaw
    public final zzap zza(String str, zzg zzgVar, List<zzap> list) {
        zzah zzahVar;
        zzbl zzblVar = zzbl.ADD;
        int ordinal = zzh.zze(str).ordinal();
        if (ordinal == 0) {
            zzap zza = zzgVar.zza((zzap) C0028d.m8916d(zzblVar, 2, list, 0));
            zzap zza2 = zzgVar.zza(list.get(1));
            if ((zza instanceof zzal) || (zza instanceof zzat) || (zza2 instanceof zzal) || (zza2 instanceof zzat)) {
                String valueOf = String.valueOf(zza.zzc());
                String valueOf2 = String.valueOf(zza2.zzc());
                zzahVar = new zzat(valueOf2.length() != 0 ? valueOf.concat(valueOf2) : new String(valueOf));
            } else {
                zzahVar = new zzah(Double.valueOf(zza2.zzd().doubleValue() + zza.zzd().doubleValue()));
            }
            return zzahVar;
        } else if (ordinal == 21) {
            return new zzah(Double.valueOf(zzgVar.zza((zzap) C0028d.m8916d(zzbl.DIVIDE, 2, list, 0)).zzd().doubleValue() / zzgVar.zza(list.get(1)).zzd().doubleValue()));
        } else {
            if (ordinal == 59) {
                zzap zza3 = zzgVar.zza((zzap) C0028d.m8916d(zzbl.SUBTRACT, 2, list, 0));
                return new zzah(Double.valueOf(new zzah(Double.valueOf(-zzgVar.zza(list.get(1)).zzd().doubleValue())).zzd().doubleValue() + zza3.zzd().doubleValue()));
            } else if (ordinal == 52 || ordinal == 53) {
                zzh.zza(str, 2, list);
                zzap zza4 = zzgVar.zza(list.get(0));
                zzgVar.zza(list.get(1));
                return zza4;
            } else if (ordinal == 55 || ordinal == 56) {
                zzh.zza(str, 1, list);
                return zzgVar.zza(list.get(0));
            } else {
                switch (ordinal) {
                    case C3681R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                        return new zzah(Double.valueOf(zzgVar.zza((zzap) C0028d.m8916d(zzbl.MODULUS, 2, list, 0)).zzd().doubleValue() % zzgVar.zza(list.get(1)).zzd().doubleValue()));
                    case C3681R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                        return new zzah(Double.valueOf(zzgVar.zza((zzap) C0028d.m8916d(zzbl.MULTIPLY, 2, list, 0)).zzd().doubleValue() * zzgVar.zza(list.get(1)).zzd().doubleValue()));
                    case C3681R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                        return new zzah(Double.valueOf(-zzgVar.zza((zzap) C0028d.m8916d(zzbl.NEGATE, 1, list, 0)).zzd().doubleValue()));
                    default:
                        return super.zzb(str);
                }
            }
        }
    }
}
