package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzlv.class */
public final class zzlv {
    private static final Class<?> zza;
    private static final zzmh<?, ?> zzb;
    private static final zzmh<?, ?> zzc;
    private static final zzmh<?, ?> zzd;

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
        zzd = new zzmj();
    }

    public static zzmh<?, ?> zzA() {
        return zzb;
    }

    public static zzmh<?, ?> zzB() {
        return zzc;
    }

    public static zzmh<?, ?> zzC() {
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

    public static <T, FT extends zzjt<FT>> void zzE(zzjq<FT> zzjqVar, T t, T t2) {
        zzjqVar.zzb(t2);
        throw null;
    }

    public static <T, UT, UB> void zzF(zzmh<UT, UB> zzmhVar, T t, T t2) {
        zzmhVar.zzc(t, zzmhVar.zzf(zzmhVar.zzd(t), zzmhVar.zzd(t2)));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <UT, UB> UB zzG(int i, List<Integer> list, zzkh zzkhVar, UB ub, zzmh<UT, UB> zzmhVar) {
        UB ub2;
        if (zzkhVar == null) {
            return ub;
        }
        if (!(list instanceof RandomAccess)) {
            Iterator<Integer> it2 = list.iterator();
            while (true) {
                ub2 = ub;
                if (!it2.hasNext()) {
                    break;
                }
                int intValue = it2.next().intValue();
                if (!zzkhVar.zza(intValue)) {
                    ub = zzH(i, intValue, ub, zzmhVar);
                    it2.remove();
                }
            }
        } else {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue2 = list.get(i3).intValue();
                if (zzkhVar.zza(intValue2)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue2));
                    }
                    i2++;
                } else {
                    ub = zzH(i, intValue2, ub, zzmhVar);
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

    public static <UT, UB> UB zzH(int i, int i2, UB ub, zzmh<UT, UB> zzmhVar) {
        UB ub2 = ub;
        if (ub == null) {
            ub2 = zzmhVar.zzb();
        }
        zzmhVar.zza(ub2, i, i2);
        return ub2;
    }

    public static <T> void zzI(zzld zzldVar, T t, T t2, long j) {
        zzmr.zzo(t, j, zzld.zzb(zzmr.zzn(t, j), zzmr.zzn(t2, j)));
    }

    public static void zzJ(int i, List<Double> list, zzjl zzjlVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjlVar.zzB(i, list, z);
    }

    public static void zzK(int i, List<Float> list, zzjl zzjlVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjlVar.zzA(i, list, z);
    }

    public static void zzL(int i, List<Long> list, zzjl zzjlVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjlVar.zzx(i, list, z);
    }

    public static void zzM(int i, List<Long> list, zzjl zzjlVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjlVar.zzy(i, list, z);
    }

    public static void zzN(int i, List<Long> list, zzjl zzjlVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjlVar.zzK(i, list, z);
    }

    public static void zzO(int i, List<Long> list, zzjl zzjlVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjlVar.zzz(i, list, z);
    }

    public static void zzP(int i, List<Long> list, zzjl zzjlVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjlVar.zzI(i, list, z);
    }

    public static void zzQ(int i, List<Integer> list, zzjl zzjlVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjlVar.zzv(i, list, z);
    }

    public static void zzR(int i, List<Integer> list, zzjl zzjlVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjlVar.zzG(i, list, z);
    }

    public static void zzS(int i, List<Integer> list, zzjl zzjlVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjlVar.zzJ(i, list, z);
    }

    public static void zzT(int i, List<Integer> list, zzjl zzjlVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjlVar.zzw(i, list, z);
    }

    public static void zzU(int i, List<Integer> list, zzjl zzjlVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjlVar.zzH(i, list, z);
    }

    public static void zzV(int i, List<Integer> list, zzjl zzjlVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjlVar.zzC(i, list, z);
    }

    public static void zzW(int i, List<Boolean> list, zzjl zzjlVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjlVar.zzD(i, list, z);
    }

    public static void zzX(int i, List<String> list, zzjl zzjlVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjlVar.zzE(i, list);
    }

    public static void zzY(int i, List<zzjd> list, zzjl zzjlVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjlVar.zzF(i, list);
    }

    public static void zzZ(int i, List<?> list, zzjl zzjlVar, zzlt zzltVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzjlVar.zzr(i, list.get(i2), zzltVar);
        }
    }

    public static void zza(Class<?> cls) {
        Class<?> cls2;
        if (zzkd.class.isAssignableFrom(cls) || (cls2 = zza) == null || cls2.isAssignableFrom(cls)) {
            return;
        }
        throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
    }

    public static void zzaa(int i, List<?> list, zzjl zzjlVar, zzlt zzltVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzjlVar.zzs(i, list.get(i2), zzltVar);
        }
    }

    private static zzmh<?, ?> zzab(boolean z) {
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
            return (zzmh) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
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
        if (!(list instanceof zzkx)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzjk.zzx(list.get(i4).longValue());
                i4++;
            }
        } else {
            zzkx zzkxVar = (zzkx) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzjk.zzx(zzkxVar.zzc(i2));
                i2++;
            }
        }
        return i;
    }

    public static int zzc(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return (zzjk.zzu(i) * list.size()) + zzb(list);
    }

    public static int zzd(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzkx)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzjk.zzx(list.get(i4).longValue());
                i4++;
            }
        } else {
            zzkx zzkxVar = (zzkx) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzjk.zzx(zzkxVar.zzc(i2));
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
        return (zzjk.zzu(i) * size) + zzd(list);
    }

    public static int zzf(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzkx)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                long longValue = list.get(i4).longValue();
                i3 += zzjk.zzx((longValue >> 63) ^ (longValue + longValue));
                i4++;
            }
        } else {
            zzkx zzkxVar = (zzkx) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                long zzc2 = zzkxVar.zzc(i2);
                i5 += zzjk.zzx((zzc2 >> 63) ^ (zzc2 + zzc2));
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
        return (zzjk.zzu(i) * size) + zzf(list);
    }

    public static int zzh(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzke)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzjk.zzv(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzke zzkeVar = (zzke) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzjk.zzv(zzkeVar.zzg(i2));
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
        return (zzjk.zzu(i) * size) + zzh(list);
    }

    public static int zzj(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzke)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzjk.zzv(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzke zzkeVar = (zzke) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzjk.zzv(zzkeVar.zzg(i2));
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
        return (zzjk.zzu(i) * size) + zzj(list);
    }

    public static int zzl(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzke)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzjk.zzw(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzke zzkeVar = (zzke) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzjk.zzw(zzkeVar.zzg(i2));
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
        return (zzjk.zzu(i) * size) + zzl(list);
    }

    public static int zzn(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzke)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                int intValue = list.get(i4).intValue();
                i3 += zzjk.zzw((intValue >> 31) ^ (intValue + intValue));
                i4++;
            }
        } else {
            zzke zzkeVar = (zzke) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                int zzg = zzkeVar.zzg(i2);
                i5 += zzjk.zzw((zzg >> 31) ^ (zzg + zzg));
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
        return (zzjk.zzu(i) * size) + zzn(list);
    }

    public static int zzp(List<?> list) {
        return list.size() * 4;
    }

    public static int zzq(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzjk.zzw(i << 3) + 4) * size;
    }

    public static int zzr(List<?> list) {
        return list.size() * 8;
    }

    public static int zzs(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzjk.zzw(i << 3) + 8) * size;
    }

    public static int zzt(List<?> list) {
        return list.size();
    }

    public static int zzu(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzjk.zzw(i << 3) + 1) * size;
    }

    public static int zzv(int i, List<?> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        int zzu = zzjk.zzu(i) * size;
        int i4 = zzu;
        if (!(list instanceof zzks)) {
            while (true) {
                i2 = i4;
                if (i3 >= size) {
                    break;
                }
                Object obj = list.get(i3);
                i4 = (obj instanceof zzjd ? zzjk.zzA((zzjd) obj) : zzjk.zzy((String) obj)) + i4;
                i3++;
            }
        } else {
            zzks zzksVar = (zzks) list;
            int i5 = zzu;
            int i6 = 0;
            while (true) {
                i2 = i5;
                if (i6 >= size) {
                    break;
                }
                Object zzg = zzksVar.zzg(i6);
                i5 = (zzg instanceof zzjd ? zzjk.zzA((zzjd) zzg) : zzjk.zzy((String) zzg)) + i5;
                i6++;
            }
        }
        return i2;
    }

    public static int zzw(int i, Object obj, zzlt zzltVar) {
        if (!(obj instanceof zzkq)) {
            return zzjk.zzB((zzli) obj, zzltVar) + zzjk.zzw(i << 3);
        }
        int zzw = zzjk.zzw(i << 3);
        int zza2 = ((zzkq) obj).zza();
        return zzjk.zzw(zza2) + zza2 + zzw;
    }

    public static int zzx(int i, List<?> list, zzlt zzltVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzu = zzjk.zzu(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            zzu = (obj instanceof zzkq ? zzjk.zzz((zzkq) obj) : zzjk.zzB((zzli) obj, zzltVar)) + zzu;
        }
        return zzu;
    }

    public static int zzy(int i, List<zzjd> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzu = zzjk.zzu(i) * size;
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzu += zzjk.zzA(list.get(i2));
        }
        return zzu;
    }

    public static int zzz(int i, List<zzli> list, zzlt zzltVar) {
        int size = list.size();
        if (size != 0) {
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                i2 += zzjk.zzE(i, list.get(i3), zzltVar);
            }
            return i2;
        }
        return 0;
    }
}
