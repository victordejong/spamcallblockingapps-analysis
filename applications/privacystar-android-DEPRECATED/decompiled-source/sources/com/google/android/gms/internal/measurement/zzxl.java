package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzxl.class */
public final class zzxl {
    private static final Class<?> zzcbw = zzxu();
    private static final zzyb<?, ?> zzcbx = zzx(false);
    private static final zzyb<?, ?> zzcby = zzx(true);
    private static final zzyb<?, ?> zzcbz = new zzyd();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <UT, UB> UB zza(int i, int i2, UB ub, zzyb<UT, UB> zzybVar) {
        UB ub2 = ub;
        if (ub == null) {
            ub2 = zzybVar.zzye();
        }
        zzybVar.zza((zzyb<UT, UB>) ub2, i, i2);
        return ub2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <UT, UB> UB zza(int i, List<Integer> list, zzvr zzvrVar, UB ub, zzyb<UT, UB> zzybVar) {
        UB ub2;
        if (zzvrVar == null) {
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
                if (!zzvrVar.zzb(intValue)) {
                    ub = (UB) zza(i, intValue, ub, zzybVar);
                    it.remove();
                }
            }
        } else {
            int size = list.size();
            int i2 = 0;
            for (int i3 = 0; i3 < size; i3++) {
                int intValue2 = list.get(i3).intValue();
                if (zzvrVar.zzb(intValue2)) {
                    if (i3 != i2) {
                        list.set(i2, Integer.valueOf(intValue2));
                    }
                    i2++;
                } else {
                    ub = (UB) zza(i, intValue2, ub, zzybVar);
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

    public static void zza(int i, List<String> list, zzyw zzywVar) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzywVar.zza(i, list);
        }
    }

    public static void zza(int i, List<?> list, zzyw zzywVar, zzxj zzxjVar) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzywVar.zza(i, list, zzxjVar);
        }
    }

