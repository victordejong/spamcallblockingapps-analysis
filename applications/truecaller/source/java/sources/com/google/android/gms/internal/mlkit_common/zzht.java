package com.google.android.gms.internal.mlkit_common;

import java.io.IOException;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_common/zzht.class */
public final class zzht {
    private static final Class<?> zza = zzd();
    private static final zzij<?, ?> zzb = zza(false);
    private static final zzij<?, ?> zzc = zza(true);
    private static final zzij<?, ?> zzd = new zzil();

    public static int zza(int i, Object obj, zzhr zzhrVar) {
        return obj instanceof zzgg ? zzfc.zza(i, (zzgg) obj) : zzfc.zzb(i, (zzhb) obj, zzhrVar);
    }

    public static int zza(int i, List<?> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        int zze = zzfc.zze(i) * size;
        int i4 = zze;
        if (!(list instanceof zzgi)) {
            while (true) {
                i2 = i4;
                if (i3 >= size) {
                    break;
                }
                Object obj = list.get(i3);
                i4 = (obj instanceof zzep ? zzfc.zzb((zzep) obj) : zzfc.zzb((String) obj)) + i4;
                i3++;
            }
        } else {
            zzgi zzgiVar = (zzgi) list;
            int i5 = zze;
            int i6 = 0;
            while (true) {
                i2 = i5;
                if (i6 >= size) {
                    break;
                }
                Object zza2 = zzgiVar.zza(i6);
                i5 = (zza2 instanceof zzep ? zzfc.zzb((zzep) zza2) : zzfc.zzb((String) zza2)) + i5;
                i6++;
            }
        }
        return i2;
    }

    public static int zza(int i, List<?> list, zzhr zzhrVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zze = zzfc.zze(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            zze = (obj instanceof zzgg ? zzfc.zza((zzgg) obj) : zzfc.zza((zzhb) obj, zzhrVar)) + zze;
        }
        return zze;
    }

    public static int zza(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return (zzfc.zze(i) * list.size()) + zza(list);
    }

