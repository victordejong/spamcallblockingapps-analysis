package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzug.class */
public final class zzug {
    private static final Class<?> zza = zzd();
    private static final zzuw<?, ?> zzb = zza(false);
    private static final zzuw<?, ?> zzc = zza(true);
    private static final zzuw<?, ?> zzd = new zzuy();

    public static int zza(int i, Object obj, zzue zzueVar) {
        return obj instanceof zzsx ? zzrs.zza(i, (zzsx) obj) : zzrs.zzb(i, (zzto) obj, zzueVar);
    }

    public static int zza(int i, List<?> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        int zze = zzrs.zze(i) * size;
        int i4 = zze;
        if (!(list instanceof zzsz)) {
            while (true) {
                i2 = i4;
                if (i3 >= size) {
                    break;
                }
                Object obj = list.get(i3);
                i4 = (obj instanceof zzrb ? zzrs.zzb((zzrb) obj) : zzrs.zzb((String) obj)) + i4;
                i3++;
            }
        } else {
            zzsz zzszVar = (zzsz) list;
            int i5 = zze;
            int i6 = 0;
            while (true) {
                i2 = i5;
                if (i6 >= size) {
                    break;
                }
                Object zza2 = zzszVar.zza(i6);
                i5 = (zza2 instanceof zzrb ? zzrs.zzb((zzrb) zza2) : zzrs.zzb((String) zza2)) + i5;
                i6++;
            }
        }
        return i2;
    }

    public static int zza(int i, List<?> list, zzue zzueVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zze = zzrs.zze(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            zze = (obj instanceof zzsx ? zzrs.zza((zzsx) obj) : zzrs.zza((zzto) obj, zzueVar)) + zze;
        }
        return zze;
    }

    public static int zza(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return (zzrs.zze(i) * list.size()) + zza(list);
    }