    public static void zza(int i, List<Double> list, zzyw zzywVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzywVar.zzg(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, FT extends zzvf<FT>> void zza(zzva<FT> zzvaVar, T t, T t2) {
        zzvd<FT> zzs = zzvaVar.zzs(t2);
        if (!zzs.isEmpty()) {
            zzvaVar.zzt(t).zza(zzs);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> void zza(zzwo zzwoVar, T t, T t2, long j) {
        zzyh.zza(t, j, zzwoVar.zzc(zzyh.zzp(t, j), zzyh.zzp(t2, j)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, UT, UB> void zza(zzyb<UT, UB> zzybVar, T t, T t2) {
        zzybVar.zzf(t, zzybVar.zzh(zzybVar.zzah(t), zzybVar.zzah(t2)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzaa(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzvn)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzut.zzbh(list.get(i2).intValue());
                i2++;
            }
        } else {
            zzvn zzvnVar = (zzvn) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzut.zzbh(zzvnVar.getInt(i3));
                i3++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzab(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzvn)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzut.zzbc(list.get(i2).intValue());
                i2++;
            }
        } else {
            zzvn zzvnVar = (zzvn) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzut.zzbc(zzvnVar.getInt(i3));
                i3++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzac(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzvn)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzut.zzbd(list.get(i2).intValue());
                i2++;
            }
        } else {
            zzvn zzvnVar = (zzvn) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzut.zzbd(zzvnVar.getInt(i3));
                i3++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzad(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzvn)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzut.zzbe(list.get(i2).intValue());
                i2++;
            }
        } else {
            zzvn zzvnVar = (zzvn) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzut.zzbe(zzvnVar.getInt(i3));
                i3++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzae(List<?> list) {
        return list.size() << 2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzaf(List<?> list) {
        return list.size() << 3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzag(List<?> list) {
        return list.size();
    }

    public static void zzb(int i, List<zzud> list, zzyw zzywVar) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzywVar.zzb(i, list);
        }
    }

    public static void zzb(int i, List<?> list, zzyw zzywVar, zzxj zzxjVar) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzywVar.zzb(i, list, zzxjVar);
        }
    }

    public static void zzb(int i, List<Float> list, zzyw zzywVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzywVar.zzf(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzc(int i, Object obj, zzxj zzxjVar) {
        return obj instanceof zzwa ? zzut.zza(i, (zzwa) obj) : zzut.zzb(i, (zzwt) obj, zzxjVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzc(int i, List<?> list) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int size = list.size();
        int i7 = 0;
        int i8 = 0;
        if (size == 0) {
            return 0;
        }
        int zzbb = zzut.zzbb(i) * size;
        int i9 = zzbb;
        if (!(list instanceof zzwc)) {
            while (true) {
                i2 = i9;
                if (i7 >= size) {
                    break;
                }
                Object obj = list.get(i7);
                if (obj instanceof zzud) {
                    i4 = i9;
                    i3 = zzut.zzb((zzud) obj);
                } else {
                    i4 = i9;
                    i3 = zzut.zzfx((String) obj);
                }
                i9 = i4 + i3;
                i7++;
            }
        } else {
            zzwc zzwcVar = (zzwc) list;
            int i10 = zzbb;
            while (true) {
                i2 = i10;
                if (i8 >= size) {
                    break;
                }
                Object raw = zzwcVar.getRaw(i8);
                if (raw instanceof zzud) {
                    i6 = i10;
                    i5 = zzut.zzb((zzud) raw);
                } else {
                    i6 = i10;
                    i5 = zzut.zzfx((String) raw);
                }
                i10 = i6 + i5;
                i8++;
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzc(int i, List<?> list, zzxj zzxjVar) {
        int i2;
        int i3;
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzbb = zzut.zzbb(i) * size;
        for (int i4 = 0; i4 < size; i4++) {
            Object obj = list.get(i4);
            if (obj instanceof zzwa) {
                i3 = zzbb;
                i2 = zzut.zza((zzwa) obj);
            } else {
                i3 = zzbb;
                i2 = zzut.zzb((zzwt) obj, zzxjVar);
            }
            zzbb = i3 + i2;
        }
        return zzbb;
    }

    public static void zzc(int i, List<Long> list, zzyw zzywVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzywVar.zzc(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzd(int i, List<zzud> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzbb = size * zzut.zzbb(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzbb += zzut.zzb(list.get(i2));
        }
        return zzbb;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzd(int i, List<zzwt> list, zzxj zzxjVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += zzut.zzc(i, list.get(i3), zzxjVar);
        }
        return i2;
    }

    public static void zzd(int i, List<Long> list, zzyw zzywVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzywVar.zzd(i, list, z);
        }
    }

    public static void zze(int i, List<Long> list, zzyw zzywVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzywVar.zzn(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zze(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    public static void zzf(int i, List<Long> list, zzyw zzywVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzywVar.zze(i, list, z);
        }
    }

    public static void zzg(int i, List<Long> list, zzyw zzywVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzywVar.zzl(i, list, z);
        }
    }

    public static void zzh(int i, List<Integer> list, zzyw zzywVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzywVar.zza(i, list, z);
        }
    }

    public static void zzi(int i, List<Integer> list, zzyw zzywVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzywVar.zzj(i, list, z);
        }
    }

    public static void zzj(int i, List<Integer> list, zzyw zzywVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzywVar.zzm(i, list, z);
        }
    }

    public static void zzj(Class<?> cls) {
        if (!zzvm.class.isAssignableFrom(cls) && zzcbw != null && !zzcbw.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    public static void zzk(int i, List<Integer> list, zzyw zzywVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzywVar.zzb(i, list, z);
        }
    }

    public static void zzl(int i, List<Integer> list, zzyw zzywVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzywVar.zzk(i, list, z);
        }
    }

    public static void zzm(int i, List<Integer> list, zzyw zzywVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzywVar.zzh(i, list, z);
        }
    }

    public static void zzn(int i, List<Boolean> list, zzyw zzywVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzywVar.zzi(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzo(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return zzx(list) + (list.size() * zzut.zzbb(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzp(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzy(list) + (size * zzut.zzbb(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzq(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzz(list) + (size * zzut.zzbb(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzr(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzaa(list) + (size * zzut.zzbb(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzs(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzab(list) + (size * zzut.zzbb(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzt(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzac(list) + (size * zzut.zzbb(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzu(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzad(list) + (size * zzut.zzbb(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzv(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzut.zzk(i, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzw(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzut.zzg(i, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzx(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzut.zzc(i, true);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzx(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzwh)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzut.zzay(list.get(i2).longValue());
                i2++;
            }
        } else {
            zzwh zzwhVar = (zzwh) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzut.zzay(zzwhVar.getLong(i3));
                i3++;
            }
        }
        return i;
    }

    private static zzyb<?, ?> zzx(boolean z) {
        try {
            Class<?> zzxv = zzxv();
            if (zzxv == null) {
                return null;
            }
            return (zzyb) zzxv.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable th) {
            return null;
        }
    }

    public static zzyb<?, ?> zzxr() {
        return zzcbx;
    }

    public static zzyb<?, ?> zzxs() {
        return zzcby;
    }

    public static zzyb<?, ?> zzxt() {
        return zzcbz;
    }

    private static Class<?> zzxu() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable th) {
            return null;
        }
    }

    private static Class<?> zzxv() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable th) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzy(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzwh)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzut.zzaz(list.get(i2).longValue());
                i2++;
            }
        } else {
            zzwh zzwhVar = (zzwh) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzut.zzaz(zzwhVar.getLong(i3));
                i3++;
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzz(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzwh)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzut.zzba(list.get(i2).longValue());
                i2++;
            }
        } else {
            zzwh zzwhVar = (zzwh) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzut.zzba(zzwhVar.getLong(i3));
                i3++;
            }
        }
        return i;
    }
}
