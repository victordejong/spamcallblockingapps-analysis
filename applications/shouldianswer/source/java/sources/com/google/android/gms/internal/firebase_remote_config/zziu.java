package com.google.android.gms.internal.firebase_remote_config;

import com.google.android.flexbox.FlexItem;
import com.google.firebase.remoteconfig.FirebaseRemoteConfig;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import sun.misc.Unsafe;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zziu.class */
public final class zziu<T> implements zzjf<T> {
    private static final int[] zzvp = new int[0];
    private static final Unsafe zzvq = zzkd.zzjf();
    private final int[] zzvr;
    private final Object[] zzvs;
    private final int zzvt;
    private final int zzvu;
    private final zziq zzvv;
    private final boolean zzvw;
    private final boolean zzvx;
    private final boolean zzvy;
    private final boolean zzvz;
    private final int[] zzwa;
    private final int zzwb;
    private final int zzwc;
    private final zziy zzwd;
    private final zzia zzwe;
    private final zzjx<?, ?> zzwf;
    private final zzgz<?> zzwg;
    private final zzij zzwh;

    private zziu(int[] iArr, Object[] objArr, int i, int i2, zziq zziqVar, boolean z, boolean z2, int[] iArr2, int i3, int i4, zziy zziyVar, zzia zziaVar, zzjx<?, ?> zzjxVar, zzgz<?> zzgzVar, zzij zzijVar) {
        this.zzvr = iArr;
        this.zzvs = objArr;
        this.zzvt = i;
        this.zzvu = i2;
        this.zzvx = zziqVar instanceof zzhi;
        this.zzvy = z;
        this.zzvw = zzgzVar != null && zzgzVar.zze(zziqVar);
        this.zzvz = false;
        this.zzwa = iArr2;
        this.zzwb = i3;
        this.zzwc = i4;
        this.zzwd = zziyVar;
        this.zzwe = zziaVar;
        this.zzwf = zzjxVar;
        this.zzwg = zzgzVar;
        this.zzvv = zziqVar;
        this.zzwh = zzijVar;
    }

    private static <UT, UB> int zza(zzjx<UT, UB> zzjxVar, T t) {
        return zzjxVar.zzw(zzjxVar.zzaa(t));
    }

