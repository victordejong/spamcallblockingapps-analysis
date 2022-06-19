package com.google.android.gms.internal.measurement;

import java.util.List;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzl.class */
public final class zzl extends zzam {
    private final zzab zzb;

    public zzl(zzab zzabVar) {
        this.zzb = zzabVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.measurement.zzam, com.google.android.gms.internal.measurement.zzap
    public final zzap zzbK(String str, zzg zzgVar, List<zzap> list) {
        boolean z;
        switch (str.hashCode()) {
            case 21624207:
                if (str.equals("getEventName")) {
                    z = false;
                    break;
                }
                z = true;
                break;
            case 45521504:
                if (str.equals("getTimestamp")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 146575578:
                if (str.equals("getParamValue")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 700587132:
                if (str.equals("getParams")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 920706790:
                if (str.equals("setParamValue")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1570616835:
                if (str.equals("setEventName")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            default:
                z = true;
                break;
        }
        if (!z) {
            zzh.zza("getEventName", 0, list);
            return new zzat(this.zzb.zzc().zzb());
        } else if (z) {
            zzh.zza("getParamValue", 1, list);
            return zzi.zza(this.zzb.zzc().zze(zzgVar.zza(list.get(0)).zzc()));
        } else if (z) {
            zzh.zza("getParams", 0, list);
            Map<String, Object> zzf = this.zzb.zzc().zzf();
            zzam zzamVar = new zzam();
            for (String str2 : zzf.keySet()) {
                zzamVar.zzm(str2, zzi.zza(zzf.get(str2)));
            }
            return zzamVar;
        } else if (z) {
            zzh.zza("getTimestamp", 0, list);
            return new zzah(Double.valueOf(this.zzb.zzc().zza()));
        } else if (!z) {
            if (!z) {
                return super.zzbK(str, zzgVar, list);
            }
            zzh.zza("setParamValue", 2, list);
            String zzc = zzgVar.zza(list.get(0)).zzc();
            zzap zza = zzgVar.zza(list.get(1));
            this.zzb.zzc().zzd(zzc, zzh.zzj(zza));
            return zza;
        } else {
            zzh.zza("setEventName", 1, list);
            zzap zza2 = zzgVar.zza(list.get(0));
            if (zzap.zzf.equals(zza2) || zzap.zzg.equals(zza2)) {
                throw new IllegalArgumentException("Illegal event name");
            }
            this.zzb.zzc().zzc(zza2.zzc());
            return new zzat(zza2.zzc());
        }
    }
}
