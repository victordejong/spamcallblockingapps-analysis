package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzenl.class */
public final class zzenl {
    private static final Class<?> zziui = zzbko();
    private static final zzeob<?, ?> zziuj = zzbu(false);
    private static final zzeob<?, ?> zziuk = zzbu(true);
    private static final zzeob<?, ?> zziul = new zzeod();

    public static <UT, UB> UB zza(int i, int i2, UB ub, zzeob<UT, UB> zzeobVar) {
        UB ub2 = ub;
        if (ub == null) {
            ub2 = zzeobVar.zzbky();
        }
        zzeobVar.zza((zzeob<UT, UB>) ub2, i, i2);
        return ub2;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static <UT, UB> UB zza(int i, List<Integer> list, zzeli zzeliVar, UB ub, zzeob<UT, UB> zzeobVar) {
        UB ub2;
        if (zzeliVar == null) {
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
                if (!zzeliVar.zzi(intValue)) {
                    ub = zza(i, intValue, ub, zzeobVar);
                    it.remove();
                }
            }
        } else {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue2 = list.get(i3).intValue();
                if (zzeliVar.zzi(intValue2)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue2));
                    }
                    i2++;
                } else {
                    ub = zza(i, intValue2, ub, zzeobVar);
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

    public static void zza(int i, List<String> list, zzeoy zzeoyVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzeoyVar.zza(i, list);
    }

    public static void zza(int i, List<?> list, zzeoy zzeoyVar, zzenj zzenjVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzeoyVar.zza(i, list, zzenjVar);
    }

    public static void zza(int i, List<Double> list, zzeoy zzeoyVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzeoyVar.zzg(i, list, z);
    }

    public static <T, FT extends zzekw<FT>> void zza(zzekq<FT> zzekqVar, T t, T t2) {
        zzeku<FT> zzai = zzekqVar.zzai(t2);
        if (!zzai.zzinp.isEmpty()) {
            zzekqVar.zzaj(t).zza(zzai);
        }
    }

    public static <T> void zza(zzemh zzemhVar, T t, T t2, long j) {
        zzeoh.zza(t, j, zzemhVar.zzf(zzeoh.zzp(t, j), zzeoh.zzp(t2, j)));
    }

    public static <T, UT, UB> void zza(zzeob<UT, UB> zzeobVar, T t, T t2) {
        zzeobVar.zzi(t, zzeobVar.zzk(zzeobVar.zzay(t), zzeobVar.zzay(t2)));
    }

    public static int zzac(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzemc)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzekl.zzfk(list.get(i4).longValue());
                i4++;
            }
        } else {
            zzemc zzemcVar = (zzemc) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzekl.zzfk(zzemcVar.getLong(i2));
                i2++;
            }
        }
        return i;
    }

    public static int zzad(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzemc)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzekl.zzfl(list.get(i4).longValue());
                i4++;
            }
        } else {
            zzemc zzemcVar = (zzemc) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzekl.zzfl(zzemcVar.getLong(i2));
                i2++;
            }
        }
        return i;
    }

    public static int zzae(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzemc)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzekl.zzfm(list.get(i4).longValue());
                i4++;
            }
        } else {
            zzemc zzemcVar = (zzemc) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzekl.zzfm(zzemcVar.getLong(i2));
                i2++;
            }
        }
        return i;
    }

    public static int zzaf(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzele)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzekl.zzhb(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzele zzeleVar = (zzele) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzekl.zzhb(zzeleVar.getInt(i2));
                i2++;
            }
        }
        return i;
    }

    public static int zzag(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzele)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzekl.zzgw(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzele zzeleVar = (zzele) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzekl.zzgw(zzeleVar.getInt(i2));
                i2++;
            }
        }
        return i;
    }

    public static int zzah(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzele)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzekl.zzgx(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzele zzeleVar = (zzele) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzekl.zzgx(zzeleVar.getInt(i2));
                i2++;
            }
        }
        return i;
    }

    public static int zzai(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzele)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzekl.zzgy(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzele zzeleVar = (zzele) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzekl.zzgy(zzeleVar.getInt(i2));
                i2++;
            }
        }
        return i;
    }

    public static int zzaj(List<?> list) {
        return list.size() << 2;
    }

    public static int zzak(List<?> list) {
        return list.size() << 3;
    }

    public static int zzal(List<?> list) {
        return list.size();
    }

    public static void zzb(int i, List<zzejr> list, zzeoy zzeoyVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzeoyVar.zzb(i, list);
    }

    public static void zzb(int i, List<?> list, zzeoy zzeoyVar, zzenj zzenjVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzeoyVar.zzb(i, list, zzenjVar);
    }

    public static void zzb(int i, List<Float> list, zzeoy zzeoyVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzeoyVar.zzf(i, list, z);
    }

    public static zzeob<?, ?> zzbkl() {
        return zziuj;
    }

    public static zzeob<?, ?> zzbkm() {
        return zziuk;
    }

    public static zzeob<?, ?> zzbkn() {
        return zziul;
    }

    private static Class<?> zzbko() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable th) {
            return null;
        }
    }

    private static Class<?> zzbkp() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable th) {
            return null;
        }
    }

    private static zzeob<?, ?> zzbu(boolean z) {
        try {
            Class<?> zzbkp = zzbkp();
            if (zzbkp != null) {
                return (zzeob) zzbkp.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
            }
            return null;
        } catch (Throwable th) {
            return null;
        }
    }

    public static int zzc(int i, Object obj, zzenj zzenjVar) {
        return obj instanceof zzelt ? zzekl.zza(i, (zzelt) obj) : zzekl.zzb(i, (zzemo) obj, zzenjVar);
    }

    public static int zzc(int i, List<?> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        int zzgv = zzekl.zzgv(i) * size;
        int i4 = zzgv;
        if (!(list instanceof zzelv)) {
            while (true) {
                i2 = i4;
                if (i3 >= size) {
                    break;
                }
                Object obj = list.get(i3);
                i4 += obj instanceof zzejr ? zzekl.zzaj((zzejr) obj) : zzekl.zzia((String) obj);
                i3++;
            }
        } else {
            zzelv zzelvVar = (zzelv) list;
            int i5 = zzgv;
            int i6 = 0;
            while (true) {
                i2 = i5;
                if (i6 >= size) {
                    break;
                }
                Object zzhj = zzelvVar.zzhj(i6);
                i5 += zzhj instanceof zzejr ? zzekl.zzaj((zzejr) zzhj) : zzekl.zzia((String) zzhj);
                i6++;
            }
        }
        return i2;
    }

    public static int zzc(int i, List<?> list, zzenj zzenjVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzgv = zzekl.zzgv(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            zzgv += obj instanceof zzelt ? zzekl.zza((zzelt) obj) : zzekl.zza((zzemo) obj, zzenjVar);
        }
        return zzgv;
    }

    public static void zzc(int i, List<Long> list, zzeoy zzeoyVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzeoyVar.zzc(i, list, z);
    }

    public static int zzd(int i, List<zzejr> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzgv = size * zzekl.zzgv(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzgv += zzekl.zzaj(list.get(i2));
        }
        return zzgv;
    }

    public static int zzd(int i, List<zzemo> list, zzenj zzenjVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += zzekl.zzc(i, list.get(i3), zzenjVar);
        }
        return i2;
    }

    public static void zzd(int i, List<Long> list, zzeoy zzeoyVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzeoyVar.zzd(i, list, z);
    }

    public static void zze(int i, List<Long> list, zzeoy zzeoyVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzeoyVar.zzn(i, list, z);
    }

    public static void zzf(int i, List<Long> list, zzeoy zzeoyVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzeoyVar.zze(i, list, z);
    }

    public static void zzg(int i, List<Long> list, zzeoy zzeoyVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzeoyVar.zzl(i, list, z);
    }

    public static void zzh(int i, List<Integer> list, zzeoy zzeoyVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzeoyVar.zza(i, list, z);
    }

    public static boolean zzh(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static void zzi(int i, List<Integer> list, zzeoy zzeoyVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzeoyVar.zzj(i, list, z);
    }

    public static void zzi(Class<?> cls) {
        Class<?> cls2;
        if (zzelb.class.isAssignableFrom(cls) || (cls2 = zziui) == null || cls2.isAssignableFrom(cls)) {
            return;
        }
        throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
    }

    public static void zzj(int i, List<Integer> list, zzeoy zzeoyVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzeoyVar.zzm(i, list, z);
    }

    public static void zzk(int i, List<Integer> list, zzeoy zzeoyVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzeoyVar.zzb(i, list, z);
    }

    public static void zzl(int i, List<Integer> list, zzeoy zzeoyVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzeoyVar.zzk(i, list, z);
    }

    public static void zzm(int i, List<Integer> list, zzeoy zzeoyVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzeoyVar.zzh(i, list, z);
    }

    public static void zzn(int i, List<Boolean> list, zzeoy zzeoyVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzeoyVar.zzi(i, list, z);
    }

    public static int zzo(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return zzac(list) + (list.size() * zzekl.zzgv(i));
    }

    public static int zzp(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzad(list) + (size * zzekl.zzgv(i));
    }

    public static int zzq(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzae(list) + (size * zzekl.zzgv(i));
    }

    public static int zzr(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzaf(list) + (size * zzekl.zzgv(i));
    }

    public static int zzs(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzag(list) + (size * zzekl.zzgv(i));
    }

    public static int zzt(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzah(list) + (size * zzekl.zzgv(i));
    }

    public static int zzu(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzai(list) + (size * zzekl.zzgv(i));
    }

    public static int zzv(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzekl.zzaj(i, 0);
    }

    public static int zzw(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzekl.zzo(i, 0L);
    }

    public static int zzx(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzekl.zzi(i, true);
    }
}
