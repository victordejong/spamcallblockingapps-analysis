package com.google.android.gms.internal.firebase_perf;

import com.google.android.flexbox.FlexItem;
import com.google.android.gms.internal.firebase-perf.zzdd;
import com.google.android.gms.internal.firebase-perf.zzdy;
import com.google.android.gms.internal.firebase-perf.zzfb;
import com.google.android.gms.internal.firebase-perf.zzfi;
import com.google.android.gms.internal.firebase-perf.zzfk;
import com.google.android.gms.internal.firebase-perf.zzfr;
import com.google.android.gms.internal.firebase-perf.zzfw;
import com.google.android.gms.internal.firebase-perf.zzge;
import com.google.android.gms.internal.firebase-perf.zzgw;
import com.google.android.gms.internal.firebase-perf.zzhq;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzfv.class */
final class zzfv<T> implements zzge<T> {
    private static final int[] zzsq = new int[0];
    private static final Unsafe zzsr = zzhc.zzil();
    private final zzfr zzsm;
    private final zzgw<?, ?> zzsn;
    private final boolean zzso;
    private final zzdy<?> zzsp;
    private final int[] zzss;
    private final Object[] zzst;
    private final int zzsu;
    private final int zzsv;
    private final boolean zzsw;
    private final boolean zzsx;
    private final boolean zzsy;
    private final int[] zzsz;
    private final int zzta;
    private final int zztb;
    private final zzfw zztc;
    private final zzfb zztd;
    private final zzfk zzte;

    private zzfv(int[] iArr, Object[] objArr, int i, int i2, zzfr zzfrVar, boolean z, boolean z2, int[] iArr2, int i3, int i4, zzfw zzfwVar, zzfb zzfbVar, zzgw<?, ?> zzgwVar, zzdy<?> zzdyVar, zzfk zzfkVar) {
        this.zzss = iArr;
        this.zzst = objArr;
        this.zzsu = i;
        this.zzsv = i2;
        this.zzsw = zzfrVar instanceof zzeh;
        this.zzsx = z;
        this.zzso = zzdyVar != null && zzdyVar.zze(zzfrVar);
        this.zzsy = false;
        this.zzsz = iArr2;
        this.zzta = i3;
        this.zztb = i4;
        this.zztc = zzfwVar;
        this.zztd = zzfbVar;
        this.zzsn = zzgwVar;
        this.zzsp = zzdyVar;
        this.zzsm = zzfrVar;
        this.zzte = zzfkVar;
    }

    private static <UT, UB> int zza(zzgw<UT, UB> zzgwVar, T t) {
        return zzgwVar.zzl(zzgwVar.zzn(t));
    }