    public static int zza(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzgp)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzfc.zzd(list.get(i4).longValue());
                i4++;
            }
        } else {
            zzgp zzgpVar = (zzgp) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzfc.zzd(zzgpVar.zza(i2));
                i2++;
            }
        }
        return i;
    }

    public static zzij<?, ?> zza() {
        return zzb;
    }

    private static zzij<?, ?> zza(boolean z) {
        try {
            Class<?> zze = zze();
            if (zze != null) {
                return (zzij) zze.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
            }
            return null;
        } catch (Throwable th) {
            return null;
        }
    }

    public static void zza(int i, List<String> list, zzjd zzjdVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjdVar.zza(i, list);
    }

    public static void zza(int i, List<?> list, zzjd zzjdVar, zzhr zzhrVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjdVar.zza(i, list, zzhrVar);
    }

    public static void zza(int i, List<Double> list, zzjd zzjdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjdVar.zzg(i, list, z);
    }

    public static <T, FT extends zzfn<FT>> void zza(zzfg<FT> zzfgVar, T t, T t2) {
        zzfl<FT> zza2 = zzfgVar.zza(t2);
        if (!zza2.zza.isEmpty()) {
            zzfgVar.zzb(t).zza(zza2);
        }
    }

    public static <T> void zza(zzgu zzguVar, T t, T t2, long j) {
        zzip.zza(t, j, zzguVar.zza(zzip.zzf(t, j), zzip.zzf(t2, j)));
    }

    public static <T, UT, UB> void zza(zzij<UT, UB> zzijVar, T t, T t2) {
        zzijVar.zza(t, zzijVar.zzb(zzijVar.zza(t), zzijVar.zza(t2)));
    }

    public static void zza(Class<?> cls) {
        Class<?> cls2;
        if (zzfq.class.isAssignableFrom(cls) || (cls2 = zza) == null || cls2.isAssignableFrom(cls)) {
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

    public static int zzb(int i, List<zzep> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zze = zzfc.zze(i) * size;
        for (int i2 = 0; i2 < list.size(); i2++) {
            zze += zzfc.zzb(list.get(i2));
        }
        return zze;
    }

    public static int zzb(int i, List<zzhb> list, zzhr zzhrVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += zzfc.zzc(i, list.get(i3), zzhrVar);
        }
        return i2;
    }

    public static int zzb(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzfc.zze(i) * size) + zzb(list);
    }

    public static int zzb(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzgp)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzfc.zze(list.get(i4).longValue());
                i4++;
            }
        } else {
            zzgp zzgpVar = (zzgp) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzfc.zze(zzgpVar.zza(i2));
                i2++;
            }
        }
        return i;
    }

    public static zzij<?, ?> zzb() {
        return zzc;
    }

    public static void zzb(int i, List<zzep> list, zzjd zzjdVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjdVar.zzb(i, list);
    }

    public static void zzb(int i, List<?> list, zzjd zzjdVar, zzhr zzhrVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjdVar.zzb(i, list, zzhrVar);
    }

    public static void zzb(int i, List<Float> list, zzjd zzjdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjdVar.zzf(i, list, z);
    }

    public static int zzc(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzfc.zze(i) * size) + zzc(list);
    }

    public static int zzc(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzgp)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzfc.zzf(list.get(i4).longValue());
                i4++;
            }
        } else {
            zzgp zzgpVar = (zzgp) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzfc.zzf(zzgpVar.zza(i2));
                i2++;
            }
        }
        return i;
    }

    public static zzij<?, ?> zzc() {
        return zzd;
    }

    public static void zzc(int i, List<Long> list, zzjd zzjdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjdVar.zzc(i, list, z);
    }

    public static int zzd(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzfc.zze(i) * size) + zzd(list);
    }

    public static int zzd(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzft)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzfc.zzk(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzft zzftVar = (zzft) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzfc.zzk(zzftVar.zza(i2));
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

    public static void zzd(int i, List<Long> list, zzjd zzjdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjdVar.zzd(i, list, z);
    }

    public static int zze(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzfc.zze(i) * size) + zze(list);
    }

    public static int zze(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzft)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzfc.zzf(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzft zzftVar = (zzft) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzfc.zzf(zzftVar.zza(i2));
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

    public static void zze(int i, List<Long> list, zzjd zzjdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjdVar.zzn(i, list, z);
    }

    public static int zzf(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzfc.zze(i) * size) + zzf(list);
    }

    public static int zzf(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzft)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzfc.zzg(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzft zzftVar = (zzft) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzfc.zzg(zzftVar.zza(i2));
                i2++;
            }
        }
        return i;
    }

    public static void zzf(int i, List<Long> list, zzjd zzjdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjdVar.zze(i, list, z);
    }

    public static int zzg(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzfc.zze(i) * size) + zzg(list);
    }

    public static int zzg(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzft)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzfc.zzh(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzft zzftVar = (zzft) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzfc.zzh(zzftVar.zza(i2));
                i2++;
            }
        }
        return i;
    }

    public static void zzg(int i, List<Long> list, zzjd zzjdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjdVar.zzl(i, list, z);
    }

    public static int zzh(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzfc.zzi(i, 0) * size;
    }

    public static int zzh(List<?> list) {
        return list.size() << 2;
    }

    public static void zzh(int i, List<Integer> list, zzjd zzjdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjdVar.zza(i, list, z);
    }

    public static int zzi(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzfc.zzg(i, 0L) * size;
    }

    public static int zzi(List<?> list) {
        return list.size() << 3;
    }

    public static void zzi(int i, List<Integer> list, zzjd zzjdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjdVar.zzj(i, list, z);
    }

    public static int zzj(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzfc.zzb(i, true) * size;
    }

    public static int zzj(List<?> list) {
        return list.size();
    }

    public static void zzj(int i, List<Integer> list, zzjd zzjdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjdVar.zzm(i, list, z);
    }

    public static void zzk(int i, List<Integer> list, zzjd zzjdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjdVar.zzb(i, list, z);
    }

    public static void zzl(int i, List<Integer> list, zzjd zzjdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjdVar.zzk(i, list, z);
    }

    public static void zzm(int i, List<Integer> list, zzjd zzjdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjdVar.zzh(i, list, z);
    }

    public static void zzn(int i, List<Boolean> list, zzjd zzjdVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjdVar.zzi(i, list, z);
    }
}
