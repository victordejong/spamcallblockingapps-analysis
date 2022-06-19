package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzdd;
import com.google.android.gms.internal.firebase-perf.zzeh;
import com.google.android.gms.internal.firebase-perf.zzew;
import com.google.android.gms.internal.firebase-perf.zzfr;
import com.google.android.gms.internal.firebase-perf.zzge;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzgg.class */
public final class zzgg {
    private static final Class<?> zztl = zzhx();
    private static final zzgw<?, ?> zztm = zzg(false);
    private static final zzgw<?, ?> zztn = zzg(true);
    private static final zzgw<?, ?> zzto = new zzgy();

    public static void zza(int i, List<String> list, zzhq zzhqVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhqVar.zza(i, list);
    }

    public static void zza(int i, List<?> list, zzhq zzhqVar, zzge zzgeVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhqVar.zza(i, list, zzgeVar);
    }

    public static void zza(int i, List<Double> list, zzhq zzhqVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhqVar.zzg(i, list, z);
    }

    public static <T, FT extends zzeb<FT>> void zza(zzdy<FT> zzdyVar, T t, T t2) {
        zzdz<FT> zzb = zzdyVar.zzb(t2);
        if (!zzb.zznc.isEmpty()) {
            zzdyVar.zzc(t).zza(zzb);
        }
    }

    public static <T> void zza(zzfk zzfkVar, T t, T t2, long j) {
        zzhc.zza(t, j, zzfkVar.zzd(zzhc.zzo(t, j), zzhc.zzo(t2, j)));
    }

    public static <T, UT, UB> void zza(zzgw<UT, UB> zzgwVar, T t, T t2) {
        zzgwVar.zzg(t, zzgwVar.zzh(zzgwVar.zzn(t), zzgwVar.zzn(t2)));
    }

    public static void zzb(int i, List<zzdd> list, zzhq zzhqVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhqVar.zzb(i, list);
    }

