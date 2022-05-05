package com.google.android.gms.internal.icing;

import java.io.IOException;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzeh.class */
public final class zzeh {
    private static final Class<?> zzkv = zzcg();
    private static final zzex<?, ?> zzkw = zzh(false);
    private static final zzex<?, ?> zzkx = zzh(true);
    private static final zzex<?, ?> zzky = new zzez();

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zza(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzdg)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzbu.zze(list.get(i2).longValue());
                i2++;
            }
        } else {
            zzdg zzdgVar = (zzdg) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzbu.zze(zzdgVar.getLong(i3));
                i3++;
            }
        }
        return i;
    }

    public static void zza(int i, List<String> list, zzfr zzfrVar) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzfrVar.zza(i, list);
        }
    }

    public static void zza(int i, List<?> list, zzfr zzfrVar, zzef zzefVar) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzfrVar.zza(i, list, zzefVar);
        }
    }

    public static void zza(int i, List<Double> list, zzfr zzfrVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzfrVar.zzg(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, FT extends zzcf<FT>> void zza(zzca<FT> zzcaVar, T t, T t2) {
        zzcd<FT> zza = zzcaVar.zza(t2);
        if (!zza.isEmpty()) {
            zzcaVar.zzb(t).zza(zza);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T> void zza(zzdm zzdmVar, T t, T t2, long j) {
        zzfd.zza(t, j, zzdmVar.zzb(zzfd.zzo(t, j), zzfd.zzo(t2, j)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T, UT, UB> void zza(zzex<UT, UB> zzexVar, T t, T t2) {
        zzexVar.zze(t, zzexVar.zzf(zzexVar.zzm(t), zzexVar.zzm(t2)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzb(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzdg)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzbu.zzf(list.get(i2).longValue());
                i2++;
            }
        } else {
            zzdg zzdgVar = (zzdg) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzbu.zzf(zzdgVar.getLong(i3));
                i3++;
            }
        }
        return i;
    }

    public static void zzb(int i, List<zzbi> list, zzfr zzfrVar) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzfrVar.zzb(i, list);
        }
    }

    public static void zzb(int i, List<?> list, zzfr zzfrVar, zzef zzefVar) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzfrVar.zzb(i, list, zzefVar);
        }
    }

    public static void zzb(int i, List<Float> list, zzfr zzfrVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzfrVar.zzf(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzc(int i, Object obj, zzef zzefVar) {
        return obj instanceof zzcz ? zzbu.zza(i, (zzcz) obj) : zzbu.zzb(i, (zzdr) obj, zzefVar);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzc(int i, List<?> list) {
        int i2;
        int size = list.size();
        int i3 = 0;
        int i4 = 0;
        if (size == 0) {
            return 0;
        }
        int zzp = zzbu.zzp(i) * size;
        int i5 = zzp;
        if (!(list instanceof zzdb)) {
            while (true) {
                i2 = i5;
                if (i3 >= size) {
                    break;
                }
                Object obj = list.get(i3);
                i5 += obj instanceof zzbi ? zzbu.zzb((zzbi) obj) : zzbu.zzi((String) obj);
                i3++;
            }
        } else {
            zzdb zzdbVar = (zzdb) list;
            int i6 = zzp;
            while (true) {
                i2 = i6;
                if (i4 >= size) {
                    break;
                }
                Object raw = zzdbVar.getRaw(i4);
                i6 += raw instanceof zzbi ? zzbu.zzb((zzbi) raw) : zzbu.zzi((String) raw);
                i4++;
            }
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzc(int i, List<?> list, zzef zzefVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzp = zzbu.zzp(i) * size;
        for (int i2 = 0; i2 < size; i2++) {
            Object obj = list.get(i2);
            zzp += obj instanceof zzcz ? zzbu.zza((zzcz) obj) : zzbu.zza((zzdr) obj, zzefVar);
        }
        return zzp;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzc(List<Long> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzdg)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzbu.zzg(list.get(i2).longValue());
                i2++;
            }
        } else {
            zzdg zzdgVar = (zzdg) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzbu.zzg(zzdgVar.getLong(i3));
                i3++;
            }
        }
        return i;
    }

    public static void zzc(int i, List<Long> list, zzfr zzfrVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzfrVar.zzc(i, list, z);
        }
    }

    public static zzex<?, ?> zzcd() {
        return zzkw;
    }

    public static zzex<?, ?> zzce() {
        return zzkx;
    }

    public static zzex<?, ?> zzcf() {
        return zzky;
    }

    private static Class<?> zzcg() {
        try {
            return Class.forName("com.google.protobuf.GeneratedMessage");
        } catch (Throwable th) {
            return null;
        }
    }

    private static Class<?> zzch() {
        try {
            return Class.forName("com.google.protobuf.UnknownFieldSetSchema");
        } catch (Throwable th) {
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzd(int i, List<zzbi> list) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int zzp = size * zzbu.zzp(i);
        for (int i2 = 0; i2 < list.size(); i2++) {
            zzp += zzbu.zzb(list.get(i2));
        }
        return zzp;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzd(int i, List<zzdr> list, zzef zzefVar) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            i2 += zzbu.zzc(i, list.get(i3), zzefVar);
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzd(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzcl)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzbu.zzv(list.get(i2).intValue());
                i2++;
            }
        } else {
            zzcl zzclVar = (zzcl) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzbu.zzv(zzclVar.getInt(i3));
                i3++;
            }
        }
        return i;
    }

    public static void zzd(int i, List<Long> list, zzfr zzfrVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzfrVar.zzd(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean zzd(Object obj, Object obj2) {
        if (obj != obj2) {
            return obj != null && obj.equals(obj2);
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zze(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzcl)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzbu.zzq(list.get(i2).intValue());
                i2++;
            }
        } else {
            zzcl zzclVar = (zzcl) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzbu.zzq(zzclVar.getInt(i3));
                i3++;
            }
        }
        return i;
    }

    public static void zze(int i, List<Long> list, zzfr zzfrVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzfrVar.zzn(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzf(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzcl)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzbu.zzr(list.get(i2).intValue());
                i2++;
            }
        } else {
            zzcl zzclVar = (zzcl) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzbu.zzr(zzclVar.getInt(i3));
                i3++;
            }
        }
        return i;
    }

    public static void zzf(int i, List<Long> list, zzfr zzfrVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzfrVar.zze(i, list, z);
        }
    }

    public static void zzf(Class<?> cls) {
        if (!zzck.class.isAssignableFrom(cls) && zzkv != null && !zzkv.isAssignableFrom(cls)) {
            throw new IllegalArgumentException("Message classes must extend GeneratedMessage or GeneratedMessageLite");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzg(List<Integer> list) {
        int i;
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        if (size == 0) {
            return 0;
        }
        if (!(list instanceof zzcl)) {
            int i4 = 0;
            while (true) {
                i = i4;
                if (i2 >= size) {
                    break;
                }
                i4 += zzbu.zzs(list.get(i2).intValue());
                i2++;
            }
        } else {
            zzcl zzclVar = (zzcl) list;
            int i5 = 0;
            while (true) {
                i = i5;
                if (i3 >= size) {
                    break;
                }
                i5 += zzbu.zzs(zzclVar.getInt(i3));
                i3++;
            }
        }
        return i;
    }

    public static void zzg(int i, List<Long> list, zzfr zzfrVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzfrVar.zzl(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzh(List<?> list) {
        return list.size() << 2;
    }

    private static zzex<?, ?> zzh(boolean z) {
        try {
            Class<?> zzch = zzch();
            if (zzch == null) {
                return null;
            }
            return (zzex) zzch.getConstructor(Boolean.TYPE).newInstance(Boolean.valueOf(z));
        } catch (Throwable th) {
            return null;
        }
    }

    public static void zzh(int i, List<Integer> list, zzfr zzfrVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzfrVar.zza(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzi(List<?> list) {
        return list.size() << 3;
    }

    public static void zzi(int i, List<Integer> list, zzfr zzfrVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzfrVar.zzj(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzj(List<?> list) {
        return list.size();
    }

    public static void zzj(int i, List<Integer> list, zzfr zzfrVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzfrVar.zzm(i, list, z);
        }
    }

    public static void zzk(int i, List<Integer> list, zzfr zzfrVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzfrVar.zzb(i, list, z);
        }
    }

    public static void zzl(int i, List<Integer> list, zzfr zzfrVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzfrVar.zzk(i, list, z);
        }
    }

    public static void zzm(int i, List<Integer> list, zzfr zzfrVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzfrVar.zzh(i, list, z);
        }
    }

    public static void zzn(int i, List<Boolean> list, zzfr zzfrVar, boolean z) throws IOException {
        if (list != null && !list.isEmpty()) {
            zzfrVar.zzi(i, list, z);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzo(int i, List<Long> list, boolean z) {
        if (list.size() == 0) {
            return 0;
        }
        return zza(list) + (list.size() * zzbu.zzp(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzp(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzb(list) + (size * zzbu.zzp(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzq(int i, List<Long> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzc(list) + (size * zzbu.zzp(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzr(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzd(list) + (size * zzbu.zzp(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzs(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zze(list) + (size * zzbu.zzp(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzt(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzf(list) + (size * zzbu.zzp(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzu(int i, List<Integer> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return zzg(list) + (size * zzbu.zzp(i));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzv(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzbu.zzj(i, 0);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzw(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzbu.zzg(i, 0L);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int zzx(int i, List<?> list, boolean z) {
        int size = list.size();
        if (size == 0) {
            return 0;
        }
        return size * zzbu.zzb(i, true);
    }
}
