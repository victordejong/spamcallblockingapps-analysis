package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzhf.class */
public final class zzhf {
    private static final Class<?> zza = zzd();
    private static final zzhv<?, ?> zzb = zza(false);
    private static final zzhv<?, ?> zzc = zza(true);
    private static final zzhv<?, ?> zzd = new zzhx();

    public static int zza(int i, Object obj, zzhd zzhdVar) {
        return obj instanceof zzft ? zzen.zza(i, (zzft) obj) : zzen.zzb(i, (zzgo) obj, zzhdVar);
    }

    public static int zza(int i, List<?> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        int zze = zzen.zze(i) * size;
        int i4 = zze;
        if (!(list instanceof zzfv)) {
            while (true) {
                i2 = i4;
                if (i3 >= size) {
                    break;
                }
                Object obj = list.get(i3);
                i4 += obj instanceof zzdu ? zzen.zzb((zzdu) obj) : zzen.zzb((String) obj);
                i3++;
            }
        } else {
            zzfv zzfvVar = (zzfv) list;
            int i5 = zze;
            int i6 = 0;
            while (true) {
                i2 = i5;
                if (i6 >= size) {
                    break;
                }
                Object zzb2 = zzfvVar.zzb(i6);
                i5 += zzb2 instanceof zzdu ? zzen.zzb((zzdu) zzb2) : zzen.zzb((String) zzb2);
                i6++;
            }
        }
        return i2;
    }

    public static int zza(int i, List<?> list, zzhd zzhdVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zze = zzen.zze(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            zze += obj instanceof zzft ? zzen.zza((zzft) obj) : zzen.zza((zzgo) obj, zzhdVar);
        }
        return zze;
    }

    public static int zza(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return zza(list) + (list.size() * zzen.zze(i));
    }