    /* JADX WARN: Removed duplicated region for block: B:183:0x0914  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> com.google.android.gms.internal.firebase_perf.zzfv<T> zza(java.lang.Class<T> r18, com.google.android.gms.internal.firebase_perf.zzfp r19, com.google.android.gms.internal.firebase_perf.zzfw r20, com.google.android.gms.internal.firebase_perf.zzfb r21, com.google.android.gms.internal.firebase_perf.zzgw<?, ?> r22, com.google.android.gms.internal.firebase_perf.zzdy<?> r23, com.google.android.gms.internal.firebase_perf.zzfk r24) {
        /*
            Method dump skipped, instructions count: 2531
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_perf.zzfv.zza(java.lang.Class, com.google.android.gms.internal.firebase-perf.zzfp, com.google.android.gms.internal.firebase-perf.zzfw, com.google.android.gms.internal.firebase-perf.zzfb, com.google.android.gms.internal.firebase-perf.zzgw, com.google.android.gms.internal.firebase-perf.zzdy, com.google.android.gms.internal.firebase-perf.zzfk):com.google.android.gms.internal.firebase-perf.zzfv");
    }

    private static Field zza(Class<?> cls, String str) {
        try {
            return cls.getDeclaredField(str);
        } catch (NoSuchFieldException e) {
            Field[] declaredFields = cls.getDeclaredFields();
            for (Field field : declaredFields) {
                if (str.equals(field.getName())) {
                    return field;
                }
            }
            String name = cls.getName();
            String arrays = Arrays.toString(declaredFields);
            StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 40 + String.valueOf(name).length() + String.valueOf(arrays).length());
            sb.append("Field ");
            sb.append(str);
            sb.append(" for ");
            sb.append(name);
            sb.append(" not found. Known fields are ");
            sb.append(arrays);
            throw new RuntimeException(sb.toString());
        }
    }

    private static void zza(int i, Object obj, zzhq zzhqVar) {
        if (obj instanceof String) {
            zzhqVar.zza(i, (String) obj);
        } else {
            zzhqVar.zza(i, (zzdd) obj);
        }
    }

    private static <UT, UB> void zza(zzgw<UT, UB> zzgwVar, T t, zzhq zzhqVar) {
        zzgwVar.zza(zzgwVar.zzn(t), zzhqVar);
    }

    private final <K, V> void zza(zzhq zzhqVar, int i, Object obj, int i2) {
        if (obj != null) {
            zzhqVar.zza(i, (zzfi) this.zzte.zzi(zzaq(i2)), (Map) this.zzte.zzg(obj));
        }
    }

    private final void zza(T t, T t2, int i) {
        long zzar = zzar(i) & 1048575;
        if (!zza((zzfv<T>) t2, i)) {
            return;
        }
        Object zzo = zzhc.zzo(t, zzar);
        Object zzo2 = zzhc.zzo(t2, zzar);
        if (zzo != null && zzo2 != null) {
            zzhc.zza(t, zzar, zzei.zzc(zzo, zzo2));
            zzb((zzfv<T>) t, i);
        } else if (zzo2 == null) {
        } else {
            zzhc.zza(t, zzar, zzo2);
            zzb((zzfv<T>) t, i);
        }
    }

    private final boolean zza(T t, int i) {
        if (!this.zzsx) {
            int zzas = zzas(i);
            return (zzhc.zzj(t, (long) (zzas & 1048575)) & (1 << (zzas >>> 20))) != 0;
        }
        int zzar = zzar(i);
        long j = zzar & 1048575;
        switch ((zzar & 267386880) >>> 20) {
            case 0:
                return zzhc.zzn(t, j) != FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
            case 1:
                return zzhc.zzm(t, j) != FlexItem.FLEX_GROW_DEFAULT;
            case 2:
                return zzhc.zzk(t, j) != 0;
            case 3:
                return zzhc.zzk(t, j) != 0;
            case 4:
                return zzhc.zzj(t, j) != 0;
            case 5:
                return zzhc.zzk(t, j) != 0;
            case 6:
                return zzhc.zzj(t, j) != 0;
            case 7:
                return zzhc.zzl(t, j);
            case 8:
                Object zzo = zzhc.zzo(t, j);
                if (zzo instanceof String) {
                    return !((String) zzo).isEmpty();
                } else if (!(zzo instanceof zzdd)) {
                    throw new IllegalArgumentException();
                } else {
                    return !zzdd.zzmh.equals(zzo);
                }
            case 9:
                return zzhc.zzo(t, j) != null;
            case 10:
                return !zzdd.zzmh.equals(zzhc.zzo(t, j));
            case 11:
                return zzhc.zzj(t, j) != 0;
            case 12:
                return zzhc.zzj(t, j) != 0;
            case 13:
                return zzhc.zzj(t, j) != 0;
            case 14:
                return zzhc.zzk(t, j) != 0;
            case 15:
                return zzhc.zzj(t, j) != 0;
            case 16:
                return zzhc.zzk(t, j) != 0;
            case 17:
                return zzhc.zzo(t, j) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zza(T t, int i, int i2) {
        return zzhc.zzj(t, (long) (zzas(i2) & 1048575)) == i;
    }

    private final boolean zza(T t, int i, int i2, int i3) {
        return this.zzsx ? zza((zzfv<T>) t, i) : (i2 & i3) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean zza(Object obj, int i, zzge zzgeVar) {
        return zzgeVar.zzk(zzhc.zzo(obj, i & 1048575));
    }

    private final zzge zzap(int i) {
        int i2 = (i / 3) << 1;
        zzge zzgeVar = (zzge) this.zzst[i2];
        if (zzgeVar != null) {
            return zzgeVar;
        }
        zzge zze = zzgd.zzhr().zze((Class) this.zzst[i2 + 1]);
        this.zzst[i2] = zze;
        return zze;
    }

    private final Object zzaq(int i) {
        return this.zzst[(i / 3) << 1];
    }

    private final int zzar(int i) {
        return this.zzss[i + 1];
    }

    private final int zzas(int i) {
        return this.zzss[i + 2];
    }

    private final void zzb(T t, int i) {
        if (this.zzsx) {
            return;
        }
        int zzas = zzas(i);
        long j = zzas & 1048575;
        zzhc.zza((Object) t, j, zzhc.zzj(t, j) | (1 << (zzas >>> 20)));
    }

    private final void zzb(T t, int i, int i2) {
        zzhc.zza((Object) t, zzas(i2) & 1048575, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x098e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzb(T r9, com.google.android.gms.internal.firebase_perf.zzhq r10) {
        /*
            Method dump skipped, instructions count: 2494
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_perf.zzfv.zzb(java.lang.Object, com.google.android.gms.internal.firebase-perf.zzhq):void");
    }

    private final void zzb(T t, T t2, int i) {
        int zzar = zzar(i);
        int i2 = this.zzss[i];
        long j = zzar & 1048575;
        if (!zza((zzfv<T>) t2, i2, i)) {
            return;
        }
        Object zzo = zzhc.zzo(t, j);
        Object zzo2 = zzhc.zzo(t2, j);
        if (zzo != null && zzo2 != null) {
            zzhc.zza(t, j, zzei.zzc(zzo, zzo2));
            zzb((zzfv<T>) t, i2, i);
        } else if (zzo2 == null) {
        } else {
            zzhc.zza(t, j, zzo2);
            zzb((zzfv<T>) t, i2, i);
        }
    }

    private final boolean zzc(T t, T t2, int i) {
        return zza((zzfv<T>) t, i) == zza((zzfv<T>) t2, i);
    }

    private static List<?> zzd(Object obj, long j) {
        return (List) zzhc.zzo(obj, j);
    }

    private static <T> double zze(T t, long j) {
        return ((Double) zzhc.zzo(t, j)).doubleValue();
    }

    private static <T> float zzf(T t, long j) {
        return ((Float) zzhc.zzo(t, j)).floatValue();
    }

    private static <T> int zzg(T t, long j) {
        return ((Integer) zzhc.zzo(t, j)).intValue();
    }

    private static <T> long zzh(T t, long j) {
        return ((Long) zzhc.zzo(t, j)).longValue();
    }

    private static <T> boolean zzi(T t, long j) {
        return ((Boolean) zzhc.zzo(t, j)).booleanValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x017e, code lost:
        if (com.google.android.gms.internal.firebase_perf.zzgg.zzf(com.google.android.gms.internal.firebase_perf.zzhc.zzo(r7, r0), com.google.android.gms.internal.firebase_perf.zzhc.zzo(r8, r0)) != false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x01c6, code lost:
        if (com.google.android.gms.internal.firebase_perf.zzgg.zzf(com.google.android.gms.internal.firebase_perf.zzhc.zzo(r7, r0), com.google.android.gms.internal.firebase_perf.zzhc.zzo(r8, r0)) != false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x01e4, code lost:
        if (com.google.android.gms.internal.firebase_perf.zzhc.zzk(r7, r0) == com.google.android.gms.internal.firebase_perf.zzhc.zzk(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x0201, code lost:
        if (com.google.android.gms.internal.firebase_perf.zzhc.zzj(r7, r0) == com.google.android.gms.internal.firebase_perf.zzhc.zzj(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x021f, code lost:
        if (com.google.android.gms.internal.firebase_perf.zzhc.zzk(r7, r0) == com.google.android.gms.internal.firebase_perf.zzhc.zzk(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x023c, code lost:
        if (com.google.android.gms.internal.firebase_perf.zzhc.zzj(r7, r0) == com.google.android.gms.internal.firebase_perf.zzhc.zzj(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0259, code lost:
        if (com.google.android.gms.internal.firebase_perf.zzhc.zzj(r7, r0) == com.google.android.gms.internal.firebase_perf.zzhc.zzj(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0276, code lost:
        if (com.google.android.gms.internal.firebase_perf.zzhc.zzj(r7, r0) == com.google.android.gms.internal.firebase_perf.zzhc.zzj(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0296, code lost:
        if (com.google.android.gms.internal.firebase_perf.zzgg.zzf(com.google.android.gms.internal.firebase_perf.zzhc.zzo(r7, r0), com.google.android.gms.internal.firebase_perf.zzhc.zzo(r8, r0)) != false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x02b6, code lost:
        if (com.google.android.gms.internal.firebase_perf.zzgg.zzf(com.google.android.gms.internal.firebase_perf.zzhc.zzo(r7, r0), com.google.android.gms.internal.firebase_perf.zzhc.zzo(r8, r0)) != false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x02d6, code lost:
        if (com.google.android.gms.internal.firebase_perf.zzgg.zzf(com.google.android.gms.internal.firebase_perf.zzhc.zzo(r7, r0), com.google.android.gms.internal.firebase_perf.zzhc.zzo(r8, r0)) != false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x02f3, code lost:
        if (com.google.android.gms.internal.firebase_perf.zzhc.zzl(r7, r0) == com.google.android.gms.internal.firebase_perf.zzhc.zzl(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0310, code lost:
        if (com.google.android.gms.internal.firebase_perf.zzhc.zzj(r7, r0) == com.google.android.gms.internal.firebase_perf.zzhc.zzj(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x032e, code lost:
        if (com.google.android.gms.internal.firebase_perf.zzhc.zzk(r7, r0) == com.google.android.gms.internal.firebase_perf.zzhc.zzk(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x034b, code lost:
        if (com.google.android.gms.internal.firebase_perf.zzhc.zzj(r7, r0) == com.google.android.gms.internal.firebase_perf.zzhc.zzj(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0369, code lost:
        if (com.google.android.gms.internal.firebase_perf.zzhc.zzk(r7, r0) == com.google.android.gms.internal.firebase_perf.zzhc.zzk(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0387, code lost:
        if (com.google.android.gms.internal.firebase_perf.zzhc.zzk(r7, r0) == com.google.android.gms.internal.firebase_perf.zzhc.zzk(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x03aa, code lost:
        if (java.lang.Float.floatToIntBits(com.google.android.gms.internal.firebase_perf.zzhc.zzm(r7, r0)) == java.lang.Float.floatToIntBits(com.google.android.gms.internal.firebase_perf.zzhc.zzm(r8, r0))) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x03ce, code lost:
        if (java.lang.Double.doubleToLongBits(com.google.android.gms.internal.firebase_perf.zzhc.zzn(r7, r0)) == java.lang.Double.doubleToLongBits(com.google.android.gms.internal.firebase_perf.zzhc.zzn(r8, r0))) goto L86;
     */
    @Override // com.google.android.gms.internal.firebase_perf.zzge
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(T r7, T r8) {
        /*
            Method dump skipped, instructions count: 1046
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_perf.zzfv.equals(java.lang.Object, java.lang.Object):boolean");
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzge
    public final int hashCode(T t) {
        int i;
        int i2;
        int i3;
        int length = this.zzss.length;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int i6 = i5;
            if (i4 >= length) {
                int hashCode = (i6 * 53) + this.zzsn.zzn(t).hashCode();
                int i7 = hashCode;
                if (this.zzso) {
                    i7 = (hashCode * 53) + this.zzsp.zzb(t).hashCode();
                }
                return i7;
            }
            int zzar = zzar(i4);
            int i8 = this.zzss[i4];
            long j = 1048575 & zzar;
            int i9 = 37;
            switch ((zzar & 267386880) >>> 20) {
                case 0:
                    i2 = i6 * 53;
                    i3 = zzei.zzat(Double.doubleToLongBits(zzhc.zzn(t, j)));
                    i = i2 + i3;
                    break;
                case 1:
                    i2 = i6 * 53;
                    i3 = Float.floatToIntBits(zzhc.zzm(t, j));
                    i = i2 + i3;
                    break;
                case 2:
                    i2 = i6 * 53;
                    i3 = zzei.zzat(zzhc.zzk(t, j));
                    i = i2 + i3;
                    break;
                case 3:
                    i2 = i6 * 53;
                    i3 = zzei.zzat(zzhc.zzk(t, j));
                    i = i2 + i3;
                    break;
                case 4:
                    i2 = i6 * 53;
                    i3 = zzhc.zzj(t, j);
                    i = i2 + i3;
                    break;
                case 5:
                    i2 = i6 * 53;
                    i3 = zzei.zzat(zzhc.zzk(t, j));
                    i = i2 + i3;
                    break;
                case 6:
                    i2 = i6 * 53;
                    i3 = zzhc.zzj(t, j);
                    i = i2 + i3;
                    break;
                case 7:
                    i2 = i6 * 53;
                    i3 = zzei.zzf(zzhc.zzl(t, j));
                    i = i2 + i3;
                    break;
                case 8:
                    i2 = i6 * 53;
                    i3 = ((String) zzhc.zzo(t, j)).hashCode();
                    i = i2 + i3;
                    break;
                case 9:
                    Object zzo = zzhc.zzo(t, j);
                    if (zzo != null) {
                        i9 = zzo.hashCode();
                    }
                    i = (i6 * 53) + i9;
                    break;
                case 10:
                    i2 = i6 * 53;
                    i3 = zzhc.zzo(t, j).hashCode();
                    i = i2 + i3;
                    break;
                case 11:
                    i2 = i6 * 53;
                    i3 = zzhc.zzj(t, j);
                    i = i2 + i3;
                    break;
                case 12:
                    i2 = i6 * 53;
                    i3 = zzhc.zzj(t, j);
                    i = i2 + i3;
                    break;
                case 13:
                    i2 = i6 * 53;
                    i3 = zzhc.zzj(t, j);
                    i = i2 + i3;
                    break;
                case 14:
                    i2 = i6 * 53;
                    i3 = zzei.zzat(zzhc.zzk(t, j));
                    i = i2 + i3;
                    break;
                case 15:
                    i2 = i6 * 53;
                    i3 = zzhc.zzj(t, j);
                    i = i2 + i3;
                    break;
                case 16:
                    i2 = i6 * 53;
                    i3 = zzei.zzat(zzhc.zzk(t, j));
                    i = i2 + i3;
                    break;
                case 17:
                    Object zzo2 = zzhc.zzo(t, j);
                    if (zzo2 != null) {
                        i9 = zzo2.hashCode();
                    }
                    i = (i6 * 53) + i9;
                    break;
                case 18:
                case 19:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                case 39:
                case 40:
                case 41:
                case 42:
                case 43:
                case 44:
                case 45:
                case 46:
                case 47:
                case 48:
                case 49:
                    i2 = i6 * 53;
                    i3 = zzhc.zzo(t, j).hashCode();
                    i = i2 + i3;
                    break;
                case 50:
                    i2 = i6 * 53;
                    i3 = zzhc.zzo(t, j).hashCode();
                    i = i2 + i3;
                    break;
                case 51:
                    i = i6;
                    if (!zza((zzfv<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzei.zzat(Double.doubleToLongBits(zze(t, j)));
                        i = i2 + i3;
                        break;
                    }
                case 52:
                    i = i6;
                    if (!zza((zzfv<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = Float.floatToIntBits(zzf(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 53:
                    i = i6;
                    if (!zza((zzfv<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzei.zzat(zzh(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 54:
                    i = i6;
                    if (!zza((zzfv<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzei.zzat(zzh(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 55:
                    i = i6;
                    if (!zza((zzfv<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzg(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 56:
                    i = i6;
                    if (!zza((zzfv<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzei.zzat(zzh(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 57:
                    i = i6;
                    if (!zza((zzfv<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzg(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 58:
                    i = i6;
                    if (!zza((zzfv<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzei.zzf(zzi(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 59:
                    i = i6;
                    if (!zza((zzfv<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = ((String) zzhc.zzo(t, j)).hashCode();
                        i = i2 + i3;
                        break;
                    }
                case 60:
                    i = i6;
                    if (!zza((zzfv<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzhc.zzo(t, j).hashCode();
                        i = i2 + i3;
                        break;
                    }
                case 61:
                    i = i6;
                    if (!zza((zzfv<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzhc.zzo(t, j).hashCode();
                        i = i2 + i3;
                        break;
                    }
                case 62:
                    i = i6;
                    if (!zza((zzfv<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzg(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 63:
                    i = i6;
                    if (!zza((zzfv<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzg(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 64:
                    i = i6;
                    if (!zza((zzfv<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzg(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 65:
                    i = i6;
                    if (!zza((zzfv<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzei.zzat(zzh(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 66:
                    i = i6;
                    if (!zza((zzfv<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzg(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 67:
                    i = i6;
                    if (!zza((zzfv<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzei.zzat(zzh(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 68:
                    i = i6;
                    if (!zza((zzfv<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzhc.zzo(t, j).hashCode();
                        i = i2 + i3;
                        break;
                    }
                default:
                    i = i6;
                    break;
            }
            i4 += 3;
            i5 = i;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0a54  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0ad0  */
    /* JADX WARN: Removed duplicated region for block: B:339:0x14cf  */
    @Override // com.google.android.gms.internal.firebase_perf.zzge
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r8, com.google.android.gms.internal.firebase_perf.zzhq r9) {
        /*
            Method dump skipped, instructions count: 5382
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_perf.zzfv.zza(java.lang.Object, com.google.android.gms.internal.firebase-perf.zzhq):void");
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzge
    public final void zzd(T t) {
        int i;
        int i2 = this.zzta;
        while (true) {
            i = this.zztb;
            if (i2 >= i) {
                break;
            }
            long zzar = zzar(this.zzsz[i2]) & 1048575;
            Object zzo = zzhc.zzo(t, zzar);
            if (zzo != null) {
                zzhc.zza(t, zzar, this.zzte.zzh(zzo));
            }
            i2++;
        }
        int length = this.zzsz.length;
        for (int i3 = i; i3 < length; i3++) {
            this.zztd.zza(t, this.zzsz[i3]);
        }
        this.zzsn.zzd(t);
        if (this.zzso) {
            this.zzsp.zzd(t);
        }
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzge
    public final void zze(T t, T t2) {
        if (t2 != null) {
            for (int i = 0; i < this.zzss.length; i += 3) {
                int zzar = zzar(i);
                long j = 1048575 & zzar;
                int i2 = this.zzss[i];
                switch ((zzar & 267386880) >>> 20) {
                    case 0:
                        if (zza((zzfv<T>) t2, i)) {
                            zzhc.zza(t, j, zzhc.zzn(t2, j));
                            zzb((zzfv<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (zza((zzfv<T>) t2, i)) {
                            zzhc.zza((Object) t, j, zzhc.zzm(t2, j));
                            zzb((zzfv<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (zza((zzfv<T>) t2, i)) {
                            zzhc.zza((Object) t, j, zzhc.zzk(t2, j));
                            zzb((zzfv<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (zza((zzfv<T>) t2, i)) {
                            zzhc.zza((Object) t, j, zzhc.zzk(t2, j));
                            zzb((zzfv<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (zza((zzfv<T>) t2, i)) {
                            zzhc.zza((Object) t, j, zzhc.zzj(t2, j));
                            zzb((zzfv<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (zza((zzfv<T>) t2, i)) {
                            zzhc.zza((Object) t, j, zzhc.zzk(t2, j));
                            zzb((zzfv<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (zza((zzfv<T>) t2, i)) {
                            zzhc.zza((Object) t, j, zzhc.zzj(t2, j));
                            zzb((zzfv<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (zza((zzfv<T>) t2, i)) {
                            zzhc.zza(t, j, zzhc.zzl(t2, j));
                            zzb((zzfv<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (zza((zzfv<T>) t2, i)) {
                            zzhc.zza(t, j, zzhc.zzo(t2, j));
                            zzb((zzfv<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        zza(t, t2, i);
                        break;
                    case 10:
                        if (zza((zzfv<T>) t2, i)) {
                            zzhc.zza(t, j, zzhc.zzo(t2, j));
                            zzb((zzfv<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (zza((zzfv<T>) t2, i)) {
                            zzhc.zza((Object) t, j, zzhc.zzj(t2, j));
                            zzb((zzfv<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (zza((zzfv<T>) t2, i)) {
                            zzhc.zza((Object) t, j, zzhc.zzj(t2, j));
                            zzb((zzfv<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (zza((zzfv<T>) t2, i)) {
                            zzhc.zza((Object) t, j, zzhc.zzj(t2, j));
                            zzb((zzfv<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (zza((zzfv<T>) t2, i)) {
                            zzhc.zza((Object) t, j, zzhc.zzk(t2, j));
                            zzb((zzfv<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (zza((zzfv<T>) t2, i)) {
                            zzhc.zza((Object) t, j, zzhc.zzj(t2, j));
                            zzb((zzfv<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (zza((zzfv<T>) t2, i)) {
                            zzhc.zza((Object) t, j, zzhc.zzk(t2, j));
                            zzb((zzfv<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        zza(t, t2, i);
                        break;
                    case 18:
                    case 19:
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                    case 29:
                    case 30:
                    case 31:
                    case 32:
                    case 33:
                    case 34:
                    case 35:
                    case 36:
                    case 37:
                    case 38:
                    case 39:
                    case 40:
                    case 41:
                    case 42:
                    case 43:
                    case 44:
                    case 45:
                    case 46:
                    case 47:
                    case 48:
                    case 49:
                        this.zztd.zza(t, t2, j);
                        break;
                    case 50:
                        zzgg.zza((zzfk) this.zzte, (Object) t, (Object) t2, j);
                        break;
                    case 51:
                    case 52:
                    case 53:
                    case 54:
                    case 55:
                    case 56:
                    case 57:
                    case 58:
                    case 59:
                        if (zza((zzfv<T>) t2, i2, i)) {
                            zzhc.zza(t, j, zzhc.zzo(t2, j));
                            zzb((zzfv<T>) t, i2, i);
                            break;
                        } else {
                            break;
                        }
                    case 60:
                        zzb(t, t2, i);
                        break;
                    case 61:
                    case 62:
                    case 63:
                    case 64:
                    case 65:
                    case 66:
                    case 67:
                        if (zza((zzfv<T>) t2, i2, i)) {
                            zzhc.zza(t, j, zzhc.zzo(t2, j));
                            zzb((zzfv<T>) t, i2, i);
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        zzb(t, t2, i);
                        break;
                }
            }
            zzgg.zza((zzgw) this.zzsn, (Object) t, (Object) t2);
            if (!this.zzso) {
                return;
            }
            zzgg.zza((zzdy) this.zzsp, (Object) t, (Object) t2);
            return;
        }
        throw new NullPointerException();
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.firebase_perf.zzge
    public final boolean zzk(T t) {
        int i;
        int i2;
        int i3 = 0;
        int i4 = -1;
        int i5 = 0;
        while (i5 < this.zzta) {
            int i6 = this.zzsz[i5];
            int i7 = this.zzss[i6];
            int zzar = zzar(i6);
            if (!this.zzsx) {
                int i8 = this.zzss[i6 + 2];
                int i9 = i8 & 1048575;
                int i10 = 1 << (i8 >>> 20);
                i2 = i4;
                i = i10;
                if (i9 != i4) {
                    i3 = zzsr.getInt(t, i9);
                    i2 = i9;
                    i = i10;
                }
            } else {
                i = 0;
                i2 = i4;
            }
            if (((268435456 & zzar) != 0) && !zza((zzfv<T>) t, i6, i3, i)) {
                return false;
            }
            int i11 = (267386880 & zzar) >>> 20;
            if (i11 != 9 && i11 != 17) {
                if (i11 != 27) {
                    if (i11 == 60 || i11 == 68) {
                        if (zza((zzfv<T>) t, i7, i6) && !zza(t, zzar, zzap(i6))) {
                            return false;
                        }
                    } else if (i11 != 49) {
                        if (i11 != 50) {
                            continue;
                        } else {
                            Map<?, ?> zzg = this.zzte.zzg(zzhc.zzo(t, zzar & 1048575));
                            boolean z = true;
                            if (!zzg.isEmpty()) {
                                z = true;
                                if (this.zzte.zzi(zzaq(i6)).zzsf.zzip() == zzhr.zzwj) {
                                    zzge<T> zzgeVar = null;
                                    Iterator<?> it = zzg.values().iterator();
                                    while (true) {
                                        z = true;
                                        if (!it.hasNext()) {
                                            break;
                                        }
                                        Object next = it.next();
                                        zzge<T> zzgeVar2 = zzgeVar;
                                        if (zzgeVar == null) {
                                            zzgeVar2 = zzgd.zzhr().zze(next.getClass());
                                        }
                                        zzgeVar = zzgeVar2;
                                        if (!zzgeVar2.zzk(next)) {
                                            z = false;
                                            break;
                                        }
                                    }
                                }
                            }
                            if (!z) {
                                return false;
                            }
                        }
                    }
                }
                List list = (List) zzhc.zzo(t, zzar & 1048575);
                boolean z2 = true;
                if (!list.isEmpty()) {
                    zzge zzap = zzap(i6);
                    int i12 = 0;
                    while (true) {
                        z2 = true;
                        if (i12 >= list.size()) {
                            break;
                        } else if (!zzap.zzk(list.get(i12))) {
                            z2 = false;
                            break;
                        } else {
                            i12++;
                        }
                    }
                }
                if (!z2) {
                    return false;
                }
            } else if (zza((zzfv<T>) t, i6, i3, i) && !zza(t, zzar, zzap(i6))) {
                return false;
            }
            i5++;
            i4 = i2;
        }
        return !this.zzso || this.zzsp.zzb(t).isInitialized();
    }

    @Override // com.google.android.gms.internal.firebase_perf.zzge
    public final int zzl(T t) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int zzc;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int zzb;
        int i13;
        int i14;
        int i15;
        int i16 = 1;
        int i17 = 0;
        if (this.zzsx) {
            Unsafe unsafe = zzsr;
            int i18 = 0;
            int i19 = 0;
            while (true) {
                int i20 = i19;
                if (i18 >= this.zzss.length) {
                    return i20 + zza((zzgw) this.zzsn, (Object) t);
                }
                int zzar = zzar(i18);
                int i21 = (zzar & 267386880) >>> 20;
                int i22 = this.zzss[i18];
                long j = zzar & 1048575;
                int i23 = (i21 < zzee.zzov.m3781id() || i21 > zzee.zzpi.m3781id()) ? 0 : this.zzss[i18 + 2] & 1048575;
                switch (i21) {
                    case 0:
                        i12 = i20;
                        if (zza((zzfv<T>) t, i18)) {
                            zzb = zzdu.zzb(i22, (double) FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 1:
                        i12 = i20;
                        if (zza((zzfv<T>) t, i18)) {
                            zzb = zzdu.zzb(i22, (float) FlexItem.FLEX_GROW_DEFAULT);
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 2:
                        i12 = i20;
                        if (zza((zzfv<T>) t, i18)) {
                            zzb = zzdu.zzd(i22, zzhc.zzk(t, j));
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 3:
                        i12 = i20;
                        if (zza((zzfv<T>) t, i18)) {
                            zzb = zzdu.zze(i22, zzhc.zzk(t, j));
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 4:
                        i12 = i20;
                        if (zza((zzfv<T>) t, i18)) {
                            zzb = zzdu.zzj(i22, zzhc.zzj(t, j));
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 5:
                        i12 = i20;
                        if (zza((zzfv<T>) t, i18)) {
                            zzb = zzdu.zzg(i22, 0L);
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 6:
                        i12 = i20;
                        if (zza((zzfv<T>) t, i18)) {
                            zzb = zzdu.zzm(i22, 0);
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 7:
                        i12 = i20;
                        if (zza((zzfv<T>) t, i18)) {
                            zzb = zzdu.zzb(i22, true);
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 8:
                        i12 = i20;
                        if (zza((zzfv<T>) t, i18)) {
                            Object zzo = zzhc.zzo(t, j);
                            if (zzo instanceof zzdd) {
                                zzb = zzdu.zzc(i22, (zzdd) ((zzdd) zzo));
                                break;
                            } else {
                                zzb = zzdu.zzb(i22, (String) zzo);
                                break;
                            }
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 9:
                        i12 = i20;
                        if (zza((zzfv<T>) t, i18)) {
                            zzb = zzgg.zzc(i22, zzhc.zzo(t, j), zzap(i18));
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 10:
                        i12 = i20;
                        if (zza((zzfv<T>) t, i18)) {
                            zzb = zzdu.zzc(i22, (zzdd) ((zzdd) zzhc.zzo(t, j)));
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 11:
                        i12 = i20;
                        if (zza((zzfv<T>) t, i18)) {
                            zzb = zzdu.zzk(i22, zzhc.zzj(t, j));
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 12:
                        i12 = i20;
                        if (zza((zzfv<T>) t, i18)) {
                            zzb = zzdu.zzo(i22, zzhc.zzj(t, j));
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 13:
                        i12 = i20;
                        if (zza((zzfv<T>) t, i18)) {
                            zzb = zzdu.zzn(i22, 0);
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 14:
                        i12 = i20;
                        if (zza((zzfv<T>) t, i18)) {
                            zzb = zzdu.zzh(i22, 0L);
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 15:
                        i12 = i20;
                        if (zza((zzfv<T>) t, i18)) {
                            zzb = zzdu.zzl(i22, zzhc.zzj(t, j));
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 16:
                        i12 = i20;
                        if (zza((zzfv<T>) t, i18)) {
                            zzb = zzdu.zzf(i22, zzhc.zzk(t, j));
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 17:
                        i12 = i20;
                        if (zza((zzfv<T>) t, i18)) {
                            zzb = zzdu.zzc(i22, (zzfr) zzhc.zzo(t, j), zzap(i18));
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 18:
                        zzb = zzgg.zzw(i22, zzd(t, j), false);
                        break;
                    case 19:
                        zzb = zzgg.zzv(i22, zzd(t, j), false);
                        break;
                    case 20:
                        zzb = zzgg.zzo(i22, zzd(t, j), false);
                        break;
                    case 21:
                        zzb = zzgg.zzp(i22, zzd(t, j), false);
                        break;
                    case 22:
                        zzb = zzgg.zzs(i22, zzd(t, j), false);
                        break;
                    case 23:
                        zzb = zzgg.zzw(i22, zzd(t, j), false);
                        break;
                    case 24:
                        zzb = zzgg.zzv(i22, zzd(t, j), false);
                        break;
                    case 25:
                        zzb = zzgg.zzx(i22, zzd(t, j), false);
                        break;
                    case 26:
                        zzb = zzgg.zzc(i22, zzd(t, j));
                        break;
                    case 27:
                        zzb = zzgg.zzc(i22, zzd(t, j), (zzge) zzap(i18));
                        break;
                    case 28:
                        zzb = zzgg.zzd(i22, zzd(t, j));
                        break;
                    case 29:
                        zzb = zzgg.zzt(i22, zzd(t, j), false);
                        break;
                    case 30:
                        zzb = zzgg.zzr(i22, zzd(t, j), false);
                        break;
                    case 31:
                        zzb = zzgg.zzv(i22, zzd(t, j), false);
                        break;
                    case 32:
                        zzb = zzgg.zzw(i22, zzd(t, j), false);
                        break;
                    case 33:
                        zzb = zzgg.zzu(i22, zzd(t, j), false);
                        break;
                    case 34:
                        zzb = zzgg.zzq(i22, zzd(t, j), false);
                        break;
                    case 35:
                        int zzk = zzgg.zzk((List) unsafe.getObject(t, j));
                        i12 = i20;
                        if (zzk > 0) {
                            if (this.zzsy) {
                                unsafe.putInt(t, i23, zzk);
                            }
                            i13 = zzdu.zzy(i22);
                            i15 = zzdu.zzaa(zzk);
                            i14 = zzk;
                            zzb = i13 + i15 + i14;
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 36:
                        int zzj = zzgg.zzj((List) unsafe.getObject(t, j));
                        i12 = i20;
                        if (zzj > 0) {
                            if (this.zzsy) {
                                unsafe.putInt(t, i23, zzj);
                            }
                            i13 = zzdu.zzy(i22);
                            i14 = zzj;
                            i15 = zzdu.zzaa(zzj);
                            zzb = i13 + i15 + i14;
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 37:
                        int zzc2 = zzgg.zzc((List) unsafe.getObject(t, j));
                        i12 = i20;
                        if (zzc2 > 0) {
                            if (this.zzsy) {
                                unsafe.putInt(t, i23, zzc2);
                            }
                            i13 = zzdu.zzy(i22);
                            i14 = zzc2;
                            i15 = zzdu.zzaa(zzc2);
                            zzb = i13 + i15 + i14;
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 38:
                        int zzd = zzgg.zzd((List) unsafe.getObject(t, j));
                        i12 = i20;
                        if (zzd > 0) {
                            if (this.zzsy) {
                                unsafe.putInt(t, i23, zzd);
                            }
                            i13 = zzdu.zzy(i22);
                            i14 = zzd;
                            i15 = zzdu.zzaa(zzd);
                            zzb = i13 + i15 + i14;
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 39:
                        int zzg = zzgg.zzg((List) unsafe.getObject(t, j));
                        i12 = i20;
                        if (zzg > 0) {
                            if (this.zzsy) {
                                unsafe.putInt(t, i23, zzg);
                            }
                            i13 = zzdu.zzy(i22);
                            i14 = zzg;
                            i15 = zzdu.zzaa(zzg);
                            zzb = i13 + i15 + i14;
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 40:
                        int zzk2 = zzgg.zzk((List) unsafe.getObject(t, j));
                        i12 = i20;
                        if (zzk2 > 0) {
                            if (this.zzsy) {
                                unsafe.putInt(t, i23, zzk2);
                            }
                            i13 = zzdu.zzy(i22);
                            i14 = zzk2;
                            i15 = zzdu.zzaa(zzk2);
                            zzb = i13 + i15 + i14;
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 41:
                        int zzj2 = zzgg.zzj((List) unsafe.getObject(t, j));
                        i12 = i20;
                        if (zzj2 > 0) {
                            if (this.zzsy) {
                                unsafe.putInt(t, i23, zzj2);
                            }
                            i13 = zzdu.zzy(i22);
                            i14 = zzj2;
                            i15 = zzdu.zzaa(zzj2);
                            zzb = i13 + i15 + i14;
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 42:
                        int zzl = zzgg.zzl((List) unsafe.getObject(t, j));
                        i12 = i20;
                        if (zzl > 0) {
                            if (this.zzsy) {
                                unsafe.putInt(t, i23, zzl);
                            }
                            i13 = zzdu.zzy(i22);
                            i14 = zzl;
                            i15 = zzdu.zzaa(zzl);
                            zzb = i13 + i15 + i14;
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 43:
                        int zzh = zzgg.zzh((List) unsafe.getObject(t, j));
                        i12 = i20;
                        if (zzh > 0) {
                            if (this.zzsy) {
                                unsafe.putInt(t, i23, zzh);
                            }
                            i13 = zzdu.zzy(i22);
                            i14 = zzh;
                            i15 = zzdu.zzaa(zzh);
                            zzb = i13 + i15 + i14;
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 44:
                        int zzf = zzgg.zzf((List) unsafe.getObject(t, j));
                        i12 = i20;
                        if (zzf > 0) {
                            if (this.zzsy) {
                                unsafe.putInt(t, i23, zzf);
                            }
                            i13 = zzdu.zzy(i22);
                            i14 = zzf;
                            i15 = zzdu.zzaa(zzf);
                            zzb = i13 + i15 + i14;
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 45:
                        int zzj3 = zzgg.zzj((List) unsafe.getObject(t, j));
                        i12 = i20;
                        if (zzj3 > 0) {
                            if (this.zzsy) {
                                unsafe.putInt(t, i23, zzj3);
                            }
                            i13 = zzdu.zzy(i22);
                            i14 = zzj3;
                            i15 = zzdu.zzaa(zzj3);
                            zzb = i13 + i15 + i14;
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 46:
                        int zzk3 = zzgg.zzk((List) unsafe.getObject(t, j));
                        i12 = i20;
                        if (zzk3 > 0) {
                            if (this.zzsy) {
                                unsafe.putInt(t, i23, zzk3);
                            }
                            i13 = zzdu.zzy(i22);
                            i14 = zzk3;
                            i15 = zzdu.zzaa(zzk3);
                            zzb = i13 + i15 + i14;
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 47:
                        int zzi = zzgg.zzi((List) unsafe.getObject(t, j));
                        i12 = i20;
                        if (zzi > 0) {
                            if (this.zzsy) {
                                unsafe.putInt(t, i23, zzi);
                            }
                            i13 = zzdu.zzy(i22);
                            i14 = zzi;
                            i15 = zzdu.zzaa(zzi);
                            zzb = i13 + i15 + i14;
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 48:
                        int zze = zzgg.zze((List) unsafe.getObject(t, j));
                        i12 = i20;
                        if (zze > 0) {
                            if (this.zzsy) {
                                unsafe.putInt(t, i23, zze);
                            }
                            i13 = zzdu.zzy(i22);
                            i14 = zze;
                            i15 = zzdu.zzaa(zze);
                            zzb = i13 + i15 + i14;
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 49:
                        zzb = zzgg.zzd(i22, zzd(t, j), zzap(i18));
                        break;
                    case 50:
                        zzb = this.zzte.zzc(i22, zzhc.zzo(t, j), zzaq(i18));
                        break;
                    case 51:
                        i12 = i20;
                        if (zza((zzfv<T>) t, i22, i18)) {
                            zzb = zzdu.zzb(i22, (double) FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 52:
                        i12 = i20;
                        if (zza((zzfv<T>) t, i22, i18)) {
                            zzb = zzdu.zzb(i22, (float) FlexItem.FLEX_GROW_DEFAULT);
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 53:
                        i12 = i20;
                        if (zza((zzfv<T>) t, i22, i18)) {
                            zzb = zzdu.zzd(i22, zzh(t, j));
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 54:
                        i12 = i20;
                        if (zza((zzfv<T>) t, i22, i18)) {
                            zzb = zzdu.zze(i22, zzh(t, j));
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 55:
                        i12 = i20;
                        if (zza((zzfv<T>) t, i22, i18)) {
                            zzb = zzdu.zzj(i22, zzg(t, j));
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 56:
                        i12 = i20;
                        if (zza((zzfv<T>) t, i22, i18)) {
                            zzb = zzdu.zzg(i22, 0L);
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 57:
                        i12 = i20;
                        if (zza((zzfv<T>) t, i22, i18)) {
                            zzb = zzdu.zzm(i22, 0);
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 58:
                        i12 = i20;
                        if (zza((zzfv<T>) t, i22, i18)) {
                            zzb = zzdu.zzb(i22, true);
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 59:
                        i12 = i20;
                        if (zza((zzfv<T>) t, i22, i18)) {
                            Object zzo2 = zzhc.zzo(t, j);
                            if (zzo2 instanceof zzdd) {
                                zzb = zzdu.zzc(i22, (zzdd) ((zzdd) zzo2));
                                break;
                            } else {
                                zzb = zzdu.zzb(i22, (String) zzo2);
                                break;
                            }
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 60:
                        i12 = i20;
                        if (zza((zzfv<T>) t, i22, i18)) {
                            zzb = zzgg.zzc(i22, zzhc.zzo(t, j), zzap(i18));
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 61:
                        i12 = i20;
                        if (zza((zzfv<T>) t, i22, i18)) {
                            zzb = zzdu.zzc(i22, (zzdd) ((zzdd) zzhc.zzo(t, j)));
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 62:
                        i12 = i20;
                        if (zza((zzfv<T>) t, i22, i18)) {
                            zzb = zzdu.zzk(i22, zzg(t, j));
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 63:
                        i12 = i20;
                        if (zza((zzfv<T>) t, i22, i18)) {
                            zzb = zzdu.zzo(i22, zzg(t, j));
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 64:
                        i12 = i20;
                        if (zza((zzfv<T>) t, i22, i18)) {
                            zzb = zzdu.zzn(i22, 0);
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 65:
                        i12 = i20;
                        if (zza((zzfv<T>) t, i22, i18)) {
                            zzb = zzdu.zzh(i22, 0L);
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 66:
                        i12 = i20;
                        if (zza((zzfv<T>) t, i22, i18)) {
                            zzb = zzdu.zzl(i22, zzg(t, j));
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 67:
                        i12 = i20;
                        if (zza((zzfv<T>) t, i22, i18)) {
                            zzb = zzdu.zzf(i22, zzh(t, j));
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 68:
                        i12 = i20;
                        if (zza((zzfv<T>) t, i22, i18)) {
                            zzb = zzdu.zzc(i22, (zzfr) zzhc.zzo(t, j), zzap(i18));
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    default:
                        i12 = i20;
                        continue;
                        i18 += 3;
                        i19 = i12;
                }
                i12 = i20 + zzb;
                i18 += 3;
                i19 = i12;
            }
        } else {
            Unsafe unsafe2 = zzsr;
            int i24 = -1;
            int i25 = 0;
            int i26 = 0;
            int i27 = 0;
            while (true) {
                int i28 = i27;
                if (i25 >= this.zzss.length) {
                    int zza = i26 + zza((zzgw) this.zzsn, (Object) t);
                    int i29 = zza;
                    if (this.zzso) {
                        zzdz<?> zzb2 = this.zzsp.zzb(t);
                        int i30 = i17;
                        while (i17 < zzb2.zznc.zzhz()) {
                            Map.Entry<?, Object> zzau = zzb2.zznc.zzau(i17);
                            i30 += zzdz.zzb((zzeb) zzau.getKey(), zzau.getValue());
                            i17++;
                        }
                        for (Map.Entry<?, Object> entry : zzb2.zznc.zzia()) {
                            i30 += zzdz.zzb((zzeb) entry.getKey(), entry.getValue());
                        }
                        i29 = zza + i30;
                    }
                    return i29;
                }
                int zzar2 = zzar(i25);
                int[] iArr = this.zzss;
                int i31 = iArr[i25];
                int i32 = (zzar2 & 267386880) >>> 20;
                if (i32 <= 17) {
                    i3 = iArr[i25 + 2];
                    int i33 = i3 & 1048575;
                    i = i16 << (i3 >>> 20);
                    if (i33 != i24) {
                        i28 = unsafe2.getInt(t, i33);
                        i24 = i33;
                    }
                    i4 = i24;
                    i2 = i28;
                } else {
                    i3 = (!this.zzsy || i32 < zzee.zzov.m3781id() || i32 > zzee.zzpi.m3781id()) ? 0 : this.zzss[i25 + 2] & 1048575;
                    i = 0;
                    i2 = i28;
                    i4 = i24;
                }
                long j2 = zzar2 & 1048575;
                switch (i32) {
                    case 0:
                        i5 = i26;
                        if ((i2 & i) != 0) {
                            i5 = i26 + zzdu.zzb(i31, (double) FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        i5 = i26;
                        if ((i2 & i) != 0) {
                            i5 = i26 + zzdu.zzb(i31, (float) FlexItem.FLEX_GROW_DEFAULT);
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        i5 = i26;
                        if ((i2 & i) != 0) {
                            i6 = zzdu.zzd(i31, unsafe2.getLong(t, j2));
                            i5 = i26 + i6;
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        i5 = i26;
                        if ((i2 & i) != 0) {
                            i6 = zzdu.zze(i31, unsafe2.getLong(t, j2));
                            i5 = i26 + i6;
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        i5 = i26;
                        if ((i2 & i) != 0) {
                            i6 = zzdu.zzj(i31, unsafe2.getInt(t, j2));
                            i5 = i26 + i6;
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        i5 = i26;
                        if ((i2 & i) != 0) {
                            i6 = zzdu.zzg(i31, 0L);
                            i5 = i26 + i6;
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        i5 = i26;
                        if ((i2 & i) != 0) {
                            i5 = i26 + zzdu.zzm(i31, 0);
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        i5 = i26;
                        if ((i2 & i) != 0) {
                            i5 = i26 + zzdu.zzb(i31, true);
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        i5 = i26;
                        if ((i2 & i) != 0) {
                            Object object = unsafe2.getObject(t, j2);
                            zzc = object instanceof zzdd ? zzdu.zzc(i31, (zzdd) ((zzdd) object)) : zzdu.zzb(i31, (String) object);
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        i5 = i26;
                        if ((i2 & i) != 0) {
                            zzc = zzgg.zzc(i31, unsafe2.getObject(t, j2), zzap(i25));
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        i5 = i26;
                        if ((i2 & i) != 0) {
                            zzc = zzdu.zzc(i31, (zzdd) ((zzdd) unsafe2.getObject(t, j2)));
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        i5 = i26;
                        if ((i2 & i) != 0) {
                            zzc = zzdu.zzk(i31, unsafe2.getInt(t, j2));
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        i5 = i26;
                        if ((i2 & i) != 0) {
                            zzc = zzdu.zzo(i31, unsafe2.getInt(t, j2));
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        i5 = i26;
                        if ((i2 & i) != 0) {
                            i7 = zzdu.zzn(i31, 0);
                            i5 = i26 + i7;
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        i5 = i26;
                        if ((i2 & i) != 0) {
                            zzc = zzdu.zzh(i31, 0L);
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        i5 = i26;
                        if ((i2 & i) != 0) {
                            zzc = zzdu.zzl(i31, unsafe2.getInt(t, j2));
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        i5 = i26;
                        if ((i2 & i) != 0) {
                            zzc = zzdu.zzf(i31, unsafe2.getLong(t, j2));
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        i5 = i26;
                        if ((i2 & i) != 0) {
                            zzc = zzdu.zzc(i31, (zzfr) unsafe2.getObject(t, j2), zzap(i25));
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        zzc = zzgg.zzw(i31, (List) unsafe2.getObject(t, j2), false);
                        i5 = i26 + zzc;
                        break;
                    case 19:
                        i8 = zzgg.zzv(i31, (List) unsafe2.getObject(t, j2), false);
                        i5 = i26 + i8;
                        break;
                    case 20:
                        i8 = zzgg.zzo(i31, (List) unsafe2.getObject(t, j2), false);
                        i5 = i26 + i8;
                        break;
                    case 21:
                        i8 = zzgg.zzp(i31, (List) unsafe2.getObject(t, j2), false);
                        i5 = i26 + i8;
                        break;
                    case 22:
                        i8 = zzgg.zzs(i31, (List) unsafe2.getObject(t, j2), false);
                        i5 = i26 + i8;
                        break;
                    case 23:
                        i8 = zzgg.zzw(i31, (List) unsafe2.getObject(t, j2), false);
                        i5 = i26 + i8;
                        break;
                    case 24:
                        i8 = zzgg.zzv(i31, (List) unsafe2.getObject(t, j2), false);
                        i5 = i26 + i8;
                        break;
                    case 25:
                        i8 = zzgg.zzx(i31, (List) unsafe2.getObject(t, j2), false);
                        i5 = i26 + i8;
                        break;
                    case 26:
                        zzc = zzgg.zzc(i31, (List) unsafe2.getObject(t, j2));
                        i5 = i26 + zzc;
                        break;
                    case 27:
                        zzc = zzgg.zzc(i31, (List<?>) unsafe2.getObject(t, j2), (zzge) zzap(i25));
                        i5 = i26 + zzc;
                        break;
                    case 28:
                        zzc = zzgg.zzd(i31, (List) unsafe2.getObject(t, j2));
                        i5 = i26 + zzc;
                        break;
                    case 29:
                        zzc = zzgg.zzt(i31, (List) unsafe2.getObject(t, j2), false);
                        i5 = i26 + zzc;
                        break;
                    case 30:
                        i8 = zzgg.zzr(i31, (List) unsafe2.getObject(t, j2), false);
                        i5 = i26 + i8;
                        break;
                    case 31:
                        i8 = zzgg.zzv(i31, (List) unsafe2.getObject(t, j2), false);
                        i5 = i26 + i8;
                        break;
                    case 32:
                        i8 = zzgg.zzw(i31, (List) unsafe2.getObject(t, j2), false);
                        i5 = i26 + i8;
                        break;
                    case 33:
                        i8 = zzgg.zzu(i31, (List) unsafe2.getObject(t, j2), false);
                        i5 = i26 + i8;
                        break;
                    case 34:
                        i8 = zzgg.zzq(i31, (List) unsafe2.getObject(t, j2), false);
                        i5 = i26 + i8;
                        break;
                    case 35:
                        int zzk4 = zzgg.zzk((List) unsafe2.getObject(t, j2));
                        i5 = i26;
                        if (zzk4 <= 0) {
                            break;
                        } else {
                            if (this.zzsy) {
                                unsafe2.putInt(t, i3, zzk4);
                            }
                            i10 = zzdu.zzy(i31);
                            i11 = zzdu.zzaa(zzk4);
                            i9 = zzk4;
                            i7 = i10 + i11 + i9;
                            i5 = i26 + i7;
                            break;
                        }
                    case 36:
                        int zzj4 = zzgg.zzj((List) unsafe2.getObject(t, j2));
                        i5 = i26;
                        if (zzj4 <= 0) {
                            break;
                        } else {
                            if (this.zzsy) {
                                unsafe2.putInt(t, i3, zzj4);
                            }
                            int zzy = zzdu.zzy(i31);
                            i11 = zzdu.zzaa(zzj4);
                            i9 = zzj4;
                            i10 = zzy;
                            i7 = i10 + i11 + i9;
                            i5 = i26 + i7;
                            break;
                        }
                    case 37:
                        int zzc3 = zzgg.zzc((List) unsafe2.getObject(t, j2));
                        i5 = i26;
                        if (zzc3 <= 0) {
                            break;
                        } else {
                            if (this.zzsy) {
                                unsafe2.putInt(t, i3, zzc3);
                            }
                            int zzy2 = zzdu.zzy(i31);
                            i11 = zzdu.zzaa(zzc3);
                            i9 = zzc3;
                            i10 = zzy2;
                            i7 = i10 + i11 + i9;
                            i5 = i26 + i7;
                            break;
                        }
                    case 38:
                        int zzd2 = zzgg.zzd((List) unsafe2.getObject(t, j2));
                        i5 = i26;
                        if (zzd2 <= 0) {
                            break;
                        } else {
                            if (this.zzsy) {
                                unsafe2.putInt(t, i3, zzd2);
                            }
                            int zzy3 = zzdu.zzy(i31);
                            i11 = zzdu.zzaa(zzd2);
                            i9 = zzd2;
                            i10 = zzy3;
                            i7 = i10 + i11 + i9;
                            i5 = i26 + i7;
                            break;
                        }
                    case 39:
                        int zzg2 = zzgg.zzg((List) unsafe2.getObject(t, j2));
                        i5 = i26;
                        if (zzg2 <= 0) {
                            break;
                        } else {
                            if (this.zzsy) {
                                unsafe2.putInt(t, i3, zzg2);
                            }
                            int zzy4 = zzdu.zzy(i31);
                            i11 = zzdu.zzaa(zzg2);
                            i9 = zzg2;
                            i10 = zzy4;
                            i7 = i10 + i11 + i9;
                            i5 = i26 + i7;
                            break;
                        }
                    case 40:
                        int zzk5 = zzgg.zzk((List) unsafe2.getObject(t, j2));
                        i5 = i26;
                        if (zzk5 <= 0) {
                            break;
                        } else {
                            if (this.zzsy) {
                                unsafe2.putInt(t, i3, zzk5);
                            }
                            int zzy5 = zzdu.zzy(i31);
                            i11 = zzdu.zzaa(zzk5);
                            i9 = zzk5;
                            i10 = zzy5;
                            i7 = i10 + i11 + i9;
                            i5 = i26 + i7;
                            break;
                        }
                    case 41:
                        int zzj5 = zzgg.zzj((List) unsafe2.getObject(t, j2));
                        i5 = i26;
                        if (zzj5 <= 0) {
                            break;
                        } else {
                            if (this.zzsy) {
                                unsafe2.putInt(t, i3, zzj5);
                            }
                            int zzy6 = zzdu.zzy(i31);
                            i11 = zzdu.zzaa(zzj5);
                            i9 = zzj5;
                            i10 = zzy6;
                            i7 = i10 + i11 + i9;
                            i5 = i26 + i7;
                            break;
                        }
                    case 42:
                        int zzl2 = zzgg.zzl((List) unsafe2.getObject(t, j2));
                        i5 = i26;
                        if (zzl2 <= 0) {
                            break;
                        } else {
                            if (this.zzsy) {
                                unsafe2.putInt(t, i3, zzl2);
                            }
                            int zzy7 = zzdu.zzy(i31);
                            i11 = zzdu.zzaa(zzl2);
                            i9 = zzl2;
                            i10 = zzy7;
                            i7 = i10 + i11 + i9;
                            i5 = i26 + i7;
                            break;
                        }
                    case 43:
                        int zzh2 = zzgg.zzh((List) unsafe2.getObject(t, j2));
                        i5 = i26;
                        if (zzh2 <= 0) {
                            break;
                        } else {
                            if (this.zzsy) {
                                unsafe2.putInt(t, i3, zzh2);
                            }
                            int zzy8 = zzdu.zzy(i31);
                            i11 = zzdu.zzaa(zzh2);
                            i9 = zzh2;
                            i10 = zzy8;
                            i7 = i10 + i11 + i9;
                            i5 = i26 + i7;
                            break;
                        }
                    case 44:
                        int zzf2 = zzgg.zzf((List) unsafe2.getObject(t, j2));
                        i5 = i26;
                        if (zzf2 <= 0) {
                            break;
                        } else {
                            if (this.zzsy) {
                                unsafe2.putInt(t, i3, zzf2);
                            }
                            int zzy9 = zzdu.zzy(i31);
                            i11 = zzdu.zzaa(zzf2);
                            i9 = zzf2;
                            i10 = zzy9;
                            i7 = i10 + i11 + i9;
                            i5 = i26 + i7;
                            break;
                        }
                    case 45:
                        int zzj6 = zzgg.zzj((List) unsafe2.getObject(t, j2));
                        i5 = i26;
                        if (zzj6 <= 0) {
                            break;
                        } else {
                            if (this.zzsy) {
                                unsafe2.putInt(t, i3, zzj6);
                            }
                            int zzy10 = zzdu.zzy(i31);
                            i11 = zzdu.zzaa(zzj6);
                            i9 = zzj6;
                            i10 = zzy10;
                            i7 = i10 + i11 + i9;
                            i5 = i26 + i7;
                            break;
                        }
                    case 46:
                        int zzk6 = zzgg.zzk((List) unsafe2.getObject(t, j2));
                        i5 = i26;
                        if (zzk6 <= 0) {
                            break;
                        } else {
                            if (this.zzsy) {
                                unsafe2.putInt(t, i3, zzk6);
                            }
                            int zzy11 = zzdu.zzy(i31);
                            i11 = zzdu.zzaa(zzk6);
                            i9 = zzk6;
                            i10 = zzy11;
                            i7 = i10 + i11 + i9;
                            i5 = i26 + i7;
                            break;
                        }
                    case 47:
                        int zzi2 = zzgg.zzi((List) unsafe2.getObject(t, j2));
                        i5 = i26;
                        if (zzi2 <= 0) {
                            break;
                        } else {
                            if (this.zzsy) {
                                unsafe2.putInt(t, i3, zzi2);
                            }
                            int zzy12 = zzdu.zzy(i31);
                            i11 = zzdu.zzaa(zzi2);
                            i9 = zzi2;
                            i10 = zzy12;
                            i7 = i10 + i11 + i9;
                            i5 = i26 + i7;
                            break;
                        }
                    case 48:
                        int zze2 = zzgg.zze((List) unsafe2.getObject(t, j2));
                        i5 = i26;
                        if (zze2 <= 0) {
                            break;
                        } else {
                            if (this.zzsy) {
                                unsafe2.putInt(t, i3, zze2);
                            }
                            int zzy13 = zzdu.zzy(i31);
                            i11 = zzdu.zzaa(zze2);
                            i9 = zze2;
                            i10 = zzy13;
                            i7 = i10 + i11 + i9;
                            i5 = i26 + i7;
                            break;
                        }
                    case 49:
                        zzc = zzgg.zzd(i31, (List) unsafe2.getObject(t, j2), zzap(i25));
                        i5 = i26 + zzc;
                        break;
                    case 50:
                        zzc = this.zzte.zzc(i31, unsafe2.getObject(t, j2), zzaq(i25));
                        i5 = i26 + zzc;
                        break;
                    case 51:
                        i5 = i26;
                        if (zza((zzfv<T>) t, i31, i25)) {
                            zzc = zzdu.zzb(i31, (double) FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        i5 = i26;
                        if (zza((zzfv<T>) t, i31, i25)) {
                            i7 = zzdu.zzb(i31, (float) FlexItem.FLEX_GROW_DEFAULT);
                            i5 = i26 + i7;
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        i5 = i26;
                        if (zza((zzfv<T>) t, i31, i25)) {
                            zzc = zzdu.zzd(i31, zzh(t, j2));
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        i5 = i26;
                        if (zza((zzfv<T>) t, i31, i25)) {
                            zzc = zzdu.zze(i31, zzh(t, j2));
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        i5 = i26;
                        if (zza((zzfv<T>) t, i31, i25)) {
                            zzc = zzdu.zzj(i31, zzg(t, j2));
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        i5 = i26;
                        if (zza((zzfv<T>) t, i31, i25)) {
                            zzc = zzdu.zzg(i31, 0L);
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        i5 = i26;
                        if (zza((zzfv<T>) t, i31, i25)) {
                            i7 = zzdu.zzm(i31, 0);
                            i5 = i26 + i7;
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        i5 = i26;
                        if (zza((zzfv<T>) t, i31, i25)) {
                            i7 = zzdu.zzb(i31, true);
                            i5 = i26 + i7;
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        i5 = i26;
                        if (zza((zzfv<T>) t, i31, i25)) {
                            Object object2 = unsafe2.getObject(t, j2);
                            zzc = object2 instanceof zzdd ? zzdu.zzc(i31, (zzdd) ((zzdd) object2)) : zzdu.zzb(i31, (String) object2);
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 60:
                        i5 = i26;
                        if (zza((zzfv<T>) t, i31, i25)) {
                            zzc = zzgg.zzc(i31, unsafe2.getObject(t, j2), zzap(i25));
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        i5 = i26;
                        if (zza((zzfv<T>) t, i31, i25)) {
                            zzc = zzdu.zzc(i31, (zzdd) ((zzdd) unsafe2.getObject(t, j2)));
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        i5 = i26;
                        if (zza((zzfv<T>) t, i31, i25)) {
                            zzc = zzdu.zzk(i31, zzg(t, j2));
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        i5 = i26;
                        if (zza((zzfv<T>) t, i31, i25)) {
                            zzc = zzdu.zzo(i31, zzg(t, j2));
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        i5 = i26;
                        if (zza((zzfv<T>) t, i31, i25)) {
                            i7 = zzdu.zzn(i31, 0);
                            i5 = i26 + i7;
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        i5 = i26;
                        if (zza((zzfv<T>) t, i31, i25)) {
                            zzc = zzdu.zzh(i31, 0L);
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        i5 = i26;
                        if (zza((zzfv<T>) t, i31, i25)) {
                            zzc = zzdu.zzl(i31, zzg(t, j2));
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        i5 = i26;
                        if (zza((zzfv<T>) t, i31, i25)) {
                            zzc = zzdu.zzf(i31, zzh(t, j2));
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        i5 = i26;
                        if (zza((zzfv<T>) t, i31, i25)) {
                            zzc = zzdu.zzc(i31, (zzfr) unsafe2.getObject(t, j2), zzap(i25));
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    default:
                        i5 = i26;
                        break;
                }
                i25 += 3;
                i17 = 0;
                i26 = i5;
                i24 = i4;
                i16 = 1;
                i27 = i2;
            }
        }
    }
}
