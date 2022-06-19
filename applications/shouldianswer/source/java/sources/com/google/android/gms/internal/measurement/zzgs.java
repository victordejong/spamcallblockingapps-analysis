package com.google.android.gms.internal.measurement;

import com.google.android.flexbox.FlexItem;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzgs.class */
public final class zzgs<T> implements zzhd<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzib.zzc();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzgo zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final boolean zzj;
    private final boolean zzk;
    private final int[] zzl;
    private final int zzm;
    private final int zzn;
    private final zzgw zzo;
    private final zzfy zzp;
    private final zzhv<?, ?> zzq;
    private final zzes<?> zzr;
    private final zzgh zzs;

    private zzgs(int[] iArr, Object[] objArr, int i, int i2, zzgo zzgoVar, boolean z, boolean z2, int[] iArr2, int i3, int i4, zzgw zzgwVar, zzfy zzfyVar, zzhv<?, ?> zzhvVar, zzes<?> zzesVar, zzgh zzghVar) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i;
        this.zzf = i2;
        this.zzi = zzgoVar instanceof zzfd;
        this.zzj = z;
        this.zzh = zzesVar != null && zzesVar.zza(zzgoVar);
        this.zzk = false;
        this.zzl = iArr2;
        this.zzm = i3;
        this.zzn = i4;
        this.zzo = zzgwVar;
        this.zzp = zzfyVar;
        this.zzq = zzhvVar;
        this.zzr = zzesVar;
        this.zzg = zzgoVar;
        this.zzs = zzghVar;
    }

    private final int zza(int i, int i2) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzb(i, i2);
    }

    private static <UT, UB> int zza(zzhv<UT, UB> zzhvVar, T t) {
        return zzhvVar.zzf(zzhvVar.zzb(t));
    }

    private final int zza(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, zzdt zzdtVar) {
        Unsafe unsafe = zzb;
        long j2 = this.zzc[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Double.valueOf(zzdq.zzc(bArr, i)));
                    i += 8;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 52:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Float.valueOf(zzdq.zzd(bArr, i)));
                    i += 4;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 53:
            case 54:
                if (i5 == 0) {
                    i = zzdq.zzb(bArr, i, zzdtVar);
                    unsafe.putObject(t, j, Long.valueOf(zzdtVar.zzb));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 55:
            case 62:
                if (i5 == 0) {
                    i = zzdq.zza(bArr, i, zzdtVar);
                    unsafe.putObject(t, j, Integer.valueOf(zzdtVar.zza));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 56:
            case 65:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Long.valueOf(zzdq.zzb(bArr, i)));
                    i += 8;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 57:
            case 64:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Integer.valueOf(zzdq.zza(bArr, i)));
                    i += 4;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 58:
                if (i5 == 0) {
                    i = zzdq.zzb(bArr, i, zzdtVar);
                    unsafe.putObject(t, j, Boolean.valueOf(zzdtVar.zzb != 0));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 59:
                if (i5 == 2) {
                    i = zzdq.zza(bArr, i, zzdtVar);
                    int i9 = zzdtVar.zza;
                    if (i9 == 0) {
                        unsafe.putObject(t, j, "");
                    } else if ((i6 & 536870912) != 0 && !zzie.zza(bArr, i, i + i9)) {
                        throw zzfo.zzh();
                    } else {
                        unsafe.putObject(t, j, new String(bArr, i, i9, zzff.zza));
                        i += i9;
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 60:
                if (i5 == 2) {
                    i = zzdq.zza(zza(i8), bArr, i, i2, zzdtVar);
                    Object object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object == null) {
                        unsafe.putObject(t, j, zzdtVar.zzc);
                    } else {
                        unsafe.putObject(t, j, zzff.zza(object, zzdtVar.zzc));
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 61:
                if (i5 == 2) {
                    i = zzdq.zze(bArr, i, zzdtVar);
                    unsafe.putObject(t, j, zzdtVar.zzc);
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 63:
                if (i5 == 0) {
                    i = zzdq.zza(bArr, i, zzdtVar);
                    int i10 = zzdtVar.zza;
                    zzfk zzc = zzc(i8);
                    if (zzc != null && !zzc.zza(i10)) {
                        zze(t).zza(i3, Long.valueOf(i10));
                        break;
                    } else {
                        unsafe.putObject(t, j, Integer.valueOf(i10));
                        unsafe.putInt(t, j2, i4);
                        break;
                    }
                }
                break;
            case 66:
                if (i5 == 0) {
                    i = zzdq.zza(bArr, i, zzdtVar);
                    unsafe.putObject(t, j, Integer.valueOf(zzeg.zze(zzdtVar.zza)));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 67:
                if (i5 == 0) {
                    i = zzdq.zzb(bArr, i, zzdtVar);
                    unsafe.putObject(t, j, Long.valueOf(zzeg.zza(zzdtVar.zzb)));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 68:
                if (i5 == 3) {
                    i = zzdq.zza(zza(i8), bArr, i, i2, (i3 & (-8)) | 4, zzdtVar);
                    Object object2 = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object2 == null) {
                        unsafe.putObject(t, j, zzdtVar.zzc);
                    } else {
                        unsafe.putObject(t, j, zzff.zza(object2, zzdtVar.zzc));
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x045f  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0518  */
    /* JADX WARN: Removed duplicated region for block: B:299:0x0963 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:304:0x0963 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:307:0x0963 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0371  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:113:0x044f -> B:114:0x0455). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:136:0x050b -> B:137:0x050e). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:79:0x0361 -> B:80:0x0367). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zza(T r9, byte[] r10, int r11, int r12, int r13, int r14, int r15, int r16, long r17, int r19, long r20, com.google.android.gms.internal.measurement.zzdt r22) {
        /*
            Method dump skipped, instructions count: 2405
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzgs.zza(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, com.google.android.gms.internal.measurement.zzdt):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v62, types: [int] */
    private final <K, V> int zza(T t, byte[] bArr, int i, int i2, int i3, long j, zzdt zzdtVar) {
        Unsafe unsafe = zzb;
        Object zzb2 = zzb(i3);
        Object object = unsafe.getObject(t, j);
        Object obj = object;
        if (this.zzs.zzc(object)) {
            obj = this.zzs.zze(zzb2);
            this.zzs.zza(obj, object);
            unsafe.putObject(t, j, obj);
        }
        zzgf<?, ?> zzf = this.zzs.zzf(zzb2);
        Map<?, ?> zza2 = this.zzs.zza(obj);
        int zza3 = zzdq.zza(bArr, i, zzdtVar);
        int i4 = zzdtVar.zza;
        if (i4 < 0 || i4 > i2 - zza3) {
            throw zzfo.zza();
        }
        int i5 = i4 + zza3;
        Object obj2 = zzf.zzb;
        Object obj3 = zzf.zzd;
        while (zza3 < i5) {
            int i6 = zza3 + 1;
            byte b = bArr[zza3];
            int i7 = i6;
            byte b2 = b;
            if (b < 0) {
                i7 = zzdq.zza(b, bArr, i6, zzdtVar);
                b2 = zzdtVar.zza;
            }
            int i8 = b2 >>> 3;
            int i9 = b2 & 7;
            if (i8 != 1) {
                if (i8 == 2 && i9 == zzf.zzc.zzb()) {
                    zza3 = zza(bArr, i7, i2, zzf.zzc, zzf.zzd.getClass(), zzdtVar);
                    obj3 = zzdtVar.zzc;
                }
                zza3 = zzdq.zza(b2, bArr, i7, i2, zzdtVar);
            } else if (i9 == zzf.zza.zzb()) {
                zza3 = zza(bArr, i7, i2, zzf.zza, (Class<?>) null, zzdtVar);
                obj2 = zzdtVar.zzc;
            } else {
                zza3 = zzdq.zza(b2, bArr, i7, i2, zzdtVar);
            }
        }
        if (zza3 != i5) {
            throw zzfo.zzg();
        }
        zza2.put(obj2, obj3);
        return i5;
    }

    private static int zza(byte[] bArr, int i, int i2, zzim zzimVar, Class<?> cls, zzdt zzdtVar) {
        int i3;
        switch (zzgr.zza[zzimVar.ordinal()]) {
            case 1:
                i3 = zzdq.zzb(bArr, i, zzdtVar);
                zzdtVar.zzc = Boolean.valueOf(zzdtVar.zzb != 0);
                break;
            case 2:
                i3 = zzdq.zze(bArr, i, zzdtVar);
                break;
            case 3:
                zzdtVar.zzc = Double.valueOf(zzdq.zzc(bArr, i));
                i3 = i + 8;
                break;
            case 4:
            case 5:
                zzdtVar.zzc = Integer.valueOf(zzdq.zza(bArr, i));
                i3 = i + 4;
                break;
            case 6:
            case 7:
                zzdtVar.zzc = Long.valueOf(zzdq.zzb(bArr, i));
                i3 = i + 8;
                break;
            case 8:
                zzdtVar.zzc = Float.valueOf(zzdq.zzd(bArr, i));
                i3 = i + 4;
                break;
            case 9:
            case 10:
            case 11:
                i3 = zzdq.zza(bArr, i, zzdtVar);
                zzdtVar.zzc = Integer.valueOf(zzdtVar.zza);
                break;
            case 12:
            case 13:
                i3 = zzdq.zzb(bArr, i, zzdtVar);
                zzdtVar.zzc = Long.valueOf(zzdtVar.zzb);
                break;
            case 14:
                i3 = zzdq.zza(zzgz.zza().zza((Class) cls), bArr, i, i2, zzdtVar);
                break;
            case 15:
                i3 = zzdq.zza(bArr, i, zzdtVar);
                zzdtVar.zzc = Integer.valueOf(zzeg.zze(zzdtVar.zza));
                break;
            case 16:
                i3 = zzdq.zzb(bArr, i, zzdtVar);
                zzdtVar.zzc = Long.valueOf(zzeg.zza(zzdtVar.zzb));
                break;
            case 17:
                i3 = zzdq.zzd(bArr, i, zzdtVar);
                break;
            default:
                throw new RuntimeException("unsupported field type.");
        }
        return i3;
    }

    /* JADX WARN: Removed duplicated region for block: B:183:0x0917  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> com.google.android.gms.internal.measurement.zzgs<T> zza(java.lang.Class<T> r18, com.google.android.gms.internal.measurement.zzgm r19, com.google.android.gms.internal.measurement.zzgw r20, com.google.android.gms.internal.measurement.zzfy r21, com.google.android.gms.internal.measurement.zzhv<?, ?> r22, com.google.android.gms.internal.measurement.zzes<?> r23, com.google.android.gms.internal.measurement.zzgh r24) {
        /*
            Method dump skipped, instructions count: 2535
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzgs.zza(java.lang.Class, com.google.android.gms.internal.measurement.zzgm, com.google.android.gms.internal.measurement.zzgw, com.google.android.gms.internal.measurement.zzfy, com.google.android.gms.internal.measurement.zzhv, com.google.android.gms.internal.measurement.zzes, com.google.android.gms.internal.measurement.zzgh):com.google.android.gms.internal.measurement.zzgs");
    }

    private final zzhd zza(int i) {
        int i2 = (i / 3) << 1;
        zzhd zzhdVar = (zzhd) this.zzd[i2];
        if (zzhdVar != null) {
            return zzhdVar;
        }
        zzhd<T> zza2 = zzgz.zza().zza((Class) ((Class) this.zzd[i2 + 1]));
        this.zzd[i2] = zza2;
        return zza2;
    }

    private final <K, V, UT, UB> UB zza(int i, int i2, Map<K, V> map, zzfk zzfkVar, UB ub, zzhv<UT, UB> zzhvVar) {
        zzgf<?, ?> zzf = this.zzs.zzf(zzb(i));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!zzfkVar.zza(((Integer) next.getValue()).intValue())) {
                UB ub2 = ub;
                if (ub == null) {
                    ub2 = zzhvVar.zza();
                }
                zzec zzc = zzdu.zzc(zzgg.zza(zzf, next.getKey(), next.getValue()));
                try {
                    zzgg.zza(zzc.zzb(), zzf, next.getKey(), next.getValue());
                    zzhvVar.zza((zzhv<UT, UB>) ub2, i2, zzc.zza());
                    it.remove();
                    ub = ub2;
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return ub;
    }

    private final <UT, UB> UB zza(Object obj, int i, UB ub, zzhv<UT, UB> zzhvVar) {
        zzfk zzc;
        int i2 = this.zzc[i];
        Object zzf = zzib.zzf(obj, zzd(i) & 1048575);
        if (zzf != null && (zzc = zzc(i)) != null) {
            return (UB) zza(i, i2, this.zzs.zza(zzf), zzc, (zzfk) ub, (zzhv<UT, zzfk>) zzhvVar);
        }
        return ub;
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

    private static List<?> zza(Object obj, long j) {
        return (List) zzib.zzf(obj, j);
    }

    private static void zza(int i, Object obj, zzis zzisVar) {
        if (obj instanceof String) {
            zzisVar.zza(i, (String) obj);
        } else {
            zzisVar.zza(i, (zzdu) obj);
        }
    }

    private static <UT, UB> void zza(zzhv<UT, UB> zzhvVar, T t, zzis zzisVar) {
        zzhvVar.zza((zzhv<UT, UB>) zzhvVar.zzb(t), zzisVar);
    }

    private final <K, V> void zza(zzis zzisVar, int i, Object obj, int i2) {
        if (obj != null) {
            zzisVar.zza(i, this.zzs.zzf(zzb(i2)), this.zzs.zzb(obj));
        }
    }

    private final void zza(Object obj, int i, zzhe zzheVar) {
        if (zzf(i)) {
            zzib.zza(obj, i & 1048575, zzheVar.zzm());
        } else if (this.zzi) {
            zzib.zza(obj, i & 1048575, zzheVar.zzl());
        } else {
            zzib.zza(obj, i & 1048575, zzheVar.zzn());
        }
    }

    private final void zza(T t, T t2, int i) {
        long zzd = zzd(i) & 1048575;
        if (!zza((zzgs<T>) t2, i)) {
            return;
        }
        Object zzf = zzib.zzf(t, zzd);
        Object zzf2 = zzib.zzf(t2, zzd);
        if (zzf != null && zzf2 != null) {
            zzib.zza(t, zzd, zzff.zza(zzf, zzf2));
            zzb((zzgs<T>) t, i);
        } else if (zzf2 == null) {
        } else {
            zzib.zza(t, zzd, zzf2);
            zzb((zzgs<T>) t, i);
        }
    }

    private final boolean zza(T t, int i) {
        if (!this.zzj) {
            int zze = zze(i);
            return (zzib.zza(t, (long) (zze & 1048575)) & (1 << (zze >>> 20))) != 0;
        }
        int zzd = zzd(i);
        long j = zzd & 1048575;
        switch ((zzd & 267386880) >>> 20) {
            case 0:
                return zzib.zze(t, j) != FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
            case 1:
                return zzib.zzd(t, j) != FlexItem.FLEX_GROW_DEFAULT;
            case 2:
                return zzib.zzb(t, j) != 0;
            case 3:
                return zzib.zzb(t, j) != 0;
            case 4:
                return zzib.zza(t, j) != 0;
            case 5:
                return zzib.zzb(t, j) != 0;
            case 6:
                return zzib.zza(t, j) != 0;
            case 7:
                return zzib.zzc(t, j);
            case 8:
                Object zzf = zzib.zzf(t, j);
                if (zzf instanceof String) {
                    return !((String) zzf).isEmpty();
                } else if (!(zzf instanceof zzdu)) {
                    throw new IllegalArgumentException();
                } else {
                    return !zzdu.zza.equals(zzf);
                }
            case 9:
                return zzib.zzf(t, j) != null;
            case 10:
                return !zzdu.zza.equals(zzib.zzf(t, j));
            case 11:
                return zzib.zza(t, j) != 0;
            case 12:
                return zzib.zza(t, j) != 0;
            case 13:
                return zzib.zza(t, j) != 0;
            case 14:
                return zzib.zzb(t, j) != 0;
            case 15:
                return zzib.zza(t, j) != 0;
            case 16:
                return zzib.zzb(t, j) != 0;
            case 17:
                return zzib.zzf(t, j) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zza(T t, int i, int i2) {
        return zzib.zza(t, (long) (zze(i2) & 1048575)) == i;
    }

    private final boolean zza(T t, int i, int i2, int i3) {
        return this.zzj ? zza((zzgs<T>) t, i) : (i2 & i3) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean zza(Object obj, int i, zzhd zzhdVar) {
        return zzhdVar.zzd(zzib.zzf(obj, i & 1048575));
    }

    private static <T> double zzb(T t, long j) {
        return ((Double) zzib.zzf(t, j)).doubleValue();
    }

    private final int zzb(int i, int i2) {
        int length = (this.zzc.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.zzc[i4];
            if (i == i5) {
                return i4;
            }
            if (i < i5) {
                length = i3 - 1;
            } else {
                i2 = i3 + 1;
            }
        }
        return -1;
    }

    private final Object zzb(int i) {
        return this.zzd[(i / 3) << 1];
    }

    private final void zzb(T t, int i) {
        if (this.zzj) {
            return;
        }
        int zze = zze(i);
        long j = zze & 1048575;
        zzib.zza((Object) t, j, zzib.zza(t, j) | (1 << (zze >>> 20)));
    }

    private final void zzb(T t, int i, int i2) {
        zzib.zza((Object) t, zze(i2) & 1048575, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x098a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzb(T r9, com.google.android.gms.internal.measurement.zzis r10) {
        /*
            Method dump skipped, instructions count: 2490
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzgs.zzb(java.lang.Object, com.google.android.gms.internal.measurement.zzis):void");
    }

    private final void zzb(T t, T t2, int i) {
        int zzd = zzd(i);
        int i2 = this.zzc[i];
        long j = zzd & 1048575;
        if (!zza((zzgs<T>) t2, i2, i)) {
            return;
        }
        Object zzf = zzib.zzf(t, j);
        Object zzf2 = zzib.zzf(t2, j);
        if (zzf != null && zzf2 != null) {
            zzib.zza(t, j, zzff.zza(zzf, zzf2));
            zzb((zzgs<T>) t, i2, i);
        } else if (zzf2 == null) {
        } else {
            zzib.zza(t, j, zzf2);
            zzb((zzgs<T>) t, i2, i);
        }
    }

    private static <T> float zzc(T t, long j) {
        return ((Float) zzib.zzf(t, j)).floatValue();
    }

    private final zzfk zzc(int i) {
        return (zzfk) this.zzd[((i / 3) << 1) + 1];
    }

    private final boolean zzc(T t, T t2, int i) {
        return zza((zzgs<T>) t, i) == zza((zzgs<T>) t2, i);
    }

    private final int zzd(int i) {
        return this.zzc[i + 1];
    }

    private static <T> int zzd(T t, long j) {
        return ((Integer) zzib.zzf(t, j)).intValue();
    }

    private final int zze(int i) {
        return this.zzc[i + 2];
    }

    private static <T> long zze(T t, long j) {
        return ((Long) zzib.zzf(t, j)).longValue();
    }

    private static zzhy zze(Object obj) {
        zzfd zzfdVar = (zzfd) obj;
        zzhy zzhyVar = zzfdVar.zzb;
        zzhy zzhyVar2 = zzhyVar;
        if (zzhyVar == zzhy.zza()) {
            zzhyVar2 = zzhy.zzb();
            zzfdVar.zzb = zzhyVar2;
        }
        return zzhyVar2;
    }

    private static boolean zzf(int i) {
        return (i & 536870912) != 0;
    }

    private static <T> boolean zzf(T t, long j) {
        return ((Boolean) zzib.zzf(t, j)).booleanValue();
    }

    private final int zzg(int i) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzb(i, 0);
    }

    @Override // com.google.android.gms.internal.measurement.zzhd
    public final int zza(T t) {
        int i;
        int i2;
        int i3;
        int length = this.zzc.length;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int i6 = i5;
            if (i4 >= length) {
                int hashCode = (i6 * 53) + this.zzq.zzb(t).hashCode();
                int i7 = hashCode;
                if (this.zzh) {
                    i7 = (hashCode * 53) + this.zzr.zza(t).hashCode();
                }
                return i7;
            }
            int zzd = zzd(i4);
            int i8 = this.zzc[i4];
            long j = 1048575 & zzd;
            int i9 = 37;
            switch ((zzd & 267386880) >>> 20) {
                case 0:
                    i2 = i6 * 53;
                    i3 = zzff.zza(Double.doubleToLongBits(zzib.zze(t, j)));
                    i = i2 + i3;
                    break;
                case 1:
                    i2 = i6 * 53;
                    i3 = Float.floatToIntBits(zzib.zzd(t, j));
                    i = i2 + i3;
                    break;
                case 2:
                    i2 = i6 * 53;
                    i3 = zzff.zza(zzib.zzb(t, j));
                    i = i2 + i3;
                    break;
                case 3:
                    i2 = i6 * 53;
                    i3 = zzff.zza(zzib.zzb(t, j));
                    i = i2 + i3;
                    break;
                case 4:
                    i2 = i6 * 53;
                    i3 = zzib.zza(t, j);
                    i = i2 + i3;
                    break;
                case 5:
                    i2 = i6 * 53;
                    i3 = zzff.zza(zzib.zzb(t, j));
                    i = i2 + i3;
                    break;
                case 6:
                    i2 = i6 * 53;
                    i3 = zzib.zza(t, j);
                    i = i2 + i3;
                    break;
                case 7:
                    i2 = i6 * 53;
                    i3 = zzff.zza(zzib.zzc(t, j));
                    i = i2 + i3;
                    break;
                case 8:
                    i2 = i6 * 53;
                    i3 = ((String) zzib.zzf(t, j)).hashCode();
                    i = i2 + i3;
                    break;
                case 9:
                    Object zzf = zzib.zzf(t, j);
                    if (zzf != null) {
                        i9 = zzf.hashCode();
                    }
                    i = (i6 * 53) + i9;
                    break;
                case 10:
                    i2 = i6 * 53;
                    i3 = zzib.zzf(t, j).hashCode();
                    i = i2 + i3;
                    break;
                case 11:
                    i2 = i6 * 53;
                    i3 = zzib.zza(t, j);
                    i = i2 + i3;
                    break;
                case 12:
                    i2 = i6 * 53;
                    i3 = zzib.zza(t, j);
                    i = i2 + i3;
                    break;
                case 13:
                    i2 = i6 * 53;
                    i3 = zzib.zza(t, j);
                    i = i2 + i3;
                    break;
                case 14:
                    i2 = i6 * 53;
                    i3 = zzff.zza(zzib.zzb(t, j));
                    i = i2 + i3;
                    break;
                case 15:
                    i2 = i6 * 53;
                    i3 = zzib.zza(t, j);
                    i = i2 + i3;
                    break;
                case 16:
                    i2 = i6 * 53;
                    i3 = zzff.zza(zzib.zzb(t, j));
                    i = i2 + i3;
                    break;
                case 17:
                    Object zzf2 = zzib.zzf(t, j);
                    if (zzf2 != null) {
                        i9 = zzf2.hashCode();
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
                    i3 = zzib.zzf(t, j).hashCode();
                    i = i2 + i3;
                    break;
                case 50:
                    i2 = i6 * 53;
                    i3 = zzib.zzf(t, j).hashCode();
                    i = i2 + i3;
                    break;
                case 51:
                    i = i6;
                    if (!zza((zzgs<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzff.zza(Double.doubleToLongBits(zzb(t, j)));
                        i = i2 + i3;
                        break;
                    }
                case 52:
                    i = i6;
                    if (!zza((zzgs<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = Float.floatToIntBits(zzc(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 53:
                    i = i6;
                    if (!zza((zzgs<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzff.zza(zze(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 54:
                    i = i6;
                    if (!zza((zzgs<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzff.zza(zze(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 55:
                    i = i6;
                    if (!zza((zzgs<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzd(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 56:
                    i = i6;
                    if (!zza((zzgs<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzff.zza(zze(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 57:
                    i = i6;
                    if (!zza((zzgs<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzd(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 58:
                    i = i6;
                    if (!zza((zzgs<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzff.zza(zzf(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 59:
                    i = i6;
                    if (!zza((zzgs<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = ((String) zzib.zzf(t, j)).hashCode();
                        i = i2 + i3;
                        break;
                    }
                case 60:
                    i = i6;
                    if (!zza((zzgs<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzib.zzf(t, j).hashCode();
                        i = i2 + i3;
                        break;
                    }
                case 61:
                    i = i6;
                    if (!zza((zzgs<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzib.zzf(t, j).hashCode();
                        i = i2 + i3;
                        break;
                    }
                case 62:
                    i = i6;
                    if (!zza((zzgs<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzd(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 63:
                    i = i6;
                    if (!zza((zzgs<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzd(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 64:
                    i = i6;
                    if (!zza((zzgs<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzd(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 65:
                    i = i6;
                    if (!zza((zzgs<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzff.zza(zze(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 66:
                    i = i6;
                    if (!zza((zzgs<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzd(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 67:
                    i = i6;
                    if (!zza((zzgs<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzff.zza(zze(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 68:
                    i = i6;
                    if (!zza((zzgs<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzib.zzf(t, j).hashCode();
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

    /* JADX WARN: Code restructure failed: missing block: B:145:0x079e, code lost:
        if (r32 == (-1)) goto L147;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x07a1, code lost:
        r0.putInt(r17, r32, r21);
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x07ac, code lost:
        r22 = null;
        r21 = r18.zzm;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x07bb, code lost:
        if (r21 >= r18.zzn) goto L233;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x07be, code lost:
        r22 = (com.google.android.gms.internal.measurement.zzhy) r18.zza((java.lang.Object) r17, r18.zzl[r21], (int) r22, (com.google.android.gms.internal.measurement.zzhv<UT, int>) r18.zzq);
        r21 = r21 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x07dd, code lost:
        if (r22 == null) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x07e0, code lost:
        r18.zzq.zzb((java.lang.Object) r17, (T) r22);
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x07eb, code lost:
        if (r19 != 0) goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x07f2, code lost:
        if (r31 != r20) goto L158;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x07fb, code lost:
        throw com.google.android.gms.internal.measurement.zzfo.zzg();
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x0800, code lost:
        if (r31 > r20) goto L166;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x0806, code lost:
        if (r29 != r19) goto L166;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x080b, code lost:
        return r31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x080f, code lost:
        throw com.google.android.gms.internal.measurement.zzfo.zzg();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zza(T r17, byte[] r18, int r19, int r20, int r21, com.google.android.gms.internal.measurement.zzdt r22) {
        /*
            Method dump skipped, instructions count: 2064
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzgs.zza(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.measurement.zzdt):int");
    }

    @Override // com.google.android.gms.internal.measurement.zzhd
    public final T zza() {
        return (T) this.zzo.zza(this.zzg);
    }

    @Override // com.google.android.gms.internal.measurement.zzhd
    public final void zza(T t, zzhe zzheVar, zzeq zzeqVar) {
        Object obj;
        if (zzeqVar != null) {
            zzhv zzhvVar = this.zzq;
            zzes<?> zzesVar = this.zzr;
            zzew<?> zzewVar = null;
            Object obj2 = null;
            while (true) {
                Object obj3 = obj2;
                try {
                    int zza2 = zzheVar.zza();
                    Object obj4 = obj2;
                    int zzg = zzg(zza2);
                    if (zzg >= 0) {
                        int zzd = zzd(zzg);
                        switch ((267386880 & zzd) >>> 20) {
                            case 0:
                                zzib.zza(t, zzd & 1048575, zzheVar.zzd());
                                Object obj5 = obj2;
                                zzb((zzgs<T>) t, zzg);
                                continue;
                            case 1:
                                zzib.zza((Object) t, zzd & 1048575, zzheVar.zze());
                                Object obj6 = obj2;
                                zzb((zzgs<T>) t, zzg);
                                continue;
                            case 2:
                                zzib.zza((Object) t, zzd & 1048575, zzheVar.zzg());
                                Object obj7 = obj2;
                                zzb((zzgs<T>) t, zzg);
                                continue;
                            case 3:
                                zzib.zza((Object) t, zzd & 1048575, zzheVar.zzf());
                                Object obj8 = obj2;
                                zzb((zzgs<T>) t, zzg);
                                continue;
                            case 4:
                                zzib.zza((Object) t, zzd & 1048575, zzheVar.zzh());
                                Object obj9 = obj2;
                                zzb((zzgs<T>) t, zzg);
                                continue;
                            case 5:
                                zzib.zza((Object) t, zzd & 1048575, zzheVar.zzi());
                                Object obj10 = obj2;
                                zzb((zzgs<T>) t, zzg);
                                continue;
                            case 6:
                                zzib.zza((Object) t, zzd & 1048575, zzheVar.zzj());
                                Object obj11 = obj2;
                                zzb((zzgs<T>) t, zzg);
                                continue;
                            case 7:
                                zzib.zza(t, zzd & 1048575, zzheVar.zzk());
                                Object obj12 = obj2;
                                zzb((zzgs<T>) t, zzg);
                                continue;
                            case 8:
                                zza(t, zzd, zzheVar);
                                Object obj13 = obj2;
                                zzb((zzgs<T>) t, zzg);
                                continue;
                            case 9:
                                if (!zza((zzgs<T>) t, zzg)) {
                                    zzib.zza(t, zzd & 1048575, zzheVar.zza(zza(zzg), zzeqVar));
                                    Object obj14 = obj2;
                                    zzb((zzgs<T>) t, zzg);
                                    break;
                                } else {
                                    long j = zzd & 1048575;
                                    zzib.zza(t, j, zzff.zza(zzib.zzf(t, j), zzheVar.zza(zza(zzg), zzeqVar)));
                                    continue;
                                }
                            case 10:
                                zzib.zza(t, zzd & 1048575, zzheVar.zzn());
                                Object obj15 = obj2;
                                zzb((zzgs<T>) t, zzg);
                                continue;
                            case 11:
                                zzib.zza((Object) t, zzd & 1048575, zzheVar.zzo());
                                Object obj16 = obj2;
                                zzb((zzgs<T>) t, zzg);
                                continue;
                            case 12:
                                int zzp = zzheVar.zzp();
                                Object obj17 = obj2;
                                zzfk zzc = zzc(zzg);
                                if (zzc != null && !zzc.zza(zzp)) {
                                    obj2 = zzhf.zza(zza2, zzp, obj2, zzhvVar);
                                    continue;
                                }
                                zzib.zza((Object) t, zzd & 1048575, zzp);
                                Object obj18 = obj2;
                                zzb((zzgs<T>) t, zzg);
                                break;
                            case 13:
                                zzib.zza((Object) t, zzd & 1048575, zzheVar.zzq());
                                Object obj19 = obj2;
                                zzb((zzgs<T>) t, zzg);
                                continue;
                            case 14:
                                zzib.zza((Object) t, zzd & 1048575, zzheVar.zzr());
                                Object obj20 = obj2;
                                zzb((zzgs<T>) t, zzg);
                                continue;
                            case 15:
                                zzib.zza((Object) t, zzd & 1048575, zzheVar.zzs());
                                Object obj21 = obj2;
                                zzb((zzgs<T>) t, zzg);
                                continue;
                            case 16:
                                zzib.zza((Object) t, zzd & 1048575, zzheVar.zzt());
                                Object obj22 = obj2;
                                zzb((zzgs<T>) t, zzg);
                                continue;
                            case 17:
                                if (!zza((zzgs<T>) t, zzg)) {
                                    zzib.zza(t, zzd & 1048575, zzheVar.zzb(zza(zzg), zzeqVar));
                                    Object obj23 = obj2;
                                    zzb((zzgs<T>) t, zzg);
                                    break;
                                } else {
                                    long j2 = zzd & 1048575;
                                    zzib.zza(t, j2, zzff.zza(zzib.zzf(t, j2), zzheVar.zzb(zza(zzg), zzeqVar)));
                                    continue;
                                }
                            case 18:
                                zzheVar.zza(this.zzp.zza(t, zzd & 1048575));
                                continue;
                            case 19:
                                zzheVar.zzb(this.zzp.zza(t, zzd & 1048575));
                                continue;
                            case 20:
                                zzheVar.zzd(this.zzp.zza(t, zzd & 1048575));
                                continue;
                            case 21:
                                zzheVar.zzc(this.zzp.zza(t, zzd & 1048575));
                                continue;
                            case 22:
                                zzheVar.zze(this.zzp.zza(t, zzd & 1048575));
                                continue;
                            case 23:
                                zzheVar.zzf(this.zzp.zza(t, zzd & 1048575));
                                continue;
                            case 24:
                                zzheVar.zzg(this.zzp.zza(t, zzd & 1048575));
                                continue;
                            case 25:
                                zzheVar.zzh(this.zzp.zza(t, zzd & 1048575));
                                continue;
                            case 26:
                                if (!zzf(zzd)) {
                                    zzheVar.zzi(this.zzp.zza(t, zzd & 1048575));
                                    break;
                                } else {
                                    Object obj24 = obj2;
                                    zzheVar.zzj(this.zzp.zza(t, zzd & 1048575));
                                    continue;
                                }
                            case 27:
                                zzheVar.zza(this.zzp.zza(t, zzd & 1048575), zza(zzg), zzeqVar);
                                continue;
                            case 28:
                                zzheVar.zzk(this.zzp.zza(t, zzd & 1048575));
                                continue;
                            case 29:
                                zzheVar.zzl(this.zzp.zza(t, zzd & 1048575));
                                continue;
                            case 30:
                                List<Integer> zza3 = this.zzp.zza(t, zzd & 1048575);
                                Object obj25 = obj2;
                                zzheVar.zzm(zza3);
                                Object obj26 = obj2;
                                obj2 = zzhf.zza(zza2, zza3, zzc(zzg), obj2, zzhvVar);
                                continue;
                            case 31:
                                zzheVar.zzn(this.zzp.zza(t, zzd & 1048575));
                                continue;
                            case 32:
                                zzheVar.zzo(this.zzp.zza(t, zzd & 1048575));
                                continue;
                            case 33:
                                zzheVar.zzp(this.zzp.zza(t, zzd & 1048575));
                                continue;
                            case 34:
                                zzheVar.zzq(this.zzp.zza(t, zzd & 1048575));
                                continue;
                            case 35:
                                zzheVar.zza(this.zzp.zza(t, zzd & 1048575));
                                continue;
                            case 36:
                                zzheVar.zzb(this.zzp.zza(t, zzd & 1048575));
                                continue;
                            case 37:
                                zzheVar.zzd(this.zzp.zza(t, zzd & 1048575));
                                continue;
                            case 38:
                                zzheVar.zzc(this.zzp.zza(t, zzd & 1048575));
                                continue;
                            case 39:
                                zzheVar.zze(this.zzp.zza(t, zzd & 1048575));
                                continue;
                            case 40:
                                zzheVar.zzf(this.zzp.zza(t, zzd & 1048575));
                                continue;
                            case 41:
                                zzheVar.zzg(this.zzp.zza(t, zzd & 1048575));
                                continue;
                            case 42:
                                zzheVar.zzh(this.zzp.zza(t, zzd & 1048575));
                                continue;
                            case 43:
                                zzheVar.zzl(this.zzp.zza(t, zzd & 1048575));
                                continue;
                            case 44:
                                List<Integer> zza4 = this.zzp.zza(t, zzd & 1048575);
                                Object obj27 = obj2;
                                zzheVar.zzm(zza4);
                                Object obj28 = obj2;
                                obj2 = zzhf.zza(zza2, zza4, zzc(zzg), obj2, zzhvVar);
                                continue;
                            case 45:
                                zzheVar.zzn(this.zzp.zza(t, zzd & 1048575));
                                continue;
                            case 46:
                                zzheVar.zzo(this.zzp.zza(t, zzd & 1048575));
                                continue;
                            case 47:
                                zzheVar.zzp(this.zzp.zza(t, zzd & 1048575));
                                continue;
                            case 48:
                                zzheVar.zzq(this.zzp.zza(t, zzd & 1048575));
                                continue;
                            case 49:
                                long j3 = zzd & 1048575;
                                zzhd<T> zza5 = zza(zzg);
                                Object obj29 = obj2;
                                zzheVar.zzb(this.zzp.zza(t, j3), zza5, zzeqVar);
                                continue;
                            case 50:
                                Object zzb2 = zzb(zzg);
                                Object obj30 = obj2;
                                long zzd2 = zzd(zzg) & 1048575;
                                Object obj31 = obj2;
                                Object zzf = zzib.zzf(t, zzd2);
                                if (zzf == null) {
                                    obj = this.zzs.zze(zzb2);
                                    Object obj32 = obj2;
                                    zzib.zza(t, zzd2, obj);
                                } else {
                                    obj = zzf;
                                    if (this.zzs.zzc(zzf)) {
                                        Object obj33 = obj2;
                                        obj = this.zzs.zze(zzb2);
                                        Object obj34 = obj2;
                                        this.zzs.zza(obj, zzf);
                                        Object obj35 = obj2;
                                        zzib.zza(t, zzd2, obj);
                                    }
                                }
                                Object obj36 = obj2;
                                zzheVar.zza(this.zzs.zza(obj), this.zzs.zzf(zzb2), zzeqVar);
                                continue;
                            case 51:
                                zzib.zza(t, zzd & 1048575, Double.valueOf(zzheVar.zzd()));
                                Object obj37 = obj2;
                                zzb((zzgs<T>) t, zza2, zzg);
                                continue;
                            case 52:
                                zzib.zza(t, zzd & 1048575, Float.valueOf(zzheVar.zze()));
                                Object obj38 = obj2;
                                zzb((zzgs<T>) t, zza2, zzg);
                                continue;
                            case 53:
                                zzib.zza(t, zzd & 1048575, Long.valueOf(zzheVar.zzg()));
                                Object obj39 = obj2;
                                zzb((zzgs<T>) t, zza2, zzg);
                                continue;
                            case 54:
                                zzib.zza(t, zzd & 1048575, Long.valueOf(zzheVar.zzf()));
                                Object obj40 = obj2;
                                zzb((zzgs<T>) t, zza2, zzg);
                                continue;
                            case 55:
                                zzib.zza(t, zzd & 1048575, Integer.valueOf(zzheVar.zzh()));
                                Object obj41 = obj2;
                                zzb((zzgs<T>) t, zza2, zzg);
                                continue;
                            case 56:
                                zzib.zza(t, zzd & 1048575, Long.valueOf(zzheVar.zzi()));
                                Object obj42 = obj2;
                                zzb((zzgs<T>) t, zza2, zzg);
                                continue;
                            case 57:
                                zzib.zza(t, zzd & 1048575, Integer.valueOf(zzheVar.zzj()));
                                Object obj43 = obj2;
                                zzb((zzgs<T>) t, zza2, zzg);
                                continue;
                            case 58:
                                zzib.zza(t, zzd & 1048575, Boolean.valueOf(zzheVar.zzk()));
                                Object obj44 = obj2;
                                zzb((zzgs<T>) t, zza2, zzg);
                                continue;
                            case 59:
                                zza(t, zzd, zzheVar);
                                Object obj45 = obj2;
                                zzb((zzgs<T>) t, zza2, zzg);
                                continue;
                            case 60:
                                if (zza((zzgs<T>) t, zza2, zzg)) {
                                    long j4 = zzd & 1048575;
                                    zzib.zza(t, j4, zzff.zza(zzib.zzf(t, j4), zzheVar.zza(zza(zzg), zzeqVar)));
                                } else {
                                    zzib.zza(t, zzd & 1048575, zzheVar.zza(zza(zzg), zzeqVar));
                                    Object obj46 = obj2;
                                    zzb((zzgs<T>) t, zzg);
                                }
                                Object obj47 = obj2;
                                zzb((zzgs<T>) t, zza2, zzg);
                                continue;
                            case 61:
                                zzib.zza(t, zzd & 1048575, zzheVar.zzn());
                                Object obj48 = obj2;
                                zzb((zzgs<T>) t, zza2, zzg);
                                continue;
                            case 62:
                                zzib.zza(t, zzd & 1048575, Integer.valueOf(zzheVar.zzo()));
                                Object obj49 = obj2;
                                zzb((zzgs<T>) t, zza2, zzg);
                                continue;
                            case 63:
                                int zzp2 = zzheVar.zzp();
                                Object obj50 = obj2;
                                zzfk zzc2 = zzc(zzg);
                                if (zzc2 != null && !zzc2.zza(zzp2)) {
                                    obj2 = zzhf.zza(zza2, zzp2, obj2, zzhvVar);
                                    continue;
                                }
                                zzib.zza(t, zzd & 1048575, Integer.valueOf(zzp2));
                                Object obj51 = obj2;
                                zzb((zzgs<T>) t, zza2, zzg);
                                break;
                            case 64:
                                zzib.zza(t, zzd & 1048575, Integer.valueOf(zzheVar.zzq()));
                                Object obj52 = obj2;
                                zzb((zzgs<T>) t, zza2, zzg);
                                continue;
                            case 65:
                                zzib.zza(t, zzd & 1048575, Long.valueOf(zzheVar.zzr()));
                                Object obj53 = obj2;
                                zzb((zzgs<T>) t, zza2, zzg);
                                continue;
                            case 66:
                                zzib.zza(t, zzd & 1048575, Integer.valueOf(zzheVar.zzs()));
                                Object obj54 = obj2;
                                zzb((zzgs<T>) t, zza2, zzg);
                                continue;
                            case 67:
                                zzib.zza(t, zzd & 1048575, Long.valueOf(zzheVar.zzt()));
                                Object obj55 = obj2;
                                zzb((zzgs<T>) t, zza2, zzg);
                                continue;
                            case 68:
                                zzib.zza(t, zzd & 1048575, zzheVar.zzb(zza(zzg), zzeqVar));
                                Object obj56 = obj2;
                                zzb((zzgs<T>) t, zza2, zzg);
                                continue;
                            default:
                                Object obj57 = obj2;
                                if (obj2 == null) {
                                    Object obj58 = obj2;
                                    obj3 = obj2;
                                    try {
                                        obj57 = zzhvVar.zza();
                                    } catch (zzfn e) {
                                        zzhvVar.zza(zzheVar);
                                        Object obj59 = obj58;
                                        if (obj58 == null) {
                                            obj59 = zzhvVar.zzc(t);
                                        }
                                        Object obj60 = obj59;
                                        obj2 = obj59;
                                        if (!zzhvVar.zza((zzhv) obj59, zzheVar)) {
                                            for (int i = this.zzm; i < this.zzn; i++) {
                                                obj59 = zza((Object) t, this.zzl[i], (int) obj59, (zzhv<UT, int>) zzhvVar);
                                            }
                                            if (obj59 == null) {
                                                return;
                                            }
                                            zzhvVar.zzb((Object) t, (T) obj59);
                                            return;
                                        }
                                        break;
                                    }
                                }
                                obj2 = obj57;
                                if (!zzhvVar.zza((zzhv) obj57, zzheVar)) {
                                    for (int i2 = this.zzm; i2 < this.zzn; i2++) {
                                        obj57 = zza((Object) t, this.zzl[i2], (int) obj57, (zzhv<UT, int>) zzhvVar);
                                    }
                                    if (obj57 == null) {
                                        return;
                                    }
                                    zzhvVar.zzb((Object) t, (T) obj57);
                                    return;
                                }
                                continue;
                        }
                    } else if (zza2 == Integer.MAX_VALUE) {
                        for (int i3 = this.zzm; i3 < this.zzn; i3++) {
                            obj2 = zza((Object) t, this.zzl[i3], (int) obj2, (zzhv<UT, int>) zzhvVar);
                        }
                        if (obj2 == null) {
                            return;
                        }
                        zzhvVar.zzb((Object) t, (T) obj2);
                        return;
                    } else {
                        Object zza6 = !this.zzh ? null : zzesVar.zza(zzeqVar, this.zzg, zza2);
                        if (zza6 != null) {
                            zzew<?> zzewVar2 = zzewVar;
                            if (zzewVar == null) {
                                zzewVar2 = zzesVar.zzb(t);
                            }
                            Object obj61 = obj2;
                            obj2 = zzesVar.zza(zzheVar, zza6, zzeqVar, zzewVar2, obj2, zzhvVar);
                            zzewVar = zzewVar2;
                        } else {
                            zzhvVar.zza(zzheVar);
                            Object obj62 = obj2;
                            if (obj2 == null) {
                                obj62 = zzhvVar.zzc(t);
                            }
                            Object obj63 = obj62;
                            obj2 = obj62;
                            if (!zzhvVar.zza((zzhv) obj62, zzheVar)) {
                                for (int i4 = this.zzm; i4 < this.zzn; i4++) {
                                    obj62 = zza((Object) t, this.zzl[i4], (int) obj62, (zzhv<UT, int>) zzhvVar);
                                }
                                if (obj62 == null) {
                                    return;
                                }
                                zzhvVar.zzb((Object) t, (T) obj62);
                                return;
                            }
                        }
                    }
                } catch (Throwable th) {
                    for (int i5 = this.zzm; i5 < this.zzn; i5++) {
                        obj3 = zza((Object) t, this.zzl[i5], (int) obj3, (zzhv<UT, int>) zzhvVar);
                    }
                    if (obj3 != null) {
                        zzhvVar.zzb((Object) t, (T) obj3);
                    }
                    throw th;
                }
            }
        } else {
            throw new NullPointerException();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x005d  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0a16  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0a8f  */
    /* JADX WARN: Removed duplicated region for block: B:339:0x144a  */
    @Override // com.google.android.gms.internal.measurement.zzhd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r8, com.google.android.gms.internal.measurement.zzis r9) {
        /*
            Method dump skipped, instructions count: 5249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzgs.zza(java.lang.Object, com.google.android.gms.internal.measurement.zzis):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v168, types: [int] */
    @Override // com.google.android.gms.internal.measurement.zzhd
    public final void zza(T t, byte[] bArr, int i, int i2, zzdt zzdtVar) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        if (!this.zzj) {
            zza((zzgs<T>) t, bArr, i, i2, 0, zzdtVar);
            return;
        }
        Unsafe unsafe = zzb;
        int i9 = -1;
        int i10 = i;
        int i11 = -1;
        int i12 = 0;
        while (i10 < i2) {
            int i13 = i10 + 1;
            byte b = bArr[i10];
            if (b < 0) {
                i3 = zzdq.zza(b, bArr, i13, zzdtVar);
                b = zzdtVar.zza;
            } else {
                i3 = i13;
            }
            int i14 = b >>> 3;
            int i15 = b & 7;
            i12 = i14 > i11 ? zza(i14, i12 / 3) : zzg(i14);
            if (i12 == i9) {
                i4 = i9;
                i5 = 0;
            } else {
                int i16 = this.zzc[i12 + 1];
                int i17 = (267386880 & i16) >>> 20;
                long j = 1048575 & i16;
                if (i17 <= 17) {
                    boolean z = true;
                    switch (i17) {
                        case 0:
                            if (i15 != 1) {
                                i4 = -1;
                                i5 = i12;
                                break;
                            } else {
                                zzib.zza(t, j, zzdq.zzc(bArr, i3));
                                i10 = i3 + 8;
                                break;
                            }
                        case 1:
                            if (i15 != 5) {
                                i4 = -1;
                                i5 = i12;
                                break;
                            } else {
                                zzib.zza((Object) t, j, zzdq.zzd(bArr, i3));
                                i10 = i3 + 4;
                                break;
                            }
                        case 2:
                        case 3:
                            if (i15 != 0) {
                                i4 = -1;
                                i5 = i12;
                                break;
                            } else {
                                i10 = zzdq.zzb(bArr, i3, zzdtVar);
                                unsafe.putLong(t, j, zzdtVar.zzb);
                                break;
                            }
                        case 4:
                        case 11:
                            if (i15 != 0) {
                                i4 = -1;
                                i5 = i12;
                                break;
                            } else {
                                i10 = zzdq.zza(bArr, i3, zzdtVar);
                                unsafe.putInt(t, j, zzdtVar.zza);
                                break;
                            }
                        case 5:
                        case 14:
                            if (i15 != 1) {
                                i4 = -1;
                                i5 = i12;
                                break;
                            } else {
                                unsafe.putLong(t, j, zzdq.zzb(bArr, i3));
                                i10 = i3 + 8;
                                break;
                            }
                        case 6:
                        case 13:
                            if (i15 != 5) {
                                i4 = -1;
                                i5 = i12;
                                break;
                            } else {
                                unsafe.putInt(t, j, zzdq.zza(bArr, i3));
                                i10 = i3 + 4;
                                break;
                            }
                        case 7:
                            if (i15 != 0) {
                                i4 = -1;
                                i5 = i12;
                                break;
                            } else {
                                i10 = zzdq.zzb(bArr, i3, zzdtVar);
                                if (zzdtVar.zzb == 0) {
                                    z = false;
                                }
                                zzib.zza(t, j, z);
                                break;
                            }
                        case 8:
                            if (i15 != 2) {
                                i4 = -1;
                                i5 = i12;
                                break;
                            } else {
                                i10 = (536870912 & i16) == 0 ? zzdq.zzc(bArr, i3, zzdtVar) : zzdq.zzd(bArr, i3, zzdtVar);
                                unsafe.putObject(t, j, zzdtVar.zzc);
                                break;
                            }
                        case 9:
                            if (i15 != 2) {
                                i4 = -1;
                                i5 = i12;
                                break;
                            } else {
                                i10 = zzdq.zza(zza(i12), bArr, i3, i2, zzdtVar);
                                Object object = unsafe.getObject(t, j);
                                if (object != null) {
                                    unsafe.putObject(t, j, zzff.zza(object, zzdtVar.zzc));
                                    break;
                                } else {
                                    unsafe.putObject(t, j, zzdtVar.zzc);
                                    break;
                                }
                            }
                        case 10:
                            if (i15 != 2) {
                                i4 = -1;
                                i5 = i12;
                                break;
                            } else {
                                i10 = zzdq.zze(bArr, i3, zzdtVar);
                                unsafe.putObject(t, j, zzdtVar.zzc);
                                break;
                            }
                        case 12:
                            if (i15 != 0) {
                                i4 = -1;
                                i5 = i12;
                                break;
                            } else {
                                i10 = zzdq.zza(bArr, i3, zzdtVar);
                                unsafe.putInt(t, j, zzdtVar.zza);
                                break;
                            }
                        case 15:
                            if (i15 != 0) {
                                i4 = -1;
                                i5 = i12;
                                break;
                            } else {
                                i10 = zzdq.zza(bArr, i3, zzdtVar);
                                unsafe.putInt(t, j, zzeg.zze(zzdtVar.zza));
                                break;
                            }
                        case 16:
                            if (i15 != 0) {
                                i4 = -1;
                                i5 = i12;
                                break;
                            } else {
                                i10 = zzdq.zzb(bArr, i3, zzdtVar);
                                unsafe.putLong(t, j, zzeg.zza(zzdtVar.zzb));
                                break;
                            }
                        default:
                            i4 = -1;
                            i5 = i12;
                            break;
                    }
                    i11 = i14;
                    i9 = -1;
                } else {
                    if (i17 != 27) {
                        i5 = i12;
                        if (i17 <= 49) {
                            i4 = -1;
                            int zza2 = zza((zzgs<T>) t, bArr, i3, i2, b, i14, i15, i5, i16, i17, j, zzdtVar);
                            i7 = zza2;
                            i6 = i5;
                            if (zza2 == i3) {
                                i8 = zza2;
                                i4 = -1;
                                i3 = i8;
                            }
                        } else {
                            int i18 = i3;
                            i4 = -1;
                            if (i17 == 50) {
                                i12 = i5;
                                if (i15 == 2) {
                                    int zza3 = zza((zzgs<T>) t, bArr, i18, i2, i5, j, zzdtVar);
                                    i7 = zza3;
                                    i6 = i5;
                                    if (zza3 == i18) {
                                        i8 = zza3;
                                        i4 = -1;
                                        i3 = i8;
                                    }
                                }
                            } else {
                                int zza4 = zza((zzgs<T>) t, bArr, i18, i2, b, i14, i15, i16, i17, j, i5, zzdtVar);
                                i7 = zza4;
                                i6 = i5;
                                if (zza4 == i18) {
                                    i8 = zza4;
                                    i4 = -1;
                                    i3 = i8;
                                }
                            }
                        }
                    } else if (i15 == 2) {
                        zzfl zzflVar = (zzfl) unsafe.getObject(t, j);
                        zzfl zzflVar2 = zzflVar;
                        if (!zzflVar.zza()) {
                            int size = zzflVar.size();
                            zzflVar2 = zzflVar.zza(size == 0 ? 10 : size << 1);
                            unsafe.putObject(t, j, zzflVar2);
                        }
                        i10 = zzdq.zza(zza(i12), b, bArr, i3, i2, zzflVar2, zzdtVar);
                        i11 = i14;
                        i9 = -1;
                    }
                    i4 = -1;
                    i5 = i12;
                }
                i9 = i4;
                i10 = i7;
                i11 = i14;
                i12 = i6;
            }
            i7 = zzdq.zza(b, bArr, i3, i2, zze(t), zzdtVar);
            i6 = i5;
            i9 = i4;
            i10 = i7;
            i11 = i14;
            i12 = i6;
        }
        if (i10 != i2) {
            throw zzfo.zzg();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0179, code lost:
        if (com.google.android.gms.internal.measurement.zzhf.zza(com.google.android.gms.internal.measurement.zzib.zzf(r7, r0), com.google.android.gms.internal.measurement.zzib.zzf(r8, r0)) != false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x01c1, code lost:
        if (com.google.android.gms.internal.measurement.zzhf.zza(com.google.android.gms.internal.measurement.zzib.zzf(r7, r0), com.google.android.gms.internal.measurement.zzib.zzf(r8, r0)) != false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x01df, code lost:
        if (com.google.android.gms.internal.measurement.zzib.zzb(r7, r0) == com.google.android.gms.internal.measurement.zzib.zzb(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x01fc, code lost:
        if (com.google.android.gms.internal.measurement.zzib.zza(r7, r0) == com.google.android.gms.internal.measurement.zzib.zza(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x021a, code lost:
        if (com.google.android.gms.internal.measurement.zzib.zzb(r7, r0) == com.google.android.gms.internal.measurement.zzib.zzb(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0237, code lost:
        if (com.google.android.gms.internal.measurement.zzib.zza(r7, r0) == com.google.android.gms.internal.measurement.zzib.zza(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0254, code lost:
        if (com.google.android.gms.internal.measurement.zzib.zza(r7, r0) == com.google.android.gms.internal.measurement.zzib.zza(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0271, code lost:
        if (com.google.android.gms.internal.measurement.zzib.zza(r7, r0) == com.google.android.gms.internal.measurement.zzib.zza(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0291, code lost:
        if (com.google.android.gms.internal.measurement.zzhf.zza(com.google.android.gms.internal.measurement.zzib.zzf(r7, r0), com.google.android.gms.internal.measurement.zzib.zzf(r8, r0)) != false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x02b1, code lost:
        if (com.google.android.gms.internal.measurement.zzhf.zza(com.google.android.gms.internal.measurement.zzib.zzf(r7, r0), com.google.android.gms.internal.measurement.zzib.zzf(r8, r0)) != false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x02d1, code lost:
        if (com.google.android.gms.internal.measurement.zzhf.zza(com.google.android.gms.internal.measurement.zzib.zzf(r7, r0), com.google.android.gms.internal.measurement.zzib.zzf(r8, r0)) != false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x02ee, code lost:
        if (com.google.android.gms.internal.measurement.zzib.zzc(r7, r0) == com.google.android.gms.internal.measurement.zzib.zzc(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x030b, code lost:
        if (com.google.android.gms.internal.measurement.zzib.zza(r7, r0) == com.google.android.gms.internal.measurement.zzib.zza(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0329, code lost:
        if (com.google.android.gms.internal.measurement.zzib.zzb(r7, r0) == com.google.android.gms.internal.measurement.zzib.zzb(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0346, code lost:
        if (com.google.android.gms.internal.measurement.zzib.zza(r7, r0) == com.google.android.gms.internal.measurement.zzib.zza(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0364, code lost:
        if (com.google.android.gms.internal.measurement.zzib.zzb(r7, r0) == com.google.android.gms.internal.measurement.zzib.zzb(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0382, code lost:
        if (com.google.android.gms.internal.measurement.zzib.zzb(r7, r0) == com.google.android.gms.internal.measurement.zzib.zzb(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x03a5, code lost:
        if (java.lang.Float.floatToIntBits(com.google.android.gms.internal.measurement.zzib.zzd(r7, r0)) == java.lang.Float.floatToIntBits(com.google.android.gms.internal.measurement.zzib.zzd(r8, r0))) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x03c9, code lost:
        if (java.lang.Double.doubleToLongBits(com.google.android.gms.internal.measurement.zzib.zze(r7, r0)) == java.lang.Double.doubleToLongBits(com.google.android.gms.internal.measurement.zzib.zze(r8, r0))) goto L86;
     */
    @Override // com.google.android.gms.internal.measurement.zzhd
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean zza(T r7, T r8) {
        /*
            Method dump skipped, instructions count: 1041
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzgs.zza(java.lang.Object, java.lang.Object):boolean");
    }

    @Override // com.google.android.gms.internal.measurement.zzhd
    public final int zzb(T t) {
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
        int zzb2;
        int i13;
        int i14;
        int i15;
        int i16 = 1;
        int i17 = 0;
        if (this.zzj) {
            Unsafe unsafe = zzb;
            int i18 = 0;
            int i19 = 0;
            while (true) {
                int i20 = i19;
                if (i18 >= this.zzc.length) {
                    return i20 + zza((zzhv) this.zzq, (Object) t);
                }
                int zzd = zzd(i18);
                int i21 = (zzd & 267386880) >>> 20;
                int i22 = this.zzc[i18];
                long j = zzd & 1048575;
                int i23 = (i21 < zzex.DOUBLE_LIST_PACKED.zza() || i21 > zzex.SINT64_LIST_PACKED.zza()) ? 0 : this.zzc[i18 + 2] & 1048575;
                switch (i21) {
                    case 0:
                        i12 = i20;
                        if (zza((zzgs<T>) t, i18)) {
                            zzb2 = zzen.zzb(i22, (double) FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 1:
                        i12 = i20;
                        if (zza((zzgs<T>) t, i18)) {
                            zzb2 = zzen.zzb(i22, (float) FlexItem.FLEX_GROW_DEFAULT);
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 2:
                        i12 = i20;
                        if (zza((zzgs<T>) t, i18)) {
                            zzb2 = zzen.zzd(i22, zzib.zzb(t, j));
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 3:
                        i12 = i20;
                        if (zza((zzgs<T>) t, i18)) {
                            zzb2 = zzen.zze(i22, zzib.zzb(t, j));
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 4:
                        i12 = i20;
                        if (zza((zzgs<T>) t, i18)) {
                            zzb2 = zzen.zzf(i22, zzib.zza(t, j));
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 5:
                        i12 = i20;
                        if (zza((zzgs<T>) t, i18)) {
                            zzb2 = zzen.zzg(i22, 0L);
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 6:
                        i12 = i20;
                        if (zza((zzgs<T>) t, i18)) {
                            zzb2 = zzen.zzi(i22, 0);
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 7:
                        i12 = i20;
                        if (zza((zzgs<T>) t, i18)) {
                            zzb2 = zzen.zzb(i22, true);
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 8:
                        i12 = i20;
                        if (zza((zzgs<T>) t, i18)) {
                            Object zzf = zzib.zzf(t, j);
                            if (zzf instanceof zzdu) {
                                zzb2 = zzen.zzc(i22, (zzdu) zzf);
                                break;
                            } else {
                                zzb2 = zzen.zzb(i22, (String) zzf);
                                break;
                            }
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 9:
                        i12 = i20;
                        if (zza((zzgs<T>) t, i18)) {
                            zzb2 = zzhf.zza(i22, zzib.zzf(t, j), zza(i18));
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 10:
                        i12 = i20;
                        if (zza((zzgs<T>) t, i18)) {
                            zzb2 = zzen.zzc(i22, (zzdu) zzib.zzf(t, j));
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 11:
                        i12 = i20;
                        if (zza((zzgs<T>) t, i18)) {
                            zzb2 = zzen.zzg(i22, zzib.zza(t, j));
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 12:
                        i12 = i20;
                        if (zza((zzgs<T>) t, i18)) {
                            zzb2 = zzen.zzk(i22, zzib.zza(t, j));
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 13:
                        i12 = i20;
                        if (zza((zzgs<T>) t, i18)) {
                            zzb2 = zzen.zzj(i22, 0);
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 14:
                        i12 = i20;
                        if (zza((zzgs<T>) t, i18)) {
                            zzb2 = zzen.zzh(i22, 0L);
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 15:
                        i12 = i20;
                        if (zza((zzgs<T>) t, i18)) {
                            zzb2 = zzen.zzh(i22, zzib.zza(t, j));
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 16:
                        i12 = i20;
                        if (zza((zzgs<T>) t, i18)) {
                            zzb2 = zzen.zzf(i22, zzib.zzb(t, j));
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 17:
                        i12 = i20;
                        if (zza((zzgs<T>) t, i18)) {
                            zzb2 = zzen.zzc(i22, (zzgo) zzib.zzf(t, j), zza(i18));
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 18:
                        zzb2 = zzhf.zzi(i22, zza(t, j), false);
                        break;
                    case 19:
                        zzb2 = zzhf.zzh(i22, zza(t, j), false);
                        break;
                    case 20:
                        zzb2 = zzhf.zza(i22, (List<Long>) zza(t, j), false);
                        break;
                    case 21:
                        zzb2 = zzhf.zzb(i22, (List<Long>) zza(t, j), false);
                        break;
                    case 22:
                        zzb2 = zzhf.zze(i22, zza(t, j), false);
                        break;
                    case 23:
                        zzb2 = zzhf.zzi(i22, zza(t, j), false);
                        break;
                    case 24:
                        zzb2 = zzhf.zzh(i22, zza(t, j), false);
                        break;
                    case 25:
                        zzb2 = zzhf.zzj(i22, zza(t, j), false);
                        break;
                    case 26:
                        zzb2 = zzhf.zza(i22, zza(t, j));
                        break;
                    case 27:
                        zzb2 = zzhf.zza(i22, zza(t, j), zza(i18));
                        break;
                    case 28:
                        zzb2 = zzhf.zzb(i22, zza(t, j));
                        break;
                    case 29:
                        zzb2 = zzhf.zzf(i22, zza(t, j), false);
                        break;
                    case 30:
                        zzb2 = zzhf.zzd(i22, zza(t, j), false);
                        break;
                    case 31:
                        zzb2 = zzhf.zzh(i22, zza(t, j), false);
                        break;
                    case 32:
                        zzb2 = zzhf.zzi(i22, zza(t, j), false);
                        break;
                    case 33:
                        zzb2 = zzhf.zzg(i22, zza(t, j), false);
                        break;
                    case 34:
                        zzb2 = zzhf.zzc(i22, zza(t, j), false);
                        break;
                    case 35:
                        int zzi = zzhf.zzi((List) unsafe.getObject(t, j));
                        i12 = i20;
                        if (zzi > 0) {
                            if (this.zzk) {
                                unsafe.putInt(t, i23, zzi);
                            }
                            i14 = zzen.zze(i22);
                            i15 = zzen.zzg(zzi);
                            i13 = zzi;
                            zzb2 = i14 + i15 + i13;
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 36:
                        int zzh = zzhf.zzh((List) unsafe.getObject(t, j));
                        i12 = i20;
                        if (zzh > 0) {
                            if (this.zzk) {
                                unsafe.putInt(t, i23, zzh);
                            }
                            i14 = zzen.zze(i22);
                            i13 = zzh;
                            i15 = zzen.zzg(zzh);
                            zzb2 = i14 + i15 + i13;
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 37:
                        int zza2 = zzhf.zza((List) unsafe.getObject(t, j));
                        i12 = i20;
                        if (zza2 > 0) {
                            if (this.zzk) {
                                unsafe.putInt(t, i23, zza2);
                            }
                            i14 = zzen.zze(i22);
                            i13 = zza2;
                            i15 = zzen.zzg(zza2);
                            zzb2 = i14 + i15 + i13;
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 38:
                        int zzb3 = zzhf.zzb((List) unsafe.getObject(t, j));
                        i12 = i20;
                        if (zzb3 > 0) {
                            if (this.zzk) {
                                unsafe.putInt(t, i23, zzb3);
                            }
                            i14 = zzen.zze(i22);
                            i13 = zzb3;
                            i15 = zzen.zzg(zzb3);
                            zzb2 = i14 + i15 + i13;
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 39:
                        int zze = zzhf.zze((List) unsafe.getObject(t, j));
                        i12 = i20;
                        if (zze > 0) {
                            if (this.zzk) {
                                unsafe.putInt(t, i23, zze);
                            }
                            i14 = zzen.zze(i22);
                            i13 = zze;
                            i15 = zzen.zzg(zze);
                            zzb2 = i14 + i15 + i13;
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 40:
                        int zzi2 = zzhf.zzi((List) unsafe.getObject(t, j));
                        i12 = i20;
                        if (zzi2 > 0) {
                            if (this.zzk) {
                                unsafe.putInt(t, i23, zzi2);
                            }
                            i14 = zzen.zze(i22);
                            i13 = zzi2;
                            i15 = zzen.zzg(zzi2);
                            zzb2 = i14 + i15 + i13;
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 41:
                        int zzh2 = zzhf.zzh((List) unsafe.getObject(t, j));
                        i12 = i20;
                        if (zzh2 > 0) {
                            if (this.zzk) {
                                unsafe.putInt(t, i23, zzh2);
                            }
                            i14 = zzen.zze(i22);
                            i13 = zzh2;
                            i15 = zzen.zzg(zzh2);
                            zzb2 = i14 + i15 + i13;
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 42:
                        int zzj = zzhf.zzj((List) unsafe.getObject(t, j));
                        i12 = i20;
                        if (zzj > 0) {
                            if (this.zzk) {
                                unsafe.putInt(t, i23, zzj);
                            }
                            i14 = zzen.zze(i22);
                            i13 = zzj;
                            i15 = zzen.zzg(zzj);
                            zzb2 = i14 + i15 + i13;
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 43:
                        int zzf2 = zzhf.zzf((List) unsafe.getObject(t, j));
                        i12 = i20;
                        if (zzf2 > 0) {
                            if (this.zzk) {
                                unsafe.putInt(t, i23, zzf2);
                            }
                            i14 = zzen.zze(i22);
                            i13 = zzf2;
                            i15 = zzen.zzg(zzf2);
                            zzb2 = i14 + i15 + i13;
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 44:
                        int zzd2 = zzhf.zzd((List) unsafe.getObject(t, j));
                        i12 = i20;
                        if (zzd2 > 0) {
                            if (this.zzk) {
                                unsafe.putInt(t, i23, zzd2);
                            }
                            i14 = zzen.zze(i22);
                            i13 = zzd2;
                            i15 = zzen.zzg(zzd2);
                            zzb2 = i14 + i15 + i13;
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 45:
                        int zzh3 = zzhf.zzh((List) unsafe.getObject(t, j));
                        i12 = i20;
                        if (zzh3 > 0) {
                            if (this.zzk) {
                                unsafe.putInt(t, i23, zzh3);
                            }
                            i14 = zzen.zze(i22);
                            i13 = zzh3;
                            i15 = zzen.zzg(zzh3);
                            zzb2 = i14 + i15 + i13;
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 46:
                        int zzi3 = zzhf.zzi((List) unsafe.getObject(t, j));
                        i12 = i20;
                        if (zzi3 > 0) {
                            if (this.zzk) {
                                unsafe.putInt(t, i23, zzi3);
                            }
                            i14 = zzen.zze(i22);
                            i13 = zzi3;
                            i15 = zzen.zzg(zzi3);
                            zzb2 = i14 + i15 + i13;
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 47:
                        int zzg = zzhf.zzg((List) unsafe.getObject(t, j));
                        i12 = i20;
                        if (zzg > 0) {
                            if (this.zzk) {
                                unsafe.putInt(t, i23, zzg);
                            }
                            i14 = zzen.zze(i22);
                            i13 = zzg;
                            i15 = zzen.zzg(zzg);
                            zzb2 = i14 + i15 + i13;
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 48:
                        int zzc2 = zzhf.zzc((List) unsafe.getObject(t, j));
                        i12 = i20;
                        if (zzc2 > 0) {
                            if (this.zzk) {
                                unsafe.putInt(t, i23, zzc2);
                            }
                            i14 = zzen.zze(i22);
                            i13 = zzc2;
                            i15 = zzen.zzg(zzc2);
                            zzb2 = i14 + i15 + i13;
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 49:
                        zzb2 = zzhf.zzb(i22, (List<zzgo>) zza(t, j), zza(i18));
                        break;
                    case 50:
                        zzb2 = this.zzs.zza(i22, zzib.zzf(t, j), zzb(i18));
                        break;
                    case 51:
                        i12 = i20;
                        if (zza((zzgs<T>) t, i22, i18)) {
                            zzb2 = zzen.zzb(i22, (double) FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 52:
                        i12 = i20;
                        if (zza((zzgs<T>) t, i22, i18)) {
                            zzb2 = zzen.zzb(i22, (float) FlexItem.FLEX_GROW_DEFAULT);
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 53:
                        i12 = i20;
                        if (zza((zzgs<T>) t, i22, i18)) {
                            zzb2 = zzen.zzd(i22, zze(t, j));
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 54:
                        i12 = i20;
                        if (zza((zzgs<T>) t, i22, i18)) {
                            zzb2 = zzen.zze(i22, zze(t, j));
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 55:
                        i12 = i20;
                        if (zza((zzgs<T>) t, i22, i18)) {
                            zzb2 = zzen.zzf(i22, zzd(t, j));
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 56:
                        i12 = i20;
                        if (zza((zzgs<T>) t, i22, i18)) {
                            zzb2 = zzen.zzg(i22, 0L);
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 57:
                        i12 = i20;
                        if (zza((zzgs<T>) t, i22, i18)) {
                            zzb2 = zzen.zzi(i22, 0);
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 58:
                        i12 = i20;
                        if (zza((zzgs<T>) t, i22, i18)) {
                            zzb2 = zzen.zzb(i22, true);
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 59:
                        i12 = i20;
                        if (zza((zzgs<T>) t, i22, i18)) {
                            Object zzf3 = zzib.zzf(t, j);
                            if (zzf3 instanceof zzdu) {
                                zzb2 = zzen.zzc(i22, (zzdu) zzf3);
                                break;
                            } else {
                                zzb2 = zzen.zzb(i22, (String) zzf3);
                                break;
                            }
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 60:
                        i12 = i20;
                        if (zza((zzgs<T>) t, i22, i18)) {
                            zzb2 = zzhf.zza(i22, zzib.zzf(t, j), zza(i18));
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 61:
                        i12 = i20;
                        if (zza((zzgs<T>) t, i22, i18)) {
                            zzb2 = zzen.zzc(i22, (zzdu) zzib.zzf(t, j));
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 62:
                        i12 = i20;
                        if (zza((zzgs<T>) t, i22, i18)) {
                            zzb2 = zzen.zzg(i22, zzd(t, j));
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 63:
                        i12 = i20;
                        if (zza((zzgs<T>) t, i22, i18)) {
                            zzb2 = zzen.zzk(i22, zzd(t, j));
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 64:
                        i12 = i20;
                        if (zza((zzgs<T>) t, i22, i18)) {
                            zzb2 = zzen.zzj(i22, 0);
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 65:
                        i12 = i20;
                        if (zza((zzgs<T>) t, i22, i18)) {
                            zzb2 = zzen.zzh(i22, 0L);
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 66:
                        i12 = i20;
                        if (zza((zzgs<T>) t, i22, i18)) {
                            zzb2 = zzen.zzh(i22, zzd(t, j));
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 67:
                        i12 = i20;
                        if (zza((zzgs<T>) t, i22, i18)) {
                            zzb2 = zzen.zzf(i22, zze(t, j));
                            break;
                        } else {
                            continue;
                            i18 += 3;
                            i19 = i12;
                        }
                    case 68:
                        i12 = i20;
                        if (zza((zzgs<T>) t, i22, i18)) {
                            zzb2 = zzen.zzc(i22, (zzgo) zzib.zzf(t, j), zza(i18));
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
                i12 = i20 + zzb2;
                i18 += 3;
                i19 = i12;
            }
        } else {
            Unsafe unsafe2 = zzb;
            int i24 = -1;
            int i25 = 0;
            int i26 = 0;
            int i27 = 0;
            while (true) {
                int i28 = i27;
                if (i25 >= this.zzc.length) {
                    int zza3 = i26 + zza((zzhv) this.zzq, (Object) t);
                    int i29 = zza3;
                    if (this.zzh) {
                        zzew<?> zza4 = this.zzr.zza(t);
                        int i30 = i17;
                        while (i17 < zza4.zza.zzc()) {
                            Map.Entry<?, Object> zzb4 = zza4.zza.zzb(i17);
                            i30 += zzew.zza((zzey) zzb4.getKey(), zzb4.getValue());
                            i17++;
                        }
                        for (Map.Entry<?, Object> entry : zza4.zza.zzd()) {
                            i30 += zzew.zza((zzey) entry.getKey(), entry.getValue());
                        }
                        i29 = zza3 + i30;
                    }
                    return i29;
                }
                int zzd3 = zzd(i25);
                int[] iArr = this.zzc;
                int i31 = iArr[i25];
                int i32 = (zzd3 & 267386880) >>> 20;
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
                    i3 = (!this.zzk || i32 < zzex.DOUBLE_LIST_PACKED.zza() || i32 > zzex.SINT64_LIST_PACKED.zza()) ? 0 : this.zzc[i25 + 2] & 1048575;
                    i = 0;
                    i2 = i28;
                    i4 = i24;
                }
                long j2 = zzd3 & 1048575;
                switch (i32) {
                    case 0:
                        i5 = i26;
                        if ((i2 & i) != 0) {
                            i5 = i26 + zzen.zzb(i31, (double) FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        i5 = i26;
                        if ((i2 & i) != 0) {
                            i5 = i26 + zzen.zzb(i31, (float) FlexItem.FLEX_GROW_DEFAULT);
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        i5 = i26;
                        if ((i2 & i) != 0) {
                            i6 = zzen.zzd(i31, unsafe2.getLong(t, j2));
                            i5 = i26 + i6;
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        i5 = i26;
                        if ((i2 & i) != 0) {
                            i6 = zzen.zze(i31, unsafe2.getLong(t, j2));
                            i5 = i26 + i6;
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        i5 = i26;
                        if ((i2 & i) != 0) {
                            i6 = zzen.zzf(i31, unsafe2.getInt(t, j2));
                            i5 = i26 + i6;
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        i5 = i26;
                        if ((i2 & i) != 0) {
                            i6 = zzen.zzg(i31, 0L);
                            i5 = i26 + i6;
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        i5 = i26;
                        if ((i2 & i) != 0) {
                            i5 = i26 + zzen.zzi(i31, 0);
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        i5 = i26;
                        if ((i2 & i) != 0) {
                            i5 = i26 + zzen.zzb(i31, true);
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        i5 = i26;
                        if ((i2 & i) != 0) {
                            Object object = unsafe2.getObject(t, j2);
                            zzc = object instanceof zzdu ? zzen.zzc(i31, (zzdu) object) : zzen.zzb(i31, (String) object);
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        i5 = i26;
                        if ((i2 & i) != 0) {
                            zzc = zzhf.zza(i31, unsafe2.getObject(t, j2), zza(i25));
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        i5 = i26;
                        if ((i2 & i) != 0) {
                            zzc = zzen.zzc(i31, (zzdu) unsafe2.getObject(t, j2));
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        i5 = i26;
                        if ((i2 & i) != 0) {
                            zzc = zzen.zzg(i31, unsafe2.getInt(t, j2));
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        i5 = i26;
                        if ((i2 & i) != 0) {
                            zzc = zzen.zzk(i31, unsafe2.getInt(t, j2));
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        i5 = i26;
                        if ((i2 & i) != 0) {
                            i7 = zzen.zzj(i31, 0);
                            i5 = i26 + i7;
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        i5 = i26;
                        if ((i2 & i) != 0) {
                            zzc = zzen.zzh(i31, 0L);
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        i5 = i26;
                        if ((i2 & i) != 0) {
                            zzc = zzen.zzh(i31, unsafe2.getInt(t, j2));
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        i5 = i26;
                        if ((i2 & i) != 0) {
                            zzc = zzen.zzf(i31, unsafe2.getLong(t, j2));
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        i5 = i26;
                        if ((i2 & i) != 0) {
                            zzc = zzen.zzc(i31, (zzgo) unsafe2.getObject(t, j2), zza(i25));
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        zzc = zzhf.zzi(i31, (List) unsafe2.getObject(t, j2), false);
                        i5 = i26 + zzc;
                        break;
                    case 19:
                        i8 = zzhf.zzh(i31, (List) unsafe2.getObject(t, j2), false);
                        i5 = i26 + i8;
                        break;
                    case 20:
                        i8 = zzhf.zza(i31, (List<Long>) unsafe2.getObject(t, j2), false);
                        i5 = i26 + i8;
                        break;
                    case 21:
                        i8 = zzhf.zzb(i31, (List<Long>) unsafe2.getObject(t, j2), false);
                        i5 = i26 + i8;
                        break;
                    case 22:
                        i8 = zzhf.zze(i31, (List) unsafe2.getObject(t, j2), false);
                        i5 = i26 + i8;
                        break;
                    case 23:
                        i8 = zzhf.zzi(i31, (List) unsafe2.getObject(t, j2), false);
                        i5 = i26 + i8;
                        break;
                    case 24:
                        i8 = zzhf.zzh(i31, (List) unsafe2.getObject(t, j2), false);
                        i5 = i26 + i8;
                        break;
                    case 25:
                        i8 = zzhf.zzj(i31, (List) unsafe2.getObject(t, j2), false);
                        i5 = i26 + i8;
                        break;
                    case 26:
                        zzc = zzhf.zza(i31, (List) unsafe2.getObject(t, j2));
                        i5 = i26 + zzc;
                        break;
                    case 27:
                        zzc = zzhf.zza(i31, (List<?>) unsafe2.getObject(t, j2), zza(i25));
                        i5 = i26 + zzc;
                        break;
                    case 28:
                        zzc = zzhf.zzb(i31, (List) unsafe2.getObject(t, j2));
                        i5 = i26 + zzc;
                        break;
                    case 29:
                        zzc = zzhf.zzf(i31, (List) unsafe2.getObject(t, j2), false);
                        i5 = i26 + zzc;
                        break;
                    case 30:
                        i8 = zzhf.zzd(i31, (List) unsafe2.getObject(t, j2), false);
                        i5 = i26 + i8;
                        break;
                    case 31:
                        i8 = zzhf.zzh(i31, (List) unsafe2.getObject(t, j2), false);
                        i5 = i26 + i8;
                        break;
                    case 32:
                        i8 = zzhf.zzi(i31, (List) unsafe2.getObject(t, j2), false);
                        i5 = i26 + i8;
                        break;
                    case 33:
                        i8 = zzhf.zzg(i31, (List) unsafe2.getObject(t, j2), false);
                        i5 = i26 + i8;
                        break;
                    case 34:
                        i8 = zzhf.zzc(i31, (List) unsafe2.getObject(t, j2), false);
                        i5 = i26 + i8;
                        break;
                    case 35:
                        int zzi4 = zzhf.zzi((List) unsafe2.getObject(t, j2));
                        i5 = i26;
                        if (zzi4 <= 0) {
                            break;
                        } else {
                            if (this.zzk) {
                                unsafe2.putInt(t, i3, zzi4);
                            }
                            i9 = zzen.zze(i31);
                            i11 = zzen.zzg(zzi4);
                            i10 = zzi4;
                            i7 = i9 + i11 + i10;
                            i5 = i26 + i7;
                            break;
                        }
                    case 36:
                        int zzh4 = zzhf.zzh((List) unsafe2.getObject(t, j2));
                        i5 = i26;
                        if (zzh4 <= 0) {
                            break;
                        } else {
                            if (this.zzk) {
                                unsafe2.putInt(t, i3, zzh4);
                            }
                            int zze2 = zzen.zze(i31);
                            i11 = zzen.zzg(zzh4);
                            i10 = zzh4;
                            i9 = zze2;
                            i7 = i9 + i11 + i10;
                            i5 = i26 + i7;
                            break;
                        }
                    case 37:
                        int zza5 = zzhf.zza((List) unsafe2.getObject(t, j2));
                        i5 = i26;
                        if (zza5 <= 0) {
                            break;
                        } else {
                            if (this.zzk) {
                                unsafe2.putInt(t, i3, zza5);
                            }
                            int zze3 = zzen.zze(i31);
                            i11 = zzen.zzg(zza5);
                            i10 = zza5;
                            i9 = zze3;
                            i7 = i9 + i11 + i10;
                            i5 = i26 + i7;
                            break;
                        }
                    case 38:
                        int zzb5 = zzhf.zzb((List) unsafe2.getObject(t, j2));
                        i5 = i26;
                        if (zzb5 <= 0) {
                            break;
                        } else {
                            if (this.zzk) {
                                unsafe2.putInt(t, i3, zzb5);
                            }
                            int zze4 = zzen.zze(i31);
                            i11 = zzen.zzg(zzb5);
                            i10 = zzb5;
                            i9 = zze4;
                            i7 = i9 + i11 + i10;
                            i5 = i26 + i7;
                            break;
                        }
                    case 39:
                        int zze5 = zzhf.zze((List) unsafe2.getObject(t, j2));
                        i5 = i26;
                        if (zze5 <= 0) {
                            break;
                        } else {
                            if (this.zzk) {
                                unsafe2.putInt(t, i3, zze5);
                            }
                            int zze6 = zzen.zze(i31);
                            i11 = zzen.zzg(zze5);
                            i10 = zze5;
                            i9 = zze6;
                            i7 = i9 + i11 + i10;
                            i5 = i26 + i7;
                            break;
                        }
                    case 40:
                        int zzi5 = zzhf.zzi((List) unsafe2.getObject(t, j2));
                        i5 = i26;
                        if (zzi5 <= 0) {
                            break;
                        } else {
                            if (this.zzk) {
                                unsafe2.putInt(t, i3, zzi5);
                            }
                            int zze7 = zzen.zze(i31);
                            i11 = zzen.zzg(zzi5);
                            i10 = zzi5;
                            i9 = zze7;
                            i7 = i9 + i11 + i10;
                            i5 = i26 + i7;
                            break;
                        }
                    case 41:
                        int zzh5 = zzhf.zzh((List) unsafe2.getObject(t, j2));
                        i5 = i26;
                        if (zzh5 <= 0) {
                            break;
                        } else {
                            if (this.zzk) {
                                unsafe2.putInt(t, i3, zzh5);
                            }
                            int zze8 = zzen.zze(i31);
                            i11 = zzen.zzg(zzh5);
                            i10 = zzh5;
                            i9 = zze8;
                            i7 = i9 + i11 + i10;
                            i5 = i26 + i7;
                            break;
                        }
                    case 42:
                        int zzj2 = zzhf.zzj((List) unsafe2.getObject(t, j2));
                        i5 = i26;
                        if (zzj2 <= 0) {
                            break;
                        } else {
                            if (this.zzk) {
                                unsafe2.putInt(t, i3, zzj2);
                            }
                            int zze9 = zzen.zze(i31);
                            i11 = zzen.zzg(zzj2);
                            i10 = zzj2;
                            i9 = zze9;
                            i7 = i9 + i11 + i10;
                            i5 = i26 + i7;
                            break;
                        }
                    case 43:
                        int zzf4 = zzhf.zzf((List) unsafe2.getObject(t, j2));
                        i5 = i26;
                        if (zzf4 <= 0) {
                            break;
                        } else {
                            if (this.zzk) {
                                unsafe2.putInt(t, i3, zzf4);
                            }
                            int zze10 = zzen.zze(i31);
                            i11 = zzen.zzg(zzf4);
                            i10 = zzf4;
                            i9 = zze10;
                            i7 = i9 + i11 + i10;
                            i5 = i26 + i7;
                            break;
                        }
                    case 44:
                        int zzd4 = zzhf.zzd((List) unsafe2.getObject(t, j2));
                        i5 = i26;
                        if (zzd4 <= 0) {
                            break;
                        } else {
                            if (this.zzk) {
                                unsafe2.putInt(t, i3, zzd4);
                            }
                            int zze11 = zzen.zze(i31);
                            i11 = zzen.zzg(zzd4);
                            i10 = zzd4;
                            i9 = zze11;
                            i7 = i9 + i11 + i10;
                            i5 = i26 + i7;
                            break;
                        }
                    case 45:
                        int zzh6 = zzhf.zzh((List) unsafe2.getObject(t, j2));
                        i5 = i26;
                        if (zzh6 <= 0) {
                            break;
                        } else {
                            if (this.zzk) {
                                unsafe2.putInt(t, i3, zzh6);
                            }
                            int zze12 = zzen.zze(i31);
                            i11 = zzen.zzg(zzh6);
                            i10 = zzh6;
                            i9 = zze12;
                            i7 = i9 + i11 + i10;
                            i5 = i26 + i7;
                            break;
                        }
                    case 46:
                        int zzi6 = zzhf.zzi((List) unsafe2.getObject(t, j2));
                        i5 = i26;
                        if (zzi6 <= 0) {
                            break;
                        } else {
                            if (this.zzk) {
                                unsafe2.putInt(t, i3, zzi6);
                            }
                            int zze13 = zzen.zze(i31);
                            i11 = zzen.zzg(zzi6);
                            i10 = zzi6;
                            i9 = zze13;
                            i7 = i9 + i11 + i10;
                            i5 = i26 + i7;
                            break;
                        }
                    case 47:
                        int zzg2 = zzhf.zzg((List) unsafe2.getObject(t, j2));
                        i5 = i26;
                        if (zzg2 <= 0) {
                            break;
                        } else {
                            if (this.zzk) {
                                unsafe2.putInt(t, i3, zzg2);
                            }
                            int zze14 = zzen.zze(i31);
                            i11 = zzen.zzg(zzg2);
                            i10 = zzg2;
                            i9 = zze14;
                            i7 = i9 + i11 + i10;
                            i5 = i26 + i7;
                            break;
                        }
                    case 48:
                        int zzc3 = zzhf.zzc((List) unsafe2.getObject(t, j2));
                        i5 = i26;
                        if (zzc3 <= 0) {
                            break;
                        } else {
                            if (this.zzk) {
                                unsafe2.putInt(t, i3, zzc3);
                            }
                            int zze15 = zzen.zze(i31);
                            i11 = zzen.zzg(zzc3);
                            i10 = zzc3;
                            i9 = zze15;
                            i7 = i9 + i11 + i10;
                            i5 = i26 + i7;
                            break;
                        }
                    case 49:
                        zzc = zzhf.zzb(i31, (List) unsafe2.getObject(t, j2), zza(i25));
                        i5 = i26 + zzc;
                        break;
                    case 50:
                        zzc = this.zzs.zza(i31, unsafe2.getObject(t, j2), zzb(i25));
                        i5 = i26 + zzc;
                        break;
                    case 51:
                        i5 = i26;
                        if (zza((zzgs<T>) t, i31, i25)) {
                            zzc = zzen.zzb(i31, (double) FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        i5 = i26;
                        if (zza((zzgs<T>) t, i31, i25)) {
                            i7 = zzen.zzb(i31, (float) FlexItem.FLEX_GROW_DEFAULT);
                            i5 = i26 + i7;
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        i5 = i26;
                        if (zza((zzgs<T>) t, i31, i25)) {
                            zzc = zzen.zzd(i31, zze(t, j2));
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        i5 = i26;
                        if (zza((zzgs<T>) t, i31, i25)) {
                            zzc = zzen.zze(i31, zze(t, j2));
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        i5 = i26;
                        if (zza((zzgs<T>) t, i31, i25)) {
                            zzc = zzen.zzf(i31, zzd(t, j2));
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        i5 = i26;
                        if (zza((zzgs<T>) t, i31, i25)) {
                            zzc = zzen.zzg(i31, 0L);
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        i5 = i26;
                        if (zza((zzgs<T>) t, i31, i25)) {
                            i7 = zzen.zzi(i31, 0);
                            i5 = i26 + i7;
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        i5 = i26;
                        if (zza((zzgs<T>) t, i31, i25)) {
                            i7 = zzen.zzb(i31, true);
                            i5 = i26 + i7;
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        i5 = i26;
                        if (zza((zzgs<T>) t, i31, i25)) {
                            Object object2 = unsafe2.getObject(t, j2);
                            zzc = object2 instanceof zzdu ? zzen.zzc(i31, (zzdu) object2) : zzen.zzb(i31, (String) object2);
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 60:
                        i5 = i26;
                        if (zza((zzgs<T>) t, i31, i25)) {
                            zzc = zzhf.zza(i31, unsafe2.getObject(t, j2), zza(i25));
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        i5 = i26;
                        if (zza((zzgs<T>) t, i31, i25)) {
                            zzc = zzen.zzc(i31, (zzdu) unsafe2.getObject(t, j2));
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        i5 = i26;
                        if (zza((zzgs<T>) t, i31, i25)) {
                            zzc = zzen.zzg(i31, zzd(t, j2));
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        i5 = i26;
                        if (zza((zzgs<T>) t, i31, i25)) {
                            zzc = zzen.zzk(i31, zzd(t, j2));
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        i5 = i26;
                        if (zza((zzgs<T>) t, i31, i25)) {
                            i7 = zzen.zzj(i31, 0);
                            i5 = i26 + i7;
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        i5 = i26;
                        if (zza((zzgs<T>) t, i31, i25)) {
                            zzc = zzen.zzh(i31, 0L);
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        i5 = i26;
                        if (zza((zzgs<T>) t, i31, i25)) {
                            zzc = zzen.zzh(i31, zzd(t, j2));
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        i5 = i26;
                        if (zza((zzgs<T>) t, i31, i25)) {
                            zzc = zzen.zzf(i31, zze(t, j2));
                            i5 = i26 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        i5 = i26;
                        if (zza((zzgs<T>) t, i31, i25)) {
                            zzc = zzen.zzc(i31, (zzgo) unsafe2.getObject(t, j2), zza(i25));
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

    @Override // com.google.android.gms.internal.measurement.zzhd
    public final void zzb(T t, T t2) {
        if (t2 != null) {
            for (int i = 0; i < this.zzc.length; i += 3) {
                int zzd = zzd(i);
                long j = 1048575 & zzd;
                int i2 = this.zzc[i];
                switch ((zzd & 267386880) >>> 20) {
                    case 0:
                        if (zza((zzgs<T>) t2, i)) {
                            zzib.zza(t, j, zzib.zze(t2, j));
                            zzb((zzgs<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (zza((zzgs<T>) t2, i)) {
                            zzib.zza((Object) t, j, zzib.zzd(t2, j));
                            zzb((zzgs<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (zza((zzgs<T>) t2, i)) {
                            zzib.zza((Object) t, j, zzib.zzb(t2, j));
                            zzb((zzgs<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (zza((zzgs<T>) t2, i)) {
                            zzib.zza((Object) t, j, zzib.zzb(t2, j));
                            zzb((zzgs<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (zza((zzgs<T>) t2, i)) {
                            zzib.zza((Object) t, j, zzib.zza(t2, j));
                            zzb((zzgs<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (zza((zzgs<T>) t2, i)) {
                            zzib.zza((Object) t, j, zzib.zzb(t2, j));
                            zzb((zzgs<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (zza((zzgs<T>) t2, i)) {
                            zzib.zza((Object) t, j, zzib.zza(t2, j));
                            zzb((zzgs<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (zza((zzgs<T>) t2, i)) {
                            zzib.zza(t, j, zzib.zzc(t2, j));
                            zzb((zzgs<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (zza((zzgs<T>) t2, i)) {
                            zzib.zza(t, j, zzib.zzf(t2, j));
                            zzb((zzgs<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        zza(t, t2, i);
                        break;
                    case 10:
                        if (zza((zzgs<T>) t2, i)) {
                            zzib.zza(t, j, zzib.zzf(t2, j));
                            zzb((zzgs<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (zza((zzgs<T>) t2, i)) {
                            zzib.zza((Object) t, j, zzib.zza(t2, j));
                            zzb((zzgs<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (zza((zzgs<T>) t2, i)) {
                            zzib.zza((Object) t, j, zzib.zza(t2, j));
                            zzb((zzgs<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (zza((zzgs<T>) t2, i)) {
                            zzib.zza((Object) t, j, zzib.zza(t2, j));
                            zzb((zzgs<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (zza((zzgs<T>) t2, i)) {
                            zzib.zza((Object) t, j, zzib.zzb(t2, j));
                            zzb((zzgs<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (zza((zzgs<T>) t2, i)) {
                            zzib.zza((Object) t, j, zzib.zza(t2, j));
                            zzb((zzgs<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (zza((zzgs<T>) t2, i)) {
                            zzib.zza((Object) t, j, zzib.zzb(t2, j));
                            zzb((zzgs<T>) t, i);
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
                        zzhf.zza(this.zzs, t, t2, j);
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
                        if (zza((zzgs<T>) t2, i2, i)) {
                            zzib.zza(t, j, zzib.zzf(t2, j));
                            zzb((zzgs<T>) t, i2, i);
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
                        if (zza((zzgs<T>) t2, i2, i)) {
                            zzib.zza(t, j, zzib.zzf(t2, j));
                            zzb((zzgs<T>) t, i2, i);
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        zzb(t, t2, i);
                        break;
                }
            }
            if (this.zzj) {
                return;
            }
            zzhf.zza(this.zzq, t, t2);
            if (!this.zzh) {
                return;
            }
            zzhf.zza(this.zzr, t, t2);
            return;
        }
        throw new NullPointerException();
    }

    @Override // com.google.android.gms.internal.measurement.zzhd
    public final void zzc(T t) {
        int i;
        int i2 = this.zzm;
        while (true) {
            i = this.zzn;
            if (i2 >= i) {
                break;
            }
            long zzd = zzd(this.zzl[i2]) & 1048575;
            Object zzf = zzib.zzf(t, zzd);
            if (zzf != null) {
                zzib.zza(t, zzd, this.zzs.zzd(zzf));
            }
            i2++;
        }
        int length = this.zzl.length;
        for (int i3 = i; i3 < length; i3++) {
            this.zzp.zzb(t, this.zzl[i3]);
        }
        this.zzq.zzd(t);
        if (this.zzh) {
            this.zzr.zzc(t);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzhd
    public final boolean zzd(T t) {
        int i;
        int i2;
        int i3 = 0;
        int i4 = -1;
        int i5 = 0;
        while (i5 < this.zzm) {
            int i6 = this.zzl[i5];
            int i7 = this.zzc[i6];
            int zzd = zzd(i6);
            if (!this.zzj) {
                int i8 = this.zzc[i6 + 2];
                int i9 = i8 & 1048575;
                int i10 = 1 << (i8 >>> 20);
                i2 = i4;
                i = i10;
                if (i9 != i4) {
                    i3 = zzb.getInt(t, i9);
                    i2 = i9;
                    i = i10;
                }
            } else {
                i = 0;
                i2 = i4;
            }
            if (((268435456 & zzd) != 0) && !zza((zzgs<T>) t, i6, i3, i)) {
                return false;
            }
            int i11 = (267386880 & zzd) >>> 20;
            if (i11 != 9 && i11 != 17) {
                if (i11 != 27) {
                    if (i11 == 60 || i11 == 68) {
                        if (zza((zzgs<T>) t, i7, i6) && !zza(t, zzd, zza(i6))) {
                            return false;
                        }
                    } else if (i11 != 49) {
                        if (i11 != 50) {
                            continue;
                        } else {
                            Map<?, ?> zzb2 = this.zzs.zzb(zzib.zzf(t, zzd & 1048575));
                            boolean z = true;
                            if (!zzb2.isEmpty()) {
                                z = true;
                                if (this.zzs.zzf(zzb(i6)).zzc.zza() == zzip.MESSAGE) {
                                    zzhd<T> zzhdVar = null;
                                    Iterator<?> it = zzb2.values().iterator();
                                    while (true) {
                                        z = true;
                                        if (!it.hasNext()) {
                                            break;
                                        }
                                        Object next = it.next();
                                        zzhd<T> zzhdVar2 = zzhdVar;
                                        if (zzhdVar == null) {
                                            zzhdVar2 = zzgz.zza().zza((Class) next.getClass());
                                        }
                                        zzhdVar = zzhdVar2;
                                        if (!zzhdVar2.zzd(next)) {
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
                List list = (List) zzib.zzf(t, zzd & 1048575);
                boolean z2 = true;
                if (!list.isEmpty()) {
                    zzhd zza2 = zza(i6);
                    int i12 = 0;
                    while (true) {
                        z2 = true;
                        if (i12 >= list.size()) {
                            break;
                        } else if (!zza2.zzd(list.get(i12))) {
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
            } else if (zza((zzgs<T>) t, i6, i3, i) && !zza(t, zzd, zza(i6))) {
                return false;
            }
            i5++;
            i4 = i2;
        }
        return !this.zzh || this.zzr.zza(t).zzf();
    }
}
