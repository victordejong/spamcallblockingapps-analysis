package com.google.android.gms.internal.mlkit_language_id;

import java.io.IOException;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_language_id/zzgr.class */
public final class zzgr {
    private static final Class<?> zza = zzd();
    private static final zzhh<?, ?> zzb = zza(false);
    private static final zzhh<?, ?> zzc = zza(true);
    private static final zzhh<?, ?> zzd = new zzhj();

    public static int zza(int i, Object obj, zzgp zzgpVar) {
        return obj instanceof zzfe ? zzea.zza(i, (zzfe) obj) : zzea.zzb(i, (zzfz) obj, zzgpVar);
    }

    public static int zza(int i, List<?> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        int zze = zzea.zze(i) * size;
        int i4 = zze;
        if (!(list instanceof zzfg)) {
            while (true) {
                i2 = i4;
                if (i3 >= size) {
                    break;
                }
                Object obj = list.get(i3);
                i4 = (obj instanceof zzdn ? zzea.zzb((zzdn) obj) : zzea.zzb((String) obj)) + i4;
                i3++;
            }
        } else {
            zzfg zzfgVar = (zzfg) list;
            int i5 = zze;
            int i6 = 0;
            while (true) {
                i2 = i5;
                if (i6 >= size) {
                    break;
                }
                Object zza2 = zzfgVar.zza(i6);
                i5 = (zza2 instanceof zzdn ? zzea.zzb((zzdn) zza2) : zzea.zzb((String) zza2)) + i5;
                i6++;
            }
        }
        return i2;
    }

    public static int zza(int i, List<?> list, zzgp zzgpVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zze = zzea.zze(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            zze = (obj instanceof zzfe ? zzea.zza((zzfe) obj) : zzea.zza((zzfz) obj, zzgpVar)) + zze;
        }
        return zze;
    }

    public static int zza(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return (zzea.zze(i) * list.size()) + zza(list);
    }

