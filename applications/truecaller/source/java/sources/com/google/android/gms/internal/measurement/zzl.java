package com.google.android.gms.internal.measurement;

import java.util.List;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzl.class */
public final class zzl extends zzam {
    private final zzab zzb;

    public zzl(zzab zzabVar) {
        this.zzb = zzabVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    @Override // com.google.android.gms.internal.measurement.zzam, com.google.android.gms.internal.measurement.zzap
    public final zzap zzbI(String str, zzg zzgVar, List list) {
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
            zzh.zzh("getEventName", 0, list);
            return new zzat(this.zzb.zzb().zzd());
        } else if (z) {
            zzh.zzh("getParamValue", 1, list);
            return zzi.zzb(this.zzb.zzb().zzc(zzgVar.zzb((zzap) list.get(0)).zzi()));
        } else if (z) {
            zzh.zzh("getParams", 0, list);
            Map zze = this.zzb.zzb().zze();
            zzam zzamVar = new zzam();
            for (String str2 : zze.keySet()) {
                zzamVar.zzr(str2, zzi.zzb(zze.get(str2)));
            }
            return zzamVar;
        } else if (z) {
            zzh.zzh("getTimestamp", 0, list);
            return new zzah(Double.valueOf(this.zzb.zzb().zza()));
        } else if (!z) {
            if (!z) {
                return super.zzbI(str, zzgVar, list);
            }
            zzh.zzh("setParamValue", 2, list);
            String zzi = zzgVar.zzb((zzap) list.get(0)).zzi();
            zzap zzb = zzgVar.zzb((zzap) list.get(1));
            this.zzb.zzb().zzg(zzi, zzh.zzf(zzb));
            return zzb;
        } else {
            zzh.zzh("setEventName", 1, list);
            zzap zzb2 = zzgVar.zzb((zzap) list.get(0));
            if (zzap.zzf.equals(zzb2) || zzap.zzg.equals(zzb2)) {
                throw new IllegalArgumentException("Illegal event name");
            }
            this.zzb.zzb().zzf(zzb2.zzi());
            return new zzat(zzb2.zzi());
        }
    }
}
