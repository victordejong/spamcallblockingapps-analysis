package com.google.android.gms.internal.firebase_remote_config;

import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzjh.class */
public final class zzjh {
    private static final Class<?> zzwo = zzip();
    private static final zzjx<?, ?> zzwp = zzg(false);
    private static final zzjx<?, ?> zzwq = zzg(true);
    private static final zzjx<?, ?> zzwr = new zzjz();

    public static <UT, UB> UB zza(int i, int i2, UB ub, zzjx<UT, UB> zzjxVar) {
        UB ub2 = ub;
        if (ub == null) {
            ub2 = zzjxVar.zziz();
        }
        zzjxVar.zza((zzjx<UT, UB>) ub2, i, i2);
        return ub2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <UT, UB> UB zza(int i, List<Integer> list, zzho zzhoVar, UB ub, zzjx<UT, UB> zzjxVar) {
        UB ub2;
        if (zzhoVar == null) {
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
                if (!zzhoVar.zzbc(intValue)) {
                    ub = zza(i, intValue, ub, zzjxVar);
                    it.remove();
                }
            }
        } else {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue2 = list.get(i3).intValue();
                if (zzhoVar.zzbc(intValue2)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue2));
                    }
                    i2++;
                } else {
                    ub = zza(i, intValue2, ub, zzjxVar);
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

    public static void zza(int i, List<String> list, zzku zzkuVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzkuVar.zza(i, list);
    }

    public static void zza(int i, List<?> list, zzku zzkuVar, zzjf zzjfVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzkuVar.zza(i, list, zzjfVar);
    }

    public static void zza(int i, List<Double> list, zzku zzkuVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzkuVar.zzg(i, list, z);
    }

    public static <T, FT extends zzhc<FT>> void zza(zzgz<FT> zzgzVar, T t, T t2) {
        zzha<FT> zzk = zzgzVar.zzk(t2);
        if (!zzk.zzqf.isEmpty()) {
            zzgzVar.zzl(t).zza(zzk);
        }
    }

    public static <T> void zza(zzij zzijVar, T t, T t2, long j) {
        zzkd.zza(t, j, zzijVar.zzd(zzkd.zzp(t, j), zzkd.zzp(t2, j)));
    }

    public static <T, UT, UB> void zza(zzjx<UT, UB> zzjxVar, T t, T t2) {
        zzjxVar.zzg(t, zzjxVar.zzi(zzjxVar.zzaa(t), zzjxVar.zzaa(t2)));
    }

    public static int zzaa(List<?> list) {
        return list.size() << 3;
    }

    public static int zzab(List<?> list) {
        return list.size();
    }

    public static void zzb(int i, List<zzfx> list, zzku zzkuVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzkuVar.zzb(i, list);
    }

    public static void zzb(int i, List<?> list, zzku zzkuVar, zzjf zzjfVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzkuVar.zzb(i, list, zzjfVar);
    }

    public static void zzb(int i, List<Float> list, zzku zzkuVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzkuVar.zzf(i, list, z);
    }

    public static int zzc(int i, Object obj, zzjf zzjfVar) {
        return obj instanceof zzhv ? zzgs.zza(i, (zzhv) obj) : zzgs.zzb(i, (zziq) obj, zzjfVar);
    }

    public static int zzc(int i, List<?> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        int zzaq = zzgs.zzaq(i) * size;
        int i4 = zzaq;
        if (!(list instanceof zzhx)) {
            while (true) {
                i2 = i4;
                if (i3 >= size) {
                    break;
                }
                Object obj = list.get(i3);
                i4 += obj instanceof zzfx ? zzgs.zzc((zzfx) obj) : zzgs.zzbl((String) obj);
                i3++;
            }
        } else {
            zzhx zzhxVar = (zzhx) list;
            int i5 = zzaq;
            int i6 = 0;
            while (true) {
                i2 = i5;
                if (i6 >= size) {
                    break;
                }
                Object zzbd = zzhxVar.zzbd(i6);
                i5 += zzbd instanceof zzfx ? zzgs.zzc((zzfx) zzbd) : zzgs.zzbl((String) zzbd);
                i6++;
            }
        }
        return i2;
    }

    public static int zzc(int i, List<?> list, zzjf zzjfVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzaq = zzgs.zzaq(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            zzaq += obj instanceof zzhv ? zzgs.zza((zzhv) obj) : zzgs.zza((zziq) obj, zzjfVar);
        }
        return zzaq;
    }

    public static void zzc(int i, List<Long> list, zzku zzkuVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzkuVar.zzc(i, list, z);
    }

    public static int zzd(int i, List<zzfx> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzaq = size * zzgs.zzaq(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzaq += zzgs.zzc(list.get(i2));
        }
        return zzaq;
    }

    public static int zzd(int i, List<zziq> list, zzjf zzjfVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += zzgs.zzc(i, list.get(i3), zzjfVar);
        }
        return i2;
    }

    public static void zzd(int i, List<Long> list, zzku zzkuVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzkuVar.zzd(i, list, z);
    }

    public static void zze(int i, List<Long> list, zzku zzkuVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzkuVar.zzn(i, list, z);
    }

    public static void zzf(int i, List<Long> list, zzku zzkuVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzkuVar.zze(i, list, z);
    }

    public static boolean zzf(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    private static zzjx<?, ?> zzg(boolean z) {
        try {
            Class<?> zziq = zziq();
            if (zziq != null) {
                return (zzjx) zziq.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
            }
            return null;
        } catch (Throwable th) {
            return null;
        }
    }

    public static void zzg(int i, List<Long> list, zzku zzkuVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzkuVar.zzl(i, list, z);
    }

    public static void zzh(int i, List<Integer> list, zzku zzkuVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzkuVar.zza(i, list, z);
    }

    public static void zzi(int i, List<Integer> list, zzku zzkuVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzkuVar.zzj(i, list, z);
    }

    public static zzjx<?, ?> zzim() {
        return zzwp;
    }

    public static zzjx<?, ?> zzin() {
        return zzwq;
    }

    public static zzjx<?, ?> zzio() {
        return zzwr;
    }

    private static Class<?> zzip() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable th) {
            return null;
        }
    }

    private static Class<?> zziq() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable th) {
            return null;
        }
    }

    public static void zzj(int i, List<Integer> list, zzku zzkuVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzkuVar.zzm(i, list, z);
    }

    public static void zzk(int i, List<Integer> list, zzku zzkuVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzkuVar.zzb(i, list, z);
    }

    public static void zzl(int i, List<Integer> list, zzku zzkuVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzkuVar.zzk(i, list, z);
    }

    public static void zzl(Class<?> cls) {
        Class<?> cls2;
        if (zzhi.class.isAssignableFrom(cls) || (cls2 = zzwo) == null || cls2.isAssignableFrom(cls)) {
            return;
        }
        throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
    }

    public static void zzm(int i, List<Integer> list, zzku zzkuVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzkuVar.zzh(i, list, z);
    }

    public static void zzn(int i, List<Boolean> list, zzku zzkuVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzkuVar.zzi(i, list, z);
    }

    public static int zzo(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return zzs(list) + (list.size() * zzgs.zzaq(i));
    }

    public static int zzp(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzt(list) + (size * zzgs.zzaq(i));
    }

    public static int zzq(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzu(list) + (size * zzgs.zzaq(i));
    }

    public static int zzr(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzv(list) + (size * zzgs.zzaq(i));
    }

    public static int zzs(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzw(list) + (size * zzgs.zzaq(i));
    }

    public static int zzs(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzie)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzgs.zzi(list.get(i4).longValue());
                i4++;
            }
        } else {
            zzie zzieVar = (zzie) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzgs.zzi(zzieVar.getLong(i2));
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
        return zzx(list) + (size * zzgs.zzaq(i));
    }

    public static int zzt(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzie)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzgs.zzj(list.get(i4).longValue());
                i4++;
            }
        } else {
            zzie zzieVar = (zzie) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzgs.zzj(zzieVar.getLong(i2));
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
        return zzy(list) + (size * zzgs.zzaq(i));
    }

    public static int zzu(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzie)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzgs.zzk(list.get(i4).longValue());
                i4++;
            }
        } else {
            zzie zzieVar = (zzie) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzgs.zzk(zzieVar.getLong(i2));
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
        return size * zzgs.zzk(i, 0);
    }

    public static int zzv(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzhk)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzgs.zzaw(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzhk zzhkVar = (zzhk) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzgs.zzaw(zzhkVar.getInt(i2));
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
        return size * zzgs.zzg(i, 0L);
    }

    public static int zzw(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzhk)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzgs.zzar(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzhk zzhkVar = (zzhk) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzgs.zzar(zzhkVar.getInt(i2));
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
        return size * zzgs.zzd(i, true);
    }

    public static int zzx(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzhk)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzgs.zzas(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzhk zzhkVar = (zzhk) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzgs.zzas(zzhkVar.getInt(i2));
                i2++;
            }
        }
        return i;
    }

    public static int zzy(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzhk)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzgs.zzat(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzhk zzhkVar = (zzhk) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzgs.zzat(zzhkVar.getInt(i2));
                i2++;
            }
        }
        return i;
    }

    public static int zzz(List<?> list) {
        return list.size() << 2;
    }
}