    public static int zza(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zztc)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzrs.zzd(list.get(i4).longValue());
                i4++;
            }
        } else {
            zztc zztcVar = (zztc) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzrs.zzd(zztcVar.zza(i2));
                i2++;
            }
        }
        return i;
    }

    public static zzuw<?, ?> zza() {
        return zzb;
    }

    private static zzuw<?, ?> zza(boolean z) {
        try {
            Class<?> zze = zze();
            if (zze != null) {
                return (zzuw) zze.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
            }
            return null;
        } catch (Throwable th) {
            return null;
        }
    }

    public static void zza(int i, List<String> list, zzvq zzvqVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzvqVar.zza(i, list);
    }

    public static void zza(int i, List<?> list, zzvq zzvqVar, zzue zzueVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzvqVar.zza(i, list, zzueVar);
    }

    public static void zza(int i, List<Double> list, zzvq zzvqVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzvqVar.zzg(i, list, z);
    }

    public static <T, FT extends zzrz<FT>> void zza(zzrw<FT> zzrwVar, T t, T t2) {
        zzrx<FT> zza2 = zzrwVar.zza(t2);
        if (!zza2.zza.isEmpty()) {
            zzrwVar.zzb(t).zza(zza2);
        }
    }

    public static <T> void zza(zztl zztlVar, T t, T t2, long j) {
        zzvc.zza(t, j, zztlVar.zza(zzvc.zzf(t, j), zzvc.zzf(t2, j)));
    }

    public static <T, UT, UB> void zza(zzuw<UT, UB> zzuwVar, T t, T t2) {
        zzuwVar.zza(t, zzuwVar.zzb(zzuwVar.zza(t), zzuwVar.zza(t2)));
    }

    public static void zza(Class<?> cls) {
        Class<?> cls2;
        if (zzsf.class.isAssignableFrom(cls) || (cls2 = zza) == null || cls2.isAssignableFrom(cls)) {
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

    public static int zzb(int i, List<zzrb> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zze = zzrs.zze(i) * size;
        for (int i2 = 0; i2 < list.size(); i2++) {
            zze += zzrs.zzb(list.get(i2));
        }
        return zze;
    }

    public static int zzb(int i, List<zzto> list, zzue zzueVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += zzrs.zzc(i, list.get(i3), zzueVar);
        }
        return i2;
    }

    public static int zzb(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzrs.zze(i) * size) + zzb(list);
    }

    public static int zzb(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zztc)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzrs.zze(list.get(i4).longValue());
                i4++;
            }
        } else {
            zztc zztcVar = (zztc) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzrs.zze(zztcVar.zza(i2));
                i2++;
            }
        }
        return i;
    }

    public static zzuw<?, ?> zzb() {
        return zzc;
    }

    public static void zzb(int i, List<zzrb> list, zzvq zzvqVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzvqVar.zzb(i, list);
    }

    public static void zzb(int i, List<?> list, zzvq zzvqVar, zzue zzueVar) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzvqVar.zzb(i, list, zzueVar);
    }

    public static void zzb(int i, List<Float> list, zzvq zzvqVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzvqVar.zzf(i, list, z);
    }

    public static int zzc(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzrs.zze(i) * size) + zzc(list);
    }

    public static int zzc(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zztc)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzrs.zzf(list.get(i4).longValue());
                i4++;
            }
        } else {
            zztc zztcVar = (zztc) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzrs.zzf(zztcVar.zza(i2));
                i2++;
            }
        }
        return i;
    }

    public static zzuw<?, ?> zzc() {
        return zzd;
    }

    public static void zzc(int i, List<Long> list, zzvq zzvqVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzvqVar.zzc(i, list, z);
    }

    public static int zzd(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzrs.zze(i) * size) + zzd(list);
    }

    public static int zzd(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzsh)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzrs.zzk(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzsh zzshVar = (zzsh) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzrs.zzk(zzshVar.zza(i2));
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

    public static void zzd(int i, List<Long> list, zzvq zzvqVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzvqVar.zzd(i, list, z);
    }

    public static int zze(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzrs.zze(i) * size) + zze(list);
    }

    public static int zze(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzsh)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzrs.zzf(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzsh zzshVar = (zzsh) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzrs.zzf(zzshVar.zza(i2));
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

    public static void zze(int i, List<Long> list, zzvq zzvqVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzvqVar.zzn(i, list, z);
    }

    public static int zzf(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzrs.zze(i) * size) + zzf(list);
    }

    public static int zzf(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzsh)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzrs.zzg(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzsh zzshVar = (zzsh) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzrs.zzg(zzshVar.zza(i2));
                i2++;
            }
        }
        return i;
    }

    public static void zzf(int i, List<Long> list, zzvq zzvqVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzvqVar.zze(i, list, z);
    }

    public static int zzg(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return (zzrs.zze(i) * size) + zzg(list);
    }

    public static int zzg(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzsh)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzrs.zzh(list.get(i4).intValue());
                i4++;
            }
        } else {
            zzsh zzshVar = (zzsh) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzrs.zzh(zzshVar.zza(i2));
                i2++;
            }
        }
        return i;
    }

    public static void zzg(int i, List<Long> list, zzvq zzvqVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzvqVar.zzl(i, list, z);
    }

    public static int zzh(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzrs.zzi(i, 0) * size;
    }

    public static int zzh(List<?> list) {
        return list.size() << 2;
    }

    public static void zzh(int i, List<Integer> list, zzvq zzvqVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzvqVar.zza(i, list, z);
    }

    public static int zzi(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzrs.zzg(i, 0L) * size;
    }

    public static int zzi(List<?> list) {
        return list.size() << 3;
    }

    public static void zzi(int i, List<Integer> list, zzvq zzvqVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzvqVar.zzj(i, list, z);
    }

    public static int zzj(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzrs.zzb(i, true) * size;
    }

    public static int zzj(List<?> list) {
        return list.size();
    }

    public static void zzj(int i, List<Integer> list, zzvq zzvqVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzvqVar.zzm(i, list, z);
    }

    public static void zzk(int i, List<Integer> list, zzvq zzvqVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzvqVar.zzb(i, list, z);
    }

    public static void zzl(int i, List<Integer> list, zzvq zzvqVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzvqVar.zzk(i, list, z);
    }

    public static void zzm(int i, List<Integer> list, zzvq zzvqVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzvqVar.zzh(i, list, z);
    }

    public static void zzn(int i, List<Boolean> list, zzvq zzvqVar, boolean z) throws IOException {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzvqVar.zzi(i, list, z);
    }
}