    public static void zzb(int i, List<?> list, zzhq zzhqVar, zzge zzgeVar) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhqVar.zzb(i, list, zzgeVar);
    }

    public static void zzb(int i, List<Float> list, zzhq zzhqVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhqVar.zzf(i, list, z);
    }

    public static int zzc(int i, Object obj, zzge zzgeVar) {
        return obj instanceof zzew ? zzdu.zza(i, (zzew) ((zzew) obj)) : zzdu.zzb(i, (zzfr) ((zzfr) obj), zzgeVar);
    }

    public static int zzc(int i, List<?> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        int zzy = zzdu.zzy(i) * size;
        int i4 = zzy;
        if (!(list instanceof zzey)) {
            while (true) {
                i2 = i4;
                if (i3 >= size) {
                    break;
                }
                Object obj = list.get(i3);
                i4 += obj instanceof zzdd ? zzdu.zzb((zzdd) ((zzdd) obj)) : zzdu.zzag((String) obj);
                i3++;
            }
        } else {
            zzey zzeyVar = (zzey) list;
            int i5 = zzy;
            int i6 = 0;
            while (true) {
                i2 = i5;
                if (i6 >= size) {
                    break;
                }
                Object raw = zzeyVar.getRaw(i6);
                i5 += raw instanceof zzdd ? zzdu.zzb((zzdd) ((zzdd) raw)) : zzdu.zzag((String) raw);
                i6++;
            }
        }
        return i2;
    }

    public static int zzc(int i, List<?> list, zzge zzgeVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzy = zzdu.zzy(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            zzy += obj instanceof zzew ? zzdu.zza((zzew) ((zzew) obj)) : zzdu.zza((zzfr) ((zzfr) obj), (zzge) zzgeVar);
        }
        return zzy;
    }

    public static int zzc(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzff)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzdu.zzan(list.get(i4).longValue());
                i4++;
            }
        } else {
            zzff zzffVar = (zzff) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzdu.zzan(zzffVar.getLong(i2));
                i2++;
            }
        }
        return i;
    }

    public static void zzc(int i, List<Long> list, zzhq zzhqVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhqVar.zzc(i, list, z);
    }

    public static int zzd(int i, List<zzdd> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzy = size * zzdu.zzy(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzy += zzdu.zzb((zzdd) list.get(i2));
        }
        return zzy;
    }

    public static int zzd(int i, List<zzfr> list, zzge zzgeVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += zzdu.zzc(i, list.get(i3), zzgeVar);
        }
        return i2;
    }

    public static int zzd(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzff)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzdu.zzao(list.get(i4).longValue());
                i4++;
            }
        } else {
            zzff zzffVar = (zzff) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzdu.zzao(zzffVar.getLong(i2));
                i2++;
            }
        }
        return i;
    }

    public static void zzd(int i, List<Long> list, zzhq zzhqVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhqVar.zzd(i, list, z);
    }

    public static int zze(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzff)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzdu.zzap(list.get(i4).longValue());
                i4++;
            }
        } else {
            zzff zzffVar = (zzff) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzdu.zzap(zzffVar.getLong(i2));
                i2++;
            }
        }
        return i;
    }

    public static void zze(int i, List<Long> list, zzhq zzhqVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhqVar.zzn(i, list, z);
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [com.google.android.gms.internal.firebase_perf.zzej] */
    public static int zzf(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzej)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzdu.zzae(list.get(i4).intValue());
                i4++;
            }
        } else {
            ?? r0 = (zzej) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzdu.zzae(r0.getInt(i2));
                i2++;
            }
        }
        return i;
    }

    public static void zzf(int i, List<Long> list, zzhq zzhqVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhqVar.zze(i, list, z);
    }

    public static void zzf(Class<?> cls) {
        Class<?> cls2;
        if (zzeh.class.isAssignableFrom(cls) || (cls2 = zztl) == null || cls2.isAssignableFrom(cls)) {
            return;
        }
        throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
    }

    public static boolean zzf(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [com.google.android.gms.internal.firebase_perf.zzej] */
    public static int zzg(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzej)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzdu.zzz(list.get(i4).intValue());
                i4++;
            }
        } else {
            ?? r0 = (zzej) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzdu.zzz(r0.getInt(i2));
                i2++;
            }
        }
        return i;
    }

    private static zzgw<?, ?> zzg(boolean z) {
        try {
            Class<?> zzhy = zzhy();
            if (zzhy != null) {
                return (zzgw) zzhy.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
            }
            return null;
        } catch (Throwable th) {
            return null;
        }
    }

    public static void zzg(int i, List<Long> list, zzhq zzhqVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhqVar.zzl(i, list, z);
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [com.google.android.gms.internal.firebase_perf.zzej] */
    public static int zzh(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzej)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzdu.zzaa(list.get(i4).intValue());
                i4++;
            }
        } else {
            ?? r0 = (zzej) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzdu.zzaa(r0.getInt(i2));
                i2++;
            }
        }
        return i;
    }

    public static void zzh(int i, List<Integer> list, zzhq zzhqVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhqVar.zza(i, list, z);
    }

    public static zzgw<?, ?> zzhu() {
        return zztm;
    }

    public static zzgw<?, ?> zzhv() {
        return zztn;
    }

    public static zzgw<?, ?> zzhw() {
        return zzto;
    }

    private static Class<?> zzhx() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable th) {
            return null;
        }
    }

    private static Class<?> zzhy() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable th) {
            return null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v15, types: [com.google.android.gms.internal.firebase_perf.zzej] */
    public static int zzi(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzej)) {
            int i3 = 0;
            int i4 = 0;
            while (true) {
                i = i3;
                if (i4 >= size) {
                    break;
                }
                i3 += zzdu.zzab(list.get(i4).intValue());
                i4++;
            }
        } else {
            ?? r0 = (zzej) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i2 >= size) {
                    break;
                }
                i5 += zzdu.zzab(r0.getInt(i2));
                i2++;
            }
        }
        return i;
    }

    public static void zzi(int i, List<Integer> list, zzhq zzhqVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhqVar.zzj(i, list, z);
    }

    public static int zzj(List<?> list) {
        return list.size() << 2;
    }

    public static void zzj(int i, List<Integer> list, zzhq zzhqVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhqVar.zzm(i, list, z);
    }

    public static int zzk(List<?> list) {
        return list.size() << 3;
    }

    public static void zzk(int i, List<Integer> list, zzhq zzhqVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhqVar.zzb(i, list, z);
    }

    public static int zzl(List<?> list) {
        return list.size();
    }

    public static void zzl(int i, List<Integer> list, zzhq zzhqVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhqVar.zzk(i, list, z);
    }

    public static void zzm(int i, List<Integer> list, zzhq zzhqVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhqVar.zzh(i, list, z);
    }

    public static void zzn(int i, List<Boolean> list, zzhq zzhqVar, boolean z) {
        if (list == null || list.isEmpty()) {
            return;
        }
        zzhqVar.zzi(i, list, z);
    }

    public static int zzo(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return zzc(list) + (list.size() * zzdu.zzy(i));
    }

    public static int zzp(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzd(list) + (size * zzdu.zzy(i));
    }

    public static int zzq(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zze(list) + (size * zzdu.zzy(i));
    }

    public static int zzr(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzf(list) + (size * zzdu.zzy(i));
    }

    public static int zzs(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzg(list) + (size * zzdu.zzy(i));
    }

    public static int zzt(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzh(list) + (size * zzdu.zzy(i));
    }

    public static int zzu(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzi(list) + (size * zzdu.zzy(i));
    }

    public static int zzv(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzdu.zzm(i, 0);
    }

    public static int zzw(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzdu.zzg(i, 0L);
    }

    public static int zzx(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzdu.zzb(i, true);
    }
}
