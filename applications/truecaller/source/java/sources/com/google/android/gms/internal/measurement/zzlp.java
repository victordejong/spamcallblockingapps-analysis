package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzlp.class */
public final class zzlp {
    private static final Class zza;
    private static final zzmb zzb;
    private static final zzmb zzc;
    private static final zzmb zzd;

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
        zzd = new zzmd();
    }

    public static zzmb zzA() {
        return zzc;
    }

    public static zzmb zzB() {
        return zzd;
    }

    public static Object zzC(int i, List list, zzkb zzkbVar, Object obj, zzmb zzmbVar) {
        Object obj2;
        if (zzkbVar == null) {
            return obj;
        }
        if (!(list instanceof RandomAccess)) {
            Iterator it = list.iterator();
            while (true) {
                obj2 = obj;
                if (!it.hasNext()) {
                    break;
                }
                int intValue = ((Integer) it.next()).intValue();
                if (!zzkbVar.zza(intValue)) {
                    obj = zzD(i, intValue, obj, zzmbVar);
                    it.remove();
                }
            }
        } else {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue2 = ((Integer) list.get(i3)).intValue();
                if (zzkbVar.zza(intValue2)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue2));
                    }
                    i2++;
                } else {
                    obj = zzD(i, intValue2, obj, zzmbVar);
                }
            }
            if (i2 != size) {
                list.subList(i2, size).clear();
                return obj;
            }
            obj2 = obj;
        }
        return obj2;
    }

    public static Object zzD(int i, int i2, Object obj, zzmb zzmbVar) {
        Object obj2 = obj;
        if (obj == null) {
            obj2 = zzmbVar.zze();
        }
        zzmbVar.zzf(obj2, i, i2);
        return obj2;
    }

    public static void zzE(zzjk zzjkVar, Object obj, Object obj2) {
        zzjkVar.zza(obj2);
        throw null;
    }

    public static void zzF(zzmb zzmbVar, Object obj, Object obj2) {
        zzmbVar.zzh(obj, zzmbVar.zzd(zzmbVar.zzc(obj), zzmbVar.zzc(obj2)));
    }

    public static void zzG(Class cls) {
        Class cls2;
        if (zzjx.class.isAssignableFrom(cls) || (cls2 = zza) == null || cls2.isAssignableFrom(cls)) {
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

    public static void zzI(zzkx zzkxVar, Object obj, Object obj2, long j) {
        zzml.zzs(obj, j, zzkx.zzb(zzml.zzf(obj, j), zzml.zzf(obj2, j)));
    }

    public static void zzJ(int i, List list, zzjf zzjfVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjfVar.zzc(i, list, z);
    }

    public static void zzK(int i, List list, zzjf zzjfVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjfVar.zze(i, list);
    }

    public static void zzL(int i, List list, zzjf zzjfVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjfVar.zzg(i, list, z);
    }

    public static void zzM(int i, List list, zzjf zzjfVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjfVar.zzj(i, list, z);
    }

    public static void zzN(int i, List list, zzjf zzjfVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjfVar.zzl(i, list, z);
    }

    public static void zzO(int i, List list, zzjf zzjfVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjfVar.zzn(i, list, z);
    }

    public static void zzP(int i, List list, zzjf zzjfVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjfVar.zzp(i, list, z);
    }

    public static void zzQ(int i, List list, zzjf zzjfVar, zzln zzlnVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzjfVar.zzq(i, list.get(i2), zzlnVar);
        }
    }

    public static void zzR(int i, List list, zzjf zzjfVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjfVar.zzs(i, list, z);
    }

    public static void zzS(int i, List list, zzjf zzjfVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjfVar.zzu(i, list, z);
    }

    public static void zzT(int i, List list, zzjf zzjfVar, zzln zzlnVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzjfVar.zzv(i, list.get(i2), zzlnVar);
        }
    }

    public static void zzU(int i, List list, zzjf zzjfVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjfVar.zzx(i, list, z);
    }

    public static void zzV(int i, List list, zzjf zzjfVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjfVar.zzz(i, list, z);
    }

    public static void zzW(int i, List list, zzjf zzjfVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjfVar.zzB(i, list, z);
    }

    public static void zzX(int i, List list, zzjf zzjfVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjfVar.zzD(i, list, z);
    }

    public static void zzY(int i, List list, zzjf zzjfVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjfVar.zzG(i, list);
    }

    public static void zzZ(int i, List list, zzjf zzjfVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjfVar.zzI(i, list, z);
    }

    public static int zza(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzje.zzA(i << 3) + 1) * size;
    }

    public static void zzaa(int i, List list, zzjf zzjfVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzjfVar.zzK(i, list, z);
    }

    private static zzmb zzab(boolean z) {
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
            return (zzmb) cls.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable th2) {
            return null;
        }
    }

    public static int zzb(List list) {
        return list.size();
    }

    public static int zzc(int i, List list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzz = zzje.zzz(i) * size;
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzz += zzje.zzt((zzix) list.get(i2));
        }
        return zzz;
    }

    public static int zzd(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzje.zzz(i) * size) + zze(list);
    }

    public static int zze(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzjy)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzje.zzv(((Integer) list.get(i4)).intValue());
                i4++;
            }
        } else {
            zzjy zzjyVar = (zzjy) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzje.zzv(zzjyVar.zze(i2));
                i2++;
            }
        }
        return i;
    }

    public static int zzf(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzje.zzA(i << 3) + 4) * size;
    }

    public static int zzg(List list) {
        return list.size() * 4;
    }

    public static int zzh(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzje.zzA(i << 3) + 8) * size;
    }

    public static int zzi(List list) {
        return list.size() * 8;
    }

    public static int zzj(int i, List list, zzln zzlnVar) {
        int size = list.size();
        if (size != 0) {
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                i2 += zzje.zzu(i, (zzlc) list.get(i3), zzlnVar);
            }
            return i2;
        }
        return 0;
    }

    public static int zzk(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzje.zzz(i) * size) + zzl(list);
    }

    public static int zzl(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzjy)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzje.zzv(((Integer) list.get(i4)).intValue());
                i4++;
            }
        } else {
            zzjy zzjyVar = (zzjy) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzje.zzv(zzjyVar.zze(i2));
                i2++;
            }
        }
        return i;
    }

    public static int zzm(int i, List list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return (zzje.zzz(i) * list.size()) + zzn(list);
    }

    public static int zzn(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzkr)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzje.zzB(((Long) list.get(i4)).longValue());
                i4++;
            }
        } else {
            zzkr zzkrVar = (zzkr) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzje.zzB(zzkrVar.zza(i2));
                i2++;
            }
        }
        return i;
    }

    public static int zzo(int i, Object obj, zzln zzlnVar) {
        if (!(obj instanceof zzkk)) {
            return zzje.zzx((zzlc) obj, zzlnVar) + zzje.zzA(i << 3);
        }
        int zzA = zzje.zzA(i << 3);
        int zza2 = ((zzkk) obj).zza();
        return zzje.zzA(zza2) + zza2 + zzA;
    }

    public static int zzp(int i, List list, zzln zzlnVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzz = zzje.zzz(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            zzz = (obj instanceof zzkk ? zzje.zzw((zzkk) obj) : zzje.zzx((zzlc) obj, zzlnVar)) + zzz;
        }
        return zzz;
    }

    public static int zzq(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzje.zzz(i) * size) + zzr(list);
    }

    public static int zzr(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzjy)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                int intValue = ((Integer) list.get(i4)).intValue();
                i3 += zzje.zzA((intValue >> 31) ^ (intValue + intValue));
                i4++;
            }
        } else {
            zzjy zzjyVar = (zzjy) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                int zze = zzjyVar.zze(i2);
                i5 += zzje.zzA((zze >> 31) ^ (zze + zze));
                i2++;
            }
        }
        return i;
    }

    public static int zzs(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzje.zzz(i) * size) + zzt(list);
    }

    public static int zzt(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzkr)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                long longValue = ((Long) list.get(i4)).longValue();
                i3 += zzje.zzB((longValue >> 63) ^ (longValue + longValue));
                i4++;
            }
        } else {
            zzkr zzkrVar = (zzkr) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                long zza2 = zzkrVar.zza(i2);
                i5 += zzje.zzB((zza2 >> 63) ^ (zza2 + zza2));
                i2++;
            }
        }
        return i;
    }

    public static int zzu(int i, List list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        int zzz = zzje.zzz(i) * size;
        int i4 = zzz;
        if (!(list instanceof zzkm)) {
            while (true) {
                i2 = i4;
                if (i3 >= size) {
                    break;
                }
                Object obj = list.get(i3);
                i4 = (obj instanceof zzix ? zzje.zzt((zzix) obj) : zzje.zzy((String) obj)) + i4;
                i3++;
            }
        } else {
            zzkm zzkmVar = (zzkm) list;
            int i5 = zzz;
            int i6 = 0;
            while (true) {
                i2 = i5;
                if (i6 >= size) {
                    break;
                }
                Object zzf = zzkmVar.zzf(i6);
                i5 = (zzf instanceof zzix ? zzje.zzt((zzix) zzf) : zzje.zzy((String) zzf)) + i5;
                i6++;
            }
        }
        return i2;
    }

    public static int zzv(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzje.zzz(i) * size) + zzw(list);
    }

    public static int zzw(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzjy)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzje.zzA(((Integer) list.get(i4)).intValue());
                i4++;
            }
        } else {
            zzjy zzjyVar = (zzjy) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzje.zzA(zzjyVar.zze(i2));
                i2++;
            }
        }
        return i;
    }

    public static int zzx(int i, List list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzje.zzz(i) * size) + zzy(list);
    }

    public static int zzy(List list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzkr)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzje.zzB(((Long) list.get(i4)).longValue());
                i4++;
            }
        } else {
            zzkr zzkrVar = (zzkr) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzje.zzB(zzkrVar.zza(i2));
                i2++;
            }
        }
        return i;
    }

    public static zzmb zzz() {
        return zzb;
    }
}
