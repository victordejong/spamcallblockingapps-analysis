package com.google.android.gms.internal.mlkit_translate;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import sun.misc.Unsafe;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/mlkit_translate/zzlo.class */
public final class zzlo<T> implements zzma<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzmy.zzc();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzlk zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final boolean zzj;
    private final boolean zzk;
    private final int[] zzl;
    private final int zzm;
    private final int zzn;
    private final zzlt zzo;
    private final zzku zzp;
    private final zzms<?, ?> zzq;
    private final zzjt<?> zzr;
    private final zzlh zzs;

    private zzlo(int[] iArr, Object[] objArr, int i, int i2, zzlk zzlkVar, boolean z, boolean z2, int[] iArr2, int i3, int i4, zzlt zzltVar, zzku zzkuVar, zzms<?, ?> zzmsVar, zzjt<?> zzjtVar, zzlh zzlhVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i;
        this.zzf = i2;
        this.zzi = zzlkVar instanceof zzkc;
        this.zzj = z;
        this.zzh = zzjtVar != null && zzjtVar.zza(zzlkVar);
        this.zzk = false;
        this.zzl = iArr2;
        this.zzm = i3;
        this.zzn = i4;
        this.zzo = zzltVar;
        this.zzp = zzkuVar;
        this.zzq = zzmsVar;
        this.zzr = zzjtVar;
        this.zzg = zzlkVar;
        this.zzs = zzlhVar;
    }

    private static <UT, UB> int zza(zzms<UT, UB> zzmsVar, T t) {
        return zzmsVar.zzd(zzmsVar.zza(t));
    }

    /* JADX WARN: Removed duplicated region for block: B:178:0x0907  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> com.google.android.gms.internal.mlkit_translate.zzlo<T> zza(java.lang.Class<T> r18, com.google.android.gms.internal.mlkit_translate.zzli r19, com.google.android.gms.internal.mlkit_translate.zzlt r20, com.google.android.gms.internal.mlkit_translate.zzku r21, com.google.android.gms.internal.mlkit_translate.zzms<?, ?> r22, com.google.android.gms.internal.mlkit_translate.zzjt<?> r23, com.google.android.gms.internal.mlkit_translate.zzlh r24) {
        /*
            Method dump skipped, instructions count: 2530
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_translate.zzlo.zza(java.lang.Class, com.google.android.gms.internal.mlkit_translate.zzli, com.google.android.gms.internal.mlkit_translate.zzlt, com.google.android.gms.internal.mlkit_translate.zzku, com.google.android.gms.internal.mlkit_translate.zzms, com.google.android.gms.internal.mlkit_translate.zzjt, com.google.android.gms.internal.mlkit_translate.zzlh):com.google.android.gms.internal.mlkit_translate.zzlo");
    }

    private final zzma zza(int i) {
        int i2 = (i / 3) << 1;
        zzma zzmaVar = (zzma) this.zzd[i2];
        if (zzmaVar != null) {
            return zzmaVar;
        }
        zzma<T> zza2 = zzlz.zza().zza((Class) ((Class) this.zzd[i2 + 1]));
        this.zzd[i2] = zza2;
        return zza2;
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
            throw new RuntimeException(C22128a.m8618h(C22128a.m8736A(C22128a.m8623f2(arrays, name.length() + C22128a.m8623f2(str, 40)), "Field ", str, " for ", name), " not found. Known fields are ", arrays));
        }
    }

    private static List<?> zza(Object obj, long j) {
        return (List) zzmy.zzf(obj, j);
    }

    private static void zza(int i, Object obj, zznm zznmVar) throws IOException {
        if (obj instanceof String) {
            zznmVar.zza(i, (String) obj);
        } else {
            zznmVar.zza(i, (zziy) obj);
        }
    }

    private static <UT, UB> void zza(zzms<UT, UB> zzmsVar, T t, zznm zznmVar) throws IOException {
        zzmsVar.zza((zzms<UT, UB>) zzmsVar.zza(t), zznmVar);
    }

    private final <K, V> void zza(zznm zznmVar, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            zznmVar.zza(i, this.zzs.zza(zzb(i2)), this.zzs.zzb(obj));
        }
    }

    private final void zza(T t, T t2, int i) {
        long zzc = zzc(i) & 1048575;
        if (!zza((zzlo<T>) t2, i)) {
            return;
        }
        Object zzf = zzmy.zzf(t, zzc);
        Object zzf2 = zzmy.zzf(t2, zzc);
        if (zzf != null && zzf2 != null) {
            zzmy.zza(t, zzc, zzkf.zza(zzf, zzf2));
            zzb((zzlo<T>) t, i);
        } else if (zzf2 == null) {
        } else {
            zzmy.zza(t, zzc, zzf2);
            zzb((zzlo<T>) t, i);
        }
    }

    private final boolean zza(T t, int i) {
        int zzd = zzd(i);
        long j = zzd & 1048575;
        if (j != 1048575) {
            return (zzmy.zza(t, j) & (1 << (zzd >>> 20))) != 0;
        }
        int zzc = zzc(i);
        long j2 = zzc & 1048575;
        switch ((zzc & 267386880) >>> 20) {
            case 0:
                return zzmy.zze(t, j2) != PlaceLikelihood.LIKELIHOOD_MIN_VALUE;
            case 1:
                return zzmy.zzd(t, j2) != 0.0f;
            case 2:
                return zzmy.zzb(t, j2) != 0;
            case 3:
                return zzmy.zzb(t, j2) != 0;
            case 4:
                return zzmy.zza(t, j2) != 0;
            case 5:
                return zzmy.zzb(t, j2) != 0;
            case 6:
                return zzmy.zza(t, j2) != 0;
            case 7:
                return zzmy.zzc(t, j2);
            case 8:
                Object zzf = zzmy.zzf(t, j2);
                if (zzf instanceof String) {
                    return !((String) zzf).isEmpty();
                } else if (!(zzf instanceof zziy)) {
                    throw new IllegalArgumentException();
                } else {
                    return !zziy.zza.equals(zzf);
                }
            case 9:
                return zzmy.zzf(t, j2) != null;
            case 10:
                return !zziy.zza.equals(zzmy.zzf(t, j2));
            case 11:
                return zzmy.zza(t, j2) != 0;
            case 12:
                return zzmy.zza(t, j2) != 0;
            case 13:
                return zzmy.zza(t, j2) != 0;
            case 14:
                return zzmy.zzb(t, j2) != 0;
            case 15:
                return zzmy.zza(t, j2) != 0;
            case 16:
                return zzmy.zzb(t, j2) != 0;
            case 17:
                return zzmy.zzf(t, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zza(T t, int i, int i2) {
        return zzmy.zza(t, (long) (zzd(i2) & 1048575)) == i;
    }

    private final boolean zza(T t, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? zza((zzlo<T>) t, i) : (i3 & i4) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean zza(Object obj, int i, zzma zzmaVar) {
        return zzmaVar.zzd(zzmy.zzf(obj, i & 1048575));
    }

    private static <T> double zzb(T t, long j) {
        return ((Double) zzmy.zzf(t, j)).doubleValue();
    }

    private final Object zzb(int i) {
        return this.zzd[(i / 3) << 1];
    }

    private final void zzb(T t, int i) {
        int zzd = zzd(i);
        long j = 1048575 & zzd;
        if (j == 1048575) {
            return;
        }
        zzmy.zza((Object) t, j, (1 << (zzd >>> 20)) | zzmy.zza(t, j));
    }

    private final void zzb(T t, int i, int i2) {
        zzmy.zza((Object) t, zzd(i2) & 1048575, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x0993  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzb(T r9, com.google.android.gms.internal.mlkit_translate.zznm r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2502
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_translate.zzlo.zzb(java.lang.Object, com.google.android.gms.internal.mlkit_translate.zznm):void");
    }

    private final void zzb(T t, T t2, int i) {
        int zzc = zzc(i);
        int i2 = this.zzc[i];
        long j = zzc & 1048575;
        if (!zza((zzlo<T>) t2, i2, i)) {
            return;
        }
        Object zzf = zzmy.zzf(t, j);
        Object zzf2 = zzmy.zzf(t2, j);
        if (zzf != null && zzf2 != null) {
            zzmy.zza(t, j, zzkf.zza(zzf, zzf2));
            zzb((zzlo<T>) t, i2, i);
        } else if (zzf2 == null) {
        } else {
            zzmy.zza(t, j, zzf2);
            zzb((zzlo<T>) t, i2, i);
        }
    }

    private static <T> float zzc(T t, long j) {
        return ((Float) zzmy.zzf(t, j)).floatValue();
    }

    private final int zzc(int i) {
        return this.zzc[i + 1];
    }

    private final boolean zzc(T t, T t2, int i) {
        return zza((zzlo<T>) t, i) == zza((zzlo<T>) t2, i);
    }

    private final int zzd(int i) {
        return this.zzc[i + 2];
    }

    private static <T> int zzd(T t, long j) {
        return ((Integer) zzmy.zzf(t, j)).intValue();
    }

    private static <T> long zze(T t, long j) {
        return ((Long) zzmy.zzf(t, j)).longValue();
    }

    private static <T> boolean zzf(T t, long j) {
        return ((Boolean) zzmy.zzf(t, j)).booleanValue();
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzma
    public final int zza(T t) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int length = this.zzc.length;
        int i6 = 0;
        int i7 = 0;
        while (true) {
            int i8 = i7;
            if (i6 >= length) {
                int hashCode = this.zzq.zza(t).hashCode() + (i8 * 53);
                int i9 = hashCode;
                if (this.zzh) {
                    i9 = (hashCode * 53) + this.zzr.zza(t).hashCode();
                }
                return i9;
            }
            int zzc = zzc(i6);
            int i10 = this.zzc[i6];
            long j = 1048575 & zzc;
            int i11 = 37;
            switch ((zzc & 267386880) >>> 20) {
                case 0:
                    i2 = i8 * 53;
                    i3 = zzkf.zza(Double.doubleToLongBits(zzmy.zze(t, j)));
                    i = i3 + i2;
                    break;
                case 1:
                    i2 = i8 * 53;
                    i3 = Float.floatToIntBits(zzmy.zzd(t, j));
                    i = i3 + i2;
                    break;
                case 2:
                    i2 = i8 * 53;
                    i3 = zzkf.zza(zzmy.zzb(t, j));
                    i = i3 + i2;
                    break;
                case 3:
                    i2 = i8 * 53;
                    i3 = zzkf.zza(zzmy.zzb(t, j));
                    i = i3 + i2;
                    break;
                case 4:
                    i2 = i8 * 53;
                    i3 = zzmy.zza(t, j);
                    i = i3 + i2;
                    break;
                case 5:
                    i2 = i8 * 53;
                    i3 = zzkf.zza(zzmy.zzb(t, j));
                    i = i3 + i2;
                    break;
                case 6:
                    i2 = i8 * 53;
                    i3 = zzmy.zza(t, j);
                    i = i3 + i2;
                    break;
                case 7:
                    i2 = i8 * 53;
                    i3 = zzkf.zza(zzmy.zzc(t, j));
                    i = i3 + i2;
                    break;
                case 8:
                    i2 = i8 * 53;
                    i3 = ((String) zzmy.zzf(t, j)).hashCode();
                    i = i3 + i2;
                    break;
                case 9:
                    Object zzf = zzmy.zzf(t, j);
                    if (zzf != null) {
                        i11 = zzf.hashCode();
                    }
                    i = (i8 * 53) + i11;
                    break;
                case 10:
                    i2 = i8 * 53;
                    i3 = zzmy.zzf(t, j).hashCode();
                    i = i3 + i2;
                    break;
                case 11:
                    i2 = i8 * 53;
                    i3 = zzmy.zza(t, j);
                    i = i3 + i2;
                    break;
                case 12:
                    i2 = i8 * 53;
                    i3 = zzmy.zza(t, j);
                    i = i3 + i2;
                    break;
                case 13:
                    i2 = i8 * 53;
                    i3 = zzmy.zza(t, j);
                    i = i3 + i2;
                    break;
                case 14:
                    i2 = i8 * 53;
                    i3 = zzkf.zza(zzmy.zzb(t, j));
                    i = i3 + i2;
                    break;
                case 15:
                    i2 = i8 * 53;
                    i3 = zzmy.zza(t, j);
                    i = i3 + i2;
                    break;
                case 16:
                    i2 = i8 * 53;
                    i3 = zzkf.zza(zzmy.zzb(t, j));
                    i = i3 + i2;
                    break;
                case 17:
                    Object zzf2 = zzmy.zzf(t, j);
                    if (zzf2 != null) {
                        i11 = zzf2.hashCode();
                    }
                    i = (i8 * 53) + i11;
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
                    i2 = i8 * 53;
                    i3 = zzmy.zzf(t, j).hashCode();
                    i = i3 + i2;
                    break;
                case 50:
                    i2 = i8 * 53;
                    i3 = zzmy.zzf(t, j).hashCode();
                    i = i3 + i2;
                    break;
                case 51:
                    i = i8;
                    if (!zza((zzlo<T>) t, i10, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzkf.zza(Double.doubleToLongBits(zzb(t, j)));
                        i = i3 + i2;
                        break;
                    }
                case 52:
                    i = i8;
                    if (!zza((zzlo<T>) t, i10, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = Float.floatToIntBits(zzc(t, j));
                        i = i3 + i2;
                        break;
                    }
                case 53:
                    i = i8;
                    if (!zza((zzlo<T>) t, i10, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzkf.zza(zze(t, j));
                        i = i3 + i2;
                        break;
                    }
                case 54:
                    i = i8;
                    if (!zza((zzlo<T>) t, i10, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzkf.zza(zze(t, j));
                        i = i3 + i2;
                        break;
                    }
                case 55:
                    i = i8;
                    if (!zza((zzlo<T>) t, i10, i6)) {
                        break;
                    } else {
                        i4 = i8 * 53;
                        i5 = zzd(t, j);
                        i = i4 + i5;
                        break;
                    }
                case 56:
                    i = i8;
                    if (!zza((zzlo<T>) t, i10, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzkf.zza(zze(t, j));
                        i = i3 + i2;
                        break;
                    }
                case 57:
                    i = i8;
                    if (!zza((zzlo<T>) t, i10, i6)) {
                        break;
                    } else {
                        i4 = i8 * 53;
                        i5 = zzd(t, j);
                        i = i4 + i5;
                        break;
                    }
                case 58:
                    i = i8;
                    if (!zza((zzlo<T>) t, i10, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzkf.zza(zzf(t, j));
                        i = i3 + i2;
                        break;
                    }
                case 59:
                    i = i8;
                    if (!zza((zzlo<T>) t, i10, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = ((String) zzmy.zzf(t, j)).hashCode();
                        i = i3 + i2;
                        break;
                    }
                case 60:
                    i = i8;
                    if (!zza((zzlo<T>) t, i10, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzmy.zzf(t, j).hashCode();
                        i = i3 + i2;
                        break;
                    }
                case 61:
                    i = i8;
                    if (!zza((zzlo<T>) t, i10, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzmy.zzf(t, j).hashCode();
                        i = i3 + i2;
                        break;
                    }
                case 62:
                    i = i8;
                    if (!zza((zzlo<T>) t, i10, i6)) {
                        break;
                    } else {
                        i4 = i8 * 53;
                        i5 = zzd(t, j);
                        i = i4 + i5;
                        break;
                    }
                case 63:
                    i = i8;
                    if (!zza((zzlo<T>) t, i10, i6)) {
                        break;
                    } else {
                        i4 = i8 * 53;
                        i5 = zzd(t, j);
                        i = i4 + i5;
                        break;
                    }
                case 64:
                    i = i8;
                    if (!zza((zzlo<T>) t, i10, i6)) {
                        break;
                    } else {
                        i4 = i8 * 53;
                        i5 = zzd(t, j);
                        i = i4 + i5;
                        break;
                    }
                case 65:
                    i = i8;
                    if (!zza((zzlo<T>) t, i10, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzkf.zza(zze(t, j));
                        i = i3 + i2;
                        break;
                    }
                case 66:
                    i = i8;
                    if (!zza((zzlo<T>) t, i10, i6)) {
                        break;
                    } else {
                        i4 = i8 * 53;
                        i5 = zzd(t, j);
                        i = i4 + i5;
                        break;
                    }
                case 67:
                    i = i8;
                    if (!zza((zzlo<T>) t, i10, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzkf.zza(zze(t, j));
                        i = i3 + i2;
                        break;
                    }
                case 68:
                    i = i8;
                    if (!zza((zzlo<T>) t, i10, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzmy.zzf(t, j).hashCode();
                        i = i3 + i2;
                        break;
                    }
                default:
                    i = i8;
                    break;
            }
            i6 += 3;
            i7 = i;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0a0f  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0a8b  */
    /* JADX WARN: Removed duplicated region for block: B:339:0x1446  */
    @Override // com.google.android.gms.internal.mlkit_translate.zzma
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r8, com.google.android.gms.internal.mlkit_translate.zznm r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 5245
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_translate.zzlo.zza(java.lang.Object, com.google.android.gms.internal.mlkit_translate.zznm):void");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0179, code lost:
        if (com.google.android.gms.internal.mlkit_translate.zzmc.zza(com.google.android.gms.internal.mlkit_translate.zzmy.zzf(r7, r0), com.google.android.gms.internal.mlkit_translate.zzmy.zzf(r8, r0)) != false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x01c1, code lost:
        if (com.google.android.gms.internal.mlkit_translate.zzmc.zza(com.google.android.gms.internal.mlkit_translate.zzmy.zzf(r7, r0), com.google.android.gms.internal.mlkit_translate.zzmy.zzf(r8, r0)) != false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x01df, code lost:
        if (com.google.android.gms.internal.mlkit_translate.zzmy.zzb(r7, r0) == com.google.android.gms.internal.mlkit_translate.zzmy.zzb(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x01fc, code lost:
        if (com.google.android.gms.internal.mlkit_translate.zzmy.zza(r7, r0) == com.google.android.gms.internal.mlkit_translate.zzmy.zza(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x021a, code lost:
        if (com.google.android.gms.internal.mlkit_translate.zzmy.zzb(r7, r0) == com.google.android.gms.internal.mlkit_translate.zzmy.zzb(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0237, code lost:
        if (com.google.android.gms.internal.mlkit_translate.zzmy.zza(r7, r0) == com.google.android.gms.internal.mlkit_translate.zzmy.zza(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0254, code lost:
        if (com.google.android.gms.internal.mlkit_translate.zzmy.zza(r7, r0) == com.google.android.gms.internal.mlkit_translate.zzmy.zza(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0271, code lost:
        if (com.google.android.gms.internal.mlkit_translate.zzmy.zza(r7, r0) == com.google.android.gms.internal.mlkit_translate.zzmy.zza(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0291, code lost:
        if (com.google.android.gms.internal.mlkit_translate.zzmc.zza(com.google.android.gms.internal.mlkit_translate.zzmy.zzf(r7, r0), com.google.android.gms.internal.mlkit_translate.zzmy.zzf(r8, r0)) != false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x02b1, code lost:
        if (com.google.android.gms.internal.mlkit_translate.zzmc.zza(com.google.android.gms.internal.mlkit_translate.zzmy.zzf(r7, r0), com.google.android.gms.internal.mlkit_translate.zzmy.zzf(r8, r0)) != false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x02d1, code lost:
        if (com.google.android.gms.internal.mlkit_translate.zzmc.zza(com.google.android.gms.internal.mlkit_translate.zzmy.zzf(r7, r0), com.google.android.gms.internal.mlkit_translate.zzmy.zzf(r8, r0)) != false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x02ee, code lost:
        if (com.google.android.gms.internal.mlkit_translate.zzmy.zzc(r7, r0) == com.google.android.gms.internal.mlkit_translate.zzmy.zzc(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x030b, code lost:
        if (com.google.android.gms.internal.mlkit_translate.zzmy.zza(r7, r0) == com.google.android.gms.internal.mlkit_translate.zzmy.zza(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0329, code lost:
        if (com.google.android.gms.internal.mlkit_translate.zzmy.zzb(r7, r0) == com.google.android.gms.internal.mlkit_translate.zzmy.zzb(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0346, code lost:
        if (com.google.android.gms.internal.mlkit_translate.zzmy.zza(r7, r0) == com.google.android.gms.internal.mlkit_translate.zzmy.zza(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0364, code lost:
        if (com.google.android.gms.internal.mlkit_translate.zzmy.zzb(r7, r0) == com.google.android.gms.internal.mlkit_translate.zzmy.zzb(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0382, code lost:
        if (com.google.android.gms.internal.mlkit_translate.zzmy.zzb(r7, r0) == com.google.android.gms.internal.mlkit_translate.zzmy.zzb(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x03a5, code lost:
        if (java.lang.Float.floatToIntBits(com.google.android.gms.internal.mlkit_translate.zzmy.zzd(r7, r0)) == java.lang.Float.floatToIntBits(com.google.android.gms.internal.mlkit_translate.zzmy.zzd(r8, r0))) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x03c9, code lost:
        if (java.lang.Double.doubleToLongBits(com.google.android.gms.internal.mlkit_translate.zzmy.zze(r7, r0)) == java.lang.Double.doubleToLongBits(com.google.android.gms.internal.mlkit_translate.zzmy.zze(r8, r0))) goto L86;
     */
    @Override // com.google.android.gms.internal.mlkit_translate.zzma
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zza(T r7, T r8) {
        /*
            Method dump skipped, instructions count: 1041
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.mlkit_translate.zzlo.zza(java.lang.Object, java.lang.Object):boolean");
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzma
    public final int zzb(T t) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        int i19 = 1;
        int i20 = 0;
        if (!this.zzj) {
            Unsafe unsafe = zzb;
            int i21 = 1048575;
            int i22 = 0;
            int i23 = 0;
            int i24 = 0;
            while (i20 < this.zzc.length) {
                int zzc = zzc(i20);
                int[] iArr = this.zzc;
                int i25 = iArr[i20];
                int i26 = (267386880 & zzc) >>> 20;
                if (i26 <= 17) {
                    int i27 = iArr[i20 + 2];
                    int i28 = i27 & 1048575;
                    int i29 = i19 << (i27 >>> 20);
                    i2 = i21;
                    i = i29;
                    if (i28 != i21) {
                        i24 = unsafe.getInt(t, i28);
                        i2 = i28;
                        i = i29;
                    }
                } else {
                    i = 0;
                    i2 = i21;
                }
                long j = zzc & 1048575;
                switch (i26) {
                    case 0:
                        i4 = 1;
                        i5 = 0;
                        i3 = i23;
                        if ((i & i24) != 0) {
                            i3 = zzjp.zzb(i25, (double) PlaceLikelihood.LIKELIHOOD_MIN_VALUE) + i23;
                            i5 = 0;
                            i4 = 1;
                            break;
                        }
                        break;
                    case 1:
                        i4 = 1;
                        i5 = 0;
                        i3 = i23;
                        if ((i & i24) != 0) {
                            i3 = i23 + zzjp.zzb(i25, 0.0f);
                            i4 = 1;
                            i5 = 0;
                            break;
                        }
                        break;
                    case 2:
                        if ((i & i24) != 0) {
                            i8 = zzjp.zzd(i25, unsafe.getLong(t, j));
                            i5 = 0;
                            i7 = i8;
                            i4 = 1;
                            i3 = i23 + i7;
                            break;
                        }
                        i4 = 1;
                        i5 = 0;
                        i3 = i23;
                        break;
                    case 3:
                        if ((i & i24) != 0) {
                            i8 = zzjp.zze(i25, unsafe.getLong(t, j));
                            i5 = 0;
                            i7 = i8;
                            i4 = 1;
                            i3 = i23 + i7;
                            break;
                        }
                        i4 = 1;
                        i5 = 0;
                        i3 = i23;
                        break;
                    case 4:
                        if ((i & i24) != 0) {
                            i8 = zzjp.zzf(i25, unsafe.getInt(t, j));
                            i5 = 0;
                            i7 = i8;
                            i4 = 1;
                            i3 = i23 + i7;
                            break;
                        }
                        i4 = 1;
                        i5 = 0;
                        i3 = i23;
                        break;
                    case 5:
                        i4 = 1;
                        i5 = 0;
                        i3 = i23;
                        if ((i & i24) != 0) {
                            i7 = zzjp.zzg(i25, 0L);
                            i4 = 1;
                            i5 = 0;
                            i3 = i23 + i7;
                            break;
                        }
                        break;
                    case 6:
                        i3 = i23;
                        if ((i24 & i) != 0) {
                            i3 = i23 + zzjp.zzi(i25, 0);
                        }
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 7:
                        i6 = i23;
                        if ((i24 & i) != 0) {
                            i6 = zzjp.zzb(i25, true) + i23;
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 8:
                        i6 = i23;
                        if ((i & i24) != 0) {
                            Object object = unsafe.getObject(t, j);
                            i9 = object instanceof zziy ? zzjp.zzc(i25, (zziy) object) : zzjp.zzb(i25, (String) object);
                            i6 = i23 + i9;
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 9:
                        i6 = i23;
                        if ((i & i24) != 0) {
                            i9 = zzmc.zza(i25, unsafe.getObject(t, j), zza(i20));
                            i6 = i23 + i9;
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 10:
                        i6 = i23;
                        if ((i & i24) != 0) {
                            i9 = zzjp.zzc(i25, (zziy) unsafe.getObject(t, j));
                            i6 = i23 + i9;
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 11:
                        i6 = i23;
                        if ((i & i24) != 0) {
                            i9 = zzjp.zzg(i25, unsafe.getInt(t, j));
                            i6 = i23 + i9;
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 12:
                        i6 = i23;
                        if ((i & i24) != 0) {
                            i9 = zzjp.zzk(i25, unsafe.getInt(t, j));
                            i6 = i23 + i9;
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 13:
                        i6 = i23;
                        if ((i24 & i) != 0) {
                            i9 = zzjp.zzj(i25, 0);
                            i6 = i23 + i9;
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 14:
                        i6 = i23;
                        if ((i24 & i) != 0) {
                            i9 = zzjp.zzh(i25, 0L);
                            i6 = i23 + i9;
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 15:
                        i6 = i23;
                        if ((i & i24) != 0) {
                            i9 = zzjp.zzh(i25, unsafe.getInt(t, j));
                            i6 = i23 + i9;
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 16:
                        i6 = i23;
                        if ((i & i24) != 0) {
                            i9 = zzjp.zzf(i25, unsafe.getLong(t, j));
                            i6 = i23 + i9;
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 17:
                        i6 = i23;
                        if ((i & i24) != 0) {
                            i9 = zzjp.zzc(i25, (zzlk) unsafe.getObject(t, j), zza(i20));
                            i6 = i23 + i9;
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 18:
                        i9 = zzmc.zzi(i25, (List) unsafe.getObject(t, j), false);
                        i6 = i23 + i9;
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 19:
                        i10 = zzmc.zzh(i25, (List) unsafe.getObject(t, j), false);
                        i5 = 0;
                        i3 = i23 + i10;
                        i4 = 1;
                        break;
                    case 20:
                        i10 = zzmc.zza(i25, (List<Long>) unsafe.getObject(t, j), false);
                        i5 = 0;
                        i3 = i23 + i10;
                        i4 = 1;
                        break;
                    case 21:
                        i10 = zzmc.zzb(i25, (List<Long>) unsafe.getObject(t, j), false);
                        i5 = 0;
                        i3 = i23 + i10;
                        i4 = 1;
                        break;
                    case 22:
                        i10 = zzmc.zze(i25, (List) unsafe.getObject(t, j), false);
                        i5 = 0;
                        i3 = i23 + i10;
                        i4 = 1;
                        break;
                    case 23:
                        i10 = zzmc.zzi(i25, (List) unsafe.getObject(t, j), false);
                        i5 = 0;
                        i3 = i23 + i10;
                        i4 = 1;
                        break;
                    case 24:
                        i10 = zzmc.zzh(i25, (List) unsafe.getObject(t, j), false);
                        i5 = 0;
                        i3 = i23 + i10;
                        i4 = 1;
                        break;
                    case 25:
                        i5 = 0;
                        i10 = zzmc.zzj(i25, (List) unsafe.getObject(t, j), false);
                        i3 = i23 + i10;
                        i4 = 1;
                        break;
                    case 26:
                        i9 = zzmc.zza(i25, (List) unsafe.getObject(t, j));
                        i6 = i23 + i9;
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 27:
                        i9 = zzmc.zza(i25, (List<?>) unsafe.getObject(t, j), zza(i20));
                        i6 = i23 + i9;
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 28:
                        i9 = zzmc.zzb(i25, (List) unsafe.getObject(t, j));
                        i6 = i23 + i9;
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 29:
                        i9 = zzmc.zzf(i25, (List) unsafe.getObject(t, j), false);
                        i6 = i23 + i9;
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 30:
                        i10 = zzmc.zzd(i25, (List) unsafe.getObject(t, j), false);
                        i5 = 0;
                        i3 = i23 + i10;
                        i4 = 1;
                        break;
                    case 31:
                        i10 = zzmc.zzh(i25, (List) unsafe.getObject(t, j), false);
                        i5 = 0;
                        i3 = i23 + i10;
                        i4 = 1;
                        break;
                    case 32:
                        i10 = zzmc.zzi(i25, (List) unsafe.getObject(t, j), false);
                        i5 = 0;
                        i3 = i23 + i10;
                        i4 = 1;
                        break;
                    case 33:
                        i10 = zzmc.zzg(i25, (List) unsafe.getObject(t, j), false);
                        i5 = 0;
                        i3 = i23 + i10;
                        i4 = 1;
                        break;
                    case 34:
                        i5 = 0;
                        i10 = zzmc.zzc(i25, (List) unsafe.getObject(t, j), false);
                        i3 = i23 + i10;
                        i4 = 1;
                        break;
                    case 35:
                        int zzi = zzmc.zzi((List) unsafe.getObject(t, j));
                        i6 = i23;
                        if (zzi > 0) {
                            i13 = zzjp.zze(i25);
                            i11 = zzjp.zzg(zzi);
                            i12 = zzi;
                            i6 = C22128a.m8642b(i11, i13, i12, i23);
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 36:
                        int zzh = zzmc.zzh((List) unsafe.getObject(t, j));
                        i6 = i23;
                        if (zzh > 0) {
                            int zze = zzjp.zze(i25);
                            i11 = zzjp.zzg(zzh);
                            i12 = zzh;
                            i13 = zze;
                            i6 = C22128a.m8642b(i11, i13, i12, i23);
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 37:
                        int zza2 = zzmc.zza((List) unsafe.getObject(t, j));
                        i6 = i23;
                        if (zza2 > 0) {
                            int zze2 = zzjp.zze(i25);
                            i11 = zzjp.zzg(zza2);
                            i12 = zza2;
                            i13 = zze2;
                            i6 = C22128a.m8642b(i11, i13, i12, i23);
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 38:
                        int zzb2 = zzmc.zzb((List) unsafe.getObject(t, j));
                        i6 = i23;
                        if (zzb2 > 0) {
                            int zze3 = zzjp.zze(i25);
                            i11 = zzjp.zzg(zzb2);
                            i12 = zzb2;
                            i13 = zze3;
                            i6 = C22128a.m8642b(i11, i13, i12, i23);
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 39:
                        int zze4 = zzmc.zze((List) unsafe.getObject(t, j));
                        i6 = i23;
                        if (zze4 > 0) {
                            int zze5 = zzjp.zze(i25);
                            i11 = zzjp.zzg(zze4);
                            i12 = zze4;
                            i13 = zze5;
                            i6 = C22128a.m8642b(i11, i13, i12, i23);
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 40:
                        int zzi2 = zzmc.zzi((List) unsafe.getObject(t, j));
                        i6 = i23;
                        if (zzi2 > 0) {
                            int zze6 = zzjp.zze(i25);
                            i11 = zzjp.zzg(zzi2);
                            i12 = zzi2;
                            i13 = zze6;
                            i6 = C22128a.m8642b(i11, i13, i12, i23);
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 41:
                        int zzh2 = zzmc.zzh((List) unsafe.getObject(t, j));
                        i6 = i23;
                        if (zzh2 > 0) {
                            int zze7 = zzjp.zze(i25);
                            i11 = zzjp.zzg(zzh2);
                            i12 = zzh2;
                            i13 = zze7;
                            i6 = C22128a.m8642b(i11, i13, i12, i23);
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 42:
                        int zzj = zzmc.zzj((List) unsafe.getObject(t, j));
                        i6 = i23;
                        if (zzj > 0) {
                            int zze8 = zzjp.zze(i25);
                            i11 = zzjp.zzg(zzj);
                            i12 = zzj;
                            i13 = zze8;
                            i6 = C22128a.m8642b(i11, i13, i12, i23);
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 43:
                        int zzf = zzmc.zzf((List) unsafe.getObject(t, j));
                        i6 = i23;
                        if (zzf > 0) {
                            int zze9 = zzjp.zze(i25);
                            i11 = zzjp.zzg(zzf);
                            i12 = zzf;
                            i13 = zze9;
                            i6 = C22128a.m8642b(i11, i13, i12, i23);
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 44:
                        int zzd = zzmc.zzd((List) unsafe.getObject(t, j));
                        i6 = i23;
                        if (zzd > 0) {
                            int zze10 = zzjp.zze(i25);
                            i11 = zzjp.zzg(zzd);
                            i12 = zzd;
                            i13 = zze10;
                            i6 = C22128a.m8642b(i11, i13, i12, i23);
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 45:
                        int zzh3 = zzmc.zzh((List) unsafe.getObject(t, j));
                        i6 = i23;
                        if (zzh3 > 0) {
                            int zze11 = zzjp.zze(i25);
                            i11 = zzjp.zzg(zzh3);
                            i12 = zzh3;
                            i13 = zze11;
                            i6 = C22128a.m8642b(i11, i13, i12, i23);
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 46:
                        int zzi3 = zzmc.zzi((List) unsafe.getObject(t, j));
                        i6 = i23;
                        if (zzi3 > 0) {
                            int zze12 = zzjp.zze(i25);
                            i11 = zzjp.zzg(zzi3);
                            i12 = zzi3;
                            i13 = zze12;
                            i6 = C22128a.m8642b(i11, i13, i12, i23);
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 47:
                        int zzg = zzmc.zzg((List) unsafe.getObject(t, j));
                        i6 = i23;
                        if (zzg > 0) {
                            int zze13 = zzjp.zze(i25);
                            i11 = zzjp.zzg(zzg);
                            i12 = zzg;
                            i13 = zze13;
                            i6 = C22128a.m8642b(i11, i13, i12, i23);
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 48:
                        int zzc2 = zzmc.zzc((List) unsafe.getObject(t, j));
                        i6 = i23;
                        if (zzc2 > 0) {
                            int zze14 = zzjp.zze(i25);
                            i11 = zzjp.zzg(zzc2);
                            i12 = zzc2;
                            i13 = zze14;
                            i6 = C22128a.m8642b(i11, i13, i12, i23);
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 49:
                        i9 = zzmc.zzb(i25, (List) unsafe.getObject(t, j), zza(i20));
                        i6 = i23 + i9;
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 50:
                        i9 = this.zzs.zza(i25, unsafe.getObject(t, j), zzb(i20));
                        i6 = i23 + i9;
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 51:
                        i6 = i23;
                        if (zza((zzlo<T>) t, i25, i20)) {
                            i9 = zzjp.zzb(i25, (double) PlaceLikelihood.LIKELIHOOD_MIN_VALUE);
                            i6 = i23 + i9;
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 52:
                        i6 = i23;
                        if (zza((zzlo<T>) t, i25, i20)) {
                            i9 = zzjp.zzb(i25, 0.0f);
                            i6 = i23 + i9;
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 53:
                        i6 = i23;
                        if (zza((zzlo<T>) t, i25, i20)) {
                            i9 = zzjp.zzd(i25, zze(t, j));
                            i6 = i23 + i9;
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 54:
                        i6 = i23;
                        if (zza((zzlo<T>) t, i25, i20)) {
                            i9 = zzjp.zze(i25, zze(t, j));
                            i6 = i23 + i9;
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 55:
                        i6 = i23;
                        if (zza((zzlo<T>) t, i25, i20)) {
                            i9 = zzjp.zzf(i25, zzd(t, j));
                            i6 = i23 + i9;
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 56:
                        i6 = i23;
                        if (zza((zzlo<T>) t, i25, i20)) {
                            i9 = zzjp.zzg(i25, 0L);
                            i6 = i23 + i9;
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 57:
                        i6 = i23;
                        if (zza((zzlo<T>) t, i25, i20)) {
                            i9 = zzjp.zzi(i25, 0);
                            i6 = i23 + i9;
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 58:
                        i6 = i23;
                        if (zza((zzlo<T>) t, i25, i20)) {
                            i9 = zzjp.zzb(i25, true);
                            i6 = i23 + i9;
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 59:
                        i6 = i23;
                        if (zza((zzlo<T>) t, i25, i20)) {
                            Object object2 = unsafe.getObject(t, j);
                            i9 = object2 instanceof zziy ? zzjp.zzc(i25, (zziy) object2) : zzjp.zzb(i25, (String) object2);
                            i6 = i23 + i9;
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 60:
                        i6 = i23;
                        if (zza((zzlo<T>) t, i25, i20)) {
                            i9 = zzmc.zza(i25, unsafe.getObject(t, j), zza(i20));
                            i6 = i23 + i9;
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 61:
                        i6 = i23;
                        if (zza((zzlo<T>) t, i25, i20)) {
                            i9 = zzjp.zzc(i25, (zziy) unsafe.getObject(t, j));
                            i6 = i23 + i9;
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 62:
                        i6 = i23;
                        if (zza((zzlo<T>) t, i25, i20)) {
                            i9 = zzjp.zzg(i25, zzd(t, j));
                            i6 = i23 + i9;
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 63:
                        i6 = i23;
                        if (zza((zzlo<T>) t, i25, i20)) {
                            i9 = zzjp.zzk(i25, zzd(t, j));
                            i6 = i23 + i9;
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 64:
                        i6 = i23;
                        if (zza((zzlo<T>) t, i25, i20)) {
                            i9 = zzjp.zzj(i25, 0);
                            i6 = i23 + i9;
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 65:
                        i6 = i23;
                        if (zza((zzlo<T>) t, i25, i20)) {
                            i9 = zzjp.zzh(i25, 0L);
                            i6 = i23 + i9;
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 66:
                        i6 = i23;
                        if (zza((zzlo<T>) t, i25, i20)) {
                            i9 = zzjp.zzh(i25, zzd(t, j));
                            i6 = i23 + i9;
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 67:
                        i6 = i23;
                        if (zza((zzlo<T>) t, i25, i20)) {
                            i9 = zzjp.zzf(i25, zze(t, j));
                            i6 = i23 + i9;
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    case 68:
                        i6 = i23;
                        if (zza((zzlo<T>) t, i25, i20)) {
                            i9 = zzjp.zzc(i25, (zzlk) unsafe.getObject(t, j), zza(i20));
                            i6 = i23 + i9;
                        }
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                    default:
                        i6 = i23;
                        i3 = i6;
                        i4 = 1;
                        i5 = 0;
                        break;
                }
                int i30 = i4;
                i22 = i5;
                i20 += 3;
                i21 = i2;
                i19 = i30;
                i23 = i3;
            }
            int zza3 = i23 + zza((zzms) this.zzq, (Object) t);
            int i31 = zza3;
            if (this.zzh) {
                zzju<?> zza4 = this.zzr.zza(t);
                int i32 = i22;
                for (int i33 = i22; i33 < zza4.zza.zzc(); i33++) {
                    Map.Entry<?, Object> zzb3 = zza4.zza.zzb(i33);
                    i32 += zzju.zza((zzjw) zzb3.getKey(), zzb3.getValue());
                }
                for (Map.Entry<?, Object> entry : zza4.zza.zzd()) {
                    i32 += zzju.zza((zzjw) entry.getKey(), entry.getValue());
                }
                i31 = zza3 + i32;
            }
            return i31;
        }
        Unsafe unsafe2 = zzb;
        int i34 = 0;
        int i35 = 0;
        while (true) {
            int i36 = i35;
            if (i34 >= this.zzc.length) {
                return i36 + zza((zzms) this.zzq, (Object) t);
            }
            int zzc3 = zzc(i34);
            int i37 = (267386880 & zzc3) >>> 20;
            int i38 = this.zzc[i34];
            long j2 = zzc3 & 1048575;
            if (i37 >= zzjz.DOUBLE_LIST_PACKED.zza() && i37 <= zzjz.SINT64_LIST_PACKED.zza()) {
                int i39 = this.zzc[i34 + 2];
            }
            switch (i37) {
                case 0:
                    i14 = i36;
                    if (zza((zzlo<T>) t, i34)) {
                        i15 = zzjp.zzb(i38, (double) PlaceLikelihood.LIKELIHOOD_MIN_VALUE);
                        i14 = i36 + i15;
                        break;
                    } else {
                        break;
                    }
                case 1:
                    i14 = i36;
                    if (zza((zzlo<T>) t, i34)) {
                        i15 = zzjp.zzb(i38, 0.0f);
                        i14 = i36 + i15;
                        break;
                    } else {
                        break;
                    }
                case 2:
                    i14 = i36;
                    if (zza((zzlo<T>) t, i34)) {
                        i15 = zzjp.zzd(i38, zzmy.zzb(t, j2));
                        i14 = i36 + i15;
                        break;
                    } else {
                        break;
                    }
                case 3:
                    i14 = i36;
                    if (zza((zzlo<T>) t, i34)) {
                        i15 = zzjp.zze(i38, zzmy.zzb(t, j2));
                        i14 = i36 + i15;
                        break;
                    } else {
                        break;
                    }
                case 4:
                    i14 = i36;
                    if (zza((zzlo<T>) t, i34)) {
                        i15 = zzjp.zzf(i38, zzmy.zza(t, j2));
                        i14 = i36 + i15;
                        break;
                    } else {
                        break;
                    }
                case 5:
                    i14 = i36;
                    if (zza((zzlo<T>) t, i34)) {
                        i15 = zzjp.zzg(i38, 0L);
                        i14 = i36 + i15;
                        break;
                    } else {
                        break;
                    }
                case 6:
                    i14 = i36;
                    if (zza((zzlo<T>) t, i34)) {
                        i15 = zzjp.zzi(i38, 0);
                        i14 = i36 + i15;
                        break;
                    } else {
                        break;
                    }
                case 7:
                    i14 = i36;
                    if (zza((zzlo<T>) t, i34)) {
                        i15 = zzjp.zzb(i38, true);
                        i14 = i36 + i15;
                        break;
                    } else {
                        break;
                    }
                case 8:
                    i14 = i36;
                    if (zza((zzlo<T>) t, i34)) {
                        Object zzf2 = zzmy.zzf(t, j2);
                        i15 = zzf2 instanceof zziy ? zzjp.zzc(i38, (zziy) zzf2) : zzjp.zzb(i38, (String) zzf2);
                        i14 = i36 + i15;
                        break;
                    } else {
                        break;
                    }
                case 9:
                    i14 = i36;
                    if (zza((zzlo<T>) t, i34)) {
                        i15 = zzmc.zza(i38, zzmy.zzf(t, j2), zza(i34));
                        i14 = i36 + i15;
                        break;
                    } else {
                        break;
                    }
                case 10:
                    i14 = i36;
                    if (zza((zzlo<T>) t, i34)) {
                        i15 = zzjp.zzc(i38, (zziy) zzmy.zzf(t, j2));
                        i14 = i36 + i15;
                        break;
                    } else {
                        break;
                    }
                case 11:
                    i14 = i36;
                    if (zza((zzlo<T>) t, i34)) {
                        i15 = zzjp.zzg(i38, zzmy.zza(t, j2));
                        i14 = i36 + i15;
                        break;
                    } else {
                        break;
                    }
                case 12:
                    i14 = i36;
                    if (zza((zzlo<T>) t, i34)) {
                        i15 = zzjp.zzk(i38, zzmy.zza(t, j2));
                        i14 = i36 + i15;
                        break;
                    } else {
                        break;
                    }
                case 13:
                    i14 = i36;
                    if (zza((zzlo<T>) t, i34)) {
                        i15 = zzjp.zzj(i38, 0);
                        i14 = i36 + i15;
                        break;
                    } else {
                        break;
                    }
                case 14:
                    i14 = i36;
                    if (zza((zzlo<T>) t, i34)) {
                        i15 = zzjp.zzh(i38, 0L);
                        i14 = i36 + i15;
                        break;
                    } else {
                        break;
                    }
                case 15:
                    i14 = i36;
                    if (zza((zzlo<T>) t, i34)) {
                        i15 = zzjp.zzh(i38, zzmy.zza(t, j2));
                        i14 = i36 + i15;
                        break;
                    } else {
                        break;
                    }
                case 16:
                    i14 = i36;
                    if (zza((zzlo<T>) t, i34)) {
                        i15 = zzjp.zzf(i38, zzmy.zzb(t, j2));
                        i14 = i36 + i15;
                        break;
                    } else {
                        break;
                    }
                case 17:
                    i14 = i36;
                    if (zza((zzlo<T>) t, i34)) {
                        i15 = zzjp.zzc(i38, (zzlk) zzmy.zzf(t, j2), zza(i34));
                        i14 = i36 + i15;
                        break;
                    } else {
                        break;
                    }
                case 18:
                    i15 = zzmc.zzi(i38, zza(t, j2), false);
                    i14 = i36 + i15;
                    break;
                case 19:
                    i15 = zzmc.zzh(i38, zza(t, j2), false);
                    i14 = i36 + i15;
                    break;
                case 20:
                    i15 = zzmc.zza(i38, (List<Long>) zza(t, j2), false);
                    i14 = i36 + i15;
                    break;
                case 21:
                    i15 = zzmc.zzb(i38, (List<Long>) zza(t, j2), false);
                    i14 = i36 + i15;
                    break;
                case 22:
                    i15 = zzmc.zze(i38, zza(t, j2), false);
                    i14 = i36 + i15;
                    break;
                case 23:
                    i15 = zzmc.zzi(i38, zza(t, j2), false);
                    i14 = i36 + i15;
                    break;
                case 24:
                    i15 = zzmc.zzh(i38, zza(t, j2), false);
                    i14 = i36 + i15;
                    break;
                case 25:
                    i15 = zzmc.zzj(i38, zza(t, j2), false);
                    i14 = i36 + i15;
                    break;
                case 26:
                    i15 = zzmc.zza(i38, zza(t, j2));
                    i14 = i36 + i15;
                    break;
                case 27:
                    i15 = zzmc.zza(i38, zza(t, j2), zza(i34));
                    i14 = i36 + i15;
                    break;
                case 28:
                    i15 = zzmc.zzb(i38, zza(t, j2));
                    i14 = i36 + i15;
                    break;
                case 29:
                    i15 = zzmc.zzf(i38, zza(t, j2), false);
                    i14 = i36 + i15;
                    break;
                case 30:
                    i15 = zzmc.zzd(i38, zza(t, j2), false);
                    i14 = i36 + i15;
                    break;
                case 31:
                    i15 = zzmc.zzh(i38, zza(t, j2), false);
                    i14 = i36 + i15;
                    break;
                case 32:
                    i15 = zzmc.zzi(i38, zza(t, j2), false);
                    i14 = i36 + i15;
                    break;
                case 33:
                    i15 = zzmc.zzg(i38, zza(t, j2), false);
                    i14 = i36 + i15;
                    break;
                case 34:
                    i15 = zzmc.zzc(i38, zza(t, j2), false);
                    i14 = i36 + i15;
                    break;
                case 35:
                    int zzi4 = zzmc.zzi((List) unsafe2.getObject(t, j2));
                    i14 = i36;
                    if (zzi4 > 0) {
                        i18 = zzjp.zze(i38);
                        i16 = zzjp.zzg(zzi4);
                        i17 = zzi4;
                        i14 = C22128a.m8642b(i16, i18, i17, i36);
                        break;
                    } else {
                        break;
                    }
                case 36:
                    int zzh4 = zzmc.zzh((List) unsafe2.getObject(t, j2));
                    i14 = i36;
                    if (zzh4 > 0) {
                        int zze15 = zzjp.zze(i38);
                        i16 = zzjp.zzg(zzh4);
                        i17 = zzh4;
                        i18 = zze15;
                        i14 = C22128a.m8642b(i16, i18, i17, i36);
                        break;
                    } else {
                        break;
                    }
                case 37:
                    int zza5 = zzmc.zza((List) unsafe2.getObject(t, j2));
                    i14 = i36;
                    if (zza5 > 0) {
                        int zze16 = zzjp.zze(i38);
                        i16 = zzjp.zzg(zza5);
                        i17 = zza5;
                        i18 = zze16;
                        i14 = C22128a.m8642b(i16, i18, i17, i36);
                        break;
                    } else {
                        break;
                    }
                case 38:
                    int zzb4 = zzmc.zzb((List) unsafe2.getObject(t, j2));
                    i14 = i36;
                    if (zzb4 > 0) {
                        int zze17 = zzjp.zze(i38);
                        i16 = zzjp.zzg(zzb4);
                        i17 = zzb4;
                        i18 = zze17;
                        i14 = C22128a.m8642b(i16, i18, i17, i36);
                        break;
                    } else {
                        break;
                    }
                case 39:
                    int zze18 = zzmc.zze((List) unsafe2.getObject(t, j2));
                    i14 = i36;
                    if (zze18 > 0) {
                        int zze19 = zzjp.zze(i38);
                        i16 = zzjp.zzg(zze18);
                        i17 = zze18;
                        i18 = zze19;
                        i14 = C22128a.m8642b(i16, i18, i17, i36);
                        break;
                    } else {
                        break;
                    }
                case 40:
                    int zzi5 = zzmc.zzi((List) unsafe2.getObject(t, j2));
                    i14 = i36;
                    if (zzi5 > 0) {
                        int zze20 = zzjp.zze(i38);
                        i16 = zzjp.zzg(zzi5);
                        i17 = zzi5;
                        i18 = zze20;
                        i14 = C22128a.m8642b(i16, i18, i17, i36);
                        break;
                    } else {
                        break;
                    }
                case 41:
                    int zzh5 = zzmc.zzh((List) unsafe2.getObject(t, j2));
                    i14 = i36;
                    if (zzh5 > 0) {
                        int zze21 = zzjp.zze(i38);
                        i16 = zzjp.zzg(zzh5);
                        i17 = zzh5;
                        i18 = zze21;
                        i14 = C22128a.m8642b(i16, i18, i17, i36);
                        break;
                    } else {
                        break;
                    }
                case 42:
                    int zzj2 = zzmc.zzj((List) unsafe2.getObject(t, j2));
                    i14 = i36;
                    if (zzj2 > 0) {
                        int zze22 = zzjp.zze(i38);
                        i16 = zzjp.zzg(zzj2);
                        i17 = zzj2;
                        i18 = zze22;
                        i14 = C22128a.m8642b(i16, i18, i17, i36);
                        break;
                    } else {
                        break;
                    }
                case 43:
                    int zzf3 = zzmc.zzf((List) unsafe2.getObject(t, j2));
                    i14 = i36;
                    if (zzf3 > 0) {
                        int zze23 = zzjp.zze(i38);
                        i16 = zzjp.zzg(zzf3);
                        i17 = zzf3;
                        i18 = zze23;
                        i14 = C22128a.m8642b(i16, i18, i17, i36);
                        break;
                    } else {
                        break;
                    }
                case 44:
                    int zzd2 = zzmc.zzd((List) unsafe2.getObject(t, j2));
                    i14 = i36;
                    if (zzd2 > 0) {
                        int zze24 = zzjp.zze(i38);
                        i16 = zzjp.zzg(zzd2);
                        i17 = zzd2;
                        i18 = zze24;
                        i14 = C22128a.m8642b(i16, i18, i17, i36);
                        break;
                    } else {
                        break;
                    }
                case 45:
                    int zzh6 = zzmc.zzh((List) unsafe2.getObject(t, j2));
                    i14 = i36;
                    if (zzh6 > 0) {
                        int zze25 = zzjp.zze(i38);
                        i16 = zzjp.zzg(zzh6);
                        i17 = zzh6;
                        i18 = zze25;
                        i14 = C22128a.m8642b(i16, i18, i17, i36);
                        break;
                    } else {
                        break;
                    }
                case 46:
                    int zzi6 = zzmc.zzi((List) unsafe2.getObject(t, j2));
                    i14 = i36;
                    if (zzi6 > 0) {
                        int zze26 = zzjp.zze(i38);
                        i16 = zzjp.zzg(zzi6);
                        i17 = zzi6;
                        i18 = zze26;
                        i14 = C22128a.m8642b(i16, i18, i17, i36);
                        break;
                    } else {
                        break;
                    }
                case 47:
                    int zzg2 = zzmc.zzg((List) unsafe2.getObject(t, j2));
                    i14 = i36;
                    if (zzg2 > 0) {
                        int zze27 = zzjp.zze(i38);
                        i16 = zzjp.zzg(zzg2);
                        i17 = zzg2;
                        i18 = zze27;
                        i14 = C22128a.m8642b(i16, i18, i17, i36);
                        break;
                    } else {
                        break;
                    }
                case 48:
                    int zzc4 = zzmc.zzc((List) unsafe2.getObject(t, j2));
                    i14 = i36;
                    if (zzc4 > 0) {
                        int zze28 = zzjp.zze(i38);
                        i16 = zzjp.zzg(zzc4);
                        i17 = zzc4;
                        i18 = zze28;
                        i14 = C22128a.m8642b(i16, i18, i17, i36);
                        break;
                    } else {
                        break;
                    }
                case 49:
                    i15 = zzmc.zzb(i38, (List<zzlk>) zza(t, j2), zza(i34));
                    i14 = i36 + i15;
                    break;
                case 50:
                    i15 = this.zzs.zza(i38, zzmy.zzf(t, j2), zzb(i34));
                    i14 = i36 + i15;
                    break;
                case 51:
                    i14 = i36;
                    if (zza((zzlo<T>) t, i38, i34)) {
                        i15 = zzjp.zzb(i38, (double) PlaceLikelihood.LIKELIHOOD_MIN_VALUE);
                        i14 = i36 + i15;
                        break;
                    } else {
                        break;
                    }
                case 52:
                    i14 = i36;
                    if (zza((zzlo<T>) t, i38, i34)) {
                        i15 = zzjp.zzb(i38, 0.0f);
                        i14 = i36 + i15;
                        break;
                    } else {
                        break;
                    }
                case 53:
                    i14 = i36;
                    if (zza((zzlo<T>) t, i38, i34)) {
                        i15 = zzjp.zzd(i38, zze(t, j2));
                        i14 = i36 + i15;
                        break;
                    } else {
                        break;
                    }
                case 54:
                    i14 = i36;
                    if (zza((zzlo<T>) t, i38, i34)) {
                        i15 = zzjp.zze(i38, zze(t, j2));
                        i14 = i36 + i15;
                        break;
                    } else {
                        break;
                    }
                case 55:
                    i14 = i36;
                    if (zza((zzlo<T>) t, i38, i34)) {
                        i15 = zzjp.zzf(i38, zzd(t, j2));
                        i14 = i36 + i15;
                        break;
                    } else {
                        break;
                    }
                case 56:
                    i14 = i36;
                    if (zza((zzlo<T>) t, i38, i34)) {
                        i15 = zzjp.zzg(i38, 0L);
                        i14 = i36 + i15;
                        break;
                    } else {
                        break;
                    }
                case 57:
                    i14 = i36;
                    if (zza((zzlo<T>) t, i38, i34)) {
                        i15 = zzjp.zzi(i38, 0);
                        i14 = i36 + i15;
                        break;
                    } else {
                        break;
                    }
                case 58:
                    i14 = i36;
                    if (zza((zzlo<T>) t, i38, i34)) {
                        i15 = zzjp.zzb(i38, true);
                        i14 = i36 + i15;
                        break;
                    } else {
                        break;
                    }
                case 59:
                    i14 = i36;
                    if (zza((zzlo<T>) t, i38, i34)) {
                        Object zzf4 = zzmy.zzf(t, j2);
                        i15 = zzf4 instanceof zziy ? zzjp.zzc(i38, (zziy) zzf4) : zzjp.zzb(i38, (String) zzf4);
                        i14 = i36 + i15;
                        break;
                    } else {
                        break;
                    }
                case 60:
                    i14 = i36;
                    if (zza((zzlo<T>) t, i38, i34)) {
                        i15 = zzmc.zza(i38, zzmy.zzf(t, j2), zza(i34));
                        i14 = i36 + i15;
                        break;
                    } else {
                        break;
                    }
                case 61:
                    i14 = i36;
                    if (zza((zzlo<T>) t, i38, i34)) {
                        i15 = zzjp.zzc(i38, (zziy) zzmy.zzf(t, j2));
                        i14 = i36 + i15;
                        break;
                    } else {
                        break;
                    }
                case 62:
                    i14 = i36;
                    if (zza((zzlo<T>) t, i38, i34)) {
                        i15 = zzjp.zzg(i38, zzd(t, j2));
                        i14 = i36 + i15;
                        break;
                    } else {
                        break;
                    }
                case 63:
                    i14 = i36;
                    if (zza((zzlo<T>) t, i38, i34)) {
                        i15 = zzjp.zzk(i38, zzd(t, j2));
                        i14 = i36 + i15;
                        break;
                    } else {
                        break;
                    }
                case 64:
                    i14 = i36;
                    if (zza((zzlo<T>) t, i38, i34)) {
                        i15 = zzjp.zzj(i38, 0);
                        i14 = i36 + i15;
                        break;
                    } else {
                        break;
                    }
                case 65:
                    i14 = i36;
                    if (zza((zzlo<T>) t, i38, i34)) {
                        i15 = zzjp.zzh(i38, 0L);
                        i14 = i36 + i15;
                        break;
                    } else {
                        break;
                    }
                case 66:
                    i14 = i36;
                    if (zza((zzlo<T>) t, i38, i34)) {
                        i15 = zzjp.zzh(i38, zzd(t, j2));
                        i14 = i36 + i15;
                        break;
                    } else {
                        break;
                    }
                case 67:
                    i14 = i36;
                    if (zza((zzlo<T>) t, i38, i34)) {
                        i15 = zzjp.zzf(i38, zze(t, j2));
                        i14 = i36 + i15;
                        break;
                    } else {
                        break;
                    }
                case 68:
                    i14 = i36;
                    if (zza((zzlo<T>) t, i38, i34)) {
                        i15 = zzjp.zzc(i38, (zzlk) zzmy.zzf(t, j2), zza(i34));
                        i14 = i36 + i15;
                        break;
                    } else {
                        break;
                    }
                default:
                    i14 = i36;
                    break;
            }
            i34 += 3;
            i35 = i14;
        }
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzma
    public final void zzb(T t, T t2) {
        Objects.requireNonNull(t2);
        for (int i = 0; i < this.zzc.length; i += 3) {
            int zzc = zzc(i);
            long j = 1048575 & zzc;
            int i2 = this.zzc[i];
            switch ((zzc & 267386880) >>> 20) {
                case 0:
                    if (zza((zzlo<T>) t2, i)) {
                        zzmy.zza(t, j, zzmy.zze(t2, j));
                        zzb((zzlo<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zza((zzlo<T>) t2, i)) {
                        zzmy.zza((Object) t, j, zzmy.zzd(t2, j));
                        zzb((zzlo<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zza((zzlo<T>) t2, i)) {
                        zzmy.zza((Object) t, j, zzmy.zzb(t2, j));
                        zzb((zzlo<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zza((zzlo<T>) t2, i)) {
                        zzmy.zza((Object) t, j, zzmy.zzb(t2, j));
                        zzb((zzlo<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zza((zzlo<T>) t2, i)) {
                        zzmy.zza((Object) t, j, zzmy.zza(t2, j));
                        zzb((zzlo<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zza((zzlo<T>) t2, i)) {
                        zzmy.zza((Object) t, j, zzmy.zzb(t2, j));
                        zzb((zzlo<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zza((zzlo<T>) t2, i)) {
                        zzmy.zza((Object) t, j, zzmy.zza(t2, j));
                        zzb((zzlo<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zza((zzlo<T>) t2, i)) {
                        zzmy.zza(t, j, zzmy.zzc(t2, j));
                        zzb((zzlo<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (zza((zzlo<T>) t2, i)) {
                        zzmy.zza(t, j, zzmy.zzf(t2, j));
                        zzb((zzlo<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    zza(t, t2, i);
                    break;
                case 10:
                    if (zza((zzlo<T>) t2, i)) {
                        zzmy.zza(t, j, zzmy.zzf(t2, j));
                        zzb((zzlo<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zza((zzlo<T>) t2, i)) {
                        zzmy.zza((Object) t, j, zzmy.zza(t2, j));
                        zzb((zzlo<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zza((zzlo<T>) t2, i)) {
                        zzmy.zza((Object) t, j, zzmy.zza(t2, j));
                        zzb((zzlo<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zza((zzlo<T>) t2, i)) {
                        zzmy.zza((Object) t, j, zzmy.zza(t2, j));
                        zzb((zzlo<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zza((zzlo<T>) t2, i)) {
                        zzmy.zza((Object) t, j, zzmy.zzb(t2, j));
                        zzb((zzlo<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zza((zzlo<T>) t2, i)) {
                        zzmy.zza((Object) t, j, zzmy.zza(t2, j));
                        zzb((zzlo<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zza((zzlo<T>) t2, i)) {
                        zzmy.zza((Object) t, j, zzmy.zzb(t2, j));
                        zzb((zzlo<T>) t, i);
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
                    this.zzp.zza(t, t2, j);
                    break;
                case 50:
                    zzmc.zza(this.zzs, t, t2, j);
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
                    if (zza((zzlo<T>) t2, i2, i)) {
                        zzmy.zza(t, j, zzmy.zzf(t2, j));
                        zzb((zzlo<T>) t, i2, i);
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
                    if (zza((zzlo<T>) t2, i2, i)) {
                        zzmy.zza(t, j, zzmy.zzf(t2, j));
                        zzb((zzlo<T>) t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    zzb(t, t2, i);
                    break;
            }
        }
        zzmc.zza(this.zzq, t, t2);
        if (this.zzh) {
            zzmc.zza(this.zzr, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_translate.zzma
    public final void zzc(T t) {
        int i;
        int i2 = this.zzm;
        while (true) {
            i = this.zzn;
            if (i2 >= i) {
                break;
            }
            long zzc = zzc(this.zzl[i2]) & 1048575;
            Object zzf = zzmy.zzf(t, zzc);
            if (zzf != null) {
                zzmy.zza(t, zzc, this.zzs.zzc(zzf));
            }
            i2++;
        }
        int length = this.zzl.length;
        for (int i3 = i; i3 < length; i3++) {
            this.zzp.zza(t, this.zzl[i3]);
        }
        this.zzq.zzb(t);
        if (this.zzh) {
            this.zzr.zzc(t);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.mlkit_translate.zzma
    public final boolean zzd(T t) {
        int i = 1048575;
        int i2 = 0;
        for (int i3 = 0; i3 < this.zzm; i3++) {
            int i4 = this.zzl[i3];
            int i5 = this.zzc[i4];
            int zzc = zzc(i4);
            int i6 = this.zzc[i4 + 2];
            int i7 = i6 & 1048575;
            int i8 = 1 << (i6 >>> 20);
            if (i7 != i) {
                if (i7 != 1048575) {
                    i2 = zzb.getInt(t, i7);
                }
                i = i7;
            }
            if (((268435456 & zzc) != 0) && !zza(t, i4, i, i2, i8)) {
                return false;
            }
            int i9 = (267386880 & zzc) >>> 20;
            if (i9 != 9 && i9 != 17) {
                if (i9 != 27) {
                    if (i9 == 60 || i9 == 68) {
                        if (zza((zzlo<T>) t, i5, i4) && !zza(t, zzc, zza(i4))) {
                            return false;
                        }
                    } else if (i9 != 49) {
                        if (i9 != 50) {
                            continue;
                        } else {
                            Map<?, ?> zzb2 = this.zzs.zzb(zzmy.zzf(t, zzc & 1048575));
                            boolean z = true;
                            if (!zzb2.isEmpty()) {
                                z = true;
                                if (this.zzs.zza(zzb(i4)).zzb.zza() == zznn.MESSAGE) {
                                    zzma<T> zzmaVar = null;
                                    Iterator<?> it = zzb2.values().iterator();
                                    while (true) {
                                        z = true;
                                        if (!it.hasNext()) {
                                            break;
                                        }
                                        Object next = it.next();
                                        zzma<T> zzmaVar2 = zzmaVar;
                                        if (zzmaVar == null) {
                                            zzmaVar2 = zzlz.zza().zza((Class) next.getClass());
                                        }
                                        zzmaVar = zzmaVar2;
                                        if (!zzmaVar2.zzd(next)) {
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
                List list = (List) zzmy.zzf(t, zzc & 1048575);
                boolean z2 = true;
                if (!list.isEmpty()) {
                    zzma zza2 = zza(i4);
                    int i10 = 0;
                    while (true) {
                        z2 = true;
                        if (i10 >= list.size()) {
                            break;
                        } else if (!zza2.zzd(list.get(i10))) {
                            z2 = false;
                            break;
                        } else {
                            i10++;
                        }
                    }
                }
                if (!z2) {
                    return false;
                }
            } else if (zza(t, i4, i, i2, i8) && !zza(t, zzc, zza(i4))) {
                return false;
            }
        }
        return !this.zzh || this.zzr.zza(t).zzf();
    }
}
