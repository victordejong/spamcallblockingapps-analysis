package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgmq.class */
public final class zzgmq {
    private static final Class<?> zza;
    private static final zzgnf<?, ?> zzb;
    private static final zzgnf<?, ?> zzc;
    private static final zzgnf<?, ?> zzd;

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
        zzd = new zzgnh();
    }

    public static zzgnf<?, ?> zzA() {
        return zzc;
    }

    public static zzgnf<?, ?> zzB() {
        return zzd;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <UT, UB> UB zzC(int i, List<Integer> list, zzgkp zzgkpVar, UB ub, zzgnf<UT, UB> zzgnfVar) {
        UB ub2;
        if (zzgkpVar == null) {
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
                if (!zzgkpVar.zza(intValue)) {
                    ub = zzD(i, intValue, ub, zzgnfVar);
                    it2.remove();
                }
            }
        } else {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue2 = list.get(i3).intValue();
                if (zzgkpVar.zza(intValue2)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue2));
                    }
                    i2++;
                } else {
                    ub = zzD(i, intValue2, ub, zzgnfVar);
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

    public static <UT, UB> UB zzD(int i, int i2, UB ub, zzgnf<UT, UB> zzgnfVar) {
        UB ub2 = ub;
        if (ub == null) {
            ub2 = zzgnfVar.zzf();
        }
        zzgnfVar.zzl(ub2, i, i2);
        return ub2;
    }

    public static <T, FT extends zzgkb<FT>> void zzE(zzgjy<FT> zzgjyVar, T t, T t2) {
        zzgjyVar.zza(t2);
        throw null;
    }

    public static <T, UT, UB> void zzF(zzgnf<UT, UB> zzgnfVar, T t, T t2) {
        zzgnfVar.zzo(t, zzgnfVar.zze(zzgnfVar.zzd(t), zzgnfVar.zzd(t2)));
    }

    public static void zzG(Class<?> cls) {
        Class<?> cls2;
        if (zzgkl.class.isAssignableFrom(cls) || (cls2 = zza) == null || cls2.isAssignableFrom(cls)) {
            return;
        }
        throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
    }

    public static boolean zzH(Object obj, Object obj2) {
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

    public static <T> void zzI(zzglq zzglqVar, T t, T t2, long j) {
        zzgnp.zzv(t, j, zzglq.zzc(zzgnp.zzh(t, j), zzgnp.zzh(t2, j)));
    }

    public static void zzJ(int i, List<Boolean> list, zzgjt zzgjtVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgjtVar.zzc(i, list, z);
    }

    public static void zzK(int i, List<zzgjf> list, zzgjt zzgjtVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgjtVar.zze(i, list);
    }

    public static void zzL(int i, List<Double> list, zzgjt zzgjtVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgjtVar.zzg(i, list, z);
    }

    public static void zzM(int i, List<Integer> list, zzgjt zzgjtVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgjtVar.zzj(i, list, z);
    }

    public static void zzN(int i, List<Integer> list, zzgjt zzgjtVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgjtVar.zzl(i, list, z);
    }

    public static void zzO(int i, List<Long> list, zzgjt zzgjtVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgjtVar.zzn(i, list, z);
    }

    public static void zzP(int i, List<Float> list, zzgjt zzgjtVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgjtVar.zzp(i, list, z);
    }

    public static void zzQ(int i, List<?> list, zzgjt zzgjtVar, zzgmo zzgmoVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzgjtVar.zzq(i, list.get(i2), zzgmoVar);
        }
    }

    public static void zzR(int i, List<Integer> list, zzgjt zzgjtVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgjtVar.zzs(i, list, z);
    }

    public static void zzS(int i, List<Long> list, zzgjt zzgjtVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgjtVar.zzu(i, list, z);
    }

    public static void zzT(int i, List<?> list, zzgjt zzgjtVar, zzgmo zzgmoVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzgjtVar.zzv(i, list.get(i2), zzgmoVar);
        }
    }

    public static void zzU(int i, List<Integer> list, zzgjt zzgjtVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgjtVar.zzx(i, list, z);
    }

    public static void zzV(int i, List<Long> list, zzgjt zzgjtVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgjtVar.zzz(i, list, z);
    }

    public static void zzW(int i, List<Integer> list, zzgjt zzgjtVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgjtVar.zzB(i, list, z);
    }

    public static void zzX(int i, List<Long> list, zzgjt zzgjtVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgjtVar.zzD(i, list, z);
    }

    public static void zzY(int i, List<String> list, zzgjt zzgjtVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgjtVar.zzG(i, list);
    }

    public static void zzZ(int i, List<Integer> list, zzgjt zzgjtVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgjtVar.zzI(i, list, z);
    }

    public static int zza(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzgjs.zzA(i << 3) + 1) * size;
    }

    public static void zzaa(int i, List<Long> list, zzgjt zzgjtVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzgjtVar.zzK(i, list, z);
    }

    private static zzgnf<?, ?> zzab(boolean z) {
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
            return (zzgnf) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable th2) {
            return null;
        }
    }

    public static int zzb(List<?> list) {
        return list.size();
    }

    public static int zzc(int i, List<zzgjf> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzz = zzgjs.zzz(i) * size;
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzz += zzgjs.zzt(list.get(i2));
        }
        return zzz;
    }

    public static int zzd(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzgjs.zzz(i) * size) + zze(list);
    }

    public static int zze(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzgkm)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzgjs.zzv(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzgkm zzgkmVar = (zzgkm) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzgjs.zzv(zzgkmVar.zze(i2));
                i2++;
            }
        }
        return i;
    }

    public static int zzf(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzgjs.zzA(i << 3) + 4) * size;
    }

    public static int zzg(List<?> list) {
        return list.size() * 4;
    }

    public static int zzh(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzgjs.zzA(i << 3) + 8) * size;
    }

    public static int zzi(List<?> list) {
        return list.size() * 8;
    }

    public static int zzj(int i, List<zzglv> list, zzgmo zzgmoVar) {
        int size = list.size();
        if (size != 0) {
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                i2 += zzgjs.zzu(i, list.get(i3), zzgmoVar);
            }
            return i2;
        }
        return 0;
    }

    public static int zzk(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzgjs.zzz(i) * size) + zzl(list);
    }

    public static int zzl(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzgkm)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzgjs.zzv(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzgkm zzgkmVar = (zzgkm) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzgjs.zzv(zzgkmVar.zze(i2));
                i2++;
            }
        }
        return i;
    }

    public static int zzm(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return (zzgjs.zzz(i) * list.size()) + zzn(list);
    }

    public static int zzn(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzglk)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzgjs.zzB(list.get(i4).longValue());
                i4++;
            }
        } else {
            zzglk zzglkVar = (zzglk) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzgjs.zzB(zzglkVar.zze(i2));
                i2++;
            }
        }
        return i;
    }

    public static int zzo(int i, Object obj, zzgmo zzgmoVar) {
        if (!(obj instanceof zzglb)) {
            return zzgjs.zzx((zzglv) obj, zzgmoVar) + zzgjs.zzA(i << 3);
        }
        int zzA = zzgjs.zzA(i << 3);
        int zza2 = ((zzglb) obj).zza();
        return zzgjs.zzA(zza2) + zza2 + zzA;
    }

    public static int zzp(int i, List<?> list, zzgmo zzgmoVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzz = zzgjs.zzz(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            zzz = (obj instanceof zzglb ? zzgjs.zzw((zzglb) obj) : zzgjs.zzx((zzglv) obj, zzgmoVar)) + zzz;
        }
        return zzz;
    }

    public static int zzq(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzgjs.zzz(i) * size) + zzr(list);
    }

    public static int zzr(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzgkm)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                int intValue = list.get(i4).intValue();
                i3 += zzgjs.zzA((intValue >> 31) ^ (intValue + intValue));
                i4++;
            }
        } else {
            zzgkm zzgkmVar = (zzgkm) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                int zze = zzgkmVar.zze(i2);
                i5 += zzgjs.zzA((zze >> 31) ^ (zze + zze));
                i2++;
            }
        }
        return i;
    }

    public static int zzs(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzgjs.zzz(i) * size) + zzt(list);
    }

    public static int zzt(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzglk)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                long longValue = list.get(i4).longValue();
                i3 += zzgjs.zzB((longValue >> 63) ^ (longValue + longValue));
                i4++;
            }
        } else {
            zzglk zzglkVar = (zzglk) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                long zze = zzglkVar.zze(i2);
                i5 += zzgjs.zzB((zze >> 63) ^ (zze + zze));
                i2++;
            }
        }
        return i;
    }

    public static int zzu(int i, List<?> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        int zzz = zzgjs.zzz(i) * size;
        int i4 = zzz;
        if (!(list instanceof zzgld)) {
            while (true) {
                i2 = i4;
                if (i3 >= size) {
                    break;
                }
                Object obj = list.get(i3);
                i4 = (obj instanceof zzgjf ? zzgjs.zzt((zzgjf) obj) : zzgjs.zzy((String) obj)) + i4;
                i3++;
            }
        } else {
            zzgld zzgldVar = (zzgld) list;
            int i5 = zzz;
            int i6 = 0;
            while (true) {
                i2 = i5;
                if (i6 >= size) {
                    break;
                }
                Object zzf = zzgldVar.zzf(i6);
                i5 = (zzf instanceof zzgjf ? zzgjs.zzt((zzgjf) zzf) : zzgjs.zzy((String) zzf)) + i5;
                i6++;
            }
        }
        return i2;
    }

    public static int zzv(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzgjs.zzz(i) * size) + zzw(list);
    }

    public static int zzw(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzgkm)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzgjs.zzA(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzgkm zzgkmVar = (zzgkm) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzgjs.zzA(zzgkmVar.zze(i2));
                i2++;
            }
        }
        return i;
    }

    public static int zzx(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzgjs.zzz(i) * size) + zzy(list);
    }

    public static int zzy(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzglk)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzgjs.zzB(list.get(i4).longValue());
                i4++;
            }
        } else {
            zzglk zzglkVar = (zzglk) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzgjs.zzB(zzglkVar.zze(i2));
                i2++;
            }
        }
        return i;
    }

    public static zzgnf<?, ?> zzz() {
        return zzb;
    }
}
