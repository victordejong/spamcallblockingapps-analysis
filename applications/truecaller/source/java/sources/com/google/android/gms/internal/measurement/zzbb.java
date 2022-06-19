package com.google.android.gms.internal.measurement;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzbb.class */
public final class zzbb {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Type inference failed for: r0v118, types: [double] */
    /* JADX WARN: Type inference failed for: r0v126, types: [double] */
    /* JADX WARN: Type inference failed for: r0v155, types: [double] */
    /* JADX WARN: Type inference failed for: r0v185, types: [double] */
    /* JADX WARN: Type inference failed for: r0v189, types: [double] */
    /* JADX WARN: Type inference failed for: r0v193, types: [double] */
    /* JADX WARN: Type inference failed for: r0v264, types: [double] */
    /* JADX WARN: Type inference failed for: r0v293, types: [double] */
    /* JADX WARN: Type inference failed for: r0v296, types: [double] */
    /* JADX WARN: Type inference failed for: r0v298, types: [double] */
    /* JADX WARN: Type inference failed for: r0v301, types: [double] */
    public static zzap zza(String str, zzae zzaeVar, zzg zzgVar, List list) {
        boolean z;
        zzae zzaeVar2;
        zzap zzapVar;
        zzah zzahVar;
        zzat zzatVar;
        String str2;
        zzah zzahVar2;
        zzap zzapVar2;
        zzap zzapVar3;
        zzae zzaeVar3;
        zzap zzapVar4;
        zzai zzaiVar;
        zzae zzaeVar4;
        int i;
        switch (str.hashCode()) {
            case -1776922004:
                if (str.equals("toString")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -1354795244:
                if (str.equals("concat")) {
                    z = false;
                    break;
                }
                z = true;
                break;
            case -1274492040:
                if (str.equals("filter")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -934873754:
                if (str.equals("reduce")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -895859076:
                if (str.equals("splice")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -678635926:
                if (str.equals("forEach")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -467511597:
                if (str.equals("lastIndexOf")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -277637751:
                if (str.equals("unshift")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 107868:
                if (str.equals("map")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 111185:
                if (str.equals("pop")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 3267882:
                if (str.equals("join")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 3452698:
                if (str.equals("push")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 3536116:
                if (str.equals("some")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 3536286:
                if (str.equals("sort")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 96891675:
                if (str.equals("every")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 109407362:
                if (str.equals("shift")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 109526418:
                if (str.equals("slice")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 965561430:
                if (str.equals("reduceRight")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1099846370:
                if (str.equals("reverse")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1943291465:
                if (str.equals("indexOf")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            default:
                z = true;
                break;
        }
        char c = 0;
        switch (z) {
            case false:
                zzap zzd = zzaeVar.zzd();
                if (!list.isEmpty()) {
                    Iterator it = list.iterator();
                    while (it.hasNext()) {
                        zzap zzb = zzgVar.zzb((zzap) it.next());
                        if (zzb instanceof zzag) {
                            throw new IllegalStateException("Failed evaluation of arguments");
                        }
                        zzae zzaeVar5 = (zzae) zzd;
                        int zzc = zzaeVar5.zzc();
                        if (zzb instanceof zzae) {
                            zzae zzaeVar6 = (zzae) zzb;
                            Iterator zzk = zzaeVar6.zzk();
                            while (zzk.hasNext()) {
                                Integer num = (Integer) zzk.next();
                                zzaeVar5.zzq(num.intValue() + zzc, zzaeVar6.zze(num.intValue()));
                            }
                        } else {
                            zzaeVar5.zzq(zzc, zzb);
                        }
                    }
                }
                return zzd;
            case true:
                zzh.zzh("every", 1, list);
                zzap zzb2 = zzgVar.zzb((zzap) list.get(0));
                if (!(zzb2 instanceof zzao)) {
                    throw new IllegalArgumentException("Callback should be a method");
                }
                return zzaeVar.zzc() == 0 ? zzap.zzk : zzb(zzaeVar, zzgVar, (zzao) zzb2, Boolean.FALSE, Boolean.TRUE).zzc() != zzaeVar.zzc() ? zzap.zzl : zzap.zzk;
            case true:
                zzh.zzh("filter", 1, list);
                zzap zzb3 = zzgVar.zzb((zzap) list.get(0));
                if (!(zzb3 instanceof zzao)) {
                    throw new IllegalArgumentException("Callback should be a method");
                }
                if (zzaeVar.zzb() == 0) {
                    zzaeVar2 = new zzae();
                } else {
                    zzap zzd2 = zzaeVar.zzd();
                    zzae zzb4 = zzb(zzaeVar, zzgVar, (zzao) zzb3, null, Boolean.TRUE);
                    zzaeVar2 = new zzae();
                    Iterator zzk2 = zzb4.zzk();
                    while (zzk2.hasNext()) {
                        zzaeVar2.zzq(zzaeVar2.zzc(), ((zzae) zzd2).zze(((Integer) zzk2.next()).intValue()));
                    }
                }
                return zzaeVar2;
            case true:
                zzh.zzh("forEach", 1, list);
                zzap zzb5 = zzgVar.zzb((zzap) list.get(0));
                if (!(zzb5 instanceof zzao)) {
                    throw new IllegalArgumentException("Callback should be a method");
                }
                if (zzaeVar.zzb() == 0) {
                    zzapVar = zzap.zzf;
                } else {
                    zzb(zzaeVar, zzgVar, (zzao) zzb5, null, null);
                    zzapVar = zzap.zzf;
                }
                return zzapVar;
            case true:
                zzh.zzj("indexOf", 2, list);
                zzap zzapVar5 = zzap.zzf;
                if (!list.isEmpty()) {
                    zzapVar5 = zzgVar.zzb((zzap) list.get(0));
                }
                if (list.size() > 1) {
                    c = zzh.zza(zzgVar.zzb((zzap) list.get(1)).zzh().doubleValue());
                    if (c >= zzaeVar.zzc()) {
                        zzahVar = new zzah(Double.valueOf(-1.0d));
                        return zzahVar;
                    } else if (c < PlaceLikelihood.LIKELIHOOD_MIN_VALUE) {
                        c = zzaeVar.zzc() + c;
                    }
                }
                Iterator zzk3 = zzaeVar.zzk();
                while (true) {
                    if (zzk3.hasNext()) {
                        int intValue = ((Integer) zzk3.next()).intValue();
                        double d = intValue;
                        if (d >= c && zzh.zzl(zzaeVar.zze(intValue), zzapVar5)) {
                            zzahVar = new zzah(Double.valueOf(d));
                        }
                    } else {
                        zzahVar = new zzah(Double.valueOf(-1.0d));
                    }
                }
                return zzahVar;
            case true:
                zzh.zzj("join", 1, list);
                if (zzaeVar.zzc() == 0) {
                    zzatVar = zzap.zzm;
                } else {
                    if (list.size() > 0) {
                        zzap zzb6 = zzgVar.zzb((zzap) list.get(0));
                        str2 = ((zzb6 instanceof zzan) || (zzb6 instanceof zzau)) ? "" : zzb6.zzi();
                    } else {
                        str2 = ",";
                    }
                    zzatVar = new zzat(zzaeVar.zzj(str2));
                }
                return zzatVar;
            case true:
                zzh.zzj("lastIndexOf", 2, list);
                zzap zzapVar6 = zzap.zzf;
                if (!list.isEmpty()) {
                    zzapVar6 = zzgVar.zzb((zzap) list.get(0));
                }
                char zzc2 = zzaeVar.zzc() - 1;
                if (list.size() > 1) {
                    zzap zzb7 = zzgVar.zzb((zzap) list.get(1));
                    char zzc3 = Double.isNaN(zzb7.zzh().doubleValue()) ? zzaeVar.zzc() - 1 : zzh.zza(zzb7.zzh().doubleValue());
                    zzc2 = zzc3;
                    if (zzc3 < PlaceLikelihood.LIKELIHOOD_MIN_VALUE) {
                        zzc2 = zzc3 + zzaeVar.zzc();
                    }
                }
                if (zzc2 < PlaceLikelihood.LIKELIHOOD_MIN_VALUE) {
                    zzahVar2 = new zzah(Double.valueOf(-1.0d));
                } else {
                    int min = (int) Math.min(zzaeVar.zzc(), zzc2);
                    while (true) {
                        if (min < 0) {
                            zzahVar2 = new zzah(Double.valueOf(-1.0d));
                        } else if (!zzaeVar.zzs(min) || !zzh.zzl(zzaeVar.zze(min), zzapVar6)) {
                            min--;
                        } else {
                            zzahVar2 = new zzah(Double.valueOf(min));
                        }
                    }
                }
                return zzahVar2;
            case true:
                zzh.zzh("map", 1, list);
                zzap zzb8 = zzgVar.zzb((zzap) list.get(0));
                if (!(zzb8 instanceof zzao)) {
                    throw new IllegalArgumentException("Callback should be a method");
                }
                return zzaeVar.zzc() == 0 ? new zzae() : zzb(zzaeVar, zzgVar, (zzao) zzb8, null, null);
            case true:
                zzh.zzh("pop", 0, list);
                int zzc4 = zzaeVar.zzc();
                if (zzc4 == 0) {
                    zzapVar2 = zzap.zzf;
                } else {
                    int i2 = zzc4 - 1;
                    zzapVar2 = zzaeVar.zze(i2);
                    zzaeVar.zzp(i2);
                }
                return zzapVar2;
            case true:
                if (!list.isEmpty()) {
                    Iterator it2 = list.iterator();
                    while (it2.hasNext()) {
                        zzaeVar.zzq(zzaeVar.zzc(), zzgVar.zzb((zzap) it2.next()));
                    }
                }
                return new zzah(Double.valueOf(zzaeVar.zzc()));
            case true:
                return zzc(zzaeVar, zzgVar, list, true);
            case true:
                return zzc(zzaeVar, zzgVar, list, false);
            case true:
                zzh.zzh("reverse", 0, list);
                int zzc5 = zzaeVar.zzc();
                if (zzc5 != 0) {
                    for (int i3 = 0; i3 < zzc5 / 2; i3++) {
                        if (zzaeVar.zzs(i3)) {
                            zzap zze = zzaeVar.zze(i3);
                            zzaeVar.zzq(i3, null);
                            int i4 = (zzc5 - 1) - i3;
                            if (zzaeVar.zzs(i4)) {
                                zzaeVar.zzq(i3, zzaeVar.zze(i4));
                            }
                            zzaeVar.zzq(i4, zze);
                        }
                    }
                }
                return zzaeVar;
            case true:
                zzh.zzh("shift", 0, list);
                if (zzaeVar.zzc() == 0) {
                    zzapVar3 = zzap.zzf;
                } else {
                    zzapVar3 = zzaeVar.zze(0);
                    zzaeVar.zzp(0);
                }
                return zzapVar3;
            case true:
                zzh.zzj("slice", 2, list);
                if (list.isEmpty()) {
                    zzaeVar3 = zzaeVar.zzd();
                } else {
                    ?? zzc6 = zzaeVar.zzc();
                    double zza = zzh.zza(zzgVar.zzb((zzap) list.get(0)).zzh().doubleValue());
                    char max = zza < PlaceLikelihood.LIKELIHOOD_MIN_VALUE ? Math.max(zza + zzc6, (double) PlaceLikelihood.LIKELIHOOD_MIN_VALUE) : Math.min(zza, (double) zzc6);
                    char c2 = zzc6;
                    if (list.size() == 2) {
                        double zza2 = zzh.zza(zzgVar.zzb((zzap) list.get(1)).zzh().doubleValue());
                        c2 = zza2 < PlaceLikelihood.LIKELIHOOD_MIN_VALUE ? Math.max(zzc6 + zza2, (double) PlaceLikelihood.LIKELIHOOD_MIN_VALUE) : Math.min((double) zzc6, zza2);
                    }
                    zzae zzaeVar7 = new zzae();
                    int i5 = max;
                    while (true) {
                        zzaeVar3 = zzaeVar7;
                        if (i5 < c2) {
                            zzaeVar7.zzq(zzaeVar7.zzc(), zzaeVar.zze(i5));
                            i5++;
                        }
                    }
                }
                return zzaeVar3;
            case true:
                zzh.zzh("some", 1, list);
                zzap zzb9 = zzgVar.zzb((zzap) list.get(0));
                if (!(zzb9 instanceof zzai)) {
                    throw new IllegalArgumentException("Callback should be a method");
                }
                if (zzaeVar.zzc() == 0) {
                    zzapVar4 = zzap.zzl;
                } else {
                    zzai zzaiVar2 = (zzai) zzb9;
                    Iterator zzk4 = zzaeVar.zzk();
                    while (true) {
                        if (zzk4.hasNext()) {
                            int intValue2 = ((Integer) zzk4.next()).intValue();
                            if (zzaeVar.zzs(intValue2) && zzaiVar2.zza(zzgVar, Arrays.asList(zzaeVar.zze(intValue2), new zzah(Double.valueOf(intValue2)), zzaeVar)).zzg().booleanValue()) {
                                zzapVar4 = zzap.zzk;
                            }
                        } else {
                            zzapVar4 = zzap.zzl;
                        }
                    }
                }
                return zzapVar4;
            case true:
                zzh.zzj("sort", 1, list);
                if (zzaeVar.zzc() >= 2) {
                    List<zzap> zzm = zzaeVar.zzm();
                    if (!list.isEmpty()) {
                        zzap zzb10 = zzgVar.zzb((zzap) list.get(0));
                        if (!(zzb10 instanceof zzai)) {
                            throw new IllegalArgumentException("Comparator should be a method");
                        }
                        zzaiVar = (zzai) zzb10;
                    } else {
                        zzaiVar = null;
                    }
                    Collections.sort(zzm, new zzba(zzaiVar, zzgVar));
                    zzaeVar.zzn();
                    int i6 = 0;
                    for (zzap zzapVar7 : zzm) {
                        zzaeVar.zzq(i6, zzapVar7);
                        i6++;
                    }
                }
                return zzaeVar;
            case true:
                if (list.isEmpty()) {
                    zzaeVar4 = new zzae();
                } else {
                    int zza3 = (int) zzh.zza(zzgVar.zzb((zzap) list.get(0)).zzh().doubleValue());
                    if (zza3 < 0) {
                        i = Math.max(0, zzaeVar.zzc() + zza3);
                    } else {
                        i = zza3;
                        if (zza3 > zzaeVar.zzc()) {
                            i = zzaeVar.zzc();
                        }
                    }
                    int zzc7 = zzaeVar.zzc();
                    zzaeVar4 = new zzae();
                    if (list.size() > 1) {
                        int max2 = Math.max(0, (int) zzh.zza(zzgVar.zzb((zzap) list.get(1)).zzh().doubleValue()));
                        if (max2 > 0) {
                            for (int i7 = i; i7 < Math.min(zzc7, i + max2); i7++) {
                                zzaeVar4.zzq(zzaeVar4.zzc(), zzaeVar.zze(i));
                                zzaeVar.zzp(i);
                            }
                        }
                        if (list.size() > 2) {
                            for (int i8 = 2; i8 < list.size(); i8++) {
                                zzap zzb11 = zzgVar.zzb((zzap) list.get(i8));
                                if (zzb11 instanceof zzag) {
                                    throw new IllegalArgumentException("Failed to parse elements to add");
                                }
                                zzaeVar.zzo((i + i8) - 2, zzb11);
                            }
                        }
                    } else {
                        for (int i9 = i; i9 < zzc7; i9++) {
                            zzaeVar4.zzq(zzaeVar4.zzc(), zzaeVar.zze(i9));
                            zzaeVar.zzq(i9, null);
                        }
                    }
                }
                return zzaeVar4;
            case true:
                zzh.zzh("toString", 0, list);
                return new zzat(zzaeVar.zzj(","));
            case true:
                if (!list.isEmpty()) {
                    zzae zzaeVar8 = new zzae();
                    Iterator it3 = list.iterator();
                    while (it3.hasNext()) {
                        zzap zzb12 = zzgVar.zzb((zzap) it3.next());
                        if (zzb12 instanceof zzag) {
                            throw new IllegalStateException("Argument evaluation failed");
                        }
                        zzaeVar8.zzq(zzaeVar8.zzc(), zzb12);
                    }
                    int zzc8 = zzaeVar8.zzc();
                    Iterator zzk5 = zzaeVar.zzk();
                    while (zzk5.hasNext()) {
                        Integer num2 = (Integer) zzk5.next();
                        zzaeVar8.zzq(num2.intValue() + zzc8, zzaeVar.zze(num2.intValue()));
                    }
                    zzaeVar.zzn();
                    Iterator zzk6 = zzaeVar8.zzk();
                    while (zzk6.hasNext()) {
                        Integer num3 = (Integer) zzk6.next();
                        zzaeVar.zzq(num3.intValue(), zzaeVar8.zze(num3.intValue()));
                    }
                }
                return new zzah(Double.valueOf(zzaeVar.zzc()));
            default:
                throw new IllegalArgumentException("Command not supported");
        }
    }

    private static zzae zzb(zzae zzaeVar, zzg zzgVar, zzai zzaiVar, Boolean bool, Boolean bool2) {
        zzae zzaeVar2 = new zzae();
        Iterator zzk = zzaeVar.zzk();
        while (zzk.hasNext()) {
            int intValue = ((Integer) zzk.next()).intValue();
            if (zzaeVar.zzs(intValue)) {
                zzap zza = zzaiVar.zza(zzgVar, Arrays.asList(zzaeVar.zze(intValue), new zzah(Double.valueOf(intValue)), zzaeVar));
                if (zza.zzg().equals(bool)) {
                    return zzaeVar2;
                }
                if (bool2 == null || zza.zzg().equals(bool2)) {
                    zzaeVar2.zzq(intValue, zza);
                }
            }
        }
        return zzaeVar2;
    }

    private static zzap zzc(zzae zzaeVar, zzg zzgVar, List list, boolean z) {
        zzap zzapVar;
        zzh.zzi("reduce", 1, list);
        zzh.zzj("reduce", 2, list);
        zzap zzb = zzgVar.zzb((zzap) list.get(0));
        if (zzb instanceof zzai) {
            if (list.size() == 2) {
                zzapVar = zzgVar.zzb((zzap) list.get(1));
                if (zzapVar instanceof zzag) {
                    throw new IllegalArgumentException("Failed to parse initial value");
                }
            } else if (zzaeVar.zzc() == 0) {
                throw new IllegalStateException("Empty array with no initial value error");
            } else {
                zzapVar = null;
            }
            zzai zzaiVar = (zzai) zzb;
            int zzc = zzaeVar.zzc();
            int i = z ? 0 : zzc - 1;
            int i2 = -1;
            int i3 = z ? zzc - 1 : 0;
            if (true == z) {
                i2 = 1;
            }
            int i4 = i3;
            int i5 = i;
            int i6 = i2;
            zzap zzapVar2 = zzapVar;
            if (zzapVar == null) {
                i5 = i + i2;
                i4 = i3;
                i6 = i2;
                zzapVar2 = zzaeVar.zze(i);
            }
            while ((i4 - i5) * i6 >= 0) {
                int i7 = i4;
                int i8 = i5;
                int i9 = i6;
                zzap zzapVar3 = zzapVar2;
                if (zzaeVar.zzs(i5)) {
                    zzap zza = zzaiVar.zza(zzgVar, Arrays.asList(zzapVar2, zzaeVar.zze(i5), new zzah(Double.valueOf(i5)), zzaeVar));
                    if (zza instanceof zzag) {
                        throw new IllegalStateException("Reduce operation failed");
                    }
                    int i10 = i6;
                    i5 += i10;
                    i4 = i4;
                    i6 = i10;
                    zzapVar2 = zza;
                } else {
                    i5 = i8 + i9;
                    i4 = i7;
                    i6 = i9;
                    zzapVar2 = zzapVar3;
                }
            }
            return zzapVar2;
        }
        throw new IllegalArgumentException("Callback should be a method");
    }
}
