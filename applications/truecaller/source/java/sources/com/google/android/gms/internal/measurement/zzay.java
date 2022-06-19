package com.google.android.gms.internal.measurement;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzay.class */
public final class zzay extends zzaw {
    public zzay() {
        this.zza.add(zzbl.EQUALS);
        this.zza.add(zzbl.GREATER_THAN);
        this.zza.add(zzbl.GREATER_THAN_EQUALS);
        this.zza.add(zzbl.IDENTITY_EQUALS);
        this.zza.add(zzbl.IDENTITY_NOT_EQUALS);
        this.zza.add(zzbl.LESS_THAN);
        this.zza.add(zzbl.LESS_THAN_EQUALS);
        this.zza.add(zzbl.NOT_EQUALS);
    }

    private static boolean zzc(zzap zzapVar, zzap zzapVar2) {
        if (zzapVar.getClass().equals(zzapVar2.getClass())) {
            if ((zzapVar instanceof zzau) || (zzapVar instanceof zzan)) {
                return true;
            }
            return zzapVar instanceof zzah ? !Double.isNaN(zzapVar.zzh().doubleValue()) && !Double.isNaN(zzapVar2.zzh().doubleValue()) && zzapVar.zzh().doubleValue() == zzapVar2.zzh().doubleValue() : zzapVar instanceof zzat ? zzapVar.zzi().equals(zzapVar2.zzi()) : zzapVar instanceof zzaf ? zzapVar.zzg().equals(zzapVar2.zzg()) : zzapVar == zzapVar2;
        } else if (((zzapVar instanceof zzau) || (zzapVar instanceof zzan)) && ((zzapVar2 instanceof zzau) || (zzapVar2 instanceof zzan))) {
            return true;
        } else {
            boolean z = zzapVar instanceof zzah;
            if (z && (zzapVar2 instanceof zzat)) {
                return zzc(zzapVar, new zzah(zzapVar2.zzh()));
            }
            boolean z2 = zzapVar instanceof zzat;
            if ((!z2 || !(zzapVar2 instanceof zzah)) && !(zzapVar instanceof zzaf)) {
                if (zzapVar2 instanceof zzaf) {
                    return zzc(zzapVar, new zzah(zzapVar2.zzh()));
                }
                if ((z2 || z) && (zzapVar2 instanceof zzal)) {
                    return zzc(zzapVar, new zzat(zzapVar2.zzi()));
                }
                if (!(zzapVar instanceof zzal)) {
                    return false;
                }
                if (!(zzapVar2 instanceof zzat) && !(zzapVar2 instanceof zzah)) {
                    return false;
                }
                return zzc(new zzat(zzapVar.zzi()), zzapVar2);
            }
            return zzc(new zzah(zzapVar.zzh()), zzapVar2);
        }
    }

    private static boolean zzd(zzap zzapVar, zzap zzapVar2) {
        zzat zzatVar = zzapVar;
        if (zzapVar instanceof zzal) {
            zzatVar = new zzat(zzapVar.zzi());
        }
        zzat zzatVar2 = zzapVar2;
        if (zzapVar2 instanceof zzal) {
            zzatVar2 = new zzat(zzapVar2.zzi());
        }
        if ((zzatVar instanceof zzat) && (zzatVar2 instanceof zzat)) {
            return zzatVar.zzi().compareTo(zzatVar2.zzi()) < 0;
        }
        double doubleValue = zzatVar.zzh().doubleValue();
        double doubleValue2 = zzatVar2.zzh().doubleValue();
        if (Double.isNaN(doubleValue) || Double.isNaN(doubleValue2)) {
            return false;
        }
        int i = (doubleValue > PlaceLikelihood.LIKELIHOOD_MIN_VALUE ? 1 : (doubleValue == PlaceLikelihood.LIKELIHOOD_MIN_VALUE ? 0 : -1));
        if (i == 0 && doubleValue2 == PlaceLikelihood.LIKELIHOOD_MIN_VALUE) {
            return false;
        }
        return !(i == 0 && doubleValue2 == PlaceLikelihood.LIKELIHOOD_MIN_VALUE) && Double.compare(doubleValue, doubleValue2) < 0;
    }

    private static boolean zze(zzap zzapVar, zzap zzapVar2) {
        zzat zzatVar = zzapVar;
        if (zzapVar instanceof zzal) {
            zzatVar = new zzat(zzapVar.zzi());
        }
        zzat zzatVar2 = zzapVar2;
        if (zzapVar2 instanceof zzal) {
            zzatVar2 = new zzat(zzapVar2.zzi());
        }
        return (((zzatVar instanceof zzat) && (zzatVar2 instanceof zzat)) || (!Double.isNaN(zzatVar.zzh().doubleValue()) && !Double.isNaN(zzatVar2.zzh().doubleValue()))) && !zzd(zzatVar2, zzatVar);
    }

    @Override // com.google.android.gms.internal.measurement.zzaw
    public final zzap zza(String str, zzg zzgVar, List list) {
        boolean z;
        boolean zzc;
        zzh.zzh(zzh.zze(str).name(), 2, list);
        zzap zzb = zzgVar.zzb((zzap) list.get(0));
        zzap zzb2 = zzgVar.zzb((zzap) list.get(1));
        int ordinal = zzh.zze(str).ordinal();
        if (ordinal != 23) {
            if (ordinal == 48) {
                zzc = zzc(zzb, zzb2);
            } else if (ordinal == 42) {
                z = zzd(zzb, zzb2);
            } else if (ordinal != 43) {
                switch (ordinal) {
                    case 37:
                        z = zzd(zzb2, zzb);
                        break;
                    case 38:
                        z = zze(zzb2, zzb);
                        break;
                    case 39:
                        z = zzh.zzl(zzb, zzb2);
                        break;
                    case 40:
                        zzc = zzh.zzl(zzb, zzb2);
                        break;
                    default:
                        return super.zzb(str);
                }
            } else {
                z = zze(zzb, zzb2);
            }
            z = !zzc;
        } else {
            z = zzc(zzb, zzb2);
        }
        return z ? zzap.zzk : zzap.zzl;
    }
}
