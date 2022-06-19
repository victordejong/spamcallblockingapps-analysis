package com.google.android.gms.internal.mlkit_translate;

import java.io.IOException;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzmc.class */
public final class zzmc {
    private static final Class<?> zza = zzd();
    private static final zzms<?, ?> zzb = zza(false);
    private static final zzms<?, ?> zzc = zza(true);
    private static final zzms<?, ?> zzd = new zzmu();

    public static int zza(int i, Object obj, zzma zzmaVar) {
        return obj instanceof zzkt ? zzjp.zza(i, (zzkt) obj) : zzjp.zzb(i, (zzlk) obj, zzmaVar);
    }

    public static int zza(int i, List<?> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        int zze = zzjp.zze(i) * size;
        int i4 = zze;
        if (!(list instanceof zzkv)) {
            while (true) {
                i2 = i4;
                if (i3 >= size) {
                    break;
                }
                Object obj = list.get(i3);
                i4 = (obj instanceof zziy ? zzjp.zzb((zziy) obj) : zzjp.zzb((String) obj)) + i4;
                i3++;
            }
        } else {
            zzkv zzkvVar = (zzkv) list;
            int i5 = zze;
            int i6 = 0;
            while (true) {
                i2 = i5;
                if (i6 >= size) {
                    break;
                }
                Object zza2 = zzkvVar.zza(i6);
                i5 = (zza2 instanceof zziy ? zzjp.zzb((zziy) zza2) : zzjp.zzb((String) zza2)) + i5;
                i6++;
            }
        }
        return i2;
    }

    public static int zza(int i, List<?> list, zzma zzmaVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zze = zzjp.zze(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            zze = (obj instanceof zzkt ? zzjp.zza((zzkt) obj) : zzjp.zza((zzlk) obj, zzmaVar)) + zze;
        }
        return zze;
    }

    public static int zza(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return (zzjp.zze(i) * list.size()) + zza(list);
    }