    public static int zza(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzgc)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzen.zzd(list.get(i4).longValue());
                i4++;
            }
        } else {
            zzgc zzgcVar = (zzgc) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzen.zzd(zzgcVar.zzb(i2));
                i2++;
            }
        }
        return i;
    }

    public static zzhv<?, ?> zza() {
        return zzb;
    }

    private static zzhv<?, ?> zza(boolean z) {
        try {
            Class<?> zze = zze();
            if (zze != null) {
                return (zzhv) zze.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
            }
            return null;
        } catch (Throwable th) {
            return null;
        }
    }

    public static <UT, UB> UB zza(int i, int i2, UB ub, zzhv<UT, UB> zzhvVar) {
        UB ub2 = ub;
        if (ub == null) {
            ub2 = zzhvVar.zza();
        }
        zzhvVar.zza((zzhv<UT, UB>) ub2, i, i2);
        return ub2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <UT, UB> UB zza(int i, List<Integer> list, zzfk zzfkVar, UB ub, zzhv<UT, UB> zzhvVar) {
        UB ub2;
        if (zzfkVar == null) {
            return ub;
        }
        if (!(list instanceof RandomAccess)) {
            Iterator<Integer> it = list.iterator();
            while (true) {
                ub2 = ub;
                if (!it.hasNext()) {
                    break;
                }
                int intValue = it.next().intValue();
                if (!zzfkVar.zza(intValue)) {
                    ub = zza(i, intValue, ub, zzhvVar);
                    it.remove();
                }
            }
        } else {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue2 = list.get(i3).intValue();
                if (zzfkVar.zza(intValue2)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue2));
                    }
                    i2++;
                } else {
                    ub = zza(i, intValue2, ub, zzhvVar);
                }
            }
            ub2 = ub;
            if (i2 != size) {
                list.subList(i2, size).clear();
                ub2 = ub;
            }
        }
        return ub2;
    }

    public static void zza(int i, List<String> list, zzis zzisVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzisVar.zza(i, list);
    }

    public static void zza(int i, List<?> list, zzis zzisVar, zzhd zzhdVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzisVar.zza(i, list, zzhdVar);
    }

    public static void zza(int i, List<Double> list, zzis zzisVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzisVar.zzg(i, list, z);
    }

    public static <T, FT extends zzey<FT>> void zza(zzes<FT> zzesVar, T t, T t2) {
        zzew<FT> zza2 = zzesVar.zza(t2);
        if (!zza2.zza.isEmpty()) {
            zzesVar.zzb(t).zza(zza2);
        }
    }

    public static <T> void zza(zzgh zzghVar, T t, T t2, long j) {
        zzib.zza(t, j, zzghVar.zza(zzib.zzf(t, j), zzib.zzf(t2, j)));
    }

    public static <T, UT, UB> void zza(zzhv<UT, UB> zzhvVar, T t, T t2) {
        zzhvVar.zza(t, zzhvVar.zzc(zzhvVar.zzb(t), zzhvVar.zzb(t2)));
    }

    public static void zza(Class<?> cls) {
        Class<?> cls2;
        if (zzfd.class.isAssignableFrom(cls) || (cls2 = zza) == null || cls2.isAssignableFrom(cls)) {
            return;
        }
        throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
    }

    public static boolean zza(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static int zzb(int i, List<zzdu> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zze = size * zzen.zze(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            zze += zzen.zzb(list.get(i2));
        }
        return zze;
    }

    public static int zzb(int i, List<zzgo> list, zzhd zzhdVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += zzen.zzc(i, list.get(i3), zzhdVar);
        }
        return i2;
    }

    public static int zzb(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzb(list) + (size * zzen.zze(i));
    }

    public static int zzb(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzgc)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzen.zze(list.get(i4).longValue());
                i4++;
            }
        } else {
            zzgc zzgcVar = (zzgc) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzen.zze(zzgcVar.zzb(i2));
                i2++;
            }
        }
        return i;
    }

    public static zzhv<?, ?> zzb() {
        return zzc;
    }

    public static void zzb(int i, List<zzdu> list, zzis zzisVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzisVar.zzb(i, list);
    }

    public static void zzb(int i, List<?> list, zzis zzisVar, zzhd zzhdVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzisVar.zzb(i, list, zzhdVar);
    }

    public static void zzb(int i, List<Float> list, zzis zzisVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzisVar.zzf(i, list, z);
    }

    public static int zzc(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzc(list) + (size * zzen.zze(i));
    }

    public static int zzc(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzgc)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzen.zzf(list.get(i4).longValue());
                i4++;
            }
        } else {
            zzgc zzgcVar = (zzgc) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzen.zzf(zzgcVar.zzb(i2));
                i2++;
            }
        }
        return i;
    }

    public static zzhv<?, ?> zzc() {
        return zzd;
    }

    public static void zzc(int i, List<Long> list, zzis zzisVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzisVar.zzc(i, list, z);
    }

    public static int zzd(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzd(list) + (size * zzen.zze(i));
    }

    public static int zzd(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzfg)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzen.zzk(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzfg zzfgVar = (zzfg) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzen.zzk(zzfgVar.zzc(i2));
                i2++;
            }
        }
        return i;
    }

    private static Class<?> zzd() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable th) {
            return null;
        }
    }

    public static void zzd(int i, List<Long> list, zzis zzisVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzisVar.zzd(i, list, z);
    }

    public static int zze(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zze(list) + (size * zzen.zze(i));
    }

    public static int zze(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzfg)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzen.zzf(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzfg zzfgVar = (zzfg) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzen.zzf(zzfgVar.zzc(i2));
                i2++;
            }
        }
        return i;
    }

    private static Class<?> zze() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable th) {
            return null;
        }
    }

    public static void zze(int i, List<Long> list, zzis zzisVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzisVar.zzn(i, list, z);
    }

    public static int zzf(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzf(list) + (size * zzen.zze(i));
    }

    public static int zzf(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzfg)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzen.zzg(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzfg zzfgVar = (zzfg) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzen.zzg(zzfgVar.zzc(i2));
                i2++;
            }
        }
        return i;
    }

    public static void zzf(int i, List<Long> list, zzis zzisVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzisVar.zze(i, list, z);
    }

    public static int zzg(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzg(list) + (size * zzen.zze(i));
    }

    public static int zzg(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzfg)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzen.zzh(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzfg zzfgVar = (zzfg) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzen.zzh(zzfgVar.zzc(i2));
                i2++;
            }
        }
        return i;
    }

    public static void zzg(int i, List<Long> list, zzis zzisVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzisVar.zzl(i, list, z);
    }

    public static int zzh(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzen.zzi(i, 0);
    }

    public static int zzh(List<?> list) {
        return list.size() << 2;
    }

    public static void zzh(int i, List<Integer> list, zzis zzisVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzisVar.zza(i, list, z);
    }

    public static int zzi(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzen.zzg(i, 0L);
    }

    public static int zzi(List<?> list) {
        return list.size() << 3;
    }

    public static void zzi(int i, List<Integer> list, zzis zzisVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzisVar.zzj(i, list, z);
    }

    public static int zzj(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzen.zzb(i, true);
    }

    public static int zzj(List<?> list) {
        return list.size();
    }

    public static void zzj(int i, List<Integer> list, zzis zzisVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzisVar.zzm(i, list, z);
    }

    public static void zzk(int i, List<Integer> list, zzis zzisVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzisVar.zzb(i, list, z);
    }

    public static void zzl(int i, List<Integer> list, zzis zzisVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzisVar.zzk(i, list, z);
    }

    public static void zzm(int i, List<Integer> list, zzis zzisVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzisVar.zzh(i, list, z);
    }

    public static void zzn(int i, List<Boolean> list, zzis zzisVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzisVar.zzi(i, list, z);
    }
}
