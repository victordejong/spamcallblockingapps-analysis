package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzjk.class */
public final class zzjk {
    private static final Class<?> zza;
    private static final zzjw<?, ?> zzb;
    private static final zzjw<?, ?> zzc;
    private static final zzjw<?, ?> zzd;

    static {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable th) {
            cls = null;
        }
        zza = cls;
        zzb = zzab(false);
        zzc = zzab(true);
        zzd = new zzjy();
    }

    public static zzjw<?, ?> zzA() {
        return zzb;
    }

    public static zzjw<?, ?> zzB() {
        return zzc;
    }

    public static zzjw<?, ?> zzC() {
        return zzd;
    }

    public static boolean zzD(Object obj, Object obj2) {
        boolean z = false;
        if (obj != obj2) {
            if (obj != null) {
                if (!obj.equals(obj2)) {
                    return false;
                }
            }
            return z;
        }
        z = true;
        return z;
    }

    public static <T, FT extends zzhi<FT>> void zzE(zzhf<FT> zzhfVar, T t, T t2) {
        zzhfVar.zzb(t2);
        throw null;
    }

    public static <T, UT, UB> void zzF(zzjw<UT, UB> zzjwVar, T t, T t2) {
        zzjwVar.zzc(t, zzjwVar.zzf(zzjwVar.zzd(t), zzjwVar.zzd(t2)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <UT, UB> UB zzG(int i, List<Integer> list, zzhw zzhwVar, UB ub, zzjw<UT, UB> zzjwVar) {
        UB ub2;
        if (zzhwVar == null) {
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
                if (!zzhwVar.zza(intValue)) {
                    ub = zzH(i, intValue, ub, zzjwVar);
                    it.remove();
                }
            }
        } else {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue2 = list.get(i3).intValue();
                if (zzhwVar.zza(intValue2)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue2));
                    }
                    i2++;
                } else {
                    ub = zzH(i, intValue2, ub, zzjwVar);
                }
            }
            if (i2 != size) {
                list.subList(i2, size).clear();
                return ub;
            }
            ub2 = ub;
        }
        return ub2;
    }

    static <UT, UB> UB zzH(int i, int i2, UB ub, zzjw<UT, UB> zzjwVar) {
        UB ub2 = ub;
        if (ub == null) {
            ub2 = zzjwVar.zzb();
        }
        zzjwVar.zza(ub2, i, i2);
        return ub2;
    }

    public static <T> void zzI(zzis zzisVar, T t, T t2, long j) {
        zzkh.zzo(t, j, zzis.zzb(zzkh.zzn(t, j), zzkh.zzn(t2, j)));
    }

    public static void zzJ(int i, List<Double> list, zzha zzhaVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhaVar.zzB(i, list, z);
    }

    public static void zzK(int i, List<Float> list, zzha zzhaVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhaVar.zzA(i, list, z);
    }

    public static void zzL(int i, List<Long> list, zzha zzhaVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhaVar.zzx(i, list, z);
    }

    public static void zzM(int i, List<Long> list, zzha zzhaVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhaVar.zzy(i, list, z);
    }

    public static void zzN(int i, List<Long> list, zzha zzhaVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhaVar.zzK(i, list, z);
    }

    public static void zzO(int i, List<Long> list, zzha zzhaVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhaVar.zzz(i, list, z);
    }

    public static void zzP(int i, List<Long> list, zzha zzhaVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhaVar.zzI(i, list, z);
    }

    public static void zzQ(int i, List<Integer> list, zzha zzhaVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhaVar.zzv(i, list, z);
    }

    public static void zzR(int i, List<Integer> list, zzha zzhaVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhaVar.zzG(i, list, z);
    }

    public static void zzS(int i, List<Integer> list, zzha zzhaVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhaVar.zzJ(i, list, z);
    }

    public static void zzT(int i, List<Integer> list, zzha zzhaVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhaVar.zzw(i, list, z);
    }

    public static void zzU(int i, List<Integer> list, zzha zzhaVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhaVar.zzH(i, list, z);
    }

    public static void zzV(int i, List<Integer> list, zzha zzhaVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhaVar.zzC(i, list, z);
    }

    public static void zzW(int i, List<Boolean> list, zzha zzhaVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhaVar.zzD(i, list, z);
    }

    public static void zzX(int i, List<String> list, zzha zzhaVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhaVar.zzE(i, list);
    }

    public static void zzY(int i, List<zzgs> list, zzha zzhaVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhaVar.zzF(i, list);
    }

    public static void zzZ(int i, List<?> list, zzha zzhaVar, zzji zzjiVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzhaVar.zzr(i, list.get(i2), zzjiVar);
        }
    }

    public static void zza(Class<?> cls) {
        Class<?> cls2;
        if (zzhs.class.isAssignableFrom(cls) || (cls2 = zza) == null || cls2.isAssignableFrom(cls)) {
            return;
        }
        throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
    }

    public static void zzaa(int i, List<?> list, zzha zzhaVar, zzji zzjiVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzhaVar.zzs(i, list.get(i2), zzjiVar);
        }
    }

    private static zzjw<?, ?> zzab(boolean z) {
        Class<?> cls;
        try {
            cls = Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable th) {
            cls = null;
        }
        if (cls == null) {
            return null;
        }
        try {
            return (zzjw) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable th2) {
            return null;
        }
    }

    public static int zzb(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzim)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzgz.zzx(list.get(i4).longValue());
                i4++;
            }
        } else {
            zzim zzimVar = (zzim) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzgz.zzx(zzimVar.zzc(i2));
                i2++;
            }
        }
        return i;
    }

    public static int zzc(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return zzb(list) + (list.size() * zzgz.zzu(i));
    }

    public static int zzd(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzim)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzgz.zzx(list.get(i4).longValue());
                i4++;
            }
        } else {
            zzim zzimVar = (zzim) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzgz.zzx(zzimVar.zzc(i2));
                i2++;
            }
        }
        return i;
    }

    public static int zze(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzd(list) + (size * zzgz.zzu(i));
    }

    public static int zzf(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzim)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                long longValue = list.get(i4).longValue();
                i3 += zzgz.zzx((longValue >> 63) ^ (longValue + longValue));
                i4++;
            }
        } else {
            zzim zzimVar = (zzim) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                long zzc2 = zzimVar.zzc(i2);
                i5 += zzgz.zzx((zzc2 >> 63) ^ (zzc2 + zzc2));
                i2++;
            }
        }
        return i;
    }

    public static int zzg(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzf(list) + (size * zzgz.zzu(i));
    }

    public static int zzh(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzht)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzgz.zzv(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzht zzhtVar = (zzht) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzgz.zzv(zzhtVar.zzg(i2));
                i2++;
            }
        }
        return i;
    }

    public static int zzi(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzh(list) + (size * zzgz.zzu(i));
    }

    public static int zzj(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzht)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzgz.zzv(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzht zzhtVar = (zzht) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzgz.zzv(zzhtVar.zzg(i2));
                i2++;
            }
        }
        return i;
    }

    public static int zzk(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzj(list) + (size * zzgz.zzu(i));
    }

    public static int zzl(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzht)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzgz.zzw(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzht zzhtVar = (zzht) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzgz.zzw(zzhtVar.zzg(i2));
                i2++;
            }
        }
        return i;
    }

    public static int zzm(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzl(list) + (size * zzgz.zzu(i));
    }

    public static int zzn(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzht)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                int intValue = list.get(i4).intValue();
                i3 += zzgz.zzw((intValue >> 31) ^ (intValue + intValue));
                i4++;
            }
        } else {
            zzht zzhtVar = (zzht) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                int zzg = zzhtVar.zzg(i2);
                i5 += zzgz.zzw((zzg >> 31) ^ (zzg + zzg));
                i2++;
            }
        }
        return i;
    }

    public static int zzo(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzn(list) + (size * zzgz.zzu(i));
    }

    public static int zzp(List<?> list) {
        return list.size() * 4;
    }

    public static int zzq(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzgz.zzw(i << 3) + 4);
    }

    public static int zzr(List<?> list) {
        return list.size() * 8;
    }

    public static int zzs(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzgz.zzw(i << 3) + 8);
    }

    public static int zzt(List<?> list) {
        return list.size();
    }

    public static int zzu(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * (zzgz.zzw(i << 3) + 1);
    }

    public static int zzv(int i, List<?> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        int zzu = zzgz.zzu(i) * size;
        int i4 = zzu;
        if (!(list instanceof zzih)) {
            while (true) {
                i2 = i4;
                if (i3 >= size) {
                    break;
                }
                Object obj = list.get(i3);
                i4 += obj instanceof zzgs ? zzgz.zzA((zzgs) obj) : zzgz.zzy((String) obj);
                i3++;
            }
        } else {
            zzih zzihVar = (zzih) list;
            int i5 = zzu;
            int i6 = 0;
            while (true) {
                i2 = i5;
                if (i6 >= size) {
                    break;
                }
                Object zzg = zzihVar.zzg(i6);
                i5 += zzg instanceof zzgs ? zzgz.zzA((zzgs) zzg) : zzgz.zzy((String) zzg);
                i6++;
            }
        }
        return i2;
    }

    public static int zzw(int i, Object obj, zzji zzjiVar) {
        if (obj instanceof zzif) {
            int zzw = zzgz.zzw(i << 3);
            int zza2 = ((zzif) obj).zza();
            return zzw + zzgz.zzw(zza2) + zza2;
        }
        return zzgz.zzw(i << 3) + zzgz.zzB((zzix) obj, zzjiVar);
    }

    public static int zzx(int i, List<?> list, zzji zzjiVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzu = zzgz.zzu(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            zzu += obj instanceof zzif ? zzgz.zzz((zzif) obj) : zzgz.zzB((zzix) obj, zzjiVar);
        }
        return zzu;
    }

    public static int zzy(int i, List<zzgs> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzu = size * zzgz.zzu(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzu += zzgz.zzA(list.get(i2));
        }
        return zzu;
    }

    public static int zzz(int i, List<zzix> list, zzji zzjiVar) {
        int size = list.size();
        if (size != 0) {
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                i2 += zzgz.zzE(i, list.get(i3), zzjiVar);
            }
            return i2;
        }
        return 0;
    }
}
