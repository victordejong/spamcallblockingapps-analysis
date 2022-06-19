package com.google.android.gms.internal.vision;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzit.class */
public final class zzit {
    private static final Class<?> zzzr = zzhv();
    private static final zzjj<?, ?> zzzs = zzn(false);
    private static final zzjj<?, ?> zzzt = zzn(true);
    private static final zzjj<?, ?> zzzu = new zzjl();

    public static <UT, UB> UB zza(int i, int i2, UB ub, zzjj<UT, UB> zzjjVar) {
        UB ub2 = ub;
        if (ub == null) {
            ub2 = zzjjVar.zzif();
        }
        zzjjVar.zza((zzjj<UT, UB>) ub2, i, i2);
        return ub2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <UT, UB> UB zza(int i, List<Integer> list, zzgv<?> zzgvVar, UB ub, zzjj<UT, UB> zzjjVar) {
        UB ub2;
        if (zzgvVar == null) {
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
                if (zzgvVar.zzg(intValue) == null) {
                    ub = zza(i, intValue, ub, zzjjVar);
                    it.remove();
                }
            }
        } else {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue2 = list.get(i3).intValue();
                if (zzgvVar.zzg(intValue2) != null) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue2));
                    }
                    i2++;
                } else {
                    ub = zza(i, intValue2, ub, zzjjVar);
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

    /* JADX WARN: Multi-variable type inference failed */
    public static <UT, UB> UB zza(int i, List<Integer> list, zzgy zzgyVar, UB ub, zzjj<UT, UB> zzjjVar) {
        UB ub2;
        if (zzgyVar == null) {
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
                if (!zzgyVar.zzf(intValue)) {
                    ub = zza(i, intValue, ub, zzjjVar);
                    it.remove();
                }
            }
        } else {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue2 = list.get(i3).intValue();
                if (zzgyVar.zzf(intValue2)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue2));
                    }
                    i2++;
                } else {
                    ub = zza(i, intValue2, ub, zzjjVar);
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

    public static void zza(int i, List<String> list, zzkg zzkgVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzkgVar.zza(i, list);
    }

    public static void zza(int i, List<?> list, zzkg zzkgVar, zzir zzirVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzkgVar.zza(i, list, zzirVar);
    }

    public static void zza(int i, List<Double> list, zzkg zzkgVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzkgVar.zzg(i, list, z);
    }

    public static <T, FT extends zzgk<FT>> void zza(zzgf<FT> zzgfVar, T t, T t2) {
        zzgi<FT> zze = zzgfVar.zze(t2);
        if (!zze.zztb.isEmpty()) {
            zzgfVar.zzf(t).zza(zze);
        }
    }

    public static <T> void zza(zzhv zzhvVar, T t, T t2, long j) {
        zzjp.zza(t, j, zzhvVar.zzc(zzjp.zzp(t, j), zzjp.zzp(t2, j)));
    }

    public static <T, UT, UB> void zza(zzjj<UT, UB> zzjjVar, T t, T t2) {
        zzjjVar.zzf(t, zzjjVar.zzh(zzjjVar.zzv(t), zzjjVar.zzv(t2)));
    }

    public static void zzb(int i, List<zzfh> list, zzkg zzkgVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzkgVar.zzb(i, list);
    }

    public static void zzb(int i, List<?> list, zzkg zzkgVar, zzir zzirVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzkgVar.zzb(i, list, zzirVar);
    }

    public static void zzb(int i, List<Float> list, zzkg zzkgVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzkgVar.zzf(i, list, z);
    }

    public static int zzc(int i, Object obj, zzir zzirVar) {
        return obj instanceof zzhh ? zzga.zza(i, (zzhh) obj) : zzga.zzb(i, (zzic) obj, zzirVar);
    }

    public static int zzc(int i, List<?> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        int zzba = zzga.zzba(i) * size;
        int i4 = zzba;
        if (!(list instanceof zzhj)) {
            while (true) {
                i2 = i4;
                if (i3 >= size) {
                    break;
                }
                Object obj = list.get(i3);
                i4 = (obj instanceof zzfh ? zzga.zzb((zzfh) obj) : zzga.zzy((String) obj)) + i4;
                i3++;
            }
        } else {
            zzhj zzhjVar = (zzhj) list;
            int i5 = zzba;
            int i6 = 0;
            while (true) {
                i2 = i5;
                if (i6 >= size) {
                    break;
                }
                Object raw = zzhjVar.getRaw(i6);
                i5 = (raw instanceof zzfh ? zzga.zzb((zzfh) raw) : zzga.zzy((String) raw)) + i5;
                i6++;
            }
        }
        return i2;
    }

    public static int zzc(int i, List<?> list, zzir zzirVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzba = zzga.zzba(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            zzba = (obj instanceof zzhh ? zzga.zza((zzhh) obj) : zzga.zza((zzic) obj, zzirVar)) + zzba;
        }
        return zzba;
    }

    public static void zzc(int i, List<Long> list, zzkg zzkgVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzkgVar.zzc(i, list, z);
    }

    public static int zzd(int i, List<zzfh> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzba = zzga.zzba(i) * size;
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzba += zzga.zzb(list.get(i2));
        }
        return zzba;
    }

    public static int zzd(int i, List<zzic> list, zzir zzirVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += zzga.zzc(i, list.get(i3), zzirVar);
        }
        return i2;
    }

    public static void zzd(int i, List<Long> list, zzkg zzkgVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzkgVar.zzd(i, list, z);
    }

    public static void zze(int i, List<Long> list, zzkg zzkgVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzkgVar.zzn(i, list, z);
    }

    public static boolean zze(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static void zzf(int i, List<Long> list, zzkg zzkgVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzkgVar.zze(i, list, z);
    }

    public static void zzg(int i, List<Long> list, zzkg zzkgVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzkgVar.zzl(i, list, z);
    }

    public static void zzg(Class<?> cls) {
        Class<?> cls2;
        if (zzgs.class.isAssignableFrom(cls) || (cls2 = zzzr) == null || cls2.isAssignableFrom(cls)) {
            return;
        }
        throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
    }

    public static void zzh(int i, List<Integer> list, zzkg zzkgVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzkgVar.zza(i, list, z);
    }

    public static zzjj<?, ?> zzhs() {
        return zzzs;
    }

    public static zzjj<?, ?> zzht() {
        return zzzt;
    }

    public static zzjj<?, ?> zzhu() {
        return zzzu;
    }

    private static Class<?> zzhv() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable th) {
            return null;
        }
    }

    private static Class<?> zzhw() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable th) {
            return null;
        }
    }

    public static void zzi(int i, List<Integer> list, zzkg zzkgVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzkgVar.zzj(i, list, z);
    }

    public static void zzj(int i, List<Integer> list, zzkg zzkgVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzkgVar.zzm(i, list, z);
    }

    public static void zzk(int i, List<Integer> list, zzkg zzkgVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzkgVar.zzb(i, list, z);
    }

    public static void zzl(int i, List<Integer> list, zzkg zzkgVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzkgVar.zzk(i, list, z);
    }

    public static void zzm(int i, List<Integer> list, zzkg zzkgVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzkgVar.zzh(i, list, z);
    }

    private static zzjj<?, ?> zzn(boolean z) {
        try {
            Class<?> zzhw = zzhw();
            if (zzhw != null) {
                return (zzjj) zzhw.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
            }
            return null;
        } catch (Throwable th) {
            return null;
        }
    }

    public static void zzn(int i, List<Boolean> list, zzkg zzkgVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzkgVar.zzi(i, list, z);
    }

    public static int zzo(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return (zzga.zzba(i) * list.size()) + zzq(list);
    }

    public static int zzp(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzga.zzba(i) * size) + zzr(list);
    }

    public static int zzq(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzga.zzba(i) * size) + zzs(list);
    }

    public static int zzq(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzhq)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzga.zzv(list.get(i4).longValue());
                i4++;
            }
        } else {
            zzhq zzhqVar = (zzhq) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzga.zzv(zzhqVar.getLong(i2));
                i2++;
            }
        }
        return i;
    }

    public static int zzr(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzga.zzba(i) * size) + zzt(list);
    }

    public static int zzr(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzhq)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzga.zzw(list.get(i4).longValue());
                i4++;
            }
        } else {
            zzhq zzhqVar = (zzhq) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzga.zzw(zzhqVar.getLong(i2));
                i2++;
            }
        }
        return i;
    }

    public static int zzs(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzga.zzba(i) * size) + zzu(list);
    }

    public static int zzs(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzhq)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzga.zzx(list.get(i4).longValue());
                i4++;
            }
        } else {
            zzhq zzhqVar = (zzhq) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzga.zzx(zzhqVar.getLong(i2));
                i2++;
            }
        }
        return i;
    }

    public static int zzt(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzga.zzba(i) * size) + zzv(list);
    }

    public static int zzt(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzgu)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzga.zzbg(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzgu zzguVar = (zzgu) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzga.zzbg(zzguVar.getInt(i2));
                i2++;
            }
        }
        return i;
    }

    public static int zzu(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzga.zzba(i) * size) + zzw(list);
    }

    public static int zzu(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzgu)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzga.zzbb(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzgu zzguVar = (zzgu) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzga.zzbb(zzguVar.getInt(i2));
                i2++;
            }
        }
        return i;
    }

    public static int zzv(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzga.zzo(i, 0) * size;
    }

    public static int zzv(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzgu)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzga.zzbc(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzgu zzguVar = (zzgu) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzga.zzbc(zzguVar.getInt(i2));
                i2++;
            }
        }
        return i;
    }

    public static int zzw(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzga.zzg(i, 0L) * size;
    }

    public static int zzw(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzgu)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzga.zzbd(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzgu zzguVar = (zzgu) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzga.zzbd(zzguVar.getInt(i2));
                i2++;
            }
        }
        return i;
    }

    public static int zzx(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzga.zzb(i, true) * size;
    }

    public static int zzx(List<?> list) {
        return list.size() << 2;
    }

    public static int zzy(List<?> list) {
        return list.size() << 3;
    }

    public static int zzz(List<?> list) {
        return list.size();
    }
}
