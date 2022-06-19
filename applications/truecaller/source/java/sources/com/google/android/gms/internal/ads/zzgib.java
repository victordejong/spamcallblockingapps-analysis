package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgib.class */
public final class zzgib {
    private static final Class<?> zza;
    private static final zzgio<?, ?> zzb;
    private static final zzgio<?, ?> zzc;
    private static final zzgio<?, ?> zzd;

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
        zzd = new zzgiq();
    }

    public static zzgio<?, ?> zzA() {
        return zzb;
    }

    public static zzgio<?, ?> zzB() {
        return zzc;
    }

    public static zzgio<?, ?> zzC() {
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

    public static <T, FT extends zzgfq<FT>> void zzE(zzgfn<FT> zzgfnVar, T t, T t2) {
        zzgfnVar.zzb(t2);
        throw null;
    }

    public static <T, UT, UB> void zzF(zzgio<UT, UB> zzgioVar, T t, T t2) {
        zzgioVar.zzi(t, zzgioVar.zzo(zzgioVar.zzj(t), zzgioVar.zzj(t2)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <UT, UB> UB zzG(int i, List<Integer> list, zzgge zzggeVar, UB ub, zzgio<UT, UB> zzgioVar) {
        UB ub2;
        if (zzggeVar == null) {
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
                if (!zzggeVar.zza(intValue)) {
                    ub = zzH(i, intValue, ub, zzgioVar);
                    it.remove();
                }
            }
        } else {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue2 = list.get(i3).intValue();
                if (zzggeVar.zza(intValue2)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue2));
                    }
                    i2++;
                } else {
                    ub = zzH(i, intValue2, ub, zzgioVar);
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

    public static <UT, UB> UB zzH(int i, int i2, UB ub, zzgio<UT, UB> zzgioVar) {
        UB ub2 = ub;
        if (ub == null) {
            ub2 = zzgioVar.zzg();
        }
        zzgioVar.zzb(ub2, i, i2);
        return ub2;
    }

    public static <T> void zzI(zzghd zzghdVar, T t, T t2, long j) {
        zzgiy.zzo(t, j, zzghd.zzc(zzgiy.zzn(t, j), zzgiy.zzn(t2, j)));
    }

    public static void zzJ(int i, List<Double> list, zzgfi zzgfiVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgfiVar.zzB(i, list, z);
    }

    public static void zzK(int i, List<Float> list, zzgfi zzgfiVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgfiVar.zzA(i, list, z);
    }

    public static void zzL(int i, List<Long> list, zzgfi zzgfiVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgfiVar.zzx(i, list, z);
    }

    public static void zzM(int i, List<Long> list, zzgfi zzgfiVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgfiVar.zzy(i, list, z);
    }

    public static void zzN(int i, List<Long> list, zzgfi zzgfiVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgfiVar.zzK(i, list, z);
    }

    public static void zzO(int i, List<Long> list, zzgfi zzgfiVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgfiVar.zzz(i, list, z);
    }

    public static void zzP(int i, List<Long> list, zzgfi zzgfiVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgfiVar.zzI(i, list, z);
    }

    public static void zzQ(int i, List<Integer> list, zzgfi zzgfiVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgfiVar.zzv(i, list, z);
    }

    public static void zzR(int i, List<Integer> list, zzgfi zzgfiVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgfiVar.zzG(i, list, z);
    }

    public static void zzS(int i, List<Integer> list, zzgfi zzgfiVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgfiVar.zzJ(i, list, z);
    }

    public static void zzT(int i, List<Integer> list, zzgfi zzgfiVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgfiVar.zzw(i, list, z);
    }

    public static void zzU(int i, List<Integer> list, zzgfi zzgfiVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgfiVar.zzH(i, list, z);
    }

    public static void zzV(int i, List<Integer> list, zzgfi zzgfiVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgfiVar.zzC(i, list, z);
    }

    public static void zzW(int i, List<Boolean> list, zzgfi zzgfiVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgfiVar.zzD(i, list, z);
    }

    public static void zzX(int i, List<String> list, zzgfi zzgfiVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgfiVar.zzE(i, list);
    }

    public static void zzY(int i, List<zzgex> list, zzgfi zzgfiVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgfiVar.zzF(i, list);
    }

    public static void zzZ(int i, List<?> list, zzgfi zzgfiVar, zzghz zzghzVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzgfiVar.zzr(i, list.get(i2), zzghzVar);
        }
    }

    public static void zza(Class<?> cls) {
        Class<?> cls2;
        if (zzgga.class.isAssignableFrom(cls) || (cls2 = zza) == null || cls2.isAssignableFrom(cls)) {
            return;
        }
        throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
    }

    public static void zzaa(int i, List<?> list, zzgfi zzgfiVar, zzghz zzghzVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzgfiVar.zzs(i, list.get(i2), zzghzVar);
        }
    }

    private static zzgio<?, ?> zzab(boolean z) {
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
            return (zzgio) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
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
        if (!(list instanceof zzggx)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzgfh.zzy(list.get(i4).longValue());
                i4++;
            }
        } else {
            zzggx zzggxVar = (zzggx) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzgfh.zzy(zzggxVar.zzf(i2));
                i2++;
            }
        }
        return i;
    }

    public static int zzc(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return (zzgfh.zzv(i) * list.size()) + zzb(list);
    }

    public static int zzd(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzggx)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzgfh.zzy(list.get(i4).longValue());
                i4++;
            }
        } else {
            zzggx zzggxVar = (zzggx) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzgfh.zzy(zzggxVar.zzf(i2));
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
        return (zzgfh.zzv(i) * size) + zzd(list);
    }

    public static int zzf(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzggx)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                long longValue = list.get(i4).longValue();
                i3 += zzgfh.zzy((longValue >> 63) ^ (longValue + longValue));
                i4++;
            }
        } else {
            zzggx zzggxVar = (zzggx) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                long zzf = zzggxVar.zzf(i2);
                i5 += zzgfh.zzy((zzf >> 63) ^ (zzf + zzf));
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
        return (zzgfh.zzv(i) * size) + zzf(list);
    }

    public static int zzh(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzggb)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzgfh.zzw(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzggb zzggbVar = (zzggb) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzgfh.zzw(zzggbVar.zzg(i2));
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
        return (zzgfh.zzv(i) * size) + zzh(list);
    }

    public static int zzj(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzggb)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzgfh.zzw(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzggb zzggbVar = (zzggb) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzgfh.zzw(zzggbVar.zzg(i2));
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
        return (zzgfh.zzv(i) * size) + zzj(list);
    }

    public static int zzl(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzggb)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzgfh.zzx(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzggb zzggbVar = (zzggb) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzgfh.zzx(zzggbVar.zzg(i2));
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
        return (zzgfh.zzv(i) * size) + zzl(list);
    }

    public static int zzn(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzggb)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                int intValue = list.get(i4).intValue();
                i3 += zzgfh.zzx((intValue >> 31) ^ (intValue + intValue));
                i4++;
            }
        } else {
            zzggb zzggbVar = (zzggb) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                int zzg = zzggbVar.zzg(i2);
                i5 += zzgfh.zzx((zzg >> 31) ^ (zzg + zzg));
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
        return (zzgfh.zzv(i) * size) + zzn(list);
    }

    public static int zzp(List<?> list) {
        return list.size() * 4;
    }

    public static int zzq(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzgfh.zzx(i << 3) + 4) * size;
    }

    public static int zzr(List<?> list) {
        return list.size() * 8;
    }

    public static int zzs(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzgfh.zzx(i << 3) + 8) * size;
    }

    public static int zzt(List<?> list) {
        return list.size();
    }

    public static int zzu(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzgfh.zzx(i << 3) + 1) * size;
    }

    public static int zzv(int i, List<?> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        int zzv = zzgfh.zzv(i) * size;
        int i4 = zzv;
        if (!(list instanceof zzggs)) {
            while (true) {
                i2 = i4;
                if (i3 >= size) {
                    break;
                }
                Object obj = list.get(i3);
                i4 = (obj instanceof zzgex ? zzgfh.zzB((zzgex) obj) : zzgfh.zzz((String) obj)) + i4;
                i3++;
            }
        } else {
            zzggs zzggsVar = (zzggs) list;
            int i5 = zzv;
            int i6 = 0;
            while (true) {
                i2 = i5;
                if (i6 >= size) {
                    break;
                }
                Object zzg = zzggsVar.zzg(i6);
                i5 = (zzg instanceof zzgex ? zzgfh.zzB((zzgex) zzg) : zzgfh.zzz((String) zzg)) + i5;
                i6++;
            }
        }
        return i2;
    }

    public static int zzw(int i, Object obj, zzghz zzghzVar) {
        if (!(obj instanceof zzggq)) {
            return zzgfh.zzC((zzghi) obj, zzghzVar) + zzgfh.zzx(i << 3);
        }
        int zzx = zzgfh.zzx(i << 3);
        int zza2 = ((zzggq) obj).zza();
        return zzgfh.zzx(zza2) + zza2 + zzx;
    }

    public static int zzx(int i, List<?> list, zzghz zzghzVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzv = zzgfh.zzv(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            zzv = (obj instanceof zzggq ? zzgfh.zzA((zzggq) obj) : zzgfh.zzC((zzghi) obj, zzghzVar)) + zzv;
        }
        return zzv;
    }

    public static int zzy(int i, List<zzgex> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzv = zzgfh.zzv(i) * size;
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzv += zzgfh.zzB(list.get(i2));
        }
        return zzv;
    }

    public static int zzz(int i, List<zzghi> list, zzghz zzghzVar) {
        int size = list.size();
        if (size != 0) {
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                i2 += zzgfh.zzF(i, list.get(i3), zzghzVar);
            }
            return i2;
        }
        return 0;
    }
}