    public static int zza(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzky)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzjp.zzd(list.get(i4).longValue());
                i4++;
            }
        } else {
            zzky zzkyVar = (zzky) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzjp.zzd(zzkyVar.zza(i2));
                i2++;
            }
        }
        return i;
    }

    public static zzms<?, ?> zza() {
        return zzb;
    }

    private static zzms<?, ?> zza(boolean z) {
        try {
            Class<?> zze = zze();
            if (zze != null) {
                return (zzms) zze.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
            }
            return null;
        } catch (Throwable th) {
            return null;
        }
    }

    public static void zza(int i, List<String> list, zznm zznmVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznmVar.zza(i, list);
    }

    public static void zza(int i, List<?> list, zznm zznmVar, zzma zzmaVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznmVar.zza(i, list, zzmaVar);
    }

    public static void zza(int i, List<Double> list, zznm zznmVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznmVar.zzg(i, list, z);
    }

    public static <T, FT extends zzjw<FT>> void zza(zzjt<FT> zzjtVar, T t, T t2) {
        zzju<FT> zza2 = zzjtVar.zza(t2);
        if (!zza2.zza.isEmpty()) {
            zzjtVar.zzb(t).zza(zza2);
        }
    }

    public static <T> void zza(zzlh zzlhVar, T t, T t2, long j) {
        zzmy.zza(t, j, zzlhVar.zza(zzmy.zzf(t, j), zzmy.zzf(t2, j)));
    }

    public static <T, UT, UB> void zza(zzms<UT, UB> zzmsVar, T t, T t2) {
        zzmsVar.zza(t, zzmsVar.zzb(zzmsVar.zza(t), zzmsVar.zza(t2)));
    }

    public static void zza(Class<?> cls) {
        Class<?> cls2;
        if (zzkc.class.isAssignableFrom(cls) || (cls2 = zza) == null || cls2.isAssignableFrom(cls)) {
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

    public static int zzb(int i, List<zziy> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zze = zzjp.zze(i) * size;
        for (int i2 = 0; i2 < list.size(); i2++) {
            zze += zzjp.zzb(list.get(i2));
        }
        return zze;
    }

    public static int zzb(int i, List<zzlk> list, zzma zzmaVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += zzjp.zzc(i, list.get(i3), zzmaVar);
        }
        return i2;
    }

    public static int zzb(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzjp.zze(i) * size) + zzb(list);
    }

    public static int zzb(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzky)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzjp.zze(list.get(i4).longValue());
                i4++;
            }
        } else {
            zzky zzkyVar = (zzky) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzjp.zze(zzkyVar.zza(i2));
                i2++;
            }
        }
        return i;
    }

    public static zzms<?, ?> zzb() {
        return zzc;
    }

    public static void zzb(int i, List<zziy> list, zznm zznmVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznmVar.zzb(i, list);
    }

    public static void zzb(int i, List<?> list, zznm zznmVar, zzma zzmaVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznmVar.zzb(i, list, zzmaVar);
    }

    public static void zzb(int i, List<Float> list, zznm zznmVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznmVar.zzf(i, list, z);
    }

    public static int zzc(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzjp.zze(i) * size) + zzc(list);
    }

    public static int zzc(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzky)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzjp.zzf(list.get(i4).longValue());
                i4++;
            }
        } else {
            zzky zzkyVar = (zzky) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzjp.zzf(zzkyVar.zza(i2));
                i2++;
            }
        }
        return i;
    }

    public static zzms<?, ?> zzc() {
        return zzd;
    }

    public static void zzc(int i, List<Long> list, zznm zznmVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznmVar.zzc(i, list, z);
    }

    public static int zzd(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzjp.zze(i) * size) + zzd(list);
    }

    public static int zzd(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzkd)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzjp.zzk(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzkd zzkdVar = (zzkd) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzjp.zzk(zzkdVar.zzb(i2));
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

    public static void zzd(int i, List<Long> list, zznm zznmVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznmVar.zzd(i, list, z);
    }

    public static int zze(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzjp.zze(i) * size) + zze(list);
    }

    public static int zze(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzkd)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzjp.zzf(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzkd zzkdVar = (zzkd) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzjp.zzf(zzkdVar.zzb(i2));
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

    public static void zze(int i, List<Long> list, zznm zznmVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznmVar.zzn(i, list, z);
    }

    public static int zzf(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzjp.zze(i) * size) + zzf(list);
    }

    public static int zzf(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzkd)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzjp.zzg(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzkd zzkdVar = (zzkd) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzjp.zzg(zzkdVar.zzb(i2));
                i2++;
            }
        }
        return i;
    }

    public static void zzf(int i, List<Long> list, zznm zznmVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznmVar.zze(i, list, z);
    }

    public static int zzg(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzjp.zze(i) * size) + zzg(list);
    }

    public static int zzg(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzkd)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzjp.zzh(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzkd zzkdVar = (zzkd) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzjp.zzh(zzkdVar.zzb(i2));
                i2++;
            }
        }
        return i;
    }

    public static void zzg(int i, List<Long> list, zznm zznmVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznmVar.zzl(i, list, z);
    }

    public static int zzh(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzjp.zzi(i, 0) * size;
    }

    public static int zzh(List<?> list) {
        return list.size() << 2;
    }

    public static void zzh(int i, List<Integer> list, zznm zznmVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznmVar.zza(i, list, z);
    }

    public static int zzi(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzjp.zzg(i, 0L) * size;
    }

    public static int zzi(List<?> list) {
        return list.size() << 3;
    }

    public static void zzi(int i, List<Integer> list, zznm zznmVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznmVar.zzj(i, list, z);
    }

    public static int zzj(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzjp.zzb(i, true) * size;
    }

    public static int zzj(List<?> list) {
        return list.size();
    }

    public static void zzj(int i, List<Integer> list, zznm zznmVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznmVar.zzm(i, list, z);
    }

    public static void zzk(int i, List<Integer> list, zznm zznmVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznmVar.zzb(i, list, z);
    }

    public static void zzl(int i, List<Integer> list, zznm zznmVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznmVar.zzk(i, list, z);
    }

    public static void zzm(int i, List<Integer> list, zznm zznmVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznmVar.zzh(i, list, z);
    }

    public static void zzn(int i, List<Boolean> list, zznm zznmVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zznmVar.zzi(i, list, z);
    }
}