    private final int zza(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, zzfw zzfwVar) {
        Unsafe unsafe = zzvq;
        long j2 = this.zzvr[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Double.valueOf(zzft.zzc(bArr, i)));
                    i += 8;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 52:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Float.valueOf(zzft.zzd(bArr, i)));
                    i += 4;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 53:
            case 54:
                if (i5 == 0) {
                    i = zzft.zzb(bArr, i, zzfwVar);
                    unsafe.putObject(t, j, Long.valueOf(zzfwVar.zzos));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 55:
            case 62:
                if (i5 == 0) {
                    i = zzft.zza(bArr, i, zzfwVar);
                    unsafe.putObject(t, j, Integer.valueOf(zzfwVar.zzor));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 56:
            case 65:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Long.valueOf(zzft.zzb(bArr, i)));
                    i += 8;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 57:
            case 64:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Integer.valueOf(zzft.zza(bArr, i)));
                    i += 4;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 58:
                if (i5 == 0) {
                    i = zzft.zzb(bArr, i, zzfwVar);
                    unsafe.putObject(t, j, Boolean.valueOf(zzfwVar.zzos != 0));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 59:
                if (i5 == 2) {
                    i = zzft.zza(bArr, i, zzfwVar);
                    int i9 = zzfwVar.zzor;
                    if (i9 == 0) {
                        unsafe.putObject(t, j, "");
                    } else if ((i6 & 536870912) != 0 && !zzkg.zze(bArr, i, i + i9)) {
                        throw zzhq.zzhm();
                    } else {
                        unsafe.putObject(t, j, new String(bArr, i, i9, zzhm.UTF_8));
                        i += i9;
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 60:
                if (i5 == 2) {
                    i = zzft.zza(zzbe(i8), bArr, i, i2, zzfwVar);
                    Object object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object == null) {
                        unsafe.putObject(t, j, zzfwVar.zzot);
                    } else {
                        unsafe.putObject(t, j, zzhm.zzc(object, zzfwVar.zzot));
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 61:
                if (i5 == 2) {
                    i = zzft.zze(bArr, i, zzfwVar);
                    unsafe.putObject(t, j, zzfwVar.zzot);
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 63:
                if (i5 == 0) {
                    i = zzft.zza(bArr, i, zzfwVar);
                    int i10 = zzfwVar.zzor;
                    zzho zzbg = zzbg(i8);
                    if (zzbg != null && !zzbg.zzbc(i10)) {
                        zzx(t).zzb(i3, Long.valueOf(i10));
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
                    i = zzft.zza(bArr, i, zzfwVar);
                    unsafe.putObject(t, j, Integer.valueOf(zzgj.zzac(zzfwVar.zzor)));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 67:
                if (i5 == 0) {
                    i = zzft.zzb(bArr, i, zzfwVar);
                    unsafe.putObject(t, j, Long.valueOf(zzgj.zze(zzfwVar.zzos)));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 68:
                if (i5 == 3) {
                    i = zzft.zza(zzbe(i8), bArr, i, i2, (i3 & (-8)) | 4, zzfwVar);
                    Object object2 = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object2 == null) {
                        unsafe.putObject(t, j, zzfwVar.zzot);
                    } else {
                        unsafe.putObject(t, j, zzhm.zzc(object2, zzfwVar.zzot));
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
        }
        return i;
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
        */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0455  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x050e  */
    /* JADX WARN: Removed duplicated region for block: B:301:0x0959 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:307:0x0959 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:113:0x0445 -> B:114:0x044b). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:136:0x0501 -> B:137:0x0504). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:79:0x035c -> B:80:0x0362). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zza(T r9, byte[] r10, int r11, int r12, int r13, int r14, int r15, int r16, long r17, int r19, long r20, com.google.android.gms.internal.firebase_remote_config.zzfw r22) {
        /*
            Method dump skipped, instructions count: 2395
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_remote_config.zziu.zza(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, com.google.android.gms.internal.firebase_remote_config.zzfw):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v62, types: [int] */
    private final <K, V> int zza(T t, byte[] bArr, int i, int i2, int i3, long j, zzfw zzfwVar) {
        Unsafe unsafe = zzvq;
        Object zzbf = zzbf(i3);
        Object object = unsafe.getObject(t, j);
        Object obj = object;
        if (this.zzwh.zzr(object)) {
            obj = this.zzwh.zzt(zzbf);
            this.zzwh.zzd(obj, object);
            unsafe.putObject(t, j, obj);
        }
        zzih<?, ?> zzu = this.zzwh.zzu(zzbf);
        Map<?, ?> zzp = this.zzwh.zzp(obj);
        int zza = zzft.zza(bArr, i, zzfwVar);
        int i4 = zzfwVar.zzor;
        if (i4 < 0 || i4 > i2 - zza) {
            throw zzhq.zzhe();
        }
        int i5 = i4 + zza;
        Object obj2 = zzu.zzvj;
        Object obj3 = zzu.zzvl;
        while (zza < i5) {
            int i6 = zza + 1;
            byte b = bArr[zza];
            int i7 = i6;
            byte b2 = b;
            if (b < 0) {
                i7 = zzft.zza(b, bArr, i6, zzfwVar);
                b2 = zzfwVar.zzor;
            }
            int i8 = b2 >>> 3;
            int i9 = b2 & 7;
            if (i8 != 1) {
                if (i8 == 2 && i9 == zzu.zzvk.zzjk()) {
                    zza = zza(bArr, i7, i2, zzu.zzvk, zzu.zzvl.getClass(), zzfwVar);
                    obj3 = zzfwVar.zzot;
                }
                zza = zzft.zza(b2, bArr, i7, i2, zzfwVar);
            } else if (i9 == zzu.zzvi.zzjk()) {
                zza = zza(bArr, i7, i2, zzu.zzvi, (Class<?>) null, zzfwVar);
                obj2 = zzfwVar.zzot;
            } else {
                zza = zzft.zza(b2, bArr, i7, i2, zzfwVar);
            }
        }
        if (zza != i5) {
            throw zzhq.zzhl();
        }
        zzp.put(obj2, obj3);
        return i5;
    }

    private static int zza(byte[] bArr, int i, int i2, zzko zzkoVar, Class<?> cls, zzfw zzfwVar) {
        int i3;
        switch (zzit.zzpr[zzkoVar.ordinal()]) {
            case 1:
                i3 = zzft.zzb(bArr, i, zzfwVar);
                zzfwVar.zzot = Boolean.valueOf(zzfwVar.zzos != 0);
                break;
            case 2:
                i3 = zzft.zze(bArr, i, zzfwVar);
                break;
            case 3:
                zzfwVar.zzot = Double.valueOf(zzft.zzc(bArr, i));
                i3 = i + 8;
                break;
            case 4:
            case 5:
                zzfwVar.zzot = Integer.valueOf(zzft.zza(bArr, i));
                i3 = i + 4;
                break;
            case 6:
            case 7:
                zzfwVar.zzot = Long.valueOf(zzft.zzb(bArr, i));
                i3 = i + 8;
                break;
            case 8:
                zzfwVar.zzot = Float.valueOf(zzft.zzd(bArr, i));
                i3 = i + 4;
                break;
            case 9:
            case 10:
            case 11:
                i3 = zzft.zza(bArr, i, zzfwVar);
                zzfwVar.zzot = Integer.valueOf(zzfwVar.zzor);
                break;
            case 12:
            case 13:
                i3 = zzft.zzb(bArr, i, zzfwVar);
                zzfwVar.zzot = Long.valueOf(zzfwVar.zzos);
                break;
            case 14:
                i3 = zzft.zza(zzjb.zzii().zzk(cls), bArr, i, i2, zzfwVar);
                break;
            case 15:
                i3 = zzft.zza(bArr, i, zzfwVar);
                zzfwVar.zzot = Integer.valueOf(zzgj.zzac(zzfwVar.zzor));
                break;
            case 16:
                i3 = zzft.zzb(bArr, i, zzfwVar);
                zzfwVar.zzot = Long.valueOf(zzgj.zze(zzfwVar.zzos));
                break;
            case 17:
                i3 = zzft.zzd(bArr, i, zzfwVar);
                break;
            default:
                throw new RuntimeException("unsupported field type.");
        }
        return i3;
    }

    /* JADX WARN: Removed duplicated region for block: B:183:0x092c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> com.google.android.gms.internal.firebase_remote_config.zziu<T> zza(java.lang.Class<T> r18, com.google.android.gms.internal.firebase_remote_config.zzio r19, com.google.android.gms.internal.firebase_remote_config.zziy r20, com.google.android.gms.internal.firebase_remote_config.zzia r21, com.google.android.gms.internal.firebase_remote_config.zzjx<?, ?> r22, com.google.android.gms.internal.firebase_remote_config.zzgz<?> r23, com.google.android.gms.internal.firebase_remote_config.zzij r24) {
        /*
            Method dump skipped, instructions count: 2556
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_remote_config.zziu.zza(java.lang.Class, com.google.android.gms.internal.firebase_remote_config.zzio, com.google.android.gms.internal.firebase_remote_config.zziy, com.google.android.gms.internal.firebase_remote_config.zzia, com.google.android.gms.internal.firebase_remote_config.zzjx, com.google.android.gms.internal.firebase_remote_config.zzgz, com.google.android.gms.internal.firebase_remote_config.zzij):com.google.android.gms.internal.firebase_remote_config.zziu");
    }

    private final <K, V, UT, UB> UB zza(int i, int i2, Map<K, V> map, zzho zzhoVar, UB ub, zzjx<UT, UB> zzjxVar) {
        zzih<?, ?> zzu = this.zzwh.zzu(zzbf(i));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!zzhoVar.zzbc(((Integer) next.getValue()).intValue())) {
                UB ub2 = ub;
                if (ub == null) {
                    ub2 = zzjxVar.zziz();
                }
                zzgf zzx = zzfx.zzx(zzii.zza(zzu, next.getKey(), next.getValue()));
                try {
                    zzii.zza(zzx.zzfa(), zzu, next.getKey(), next.getValue());
                    zzjxVar.zza((zzjx<UT, UB>) ub2, i2, zzx.zzez());
                    it.remove();
                    ub = ub2;
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return ub;
    }

    private final <UT, UB> UB zza(Object obj, int i, UB ub, zzjx<UT, UB> zzjxVar) {
        zzho zzbg;
        int i2 = this.zzvr[i];
        Object zzp = zzkd.zzp(obj, zzbh(i) & 1048575);
        if (zzp != null && (zzbg = zzbg(i)) != null) {
            return (UB) zza(i, i2, this.zzwh.zzp(zzp), zzbg, (zzho) ub, (zzjx<UT, zzho>) zzjxVar);
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

    private static void zza(int i, Object obj, zzku zzkuVar) {
        if (obj instanceof String) {
            zzkuVar.zzb(i, (String) obj);
        } else {
            zzkuVar.zza(i, (zzfx) obj);
        }
    }

    private static <UT, UB> void zza(zzjx<UT, UB> zzjxVar, T t, zzku zzkuVar) {
        zzjxVar.zza((zzjx<UT, UB>) zzjxVar.zzaa(t), zzkuVar);
    }

    private final <K, V> void zza(zzku zzkuVar, int i, Object obj, int i2) {
        if (obj != null) {
            zzkuVar.zza(i, this.zzwh.zzu(zzbf(i2)), this.zzwh.zzq(obj));
        }
    }

    private final void zza(Object obj, int i, zzjg zzjgVar) {
        if (zzbj(i)) {
            zzkd.zza(obj, i & 1048575, zzjgVar.zzfi());
        } else if (this.zzvx) {
            zzkd.zza(obj, i & 1048575, zzjgVar.readString());
        } else {
            zzkd.zza(obj, i & 1048575, zzjgVar.zzfj());
        }
    }

    private final void zza(T t, T t2, int i) {
        long zzbh = zzbh(i) & 1048575;
        if (!zza((zziu<T>) t2, i)) {
            return;
        }
        Object zzp = zzkd.zzp(t, zzbh);
        Object zzp2 = zzkd.zzp(t2, zzbh);
        if (zzp != null && zzp2 != null) {
            zzkd.zza(t, zzbh, zzhm.zzc(zzp, zzp2));
            zzb((zziu<T>) t, i);
        } else if (zzp2 == null) {
        } else {
            zzkd.zza(t, zzbh, zzp2);
            zzb((zziu<T>) t, i);
        }
    }

    private final boolean zza(T t, int i) {
        if (!this.zzvy) {
            int zzbi = zzbi(i);
            return (zzkd.zzk(t, (long) (zzbi & 1048575)) & (1 << (zzbi >>> 20))) != 0;
        }
        int zzbh = zzbh(i);
        long j = zzbh & 1048575;
        switch ((zzbh & 267386880) >>> 20) {
            case 0:
                return zzkd.zzo(t, j) != FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE;
            case 1:
                return zzkd.zzn(t, j) != FlexItem.FLEX_GROW_DEFAULT;
            case 2:
                return zzkd.zzl(t, j) != 0;
            case 3:
                return zzkd.zzl(t, j) != 0;
            case 4:
                return zzkd.zzk(t, j) != 0;
            case 5:
                return zzkd.zzl(t, j) != 0;
            case 6:
                return zzkd.zzk(t, j) != 0;
            case 7:
                return zzkd.zzm(t, j);
            case 8:
                Object zzp = zzkd.zzp(t, j);
                if (zzp instanceof String) {
                    return !((String) zzp).isEmpty();
                } else if (!(zzp instanceof zzfx)) {
                    throw new IllegalArgumentException();
                } else {
                    return !zzfx.zzov.equals(zzp);
                }
            case 9:
                return zzkd.zzp(t, j) != null;
            case 10:
                return !zzfx.zzov.equals(zzkd.zzp(t, j));
            case 11:
                return zzkd.zzk(t, j) != 0;
            case 12:
                return zzkd.zzk(t, j) != 0;
            case 13:
                return zzkd.zzk(t, j) != 0;
            case 14:
                return zzkd.zzl(t, j) != 0;
            case 15:
                return zzkd.zzk(t, j) != 0;
            case 16:
                return zzkd.zzl(t, j) != 0;
            case 17:
                return zzkd.zzp(t, j) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zza(T t, int i, int i2) {
        return zzkd.zzk(t, (long) (zzbi(i2) & 1048575)) == i;
    }

    private final boolean zza(T t, int i, int i2, int i3) {
        return this.zzvy ? zza((zziu<T>) t, i) : (i2 & i3) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean zza(Object obj, int i, zzjf zzjfVar) {
        return zzjfVar.zzy(zzkd.zzp(obj, i & 1048575));
    }

    private final void zzb(T t, int i) {
        if (this.zzvy) {
            return;
        }
        int zzbi = zzbi(i);
        long j = zzbi & 1048575;
        zzkd.zzb(t, j, zzkd.zzk(t, j) | (1 << (zzbi >>> 20)));
    }

    private final void zzb(T t, int i, int i2) {
        zzkd.zzb(t, zzbi(i2) & 1048575, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:174:0x098a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzb(T r9, com.google.android.gms.internal.firebase_remote_config.zzku r10) {
        /*
            Method dump skipped, instructions count: 2490
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_remote_config.zziu.zzb(java.lang.Object, com.google.android.gms.internal.firebase_remote_config.zzku):void");
    }

    private final void zzb(T t, T t2, int i) {
        int zzbh = zzbh(i);
        int i2 = this.zzvr[i];
        long j = zzbh & 1048575;
        if (!zza((zziu<T>) t2, i2, i)) {
            return;
        }
        Object zzp = zzkd.zzp(t, j);
        Object zzp2 = zzkd.zzp(t2, j);
        if (zzp != null && zzp2 != null) {
            zzkd.zza(t, j, zzhm.zzc(zzp, zzp2));
            zzb((zziu<T>) t, i2, i);
        } else if (zzp2 == null) {
        } else {
            zzkd.zza(t, j, zzp2);
            zzb((zziu<T>) t, i2, i);
        }
    }

    private final zzjf zzbe(int i) {
        int i2 = (i / 3) << 1;
        zzjf zzjfVar = (zzjf) this.zzvs[i2];
        if (zzjfVar != null) {
            return zzjfVar;
        }
        zzjf<T> zzk = zzjb.zzii().zzk((Class) this.zzvs[i2 + 1]);
        this.zzvs[i2] = zzk;
        return zzk;
    }

    private final Object zzbf(int i) {
        return this.zzvs[(i / 3) << 1];
    }

    private final zzho zzbg(int i) {
        return (zzho) this.zzvs[((i / 3) << 1) + 1];
    }

    private final int zzbh(int i) {
        return this.zzvr[i + 1];
    }

    private final int zzbi(int i) {
        return this.zzvr[i + 2];
    }

    private static boolean zzbj(int i) {
        return (i & 536870912) != 0;
    }

    private final int zzbk(int i) {
        if (i < this.zzvt || i > this.zzvu) {
            return -1;
        }
        return zzr(i, 0);
    }

    private final boolean zzc(T t, T t2, int i) {
        return zza((zziu<T>) t, i) == zza((zziu<T>) t2, i);
    }

    private static List<?> zze(Object obj, long j) {
        return (List) zzkd.zzp(obj, j);
    }

    private static <T> double zzf(T t, long j) {
        return ((Double) zzkd.zzp(t, j)).doubleValue();
    }

    private static <T> float zzg(T t, long j) {
        return ((Float) zzkd.zzp(t, j)).floatValue();
    }

    private static <T> int zzh(T t, long j) {
        return ((Integer) zzkd.zzp(t, j)).intValue();
    }

    private static <T> long zzi(T t, long j) {
        return ((Long) zzkd.zzp(t, j)).longValue();
    }

    private static <T> boolean zzj(T t, long j) {
        return ((Boolean) zzkd.zzp(t, j)).booleanValue();
    }

    private final int zzq(int i, int i2) {
        if (i < this.zzvt || i > this.zzvu) {
            return -1;
        }
        return zzr(i, i2);
    }

    private final int zzr(int i, int i2) {
        int length = (this.zzvr.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.zzvr[i4];
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

    private static zzka zzx(Object obj) {
        zzhi zzhiVar = (zzhi) obj;
        zzka zzkaVar = zzhiVar.zztc;
        zzka zzkaVar2 = zzkaVar;
        if (zzkaVar == zzka.zzja()) {
            zzkaVar2 = zzka.zzjb();
            zzhiVar.zztc = zzkaVar2;
        }
        return zzkaVar2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0179, code lost:
        if (com.google.android.gms.internal.firebase_remote_config.zzjh.zzf(com.google.android.gms.internal.firebase_remote_config.zzkd.zzp(r7, r0), com.google.android.gms.internal.firebase_remote_config.zzkd.zzp(r8, r0)) != false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x01c1, code lost:
        if (com.google.android.gms.internal.firebase_remote_config.zzjh.zzf(com.google.android.gms.internal.firebase_remote_config.zzkd.zzp(r7, r0), com.google.android.gms.internal.firebase_remote_config.zzkd.zzp(r8, r0)) != false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x01df, code lost:
        if (com.google.android.gms.internal.firebase_remote_config.zzkd.zzl(r7, r0) == com.google.android.gms.internal.firebase_remote_config.zzkd.zzl(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x01fc, code lost:
        if (com.google.android.gms.internal.firebase_remote_config.zzkd.zzk(r7, r0) == com.google.android.gms.internal.firebase_remote_config.zzkd.zzk(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x021a, code lost:
        if (com.google.android.gms.internal.firebase_remote_config.zzkd.zzl(r7, r0) == com.google.android.gms.internal.firebase_remote_config.zzkd.zzl(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0237, code lost:
        if (com.google.android.gms.internal.firebase_remote_config.zzkd.zzk(r7, r0) == com.google.android.gms.internal.firebase_remote_config.zzkd.zzk(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0254, code lost:
        if (com.google.android.gms.internal.firebase_remote_config.zzkd.zzk(r7, r0) == com.google.android.gms.internal.firebase_remote_config.zzkd.zzk(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0271, code lost:
        if (com.google.android.gms.internal.firebase_remote_config.zzkd.zzk(r7, r0) == com.google.android.gms.internal.firebase_remote_config.zzkd.zzk(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0291, code lost:
        if (com.google.android.gms.internal.firebase_remote_config.zzjh.zzf(com.google.android.gms.internal.firebase_remote_config.zzkd.zzp(r7, r0), com.google.android.gms.internal.firebase_remote_config.zzkd.zzp(r8, r0)) != false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x02b1, code lost:
        if (com.google.android.gms.internal.firebase_remote_config.zzjh.zzf(com.google.android.gms.internal.firebase_remote_config.zzkd.zzp(r7, r0), com.google.android.gms.internal.firebase_remote_config.zzkd.zzp(r8, r0)) != false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x02d1, code lost:
        if (com.google.android.gms.internal.firebase_remote_config.zzjh.zzf(com.google.android.gms.internal.firebase_remote_config.zzkd.zzp(r7, r0), com.google.android.gms.internal.firebase_remote_config.zzkd.zzp(r8, r0)) != false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x02ee, code lost:
        if (com.google.android.gms.internal.firebase_remote_config.zzkd.zzm(r7, r0) == com.google.android.gms.internal.firebase_remote_config.zzkd.zzm(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x030b, code lost:
        if (com.google.android.gms.internal.firebase_remote_config.zzkd.zzk(r7, r0) == com.google.android.gms.internal.firebase_remote_config.zzkd.zzk(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0329, code lost:
        if (com.google.android.gms.internal.firebase_remote_config.zzkd.zzl(r7, r0) == com.google.android.gms.internal.firebase_remote_config.zzkd.zzl(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0346, code lost:
        if (com.google.android.gms.internal.firebase_remote_config.zzkd.zzk(r7, r0) == com.google.android.gms.internal.firebase_remote_config.zzkd.zzk(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0364, code lost:
        if (com.google.android.gms.internal.firebase_remote_config.zzkd.zzl(r7, r0) == com.google.android.gms.internal.firebase_remote_config.zzkd.zzl(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0382, code lost:
        if (com.google.android.gms.internal.firebase_remote_config.zzkd.zzl(r7, r0) == com.google.android.gms.internal.firebase_remote_config.zzkd.zzl(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x03a5, code lost:
        if (java.lang.Float.floatToIntBits(com.google.android.gms.internal.firebase_remote_config.zzkd.zzn(r7, r0)) == java.lang.Float.floatToIntBits(com.google.android.gms.internal.firebase_remote_config.zzkd.zzn(r8, r0))) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x03c9, code lost:
        if (java.lang.Double.doubleToLongBits(com.google.android.gms.internal.firebase_remote_config.zzkd.zzo(r7, r0)) == java.lang.Double.doubleToLongBits(com.google.android.gms.internal.firebase_remote_config.zzkd.zzo(r8, r0))) goto L86;
     */
    @Override // com.google.android.gms.internal.firebase_remote_config.zzjf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(T r7, T r8) {
        /*
            Method dump skipped, instructions count: 1041
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_remote_config.zziu.equals(java.lang.Object, java.lang.Object):boolean");
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjf
    public final int hashCode(T t) {
        int i;
        int i2;
        int i3;
        int length = this.zzvr.length;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int i6 = i5;
            if (i4 >= length) {
                int hashCode = (i6 * 53) + this.zzwf.zzaa(t).hashCode();
                int i7 = hashCode;
                if (this.zzvw) {
                    i7 = (hashCode * 53) + this.zzwg.zzk(t).hashCode();
                }
                return i7;
            }
            int zzbh = zzbh(i4);
            int i8 = this.zzvr[i4];
            long j = 1048575 & zzbh;
            int i9 = 37;
            switch ((zzbh & 267386880) >>> 20) {
                case 0:
                    i2 = i6 * 53;
                    i3 = zzhm.zzo(Double.doubleToLongBits(zzkd.zzo(t, j)));
                    i = i2 + i3;
                    break;
                case 1:
                    i2 = i6 * 53;
                    i3 = Float.floatToIntBits(zzkd.zzn(t, j));
                    i = i2 + i3;
                    break;
                case 2:
                    i2 = i6 * 53;
                    i3 = zzhm.zzo(zzkd.zzl(t, j));
                    i = i2 + i3;
                    break;
                case 3:
                    i2 = i6 * 53;
                    i3 = zzhm.zzo(zzkd.zzl(t, j));
                    i = i2 + i3;
                    break;
                case 4:
                    i2 = i6 * 53;
                    i3 = zzkd.zzk(t, j);
                    i = i2 + i3;
                    break;
                case 5:
                    i2 = i6 * 53;
                    i3 = zzhm.zzo(zzkd.zzl(t, j));
                    i = i2 + i3;
                    break;
                case 6:
                    i2 = i6 * 53;
                    i3 = zzkd.zzk(t, j);
                    i = i2 + i3;
                    break;
                case 7:
                    i2 = i6 * 53;
                    i3 = zzhm.zzf(zzkd.zzm(t, j));
                    i = i2 + i3;
                    break;
                case 8:
                    i2 = i6 * 53;
                    i3 = ((String) zzkd.zzp(t, j)).hashCode();
                    i = i2 + i3;
                    break;
                case 9:
                    Object zzp = zzkd.zzp(t, j);
                    if (zzp != null) {
                        i9 = zzp.hashCode();
                    }
                    i = (i6 * 53) + i9;
                    break;
                case 10:
                    i2 = i6 * 53;
                    i3 = zzkd.zzp(t, j).hashCode();
                    i = i2 + i3;
                    break;
                case 11:
                    i2 = i6 * 53;
                    i3 = zzkd.zzk(t, j);
                    i = i2 + i3;
                    break;
                case 12:
                    i2 = i6 * 53;
                    i3 = zzkd.zzk(t, j);
                    i = i2 + i3;
                    break;
                case 13:
                    i2 = i6 * 53;
                    i3 = zzkd.zzk(t, j);
                    i = i2 + i3;
                    break;
                case 14:
                    i2 = i6 * 53;
                    i3 = zzhm.zzo(zzkd.zzl(t, j));
                    i = i2 + i3;
                    break;
                case 15:
                    i2 = i6 * 53;
                    i3 = zzkd.zzk(t, j);
                    i = i2 + i3;
                    break;
                case 16:
                    i2 = i6 * 53;
                    i3 = zzhm.zzo(zzkd.zzl(t, j));
                    i = i2 + i3;
                    break;
                case 17:
                    Object zzp2 = zzkd.zzp(t, j);
                    if (zzp2 != null) {
                        i9 = zzp2.hashCode();
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
                    i3 = zzkd.zzp(t, j).hashCode();
                    i = i2 + i3;
                    break;
                case 50:
                    i2 = i6 * 53;
                    i3 = zzkd.zzp(t, j).hashCode();
                    i = i2 + i3;
                    break;
                case 51:
                    i = i6;
                    if (!zza((zziu<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzhm.zzo(Double.doubleToLongBits(zzf(t, j)));
                        i = i2 + i3;
                        break;
                    }
                case 52:
                    i = i6;
                    if (!zza((zziu<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = Float.floatToIntBits(zzg(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 53:
                    i = i6;
                    if (!zza((zziu<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzhm.zzo(zzi(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 54:
                    i = i6;
                    if (!zza((zziu<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzhm.zzo(zzi(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 55:
                    i = i6;
                    if (!zza((zziu<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzh(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 56:
                    i = i6;
                    if (!zza((zziu<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzhm.zzo(zzi(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 57:
                    i = i6;
                    if (!zza((zziu<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzh(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 58:
                    i = i6;
                    if (!zza((zziu<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzhm.zzf(zzj(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 59:
                    i = i6;
                    if (!zza((zziu<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = ((String) zzkd.zzp(t, j)).hashCode();
                        i = i2 + i3;
                        break;
                    }
                case 60:
                    i = i6;
                    if (!zza((zziu<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzkd.zzp(t, j).hashCode();
                        i = i2 + i3;
                        break;
                    }
                case 61:
                    i = i6;
                    if (!zza((zziu<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzkd.zzp(t, j).hashCode();
                        i = i2 + i3;
                        break;
                    }
                case 62:
                    i = i6;
                    if (!zza((zziu<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzh(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 63:
                    i = i6;
                    if (!zza((zziu<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzh(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 64:
                    i = i6;
                    if (!zza((zziu<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzh(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 65:
                    i = i6;
                    if (!zza((zziu<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzhm.zzo(zzi(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 66:
                    i = i6;
                    if (!zza((zziu<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzh(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 67:
                    i = i6;
                    if (!zza((zziu<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzhm.zzo(zzi(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 68:
                    i = i6;
                    if (!zza((zziu<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzkd.zzp(t, j).hashCode();
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

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjf
    public final T newInstance() {
        return (T) this.zzwd.newInstance(this.zzvv);
    }

    /* JADX WARN: Code restructure failed: missing block: B:145:0x07b6, code lost:
        if (r32 == (-1)) goto L147;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x07b9, code lost:
        r0.putInt(r17, r32, r21);
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x07c4, code lost:
        r22 = null;
        r21 = r18.zzwb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x07d3, code lost:
        if (r21 >= r18.zzwc) goto L233;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x07d6, code lost:
        r22 = (com.google.android.gms.internal.firebase_remote_config.zzka) r18.zza((java.lang.Object) r17, r18.zzwa[r21], (int) r22, (com.google.android.gms.internal.firebase_remote_config.zzjx<UT, int>) r18.zzwf);
        r21 = r21 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x07f5, code lost:
        if (r22 == null) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x07f8, code lost:
        r18.zzwf.zzh(r17, r22);
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x0803, code lost:
        if (r19 != 0) goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x080a, code lost:
        if (r31 != r20) goto L158;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x0813, code lost:
        throw com.google.android.gms.internal.firebase_remote_config.zzhq.zzhl();
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x0818, code lost:
        if (r31 > r20) goto L166;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x081e, code lost:
        if (r29 != r19) goto L166;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x0823, code lost:
        return r31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x0827, code lost:
        throw com.google.android.gms.internal.firebase_remote_config.zzhq.zzhl();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zza(T r17, byte[] r18, int r19, int r20, int r21, com.google.android.gms.internal.firebase_remote_config.zzfw r22) {
        /*
            Method dump skipped, instructions count: 2088
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_remote_config.zziu.zza(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.firebase_remote_config.zzfw):int");
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjf
    public final void zza(T t, zzjg zzjgVar, zzgx zzgxVar) {
        Object obj;
        if (zzgxVar != null) {
            zzjx zzjxVar = this.zzwf;
            zzgz<?> zzgzVar = this.zzwg;
            zzha<?> zzhaVar = null;
            Object obj2 = null;
            while (true) {
                Object obj3 = obj2;
                try {
                    int zzfz = zzjgVar.zzfz();
                    Object obj4 = obj2;
                    int zzbk = zzbk(zzfz);
                    if (zzbk >= 0) {
                        int zzbh = zzbh(zzbk);
                        switch ((267386880 & zzbh) >>> 20) {
                            case 0:
                                zzkd.zza(t, zzbh & 1048575, zzjgVar.readDouble());
                                Object obj5 = obj2;
                                zzb((zziu<T>) t, zzbk);
                                continue;
                            case 1:
                                zzkd.zza((Object) t, zzbh & 1048575, zzjgVar.readFloat());
                                Object obj6 = obj2;
                                zzb((zziu<T>) t, zzbk);
                                continue;
                            case 2:
                                zzkd.zza((Object) t, zzbh & 1048575, zzjgVar.zzfd());
                                Object obj7 = obj2;
                                zzb((zziu<T>) t, zzbk);
                                continue;
                            case 3:
                                zzkd.zza((Object) t, zzbh & 1048575, zzjgVar.zzfc());
                                Object obj8 = obj2;
                                zzb((zziu<T>) t, zzbk);
                                continue;
                            case 4:
                                zzkd.zzb(t, zzbh & 1048575, zzjgVar.zzfe());
                                Object obj9 = obj2;
                                zzb((zziu<T>) t, zzbk);
                                continue;
                            case 5:
                                zzkd.zza((Object) t, zzbh & 1048575, zzjgVar.zzff());
                                Object obj10 = obj2;
                                zzb((zziu<T>) t, zzbk);
                                continue;
                            case 6:
                                zzkd.zzb(t, zzbh & 1048575, zzjgVar.zzfg());
                                Object obj11 = obj2;
                                zzb((zziu<T>) t, zzbk);
                                continue;
                            case 7:
                                zzkd.zza(t, zzbh & 1048575, zzjgVar.zzfh());
                                Object obj12 = obj2;
                                zzb((zziu<T>) t, zzbk);
                                continue;
                            case 8:
                                zza(t, zzbh, zzjgVar);
                                Object obj13 = obj2;
                                zzb((zziu<T>) t, zzbk);
                                continue;
                            case 9:
                                if (!zza((zziu<T>) t, zzbk)) {
                                    zzkd.zza(t, zzbh & 1048575, zzjgVar.zza(zzbe(zzbk), zzgxVar));
                                    Object obj14 = obj2;
                                    zzb((zziu<T>) t, zzbk);
                                    break;
                                } else {
                                    long j = zzbh & 1048575;
                                    zzkd.zza(t, j, zzhm.zzc(zzkd.zzp(t, j), zzjgVar.zza(zzbe(zzbk), zzgxVar)));
                                    continue;
                                }
                            case 10:
                                zzkd.zza(t, zzbh & 1048575, zzjgVar.zzfj());
                                Object obj15 = obj2;
                                zzb((zziu<T>) t, zzbk);
                                continue;
                            case 11:
                                zzkd.zzb(t, zzbh & 1048575, zzjgVar.zzfk());
                                Object obj16 = obj2;
                                zzb((zziu<T>) t, zzbk);
                                continue;
                            case 12:
                                int zzfl = zzjgVar.zzfl();
                                Object obj17 = obj2;
                                zzho zzbg = zzbg(zzbk);
                                if (zzbg != null && !zzbg.zzbc(zzfl)) {
                                    obj2 = zzjh.zza(zzfz, zzfl, obj2, zzjxVar);
                                    continue;
                                }
                                zzkd.zzb(t, zzbh & 1048575, zzfl);
                                Object obj18 = obj2;
                                zzb((zziu<T>) t, zzbk);
                                break;
                            case 13:
                                zzkd.zzb(t, zzbh & 1048575, zzjgVar.zzfm());
                                Object obj19 = obj2;
                                zzb((zziu<T>) t, zzbk);
                                continue;
                            case 14:
                                zzkd.zza((Object) t, zzbh & 1048575, zzjgVar.zzfn());
                                Object obj20 = obj2;
                                zzb((zziu<T>) t, zzbk);
                                continue;
                            case 15:
                                zzkd.zzb(t, zzbh & 1048575, zzjgVar.zzfo());
                                Object obj21 = obj2;
                                zzb((zziu<T>) t, zzbk);
                                continue;
                            case 16:
                                zzkd.zza((Object) t, zzbh & 1048575, zzjgVar.zzfp());
                                Object obj22 = obj2;
                                zzb((zziu<T>) t, zzbk);
                                continue;
                            case 17:
                                if (!zza((zziu<T>) t, zzbk)) {
                                    zzkd.zza(t, zzbh & 1048575, zzjgVar.zzb(zzbe(zzbk), zzgxVar));
                                    Object obj23 = obj2;
                                    zzb((zziu<T>) t, zzbk);
                                    break;
                                } else {
                                    long j2 = zzbh & 1048575;
                                    zzkd.zza(t, j2, zzhm.zzc(zzkd.zzp(t, j2), zzjgVar.zzb(zzbe(zzbk), zzgxVar)));
                                    continue;
                                }
                            case 18:
                                zzjgVar.zzc(this.zzwe.zza(t, zzbh & 1048575));
                                continue;
                            case 19:
                                zzjgVar.zzd(this.zzwe.zza(t, zzbh & 1048575));
                                continue;
                            case 20:
                                zzjgVar.zzf(this.zzwe.zza(t, zzbh & 1048575));
                                continue;
                            case 21:
                                zzjgVar.zze(this.zzwe.zza(t, zzbh & 1048575));
                                continue;
                            case 22:
                                zzjgVar.zzg(this.zzwe.zza(t, zzbh & 1048575));
                                continue;
                            case 23:
                                zzjgVar.zzh(this.zzwe.zza(t, zzbh & 1048575));
                                continue;
                            case 24:
                                zzjgVar.zzi(this.zzwe.zza(t, zzbh & 1048575));
                                continue;
                            case 25:
                                zzjgVar.zzj(this.zzwe.zza(t, zzbh & 1048575));
                                continue;
                            case 26:
                                if (!zzbj(zzbh)) {
                                    zzjgVar.readStringList(this.zzwe.zza(t, zzbh & 1048575));
                                    break;
                                } else {
                                    Object obj24 = obj2;
                                    zzjgVar.zzk(this.zzwe.zza(t, zzbh & 1048575));
                                    continue;
                                }
                            case 27:
                                zzjgVar.zza(this.zzwe.zza(t, zzbh & 1048575), zzbe(zzbk), zzgxVar);
                                continue;
                            case 28:
                                zzjgVar.zzl(this.zzwe.zza(t, zzbh & 1048575));
                                continue;
                            case 29:
                                zzjgVar.zzm(this.zzwe.zza(t, zzbh & 1048575));
                                continue;
                            case 30:
                                List<Integer> zza = this.zzwe.zza(t, zzbh & 1048575);
                                Object obj25 = obj2;
                                zzjgVar.zzn(zza);
                                Object obj26 = obj2;
                                obj2 = zzjh.zza(zzfz, zza, zzbg(zzbk), obj2, zzjxVar);
                                continue;
                            case 31:
                                zzjgVar.zzo(this.zzwe.zza(t, zzbh & 1048575));
                                continue;
                            case 32:
                                zzjgVar.zzp(this.zzwe.zza(t, zzbh & 1048575));
                                continue;
                            case 33:
                                zzjgVar.zzq(this.zzwe.zza(t, zzbh & 1048575));
                                continue;
                            case 34:
                                zzjgVar.zzr(this.zzwe.zza(t, zzbh & 1048575));
                                continue;
                            case 35:
                                zzjgVar.zzc(this.zzwe.zza(t, zzbh & 1048575));
                                continue;
                            case 36:
                                zzjgVar.zzd(this.zzwe.zza(t, zzbh & 1048575));
                                continue;
                            case 37:
                                zzjgVar.zzf(this.zzwe.zza(t, zzbh & 1048575));
                                continue;
                            case 38:
                                zzjgVar.zze(this.zzwe.zza(t, zzbh & 1048575));
                                continue;
                            case 39:
                                zzjgVar.zzg(this.zzwe.zza(t, zzbh & 1048575));
                                continue;
                            case 40:
                                zzjgVar.zzh(this.zzwe.zza(t, zzbh & 1048575));
                                continue;
                            case 41:
                                zzjgVar.zzi(this.zzwe.zza(t, zzbh & 1048575));
                                continue;
                            case 42:
                                zzjgVar.zzj(this.zzwe.zza(t, zzbh & 1048575));
                                continue;
                            case 43:
                                zzjgVar.zzm(this.zzwe.zza(t, zzbh & 1048575));
                                continue;
                            case 44:
                                List<Integer> zza2 = this.zzwe.zza(t, zzbh & 1048575);
                                Object obj27 = obj2;
                                zzjgVar.zzn(zza2);
                                Object obj28 = obj2;
                                obj2 = zzjh.zza(zzfz, zza2, zzbg(zzbk), obj2, zzjxVar);
                                continue;
                            case 45:
                                zzjgVar.zzo(this.zzwe.zza(t, zzbh & 1048575));
                                continue;
                            case 46:
                                zzjgVar.zzp(this.zzwe.zza(t, zzbh & 1048575));
                                continue;
                            case 47:
                                zzjgVar.zzq(this.zzwe.zza(t, zzbh & 1048575));
                                continue;
                            case 48:
                                zzjgVar.zzr(this.zzwe.zza(t, zzbh & 1048575));
                                continue;
                            case 49:
                                long j3 = zzbh & 1048575;
                                zzjf<T> zzbe = zzbe(zzbk);
                                Object obj29 = obj2;
                                zzjgVar.zzb(this.zzwe.zza(t, j3), zzbe, zzgxVar);
                                continue;
                            case 50:
                                Object zzbf = zzbf(zzbk);
                                Object obj30 = obj2;
                                long zzbh2 = zzbh(zzbk) & 1048575;
                                Object obj31 = obj2;
                                Object zzp = zzkd.zzp(t, zzbh2);
                                if (zzp == null) {
                                    obj = this.zzwh.zzt(zzbf);
                                    Object obj32 = obj2;
                                    zzkd.zza(t, zzbh2, obj);
                                } else {
                                    obj = zzp;
                                    if (this.zzwh.zzr(zzp)) {
                                        Object obj33 = obj2;
                                        obj = this.zzwh.zzt(zzbf);
                                        Object obj34 = obj2;
                                        this.zzwh.zzd(obj, zzp);
                                        Object obj35 = obj2;
                                        zzkd.zza(t, zzbh2, obj);
                                    }
                                }
                                Object obj36 = obj2;
                                zzjgVar.zza(this.zzwh.zzp(obj), this.zzwh.zzu(zzbf), zzgxVar);
                                continue;
                            case 51:
                                zzkd.zza(t, zzbh & 1048575, Double.valueOf(zzjgVar.readDouble()));
                                Object obj37 = obj2;
                                zzb((zziu<T>) t, zzfz, zzbk);
                                continue;
                            case 52:
                                zzkd.zza(t, zzbh & 1048575, Float.valueOf(zzjgVar.readFloat()));
                                Object obj38 = obj2;
                                zzb((zziu<T>) t, zzfz, zzbk);
                                continue;
                            case 53:
                                zzkd.zza(t, zzbh & 1048575, Long.valueOf(zzjgVar.zzfd()));
                                Object obj39 = obj2;
                                zzb((zziu<T>) t, zzfz, zzbk);
                                continue;
                            case 54:
                                zzkd.zza(t, zzbh & 1048575, Long.valueOf(zzjgVar.zzfc()));
                                Object obj40 = obj2;
                                zzb((zziu<T>) t, zzfz, zzbk);
                                continue;
                            case 55:
                                zzkd.zza(t, zzbh & 1048575, Integer.valueOf(zzjgVar.zzfe()));
                                Object obj41 = obj2;
                                zzb((zziu<T>) t, zzfz, zzbk);
                                continue;
                            case 56:
                                zzkd.zza(t, zzbh & 1048575, Long.valueOf(zzjgVar.zzff()));
                                Object obj42 = obj2;
                                zzb((zziu<T>) t, zzfz, zzbk);
                                continue;
                            case 57:
                                zzkd.zza(t, zzbh & 1048575, Integer.valueOf(zzjgVar.zzfg()));
                                Object obj43 = obj2;
                                zzb((zziu<T>) t, zzfz, zzbk);
                                continue;
                            case 58:
                                zzkd.zza(t, zzbh & 1048575, Boolean.valueOf(zzjgVar.zzfh()));
                                Object obj44 = obj2;
                                zzb((zziu<T>) t, zzfz, zzbk);
                                continue;
                            case 59:
                                zza(t, zzbh, zzjgVar);
                                Object obj45 = obj2;
                                zzb((zziu<T>) t, zzfz, zzbk);
                                continue;
                            case 60:
                                if (zza((zziu<T>) t, zzfz, zzbk)) {
                                    long j4 = zzbh & 1048575;
                                    zzkd.zza(t, j4, zzhm.zzc(zzkd.zzp(t, j4), zzjgVar.zza(zzbe(zzbk), zzgxVar)));
                                } else {
                                    zzkd.zza(t, zzbh & 1048575, zzjgVar.zza(zzbe(zzbk), zzgxVar));
                                    Object obj46 = obj2;
                                    zzb((zziu<T>) t, zzbk);
                                }
                                Object obj47 = obj2;
                                zzb((zziu<T>) t, zzfz, zzbk);
                                continue;
                            case 61:
                                zzkd.zza(t, zzbh & 1048575, zzjgVar.zzfj());
                                Object obj48 = obj2;
                                zzb((zziu<T>) t, zzfz, zzbk);
                                continue;
                            case 62:
                                zzkd.zza(t, zzbh & 1048575, Integer.valueOf(zzjgVar.zzfk()));
                                Object obj49 = obj2;
                                zzb((zziu<T>) t, zzfz, zzbk);
                                continue;
                            case 63:
                                int zzfl2 = zzjgVar.zzfl();
                                Object obj50 = obj2;
                                zzho zzbg2 = zzbg(zzbk);
                                if (zzbg2 != null && !zzbg2.zzbc(zzfl2)) {
                                    obj2 = zzjh.zza(zzfz, zzfl2, obj2, zzjxVar);
                                    continue;
                                }
                                zzkd.zza(t, zzbh & 1048575, Integer.valueOf(zzfl2));
                                Object obj51 = obj2;
                                zzb((zziu<T>) t, zzfz, zzbk);
                                break;
                            case 64:
                                zzkd.zza(t, zzbh & 1048575, Integer.valueOf(zzjgVar.zzfm()));
                                Object obj52 = obj2;
                                zzb((zziu<T>) t, zzfz, zzbk);
                                continue;
                            case 65:
                                zzkd.zza(t, zzbh & 1048575, Long.valueOf(zzjgVar.zzfn()));
                                Object obj53 = obj2;
                                zzb((zziu<T>) t, zzfz, zzbk);
                                continue;
                            case 66:
                                zzkd.zza(t, zzbh & 1048575, Integer.valueOf(zzjgVar.zzfo()));
                                Object obj54 = obj2;
                                zzb((zziu<T>) t, zzfz, zzbk);
                                continue;
                            case 67:
                                zzkd.zza(t, zzbh & 1048575, Long.valueOf(zzjgVar.zzfp()));
                                Object obj55 = obj2;
                                zzb((zziu<T>) t, zzfz, zzbk);
                                continue;
                            case 68:
                                zzkd.zza(t, zzbh & 1048575, zzjgVar.zzb(zzbe(zzbk), zzgxVar));
                                Object obj56 = obj2;
                                zzb((zziu<T>) t, zzfz, zzbk);
                                continue;
                            default:
                                Object obj57 = obj2;
                                if (obj2 == null) {
                                    Object obj58 = obj2;
                                    obj3 = obj2;
                                    try {
                                        obj57 = zzjxVar.zziz();
                                    } catch (zzhp e) {
                                        zzjxVar.zza(zzjgVar);
                                        Object obj59 = obj58;
                                        if (obj58 == null) {
                                            obj59 = zzjxVar.zzab(t);
                                        }
                                        Object obj60 = obj59;
                                        obj2 = obj59;
                                        if (!zzjxVar.zza((zzjx) obj59, zzjgVar)) {
                                            for (int i = this.zzwb; i < this.zzwc; i++) {
                                                obj59 = zza((Object) t, this.zzwa[i], (int) obj59, (zzjx<UT, int>) zzjxVar);
                                            }
                                            if (obj59 == null) {
                                                return;
                                            }
                                            zzjxVar.zzh(t, obj59);
                                            return;
                                        }
                                        break;
                                    }
                                }
                                obj2 = obj57;
                                if (!zzjxVar.zza((zzjx) obj57, zzjgVar)) {
                                    for (int i2 = this.zzwb; i2 < this.zzwc; i2++) {
                                        obj57 = zza((Object) t, this.zzwa[i2], (int) obj57, (zzjx<UT, int>) zzjxVar);
                                    }
                                    if (obj57 == null) {
                                        return;
                                    }
                                    zzjxVar.zzh(t, obj57);
                                    return;
                                }
                                continue;
                        }
                    } else if (zzfz == Integer.MAX_VALUE) {
                        for (int i3 = this.zzwb; i3 < this.zzwc; i3++) {
                            obj2 = zza((Object) t, this.zzwa[i3], (int) obj2, (zzjx<UT, int>) zzjxVar);
                        }
                        if (obj2 == null) {
                            return;
                        }
                        zzjxVar.zzh(t, obj2);
                        return;
                    } else {
                        Object zza3 = !this.zzvw ? null : zzgzVar.zza(zzgxVar, this.zzvv, zzfz);
                        if (zza3 != null) {
                            zzha<?> zzhaVar2 = zzhaVar;
                            if (zzhaVar == null) {
                                zzhaVar2 = zzgzVar.zzl(t);
                            }
                            Object obj61 = obj2;
                            obj2 = zzgzVar.zza(zzjgVar, zza3, zzgxVar, zzhaVar2, obj2, zzjxVar);
                            zzhaVar = zzhaVar2;
                        } else {
                            zzjxVar.zza(zzjgVar);
                            Object obj62 = obj2;
                            if (obj2 == null) {
                                obj62 = zzjxVar.zzab(t);
                            }
                            Object obj63 = obj62;
                            obj2 = obj62;
                            if (!zzjxVar.zza((zzjx) obj62, zzjgVar)) {
                                for (int i4 = this.zzwb; i4 < this.zzwc; i4++) {
                                    obj62 = zza((Object) t, this.zzwa[i4], (int) obj62, (zzjx<UT, int>) zzjxVar);
                                }
                                if (obj62 == null) {
                                    return;
                                }
                                zzjxVar.zzh(t, obj62);
                                return;
                            }
                        }
                    }
                } catch (Throwable th) {
                    for (int i5 = this.zzwb; i5 < this.zzwc; i5++) {
                        obj3 = zza((Object) t, this.zzwa[i5], (int) obj3, (zzjx<UT, int>) zzjxVar);
                    }
                    if (obj3 != null) {
                        zzjxVar.zzh(t, obj3);
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
    @Override // com.google.android.gms.internal.firebase_remote_config.zzjf
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r8, com.google.android.gms.internal.firebase_remote_config.zzku r9) {
        /*
            Method dump skipped, instructions count: 5249
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.firebase_remote_config.zziu.zza(java.lang.Object, com.google.android.gms.internal.firebase_remote_config.zzku):void");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v168, types: [int] */
    @Override // com.google.android.gms.internal.firebase_remote_config.zzjf
    public final void zza(T t, byte[] bArr, int i, int i2, zzfw zzfwVar) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        if (!this.zzvy) {
            zza((zziu<T>) t, bArr, i, i2, 0, zzfwVar);
            return;
        }
        Unsafe unsafe = zzvq;
        int i9 = -1;
        int i10 = i;
        int i11 = -1;
        int i12 = 0;
        while (i10 < i2) {
            int i13 = i10 + 1;
            byte b = bArr[i10];
            if (b < 0) {
                i3 = zzft.zza(b, bArr, i13, zzfwVar);
                b = zzfwVar.zzor;
            } else {
                i3 = i13;
            }
            int i14 = b >>> 3;
            int i15 = b & 7;
            i12 = i14 > i11 ? zzq(i14, i12 / 3) : zzbk(i14);
            if (i12 == i9) {
                i4 = i9;
                i5 = 0;
            } else {
                int i16 = this.zzvr[i12 + 1];
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
                                zzkd.zza(t, j, zzft.zzc(bArr, i3));
                                i10 = i3 + 8;
                                break;
                            }
                        case 1:
                            if (i15 != 5) {
                                i4 = -1;
                                i5 = i12;
                                break;
                            } else {
                                zzkd.zza((Object) t, j, zzft.zzd(bArr, i3));
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
                                i10 = zzft.zzb(bArr, i3, zzfwVar);
                                unsafe.putLong(t, j, zzfwVar.zzos);
                                break;
                            }
                        case 4:
                        case 11:
                            if (i15 != 0) {
                                i4 = -1;
                                i5 = i12;
                                break;
                            } else {
                                i10 = zzft.zza(bArr, i3, zzfwVar);
                                unsafe.putInt(t, j, zzfwVar.zzor);
                                break;
                            }
                        case 5:
                        case 14:
                            if (i15 != 1) {
                                i4 = -1;
                                i5 = i12;
                                break;
                            } else {
                                unsafe.putLong(t, j, zzft.zzb(bArr, i3));
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
                                unsafe.putInt(t, j, zzft.zza(bArr, i3));
                                i10 = i3 + 4;
                                break;
                            }
                        case 7:
                            if (i15 != 0) {
                                i4 = -1;
                                i5 = i12;
                                break;
                            } else {
                                i10 = zzft.zzb(bArr, i3, zzfwVar);
                                if (zzfwVar.zzos == 0) {
                                    z = false;
                                }
                                zzkd.zza(t, j, z);
                                break;
                            }
                        case 8:
                            if (i15 != 2) {
                                i4 = -1;
                                i5 = i12;
                                break;
                            } else {
                                i10 = (536870912 & i16) == 0 ? zzft.zzc(bArr, i3, zzfwVar) : zzft.zzd(bArr, i3, zzfwVar);
                                unsafe.putObject(t, j, zzfwVar.zzot);
                                break;
                            }
                        case 9:
                            if (i15 != 2) {
                                i4 = -1;
                                i5 = i12;
                                break;
                            } else {
                                i10 = zzft.zza(zzbe(i12), bArr, i3, i2, zzfwVar);
                                Object object = unsafe.getObject(t, j);
                                if (object != null) {
                                    unsafe.putObject(t, j, zzhm.zzc(object, zzfwVar.zzot));
                                    break;
                                } else {
                                    unsafe.putObject(t, j, zzfwVar.zzot);
                                    break;
                                }
                            }
                        case 10:
                            if (i15 != 2) {
                                i4 = -1;
                                i5 = i12;
                                break;
                            } else {
                                i10 = zzft.zze(bArr, i3, zzfwVar);
                                unsafe.putObject(t, j, zzfwVar.zzot);
                                break;
                            }
                        case 12:
                            if (i15 != 0) {
                                i4 = -1;
                                i5 = i12;
                                break;
                            } else {
                                i10 = zzft.zza(bArr, i3, zzfwVar);
                                unsafe.putInt(t, j, zzfwVar.zzor);
                                break;
                            }
                        case 15:
                            if (i15 != 0) {
                                i4 = -1;
                                i5 = i12;
                                break;
                            } else {
                                i10 = zzft.zza(bArr, i3, zzfwVar);
                                unsafe.putInt(t, j, zzgj.zzac(zzfwVar.zzor));
                                break;
                            }
                        case 16:
                            if (i15 != 0) {
                                i4 = -1;
                                i5 = i12;
                                break;
                            } else {
                                i10 = zzft.zzb(bArr, i3, zzfwVar);
                                unsafe.putLong(t, j, zzgj.zze(zzfwVar.zzos));
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
                            int zza = zza((zziu<T>) t, bArr, i3, i2, b, i14, i15, i5, i16, i17, j, zzfwVar);
                            i7 = zza;
                            i6 = i5;
                            if (zza == i3) {
                                i8 = zza;
                                i4 = -1;
                                i3 = i8;
                            }
                        } else {
                            int i18 = i3;
                            i4 = -1;
                            if (i17 == 50) {
                                i12 = i5;
                                if (i15 == 2) {
                                    int zza2 = zza((zziu<T>) t, bArr, i18, i2, i5, j, zzfwVar);
                                    i7 = zza2;
                                    i6 = i5;
                                    if (zza2 == i18) {
                                        i8 = zza2;
                                        i4 = -1;
                                        i3 = i8;
                                    }
                                }
                            } else {
                                int zza3 = zza((zziu<T>) t, bArr, i18, i2, b, i14, i15, i16, i17, j, i5, zzfwVar);
                                i7 = zza3;
                                i6 = i5;
                                if (zza3 == i18) {
                                    i8 = zza3;
                                    i4 = -1;
                                    i3 = i8;
                                }
                            }
                        }
                    } else if (i15 == 2) {
                        zzhn zzhnVar = (zzhn) unsafe.getObject(t, j);
                        zzhn zzhnVar2 = zzhnVar;
                        if (!zzhnVar.zzer()) {
                            int size = zzhnVar.size();
                            zzhnVar2 = zzhnVar.zzu(size == 0 ? 10 : size << 1);
                            unsafe.putObject(t, j, zzhnVar2);
                        }
                        i10 = zzft.zza(zzbe(i12), b, bArr, i3, i2, zzhnVar2, zzfwVar);
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
            i7 = zzft.zza(b, bArr, i3, i2, zzx(t), zzfwVar);
            i6 = i5;
            i9 = i4;
            i10 = i7;
            i11 = i14;
            i12 = i6;
        }
        if (i10 != i2) {
            throw zzhq.zzhl();
        }
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjf
    public final void zze(T t, T t2) {
        if (t2 != null) {
            for (int i = 0; i < this.zzvr.length; i += 3) {
                int zzbh = zzbh(i);
                long j = 1048575 & zzbh;
                int i2 = this.zzvr[i];
                switch ((zzbh & 267386880) >>> 20) {
                    case 0:
                        if (zza((zziu<T>) t2, i)) {
                            zzkd.zza(t, j, zzkd.zzo(t2, j));
                            zzb((zziu<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (zza((zziu<T>) t2, i)) {
                            zzkd.zza((Object) t, j, zzkd.zzn(t2, j));
                            zzb((zziu<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (zza((zziu<T>) t2, i)) {
                            zzkd.zza((Object) t, j, zzkd.zzl(t2, j));
                            zzb((zziu<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (zza((zziu<T>) t2, i)) {
                            zzkd.zza((Object) t, j, zzkd.zzl(t2, j));
                            zzb((zziu<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (zza((zziu<T>) t2, i)) {
                            zzkd.zzb(t, j, zzkd.zzk(t2, j));
                            zzb((zziu<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (zza((zziu<T>) t2, i)) {
                            zzkd.zza((Object) t, j, zzkd.zzl(t2, j));
                            zzb((zziu<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (zza((zziu<T>) t2, i)) {
                            zzkd.zzb(t, j, zzkd.zzk(t2, j));
                            zzb((zziu<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (zza((zziu<T>) t2, i)) {
                            zzkd.zza(t, j, zzkd.zzm(t2, j));
                            zzb((zziu<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (zza((zziu<T>) t2, i)) {
                            zzkd.zza(t, j, zzkd.zzp(t2, j));
                            zzb((zziu<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        zza(t, t2, i);
                        break;
                    case 10:
                        if (zza((zziu<T>) t2, i)) {
                            zzkd.zza(t, j, zzkd.zzp(t2, j));
                            zzb((zziu<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (zza((zziu<T>) t2, i)) {
                            zzkd.zzb(t, j, zzkd.zzk(t2, j));
                            zzb((zziu<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (zza((zziu<T>) t2, i)) {
                            zzkd.zzb(t, j, zzkd.zzk(t2, j));
                            zzb((zziu<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (zza((zziu<T>) t2, i)) {
                            zzkd.zzb(t, j, zzkd.zzk(t2, j));
                            zzb((zziu<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (zza((zziu<T>) t2, i)) {
                            zzkd.zza((Object) t, j, zzkd.zzl(t2, j));
                            zzb((zziu<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (zza((zziu<T>) t2, i)) {
                            zzkd.zzb(t, j, zzkd.zzk(t2, j));
                            zzb((zziu<T>) t, i);
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (zza((zziu<T>) t2, i)) {
                            zzkd.zza((Object) t, j, zzkd.zzl(t2, j));
                            zzb((zziu<T>) t, i);
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
                        this.zzwe.zza(t, t2, j);
                        break;
                    case 50:
                        zzjh.zza(this.zzwh, t, t2, j);
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
                        if (zza((zziu<T>) t2, i2, i)) {
                            zzkd.zza(t, j, zzkd.zzp(t2, j));
                            zzb((zziu<T>) t, i2, i);
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
                        if (zza((zziu<T>) t2, i2, i)) {
                            zzkd.zza(t, j, zzkd.zzp(t2, j));
                            zzb((zziu<T>) t, i2, i);
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        zzb(t, t2, i);
                        break;
                }
            }
            if (this.zzvy) {
                return;
            }
            zzjh.zza(this.zzwf, t, t2);
            if (!this.zzvw) {
                return;
            }
            zzjh.zza(this.zzwg, t, t2);
            return;
        }
        throw new NullPointerException();
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjf
    public final void zzm(T t) {
        int i;
        int i2 = this.zzwb;
        while (true) {
            i = this.zzwc;
            if (i2 >= i) {
                break;
            }
            long zzbh = zzbh(this.zzwa[i2]) & 1048575;
            Object zzp = zzkd.zzp(t, zzbh);
            if (zzp != null) {
                zzkd.zza(t, zzbh, this.zzwh.zzs(zzp));
            }
            i2++;
        }
        int length = this.zzwa.length;
        for (int i3 = i; i3 < length; i3++) {
            this.zzwe.zzb(t, this.zzwa[i3]);
        }
        this.zzwf.zzm(t);
        if (this.zzvw) {
            this.zzwg.zzm(t);
        }
    }

    @Override // com.google.android.gms.internal.firebase_remote_config.zzjf
    public final int zzw(T t) {
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int zzc;
        int i9;
        int i10;
        int i11;
        int i12;
        int i13;
        int i14;
        int zzb;
        int i15;
        int i16;
        int i17;
        int i18 = 1;
        int i19 = 0;
        if (this.zzvy) {
            Unsafe unsafe = zzvq;
            int i20 = 0;
            int i21 = 0;
            while (true) {
                int i22 = i21;
                if (i20 >= this.zzvr.length) {
                    return i22 + zza(this.zzwf, t);
                }
                int zzbh = zzbh(i20);
                int i23 = (zzbh & 267386880) >>> 20;
                int i24 = this.zzvr[i20];
                long j = zzbh & 1048575;
                int i25 = (i23 < zzhf.DOUBLE_LIST_PACKED.m3779id() || i23 > zzhf.SINT64_LIST_PACKED.m3779id()) ? 0 : this.zzvr[i20 + 2] & 1048575;
                switch (i23) {
                    case 0:
                        i14 = i22;
                        if (zza((zziu<T>) t, i20)) {
                            zzb = zzgs.zzb(i24, (double) FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 1:
                        i14 = i22;
                        if (zza((zziu<T>) t, i20)) {
                            zzb = zzgs.zzb(i24, (float) FlexItem.FLEX_GROW_DEFAULT);
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 2:
                        i14 = i22;
                        if (zza((zziu<T>) t, i20)) {
                            zzb = zzgs.zzd(i24, zzkd.zzl(t, j));
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 3:
                        i14 = i22;
                        if (zza((zziu<T>) t, i20)) {
                            zzb = zzgs.zze(i24, zzkd.zzl(t, j));
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 4:
                        i14 = i22;
                        if (zza((zziu<T>) t, i20)) {
                            zzb = zzgs.zzh(i24, zzkd.zzk(t, j));
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 5:
                        i14 = i22;
                        if (zza((zziu<T>) t, i20)) {
                            zzb = zzgs.zzg(i24, 0L);
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 6:
                        i14 = i22;
                        if (zza((zziu<T>) t, i20)) {
                            zzb = zzgs.zzk(i24, 0);
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 7:
                        i14 = i22;
                        if (zza((zziu<T>) t, i20)) {
                            zzb = zzgs.zzd(i24, true);
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 8:
                        i14 = i22;
                        if (zza((zziu<T>) t, i20)) {
                            Object zzp = zzkd.zzp(t, j);
                            if (zzp instanceof zzfx) {
                                zzb = zzgs.zzc(i24, (zzfx) zzp);
                                break;
                            } else {
                                zzb = zzgs.zzc(i24, (String) zzp);
                                break;
                            }
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 9:
                        i14 = i22;
                        if (zza((zziu<T>) t, i20)) {
                            zzb = zzjh.zzc(i24, zzkd.zzp(t, j), zzbe(i20));
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 10:
                        i14 = i22;
                        if (zza((zziu<T>) t, i20)) {
                            zzb = zzgs.zzc(i24, (zzfx) zzkd.zzp(t, j));
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 11:
                        i14 = i22;
                        if (zza((zziu<T>) t, i20)) {
                            zzb = zzgs.zzi(i24, zzkd.zzk(t, j));
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 12:
                        i14 = i22;
                        if (zza((zziu<T>) t, i20)) {
                            zzb = zzgs.zzm(i24, zzkd.zzk(t, j));
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 13:
                        i14 = i22;
                        if (zza((zziu<T>) t, i20)) {
                            zzb = zzgs.zzl(i24, 0);
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 14:
                        i14 = i22;
                        if (zza((zziu<T>) t, i20)) {
                            zzb = zzgs.zzh(i24, 0L);
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 15:
                        i14 = i22;
                        if (zza((zziu<T>) t, i20)) {
                            zzb = zzgs.zzj(i24, zzkd.zzk(t, j));
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 16:
                        i14 = i22;
                        if (zza((zziu<T>) t, i20)) {
                            zzb = zzgs.zzf(i24, zzkd.zzl(t, j));
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 17:
                        i14 = i22;
                        if (zza((zziu<T>) t, i20)) {
                            zzb = zzgs.zzc(i24, (zziq) zzkd.zzp(t, j), zzbe(i20));
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 18:
                        zzb = zzjh.zzw(i24, zze(t, j), false);
                        break;
                    case 19:
                        zzb = zzjh.zzv(i24, zze(t, j), false);
                        break;
                    case 20:
                        zzb = zzjh.zzo(i24, zze(t, j), false);
                        break;
                    case 21:
                        zzb = zzjh.zzp(i24, zze(t, j), false);
                        break;
                    case 22:
                        zzb = zzjh.zzs(i24, zze(t, j), false);
                        break;
                    case 23:
                        zzb = zzjh.zzw(i24, zze(t, j), false);
                        break;
                    case 24:
                        zzb = zzjh.zzv(i24, zze(t, j), false);
                        break;
                    case 25:
                        zzb = zzjh.zzx(i24, zze(t, j), false);
                        break;
                    case 26:
                        zzb = zzjh.zzc(i24, zze(t, j));
                        break;
                    case 27:
                        zzb = zzjh.zzc(i24, zze(t, j), zzbe(i20));
                        break;
                    case 28:
                        zzb = zzjh.zzd(i24, zze(t, j));
                        break;
                    case 29:
                        zzb = zzjh.zzt(i24, zze(t, j), false);
                        break;
                    case 30:
                        zzb = zzjh.zzr(i24, zze(t, j), false);
                        break;
                    case 31:
                        zzb = zzjh.zzv(i24, zze(t, j), false);
                        break;
                    case 32:
                        zzb = zzjh.zzw(i24, zze(t, j), false);
                        break;
                    case 33:
                        zzb = zzjh.zzu(i24, zze(t, j), false);
                        break;
                    case 34:
                        zzb = zzjh.zzq(i24, zze(t, j), false);
                        break;
                    case 35:
                        int zzaa = zzjh.zzaa((List) unsafe.getObject(t, j));
                        i14 = i22;
                        if (zzaa > 0) {
                            if (this.zzvz) {
                                unsafe.putInt(t, i25, zzaa);
                            }
                            i16 = zzgs.zzaq(i24);
                            i17 = zzgs.zzas(zzaa);
                            i15 = zzaa;
                            zzb = i16 + i17 + i15;
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 36:
                        int zzz = zzjh.zzz((List) unsafe.getObject(t, j));
                        i14 = i22;
                        if (zzz > 0) {
                            if (this.zzvz) {
                                unsafe.putInt(t, i25, zzz);
                            }
                            i16 = zzgs.zzaq(i24);
                            i15 = zzz;
                            i17 = zzgs.zzas(zzz);
                            zzb = i16 + i17 + i15;
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 37:
                        int zzs = zzjh.zzs((List) unsafe.getObject(t, j));
                        i14 = i22;
                        if (zzs > 0) {
                            if (this.zzvz) {
                                unsafe.putInt(t, i25, zzs);
                            }
                            i16 = zzgs.zzaq(i24);
                            i15 = zzs;
                            i17 = zzgs.zzas(zzs);
                            zzb = i16 + i17 + i15;
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 38:
                        int zzt = zzjh.zzt((List) unsafe.getObject(t, j));
                        i14 = i22;
                        if (zzt > 0) {
                            if (this.zzvz) {
                                unsafe.putInt(t, i25, zzt);
                            }
                            i16 = zzgs.zzaq(i24);
                            i15 = zzt;
                            i17 = zzgs.zzas(zzt);
                            zzb = i16 + i17 + i15;
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 39:
                        int zzw = zzjh.zzw((List) unsafe.getObject(t, j));
                        i14 = i22;
                        if (zzw > 0) {
                            if (this.zzvz) {
                                unsafe.putInt(t, i25, zzw);
                            }
                            i16 = zzgs.zzaq(i24);
                            i15 = zzw;
                            i17 = zzgs.zzas(zzw);
                            zzb = i16 + i17 + i15;
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 40:
                        int zzaa2 = zzjh.zzaa((List) unsafe.getObject(t, j));
                        i14 = i22;
                        if (zzaa2 > 0) {
                            if (this.zzvz) {
                                unsafe.putInt(t, i25, zzaa2);
                            }
                            i16 = zzgs.zzaq(i24);
                            i15 = zzaa2;
                            i17 = zzgs.zzas(zzaa2);
                            zzb = i16 + i17 + i15;
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 41:
                        int zzz2 = zzjh.zzz((List) unsafe.getObject(t, j));
                        i14 = i22;
                        if (zzz2 > 0) {
                            if (this.zzvz) {
                                unsafe.putInt(t, i25, zzz2);
                            }
                            i16 = zzgs.zzaq(i24);
                            i15 = zzz2;
                            i17 = zzgs.zzas(zzz2);
                            zzb = i16 + i17 + i15;
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 42:
                        int zzab = zzjh.zzab((List) unsafe.getObject(t, j));
                        i14 = i22;
                        if (zzab > 0) {
                            if (this.zzvz) {
                                unsafe.putInt(t, i25, zzab);
                            }
                            i16 = zzgs.zzaq(i24);
                            i15 = zzab;
                            i17 = zzgs.zzas(zzab);
                            zzb = i16 + i17 + i15;
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 43:
                        int zzx = zzjh.zzx((List) unsafe.getObject(t, j));
                        i14 = i22;
                        if (zzx > 0) {
                            if (this.zzvz) {
                                unsafe.putInt(t, i25, zzx);
                            }
                            i16 = zzgs.zzaq(i24);
                            i15 = zzx;
                            i17 = zzgs.zzas(zzx);
                            zzb = i16 + i17 + i15;
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 44:
                        int zzv = zzjh.zzv((List) unsafe.getObject(t, j));
                        i14 = i22;
                        if (zzv > 0) {
                            if (this.zzvz) {
                                unsafe.putInt(t, i25, zzv);
                            }
                            i16 = zzgs.zzaq(i24);
                            i15 = zzv;
                            i17 = zzgs.zzas(zzv);
                            zzb = i16 + i17 + i15;
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 45:
                        int zzz3 = zzjh.zzz((List) unsafe.getObject(t, j));
                        i14 = i22;
                        if (zzz3 > 0) {
                            if (this.zzvz) {
                                unsafe.putInt(t, i25, zzz3);
                            }
                            i16 = zzgs.zzaq(i24);
                            i15 = zzz3;
                            i17 = zzgs.zzas(zzz3);
                            zzb = i16 + i17 + i15;
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 46:
                        int zzaa3 = zzjh.zzaa((List) unsafe.getObject(t, j));
                        i14 = i22;
                        if (zzaa3 > 0) {
                            if (this.zzvz) {
                                unsafe.putInt(t, i25, zzaa3);
                            }
                            i16 = zzgs.zzaq(i24);
                            i15 = zzaa3;
                            i17 = zzgs.zzas(zzaa3);
                            zzb = i16 + i17 + i15;
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 47:
                        int zzy = zzjh.zzy((List) unsafe.getObject(t, j));
                        i14 = i22;
                        if (zzy > 0) {
                            if (this.zzvz) {
                                unsafe.putInt(t, i25, zzy);
                            }
                            i16 = zzgs.zzaq(i24);
                            i15 = zzy;
                            i17 = zzgs.zzas(zzy);
                            zzb = i16 + i17 + i15;
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 48:
                        int zzu = zzjh.zzu((List) unsafe.getObject(t, j));
                        i14 = i22;
                        if (zzu > 0) {
                            if (this.zzvz) {
                                unsafe.putInt(t, i25, zzu);
                            }
                            i16 = zzgs.zzaq(i24);
                            i15 = zzu;
                            i17 = zzgs.zzas(zzu);
                            zzb = i16 + i17 + i15;
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 49:
                        zzb = zzjh.zzd(i24, zze(t, j), zzbe(i20));
                        break;
                    case 50:
                        zzb = this.zzwh.zzc(i24, zzkd.zzp(t, j), zzbf(i20));
                        break;
                    case 51:
                        i14 = i22;
                        if (zza((zziu<T>) t, i24, i20)) {
                            zzb = zzgs.zzb(i24, (double) FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 52:
                        i14 = i22;
                        if (zza((zziu<T>) t, i24, i20)) {
                            zzb = zzgs.zzb(i24, (float) FlexItem.FLEX_GROW_DEFAULT);
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 53:
                        i14 = i22;
                        if (zza((zziu<T>) t, i24, i20)) {
                            zzb = zzgs.zzd(i24, zzi(t, j));
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 54:
                        i14 = i22;
                        if (zza((zziu<T>) t, i24, i20)) {
                            zzb = zzgs.zze(i24, zzi(t, j));
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 55:
                        i14 = i22;
                        if (zza((zziu<T>) t, i24, i20)) {
                            zzb = zzgs.zzh(i24, zzh(t, j));
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 56:
                        i14 = i22;
                        if (zza((zziu<T>) t, i24, i20)) {
                            zzb = zzgs.zzg(i24, 0L);
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 57:
                        i14 = i22;
                        if (zza((zziu<T>) t, i24, i20)) {
                            zzb = zzgs.zzk(i24, 0);
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 58:
                        i14 = i22;
                        if (zza((zziu<T>) t, i24, i20)) {
                            zzb = zzgs.zzd(i24, true);
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 59:
                        i14 = i22;
                        if (zza((zziu<T>) t, i24, i20)) {
                            Object zzp2 = zzkd.zzp(t, j);
                            if (zzp2 instanceof zzfx) {
                                zzb = zzgs.zzc(i24, (zzfx) zzp2);
                                break;
                            } else {
                                zzb = zzgs.zzc(i24, (String) zzp2);
                                break;
                            }
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 60:
                        i14 = i22;
                        if (zza((zziu<T>) t, i24, i20)) {
                            zzb = zzjh.zzc(i24, zzkd.zzp(t, j), zzbe(i20));
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 61:
                        i14 = i22;
                        if (zza((zziu<T>) t, i24, i20)) {
                            zzb = zzgs.zzc(i24, (zzfx) zzkd.zzp(t, j));
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 62:
                        i14 = i22;
                        if (zza((zziu<T>) t, i24, i20)) {
                            zzb = zzgs.zzi(i24, zzh(t, j));
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 63:
                        i14 = i22;
                        if (zza((zziu<T>) t, i24, i20)) {
                            zzb = zzgs.zzm(i24, zzh(t, j));
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 64:
                        i14 = i22;
                        if (zza((zziu<T>) t, i24, i20)) {
                            zzb = zzgs.zzl(i24, 0);
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 65:
                        i14 = i22;
                        if (zza((zziu<T>) t, i24, i20)) {
                            zzb = zzgs.zzh(i24, 0L);
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 66:
                        i14 = i22;
                        if (zza((zziu<T>) t, i24, i20)) {
                            zzb = zzgs.zzj(i24, zzh(t, j));
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 67:
                        i14 = i22;
                        if (zza((zziu<T>) t, i24, i20)) {
                            zzb = zzgs.zzf(i24, zzi(t, j));
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    case 68:
                        i14 = i22;
                        if (zza((zziu<T>) t, i24, i20)) {
                            zzb = zzgs.zzc(i24, (zziq) zzkd.zzp(t, j), zzbe(i20));
                            break;
                        } else {
                            continue;
                            i20 += 3;
                            i21 = i14;
                        }
                    default:
                        i14 = i22;
                        continue;
                        i20 += 3;
                        i21 = i14;
                }
                i14 = i22 + zzb;
                i20 += 3;
                i21 = i14;
            }
        } else {
            Unsafe unsafe2 = zzvq;
            int i26 = -1;
            int i27 = 0;
            int i28 = 0;
            int i29 = 0;
            while (true) {
                int i30 = i29;
                if (i27 >= this.zzvr.length) {
                    int zza = i28 + zza(this.zzwf, t);
                    int i31 = zza;
                    if (this.zzvw) {
                        zzha<?> zzk = this.zzwg.zzk(t);
                        int i32 = i19;
                        while (i19 < zzk.zzqf.zzir()) {
                            Map.Entry<?, Object> zzbm = zzk.zzqf.zzbm(i19);
                            i32 += zzha.zzb((zzhc) zzbm.getKey(), zzbm.getValue());
                            i19++;
                        }
                        for (Map.Entry<?, Object> entry : zzk.zzqf.zzis()) {
                            i32 += zzha.zzb((zzhc) entry.getKey(), entry.getValue());
                        }
                        i31 = zza + i32;
                    }
                    return i31;
                }
                int zzbh2 = zzbh(i27);
                int[] iArr = this.zzvr;
                int i33 = iArr[i27];
                int i34 = (zzbh2 & 267386880) >>> 20;
                if (i34 <= 17) {
                    i3 = iArr[i27 + 2];
                    int i35 = i3 & 1048575;
                    i = i18 << (i3 >>> 20);
                    if (i35 != i26) {
                        i30 = unsafe2.getInt(t, i35);
                        i26 = i35;
                    }
                    i4 = i26;
                    i2 = i30;
                } else {
                    i3 = (!this.zzvz || i34 < zzhf.DOUBLE_LIST_PACKED.m3779id() || i34 > zzhf.SINT64_LIST_PACKED.m3779id()) ? 0 : this.zzvr[i27 + 2] & 1048575;
                    i = 0;
                    i2 = i30;
                    i4 = i26;
                }
                long j2 = zzbh2 & 1048575;
                switch (i34) {
                    case 0:
                        i6 = i28;
                        if ((i2 & i) != 0) {
                            i5 = i28 + zzgs.zzb(i33, (double) FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
                            break;
                        }
                        i5 = i6;
                        break;
                    case 1:
                        i6 = i28;
                        if ((i2 & i) != 0) {
                            i6 = i28 + zzgs.zzb(i33, (float) FlexItem.FLEX_GROW_DEFAULT);
                        }
                        i5 = i6;
                        break;
                    case 2:
                        i6 = i28;
                        if ((i2 & i) != 0) {
                            i7 = zzgs.zzd(i33, unsafe2.getLong(t, j2));
                            i6 = i28 + i7;
                        }
                        i5 = i6;
                        break;
                    case 3:
                        i6 = i28;
                        if ((i2 & i) != 0) {
                            i7 = zzgs.zze(i33, unsafe2.getLong(t, j2));
                            i6 = i28 + i7;
                        }
                        i5 = i6;
                        break;
                    case 4:
                        i6 = i28;
                        if ((i2 & i) != 0) {
                            i7 = zzgs.zzh(i33, unsafe2.getInt(t, j2));
                            i6 = i28 + i7;
                        }
                        i5 = i6;
                        break;
                    case 5:
                        i6 = i28;
                        if ((i2 & i) != 0) {
                            i7 = zzgs.zzg(i33, 0L);
                            i6 = i28 + i7;
                        }
                        i5 = i6;
                        break;
                    case 6:
                        i8 = i28;
                        if ((i2 & i) != 0) {
                            i8 = i28 + zzgs.zzk(i33, 0);
                        }
                        i5 = i8;
                        break;
                    case 7:
                        i8 = i28;
                        if ((i2 & i) != 0) {
                            i8 = i28 + zzgs.zzd(i33, true);
                        }
                        i5 = i8;
                        break;
                    case 8:
                        i8 = i28;
                        if ((i2 & i) != 0) {
                            Object object = unsafe2.getObject(t, j2);
                            zzc = object instanceof zzfx ? zzgs.zzc(i33, (zzfx) object) : zzgs.zzc(i33, (String) object);
                            i8 = i28 + zzc;
                        }
                        i5 = i8;
                        break;
                    case 9:
                        i8 = i28;
                        if ((i2 & i) != 0) {
                            zzc = zzjh.zzc(i33, unsafe2.getObject(t, j2), zzbe(i27));
                            i8 = i28 + zzc;
                        }
                        i5 = i8;
                        break;
                    case 10:
                        i8 = i28;
                        if ((i2 & i) != 0) {
                            zzc = zzgs.zzc(i33, (zzfx) unsafe2.getObject(t, j2));
                            i8 = i28 + zzc;
                        }
                        i5 = i8;
                        break;
                    case 11:
                        i8 = i28;
                        if ((i2 & i) != 0) {
                            zzc = zzgs.zzi(i33, unsafe2.getInt(t, j2));
                            i8 = i28 + zzc;
                        }
                        i5 = i8;
                        break;
                    case 12:
                        i8 = i28;
                        if ((i2 & i) != 0) {
                            zzc = zzgs.zzm(i33, unsafe2.getInt(t, j2));
                            i8 = i28 + zzc;
                        }
                        i5 = i8;
                        break;
                    case 13:
                        i8 = i28;
                        if ((i2 & i) != 0) {
                            i9 = zzgs.zzl(i33, 0);
                            i8 = i28 + i9;
                        }
                        i5 = i8;
                        break;
                    case 14:
                        i8 = i28;
                        if ((i2 & i) != 0) {
                            zzc = zzgs.zzh(i33, 0L);
                            i8 = i28 + zzc;
                        }
                        i5 = i8;
                        break;
                    case 15:
                        i8 = i28;
                        if ((i2 & i) != 0) {
                            zzc = zzgs.zzj(i33, unsafe2.getInt(t, j2));
                            i8 = i28 + zzc;
                        }
                        i5 = i8;
                        break;
                    case 16:
                        i8 = i28;
                        if ((i2 & i) != 0) {
                            zzc = zzgs.zzf(i33, unsafe2.getLong(t, j2));
                            i8 = i28 + zzc;
                        }
                        i5 = i8;
                        break;
                    case 17:
                        i8 = i28;
                        if ((i2 & i) != 0) {
                            zzc = zzgs.zzc(i33, (zziq) unsafe2.getObject(t, j2), zzbe(i27));
                            i8 = i28 + zzc;
                        }
                        i5 = i8;
                        break;
                    case 18:
                        zzc = zzjh.zzw(i33, (List) unsafe2.getObject(t, j2), false);
                        i8 = i28 + zzc;
                        i5 = i8;
                        break;
                    case 19:
                        i10 = zzjh.zzv(i33, (List) unsafe2.getObject(t, j2), false);
                        i8 = i28 + i10;
                        i5 = i8;
                        break;
                    case 20:
                        i10 = zzjh.zzo(i33, (List) unsafe2.getObject(t, j2), false);
                        i8 = i28 + i10;
                        i5 = i8;
                        break;
                    case 21:
                        i10 = zzjh.zzp(i33, (List) unsafe2.getObject(t, j2), false);
                        i8 = i28 + i10;
                        i5 = i8;
                        break;
                    case 22:
                        i10 = zzjh.zzs(i33, (List) unsafe2.getObject(t, j2), false);
                        i8 = i28 + i10;
                        i5 = i8;
                        break;
                    case 23:
                        i10 = zzjh.zzw(i33, (List) unsafe2.getObject(t, j2), false);
                        i8 = i28 + i10;
                        i5 = i8;
                        break;
                    case 24:
                        i10 = zzjh.zzv(i33, (List) unsafe2.getObject(t, j2), false);
                        i8 = i28 + i10;
                        i5 = i8;
                        break;
                    case 25:
                        i10 = zzjh.zzx(i33, (List) unsafe2.getObject(t, j2), false);
                        i8 = i28 + i10;
                        i5 = i8;
                        break;
                    case 26:
                        zzc = zzjh.zzc(i33, (List) unsafe2.getObject(t, j2));
                        i8 = i28 + zzc;
                        i5 = i8;
                        break;
                    case 27:
                        zzc = zzjh.zzc(i33, (List<?>) unsafe2.getObject(t, j2), zzbe(i27));
                        i8 = i28 + zzc;
                        i5 = i8;
                        break;
                    case 28:
                        zzc = zzjh.zzd(i33, (List) unsafe2.getObject(t, j2));
                        i8 = i28 + zzc;
                        i5 = i8;
                        break;
                    case 29:
                        zzc = zzjh.zzt(i33, (List) unsafe2.getObject(t, j2), false);
                        i8 = i28 + zzc;
                        i5 = i8;
                        break;
                    case 30:
                        i10 = zzjh.zzr(i33, (List) unsafe2.getObject(t, j2), false);
                        i8 = i28 + i10;
                        i5 = i8;
                        break;
                    case 31:
                        i10 = zzjh.zzv(i33, (List) unsafe2.getObject(t, j2), false);
                        i8 = i28 + i10;
                        i5 = i8;
                        break;
                    case 32:
                        i10 = zzjh.zzw(i33, (List) unsafe2.getObject(t, j2), false);
                        i8 = i28 + i10;
                        i5 = i8;
                        break;
                    case 33:
                        i10 = zzjh.zzu(i33, (List) unsafe2.getObject(t, j2), false);
                        i8 = i28 + i10;
                        i5 = i8;
                        break;
                    case 34:
                        i10 = zzjh.zzq(i33, (List) unsafe2.getObject(t, j2), false);
                        i8 = i28 + i10;
                        i5 = i8;
                        break;
                    case 35:
                        int zzaa4 = zzjh.zzaa((List) unsafe2.getObject(t, j2));
                        i8 = i28;
                        if (zzaa4 > 0) {
                            if (this.zzvz) {
                                unsafe2.putInt(t, i3, zzaa4);
                            }
                            i11 = zzgs.zzaq(i33);
                            i13 = zzgs.zzas(zzaa4);
                            i12 = zzaa4;
                            i9 = i11 + i13 + i12;
                            i8 = i28 + i9;
                        }
                        i5 = i8;
                        break;
                    case 36:
                        int zzz4 = zzjh.zzz((List) unsafe2.getObject(t, j2));
                        i8 = i28;
                        if (zzz4 > 0) {
                            if (this.zzvz) {
                                unsafe2.putInt(t, i3, zzz4);
                            }
                            int zzaq = zzgs.zzaq(i33);
                            i13 = zzgs.zzas(zzz4);
                            i12 = zzz4;
                            i11 = zzaq;
                            i9 = i11 + i13 + i12;
                            i8 = i28 + i9;
                        }
                        i5 = i8;
                        break;
                    case 37:
                        int zzs2 = zzjh.zzs((List) unsafe2.getObject(t, j2));
                        i8 = i28;
                        if (zzs2 > 0) {
                            if (this.zzvz) {
                                unsafe2.putInt(t, i3, zzs2);
                            }
                            int zzaq2 = zzgs.zzaq(i33);
                            i13 = zzgs.zzas(zzs2);
                            i12 = zzs2;
                            i11 = zzaq2;
                            i9 = i11 + i13 + i12;
                            i8 = i28 + i9;
                        }
                        i5 = i8;
                        break;
                    case 38:
                        int zzt2 = zzjh.zzt((List) unsafe2.getObject(t, j2));
                        i8 = i28;
                        if (zzt2 > 0) {
                            if (this.zzvz) {
                                unsafe2.putInt(t, i3, zzt2);
                            }
                            int zzaq3 = zzgs.zzaq(i33);
                            i13 = zzgs.zzas(zzt2);
                            i12 = zzt2;
                            i11 = zzaq3;
                            i9 = i11 + i13 + i12;
                            i8 = i28 + i9;
                        }
                        i5 = i8;
                        break;
                    case 39:
                        int zzw2 = zzjh.zzw((List) unsafe2.getObject(t, j2));
                        i8 = i28;
                        if (zzw2 > 0) {
                            if (this.zzvz) {
                                unsafe2.putInt(t, i3, zzw2);
                            }
                            int zzaq4 = zzgs.zzaq(i33);
                            i13 = zzgs.zzas(zzw2);
                            i12 = zzw2;
                            i11 = zzaq4;
                            i9 = i11 + i13 + i12;
                            i8 = i28 + i9;
                        }
                        i5 = i8;
                        break;
                    case 40:
                        int zzaa5 = zzjh.zzaa((List) unsafe2.getObject(t, j2));
                        i8 = i28;
                        if (zzaa5 > 0) {
                            if (this.zzvz) {
                                unsafe2.putInt(t, i3, zzaa5);
                            }
                            int zzaq5 = zzgs.zzaq(i33);
                            i13 = zzgs.zzas(zzaa5);
                            i12 = zzaa5;
                            i11 = zzaq5;
                            i9 = i11 + i13 + i12;
                            i8 = i28 + i9;
                        }
                        i5 = i8;
                        break;
                    case 41:
                        int zzz5 = zzjh.zzz((List) unsafe2.getObject(t, j2));
                        i8 = i28;
                        if (zzz5 > 0) {
                            if (this.zzvz) {
                                unsafe2.putInt(t, i3, zzz5);
                            }
                            int zzaq6 = zzgs.zzaq(i33);
                            i13 = zzgs.zzas(zzz5);
                            i12 = zzz5;
                            i11 = zzaq6;
                            i9 = i11 + i13 + i12;
                            i8 = i28 + i9;
                        }
                        i5 = i8;
                        break;
                    case 42:
                        int zzab2 = zzjh.zzab((List) unsafe2.getObject(t, j2));
                        i8 = i28;
                        if (zzab2 > 0) {
                            if (this.zzvz) {
                                unsafe2.putInt(t, i3, zzab2);
                            }
                            int zzaq7 = zzgs.zzaq(i33);
                            i13 = zzgs.zzas(zzab2);
                            i12 = zzab2;
                            i11 = zzaq7;
                            i9 = i11 + i13 + i12;
                            i8 = i28 + i9;
                        }
                        i5 = i8;
                        break;
                    case 43:
                        int zzx2 = zzjh.zzx((List) unsafe2.getObject(t, j2));
                        i8 = i28;
                        if (zzx2 > 0) {
                            if (this.zzvz) {
                                unsafe2.putInt(t, i3, zzx2);
                            }
                            int zzaq8 = zzgs.zzaq(i33);
                            i13 = zzgs.zzas(zzx2);
                            i12 = zzx2;
                            i11 = zzaq8;
                            i9 = i11 + i13 + i12;
                            i8 = i28 + i9;
                        }
                        i5 = i8;
                        break;
                    case 44:
                        int zzv2 = zzjh.zzv((List) unsafe2.getObject(t, j2));
                        i8 = i28;
                        if (zzv2 > 0) {
                            if (this.zzvz) {
                                unsafe2.putInt(t, i3, zzv2);
                            }
                            int zzaq9 = zzgs.zzaq(i33);
                            i13 = zzgs.zzas(zzv2);
                            i12 = zzv2;
                            i11 = zzaq9;
                            i9 = i11 + i13 + i12;
                            i8 = i28 + i9;
                        }
                        i5 = i8;
                        break;
                    case 45:
                        int zzz6 = zzjh.zzz((List) unsafe2.getObject(t, j2));
                        i8 = i28;
                        if (zzz6 > 0) {
                            if (this.zzvz) {
                                unsafe2.putInt(t, i3, zzz6);
                            }
                            int zzaq10 = zzgs.zzaq(i33);
                            i13 = zzgs.zzas(zzz6);
                            i12 = zzz6;
                            i11 = zzaq10;
                            i9 = i11 + i13 + i12;
                            i8 = i28 + i9;
                        }
                        i5 = i8;
                        break;
                    case 46:
                        int zzaa6 = zzjh.zzaa((List) unsafe2.getObject(t, j2));
                        i8 = i28;
                        if (zzaa6 > 0) {
                            if (this.zzvz) {
                                unsafe2.putInt(t, i3, zzaa6);
                            }
                            int zzaq11 = zzgs.zzaq(i33);
                            i13 = zzgs.zzas(zzaa6);
                            i12 = zzaa6;
                            i11 = zzaq11;
                            i9 = i11 + i13 + i12;
                            i8 = i28 + i9;
                        }
                        i5 = i8;
                        break;
                    case 47:
                        int zzy2 = zzjh.zzy((List) unsafe2.getObject(t, j2));
                        i8 = i28;
                        if (zzy2 > 0) {
                            if (this.zzvz) {
                                unsafe2.putInt(t, i3, zzy2);
                            }
                            int zzaq12 = zzgs.zzaq(i33);
                            i13 = zzgs.zzas(zzy2);
                            i12 = zzy2;
                            i11 = zzaq12;
                            i9 = i11 + i13 + i12;
                            i8 = i28 + i9;
                        }
                        i5 = i8;
                        break;
                    case 48:
                        int zzu2 = zzjh.zzu((List) unsafe2.getObject(t, j2));
                        i8 = i28;
                        if (zzu2 > 0) {
                            if (this.zzvz) {
                                unsafe2.putInt(t, i3, zzu2);
                            }
                            int zzaq13 = zzgs.zzaq(i33);
                            i13 = zzgs.zzas(zzu2);
                            i12 = zzu2;
                            i11 = zzaq13;
                            i9 = i11 + i13 + i12;
                            i8 = i28 + i9;
                        }
                        i5 = i8;
                        break;
                    case 49:
                        zzc = zzjh.zzd(i33, (List) unsafe2.getObject(t, j2), zzbe(i27));
                        i8 = i28 + zzc;
                        i5 = i8;
                        break;
                    case 50:
                        zzc = this.zzwh.zzc(i33, unsafe2.getObject(t, j2), zzbf(i27));
                        i8 = i28 + zzc;
                        i5 = i8;
                        break;
                    case 51:
                        i8 = i28;
                        if (zza((zziu<T>) t, i33, i27)) {
                            zzc = zzgs.zzb(i33, (double) FirebaseRemoteConfig.DEFAULT_VALUE_FOR_DOUBLE);
                            i8 = i28 + zzc;
                        }
                        i5 = i8;
                        break;
                    case 52:
                        i8 = i28;
                        if (zza((zziu<T>) t, i33, i27)) {
                            i9 = zzgs.zzb(i33, (float) FlexItem.FLEX_GROW_DEFAULT);
                            i8 = i28 + i9;
                        }
                        i5 = i8;
                        break;
                    case 53:
                        i8 = i28;
                        if (zza((zziu<T>) t, i33, i27)) {
                            zzc = zzgs.zzd(i33, zzi(t, j2));
                            i8 = i28 + zzc;
                        }
                        i5 = i8;
                        break;
                    case 54:
                        i8 = i28;
                        if (zza((zziu<T>) t, i33, i27)) {
                            zzc = zzgs.zze(i33, zzi(t, j2));
                            i8 = i28 + zzc;
                        }
                        i5 = i8;
                        break;
                    case 55:
                        i8 = i28;
                        if (zza((zziu<T>) t, i33, i27)) {
                            zzc = zzgs.zzh(i33, zzh(t, j2));
                            i8 = i28 + zzc;
                        }
                        i5 = i8;
                        break;
                    case 56:
                        i8 = i28;
                        if (zza((zziu<T>) t, i33, i27)) {
                            zzc = zzgs.zzg(i33, 0L);
                            i8 = i28 + zzc;
                        }
                        i5 = i8;
                        break;
                    case 57:
                        i8 = i28;
                        if (zza((zziu<T>) t, i33, i27)) {
                            i9 = zzgs.zzk(i33, 0);
                            i8 = i28 + i9;
                        }
                        i5 = i8;
                        break;
                    case 58:
                        i8 = i28;
                        if (zza((zziu<T>) t, i33, i27)) {
                            i9 = zzgs.zzd(i33, true);
                            i8 = i28 + i9;
                        }
                        i5 = i8;
                        break;
                    case 59:
                        i8 = i28;
                        if (zza((zziu<T>) t, i33, i27)) {
                            Object object2 = unsafe2.getObject(t, j2);
                            zzc = object2 instanceof zzfx ? zzgs.zzc(i33, (zzfx) object2) : zzgs.zzc(i33, (String) object2);
                            i8 = i28 + zzc;
                        }
                        i5 = i8;
                        break;
                    case 60:
                        i8 = i28;
                        if (zza((zziu<T>) t, i33, i27)) {
                            zzc = zzjh.zzc(i33, unsafe2.getObject(t, j2), zzbe(i27));
                            i8 = i28 + zzc;
                        }
                        i5 = i8;
                        break;
                    case 61:
                        i8 = i28;
                        if (zza((zziu<T>) t, i33, i27)) {
                            zzc = zzgs.zzc(i33, (zzfx) unsafe2.getObject(t, j2));
                            i8 = i28 + zzc;
                        }
                        i5 = i8;
                        break;
                    case 62:
                        i8 = i28;
                        if (zza((zziu<T>) t, i33, i27)) {
                            zzc = zzgs.zzi(i33, zzh(t, j2));
                            i8 = i28 + zzc;
                        }
                        i5 = i8;
                        break;
                    case 63:
                        i8 = i28;
                        if (zza((zziu<T>) t, i33, i27)) {
                            zzc = zzgs.zzm(i33, zzh(t, j2));
                            i8 = i28 + zzc;
                        }
                        i5 = i8;
                        break;
                    case 64:
                        i8 = i28;
                        if (zza((zziu<T>) t, i33, i27)) {
                            i9 = zzgs.zzl(i33, 0);
                            i8 = i28 + i9;
                        }
                        i5 = i8;
                        break;
                    case 65:
                        i8 = i28;
                        if (zza((zziu<T>) t, i33, i27)) {
                            zzc = zzgs.zzh(i33, 0L);
                            i8 = i28 + zzc;
                        }
                        i5 = i8;
                        break;
                    case 66:
                        i8 = i28;
                        if (zza((zziu<T>) t, i33, i27)) {
                            zzc = zzgs.zzj(i33, zzh(t, j2));
                            i8 = i28 + zzc;
                        }
                        i5 = i8;
                        break;
                    case 67:
                        i8 = i28;
                        if (zza((zziu<T>) t, i33, i27)) {
                            zzc = zzgs.zzf(i33, zzi(t, j2));
                            i8 = i28 + zzc;
                        }
                        i5 = i8;
                        break;
                    case 68:
                        i8 = i28;
                        if (zza((zziu<T>) t, i33, i27)) {
                            zzc = zzgs.zzc(i33, (zziq) unsafe2.getObject(t, j2), zzbe(i27));
                            i8 = i28 + zzc;
                        }
                        i5 = i8;
                        break;
                    default:
                        i8 = i28;
                        i5 = i8;
                        break;
                }
                i28 = i5;
                i27 += 3;
                i19 = 0;
                i26 = i4;
                i18 = 1;
                i29 = i2;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.firebase_remote_config.zzjf
    public final boolean zzy(T t) {
        int i;
        int i2;
        int i3 = 0;
        int i4 = -1;
        int i5 = 0;
        while (i5 < this.zzwb) {
            int i6 = this.zzwa[i5];
            int i7 = this.zzvr[i6];
            int zzbh = zzbh(i6);
            if (!this.zzvy) {
                int i8 = this.zzvr[i6 + 2];
                int i9 = i8 & 1048575;
                int i10 = 1 << (i8 >>> 20);
                i2 = i4;
                i = i10;
                if (i9 != i4) {
                    i3 = zzvq.getInt(t, i9);
                    i2 = i9;
                    i = i10;
                }
            } else {
                i = 0;
                i2 = i4;
            }
            if (((268435456 & zzbh) != 0) && !zza((zziu<T>) t, i6, i3, i)) {
                return false;
            }
            int i11 = (267386880 & zzbh) >>> 20;
            if (i11 != 9 && i11 != 17) {
                if (i11 != 27) {
                    if (i11 == 60 || i11 == 68) {
                        if (zza((zziu<T>) t, i7, i6) && !zza(t, zzbh, zzbe(i6))) {
                            return false;
                        }
                    } else if (i11 != 49) {
                        if (i11 != 50) {
                            continue;
                        } else {
                            Map<?, ?> zzq = this.zzwh.zzq(zzkd.zzp(t, zzbh & 1048575));
                            boolean z = true;
                            if (!zzq.isEmpty()) {
                                z = true;
                                if (this.zzwh.zzu(zzbf(i6)).zzvk.zzjj() == zzkr.MESSAGE) {
                                    zzjf<T> zzjfVar = null;
                                    Iterator<?> it = zzq.values().iterator();
                                    while (true) {
                                        z = true;
                                        if (!it.hasNext()) {
                                            break;
                                        }
                                        Object next = it.next();
                                        zzjf<T> zzjfVar2 = zzjfVar;
                                        if (zzjfVar == null) {
                                            zzjfVar2 = zzjb.zzii().zzk(next.getClass());
                                        }
                                        zzjfVar = zzjfVar2;
                                        if (!zzjfVar2.zzy(next)) {
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
                List list = (List) zzkd.zzp(t, zzbh & 1048575);
                boolean z2 = true;
                if (!list.isEmpty()) {
                    zzjf zzbe = zzbe(i6);
                    int i12 = 0;
                    while (true) {
                        z2 = true;
                        if (i12 >= list.size()) {
                            break;
                        } else if (!zzbe.zzy(list.get(i12))) {
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
            } else if (zza((zziu<T>) t, i6, i3, i) && !zza(t, zzbh, zzbe(i6))) {
                return false;
            }
            i5++;
            i4 = i2;
        }
        return !this.zzvw || this.zzwg.zzk(t).isInitialized();
    }
}