    public static int zza(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzfn)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzea.zzd(list.get(i4).longValue());
                i4++;
            }
        } else {
            zzfn zzfnVar = (zzfn) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzea.zzd(zzfnVar.zza(i2));
                i2++;
            }
        }
        return i;
    }

    public static zzhh<?, ?> zza() {
        return zzb;
    }

    private static zzhh<?, ?> zza(boolean z) {
        try {
            Class<?> zze = zze();
            if (zze != null) {
                return (zzhh) zze.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
            }
            return null;
        } catch (Throwable th) {
            return null;
        }
    }

    public static void zza(int i, List<String> list, zzib zzibVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzibVar.zza(i, list);
    }

    public static void zza(int i, List<?> list, zzib zzibVar, zzgp zzgpVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzibVar.zza(i, list, zzgpVar);
    }

    public static void zza(int i, List<Double> list, zzib zzibVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzibVar.zzg(i, list, z);
    }

    public static <T, FT extends zzel<FT>> void zza(zzee<FT> zzeeVar, T t, T t2) {
        zzej<FT> zza2 = zzeeVar.zza(t2);
        if (!zza2.zza.isEmpty()) {
            zzeeVar.zzb(t).zza(zza2);
        }
    }

    public static <T> void zza(zzfs zzfsVar, T t, T t2, long j) {
        zzhn.zza(t, j, zzfsVar.zza(zzhn.zzf(t, j), zzhn.zzf(t2, j)));
    }

    public static <T, UT, UB> void zza(zzhh<UT, UB> zzhhVar, T t, T t2) {
        zzhhVar.zza(t, zzhhVar.zzb(zzhhVar.zza(t), zzhhVar.zza(t2)));
    }

    public static void zza(Class<?> cls) {
        Class<?> cls2;
        if (zzeo.class.isAssignableFrom(cls) || (cls2 = zza) == null || cls2.isAssignableFrom(cls)) {
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

    public static int zzb(int i, List<zzdn> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zze = zzea.zze(i) * size;
        for (int i2 = 0; i2 < list.size(); i2++) {
            zze += zzea.zzb(list.get(i2));
        }
        return zze;
    }

    public static int zzb(int i, List<zzfz> list, zzgp zzgpVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += zzea.zzc(i, list.get(i3), zzgpVar);
        }
        return i2;
    }

    public static int zzb(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzea.zze(i) * size) + zzb(list);
    }

    public static int zzb(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzfn)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzea.zze(list.get(i4).longValue());
                i4++;
            }
        } else {
            zzfn zzfnVar = (zzfn) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzea.zze(zzfnVar.zza(i2));
                i2++;
            }
        }
        return i;
    }

    public static zzhh<?, ?> zzb() {
        return zzc;
    }

    public static void zzb(int i, List<zzdn> list, zzib zzibVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzibVar.zzb(i, list);
    }

    public static void zzb(int i, List<?> list, zzib zzibVar, zzgp zzgpVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzibVar.zzb(i, list, zzgpVar);
    }

    public static void zzb(int i, List<Float> list, zzib zzibVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzibVar.zzf(i, list, z);
    }

    public static int zzc(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzea.zze(i) * size) + zzc(list);
    }

    public static int zzc(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzfn)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzea.zzf(list.get(i4).longValue());
                i4++;
            }
        } else {
            zzfn zzfnVar = (zzfn) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzea.zzf(zzfnVar.zza(i2));
                i2++;
            }
        }
        return i;
    }

    public static zzhh<?, ?> zzc() {
        return zzd;
    }

    public static void zzc(int i, List<Long> list, zzib zzibVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzibVar.zzc(i, list, z);
    }

    public static int zzd(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzea.zze(i) * size) + zzd(list);
    }

    public static int zzd(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzer)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzea.zzk(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzer zzerVar = (zzer) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzea.zzk(zzerVar.zza(i2));
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

    public static void zzd(int i, List<Long> list, zzib zzibVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzibVar.zzd(i, list, z);
    }

    public static int zze(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzea.zze(i) * size) + zze(list);
    }

    public static int zze(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzer)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzea.zzf(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzer zzerVar = (zzer) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzea.zzf(zzerVar.zza(i2));
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

    public static void zze(int i, List<Long> list, zzib zzibVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzibVar.zzn(i, list, z);
    }

    public static int zzf(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzea.zze(i) * size) + zzf(list);
    }

    public static int zzf(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzer)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzea.zzg(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzer zzerVar = (zzer) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzea.zzg(zzerVar.zza(i2));
                i2++;
            }
        }
        return i;
    }

    public static void zzf(int i, List<Long> list, zzib zzibVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzibVar.zze(i, list, z);
    }

    public static int zzg(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzea.zze(i) * size) + zzg(list);
    }

    public static int zzg(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzer)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzea.zzh(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzer zzerVar = (zzer) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzea.zzh(zzerVar.zza(i2));
                i2++;
            }
        }
        return i;
    }

    public static void zzg(int i, List<Long> list, zzib zzibVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzibVar.zzl(i, list, z);
    }

    public static int zzh(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzea.zzi(i, 0) * size;
    }

    public static int zzh(List<?> list) {
        return list.size() << 2;
    }

    public static void zzh(int i, List<Integer> list, zzib zzibVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzibVar.zza(i, list, z);
    }

    public static int zzi(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzea.zzg(i, 0L) * size;
    }

    public static int zzi(List<?> list) {
        return list.size() << 3;
    }

    public static void zzi(int i, List<Integer> list, zzib zzibVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzibVar.zzj(i, list, z);
    }

    public static int zzj(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzea.zzb(i, true) * size;
    }

    public static int zzj(List<?> list) {
        return list.size();
    }

    public static void zzj(int i, List<Integer> list, zzib zzibVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzibVar.zzm(i, list, z);
    }

    public static void zzk(int i, List<Integer> list, zzib zzibVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzibVar.zzb(i, list, z);
    }

    public static void zzl(int i, List<Integer> list, zzib zzibVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzibVar.zzk(i, list, z);
    }

    public static void zzm(int i, List<Integer> list, zzib zzibVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzibVar.zzh(i, list, z);
    }

    public static void zzn(int i, List<Boolean> list, zzib zzibVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzibVar.zzi(i, list, z);
    }
}
