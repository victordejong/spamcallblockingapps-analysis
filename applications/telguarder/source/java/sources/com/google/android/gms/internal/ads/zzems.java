package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import sun.misc.Unsafe;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzems.class */
public final class zzems<T> implements zzenj<T> {
    private final int[] zzisr;
    private final Object[] zziss;
    private final int zzist;
    private final int zzisu;
    private final zzemo zzisv;
    private final boolean zzisw;
    private final boolean zzisx;
    private final boolean zzisy;
    private final boolean zzisz;
    private final int[] zzita;
    private final int zzitb;
    private final int zzitc;
    private final zzemw zzitd;
    private final zzely zzite;
    private final zzeob<?, ?> zzitf;
    private final zzekq<?> zzitg;
    private final zzemh zzith;
    private static final int[] zzisq = new int[0];
    private static final Unsafe zzhzj = zzeoh.zzble();

    private zzems(int[] iArr, Object[] objArr, int i, int i2, zzemo zzemoVar, boolean z, boolean z2, int[] iArr2, int i3, int i4, zzemw zzemwVar, zzely zzelyVar, zzeob<?, ?> zzeobVar, zzekq<?> zzekqVar, zzemh zzemhVar) {
        this.zzisr = iArr;
        this.zziss = objArr;
        this.zzist = i;
        this.zzisu = i2;
        this.zzisx = zzemoVar instanceof zzelb;
        this.zzisy = z;
        this.zzisw = zzekqVar != null && zzekqVar.zzj(zzemoVar);
        this.zzisz = false;
        this.zzita = iArr2;
        this.zzitb = i3;
        this.zzitc = i4;
        this.zzitd = zzemwVar;
        this.zzite = zzelyVar;
        this.zzitf = zzeobVar;
        this.zzitg = zzekqVar;
        this.zzisv = zzemoVar;
        this.zzith = zzemhVar;
    }

    private static <UT, UB> int zza(zzeob<UT, UB> zzeobVar, T t) {
        return zzeobVar.zzau(zzeobVar.zzay(t));
    }

    private final int zza(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, zzejm zzejmVar) throws IOException {
        Unsafe unsafe = zzhzj;
        long j2 = this.zzisr[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Double.valueOf(zzejn.zzj(bArr, i)));
                    i += 8;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 52:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Float.valueOf(zzejn.zzk(bArr, i)));
                    i += 4;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 53:
            case 54:
                if (i5 == 0) {
                    i = zzejn.zzb(bArr, i, zzejmVar);
                    unsafe.putObject(t, j, Long.valueOf(zzejmVar.zzilt));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 55:
            case 62:
                if (i5 == 0) {
                    i = zzejn.zza(bArr, i, zzejmVar);
                    unsafe.putObject(t, j, Integer.valueOf(zzejmVar.zzils));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 56:
            case 65:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Long.valueOf(zzejn.zzi(bArr, i)));
                    i += 8;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 57:
            case 64:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Integer.valueOf(zzejn.zzh(bArr, i)));
                    i += 4;
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 58:
                if (i5 == 0) {
                    i = zzejn.zzb(bArr, i, zzejmVar);
                    unsafe.putObject(t, j, Boolean.valueOf(zzejmVar.zzilt != 0));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 59:
                if (i5 == 2) {
                    i = zzejn.zza(bArr, i, zzejmVar);
                    int i9 = zzejmVar.zzils;
                    if (i9 == 0) {
                        unsafe.putObject(t, j, "");
                    } else if ((i6 & 536870912) != 0 && !zzeok.zzm(bArr, i, i + i9)) {
                        throw zzelo.zzbji();
                    } else {
                        unsafe.putObject(t, j, new String(bArr, i, i9, zzeld.UTF_8));
                        i += i9;
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 60:
                if (i5 == 2) {
                    i = zzejn.zza(zzhk(i8), bArr, i, i2, zzejmVar);
                    Object object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object == null) {
                        unsafe.putObject(t, j, zzejmVar.zzilu);
                    } else {
                        unsafe.putObject(t, j, zzeld.zze(object, zzejmVar.zzilu));
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 61:
                if (i5 == 2) {
                    i = zzejn.zze(bArr, i, zzejmVar);
                    unsafe.putObject(t, j, zzejmVar.zzilu);
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 63:
                if (i5 == 0) {
                    i = zzejn.zza(bArr, i, zzejmVar);
                    int i10 = zzejmVar.zzils;
                    zzeli zzhm = zzhm(i8);
                    if (zzhm != null && !zzhm.zzi(i10)) {
                        zzav(t).zzd(i3, Long.valueOf(i10));
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
                    i = zzejn.zza(bArr, i, zzejmVar);
                    unsafe.putObject(t, j, Integer.valueOf(zzekc.zzgh(zzejmVar.zzils)));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 67:
                if (i5 == 0) {
                    i = zzejn.zzb(bArr, i, zzejmVar);
                    unsafe.putObject(t, j, Long.valueOf(zzekc.zzfg(zzejmVar.zzilt)));
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 68:
                if (i5 == 3) {
                    i = zzejn.zza(zzhk(i8), bArr, i, i2, (i3 & (-8)) | 4, zzejmVar);
                    Object object2 = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object2 == null) {
                        unsafe.putObject(t, j, zzejmVar.zzilu);
                    } else {
                        unsafe.putObject(t, j, zzeld.zze(object2, zzejmVar.zzilu));
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
        }
        return i;
    }

    /* JADX WARN: Removed duplicated region for block: B:116:0x0459  */
    /* JADX WARN: Removed duplicated region for block: B:298:0x095d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:302:0x095a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:82:0x0370  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:113:0x044b -> B:114:0x0450). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:79:0x0360 -> B:80:0x0366). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zza(T r9, byte[] r10, int r11, int r12, int r13, int r14, int r15, int r16, long r17, int r19, long r20, com.google.android.gms.internal.ads.zzejm r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2399
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzems.zza(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, com.google.android.gms.internal.ads.zzejm):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v62, types: [int] */
    private final <K, V> int zza(T t, byte[] bArr, int i, int i2, int i3, long j, zzejm zzejmVar) throws IOException {
        Unsafe unsafe = zzhzj;
        Object zzhl = zzhl(i3);
        Object object = unsafe.getObject(t, j);
        Object obj = object;
        if (this.zzith.zzap(object)) {
            obj = this.zzith.zzar(zzhl);
            this.zzith.zzf(obj, object);
            unsafe.putObject(t, j, obj);
        }
        zzemf<?, ?> zzas = this.zzith.zzas(zzhl);
        Map<?, ?> zzan = this.zzith.zzan(obj);
        int zza = zzejn.zza(bArr, i, zzejmVar);
        int i4 = zzejmVar.zzils;
        if (i4 < 0 || i4 > i2 - zza) {
            throw zzelo.zzbja();
        }
        int i5 = i4 + zza;
        Object obj2 = zzas.zzisl;
        Object obj3 = zzas.zzclv;
        while (zza < i5) {
            int i6 = zza + 1;
            byte b = bArr[zza];
            int i7 = i6;
            byte b2 = b;
            if (b < 0) {
                i7 = zzejn.zza(b, bArr, i6, zzejmVar);
                b2 = zzejmVar.zzils;
            }
            int i8 = b2 >>> 3;
            int i9 = b2 & 7;
            if (i8 != 1) {
                if (i8 == 2 && i9 == zzas.zzism.zzblj()) {
                    zza = zza(bArr, i7, i2, zzas.zzism, zzas.zzclv.getClass(), zzejmVar);
                    obj3 = zzejmVar.zzilu;
                }
                zza = zzejn.zza(b2, bArr, i7, i2, zzejmVar);
            } else if (i9 == zzas.zzisk.zzblj()) {
                zza = zza(bArr, i7, i2, zzas.zzisk, (Class<?>) null, zzejmVar);
                obj2 = zzejmVar.zzilu;
            } else {
                zza = zzejn.zza(b2, bArr, i7, i2, zzejmVar);
            }
        }
        if (zza != i5) {
            throw zzelo.zzbjh();
        }
        zzan.put(obj2, obj3);
        return i5;
    }

    private static int zza(byte[] bArr, int i, int i2, zzeos zzeosVar, Class<?> cls, zzejm zzejmVar) throws IOException {
        int i3;
        switch (zzemr.zzimy[zzeosVar.ordinal()]) {
            case 1:
                i3 = zzejn.zzb(bArr, i, zzejmVar);
                zzejmVar.zzilu = Boolean.valueOf(zzejmVar.zzilt != 0);
                break;
            case 2:
                i3 = zzejn.zze(bArr, i, zzejmVar);
                break;
            case 3:
                zzejmVar.zzilu = Double.valueOf(zzejn.zzj(bArr, i));
                i3 = i + 8;
                break;
            case 4:
            case 5:
                zzejmVar.zzilu = Integer.valueOf(zzejn.zzh(bArr, i));
                i3 = i + 4;
                break;
            case 6:
            case 7:
                zzejmVar.zzilu = Long.valueOf(zzejn.zzi(bArr, i));
                i3 = i + 8;
                break;
            case 8:
                zzejmVar.zzilu = Float.valueOf(zzejn.zzk(bArr, i));
                i3 = i + 4;
                break;
            case 9:
            case 10:
            case 11:
                i3 = zzejn.zza(bArr, i, zzejmVar);
                zzejmVar.zzilu = Integer.valueOf(zzejmVar.zzils);
                break;
            case 12:
            case 13:
                i3 = zzejn.zzb(bArr, i, zzejmVar);
                zzejmVar.zzilu = Long.valueOf(zzejmVar.zzilt);
                break;
            case 14:
                i3 = zzejn.zza(zzenc.zzbkf().zzh(cls), bArr, i, i2, zzejmVar);
                break;
            case 15:
                i3 = zzejn.zza(bArr, i, zzejmVar);
                zzejmVar.zzilu = Integer.valueOf(zzekc.zzgh(zzejmVar.zzils));
                break;
            case 16:
                i3 = zzejn.zzb(bArr, i, zzejmVar);
                zzejmVar.zzilu = Long.valueOf(zzekc.zzfg(zzejmVar.zzilt));
                break;
            case 17:
                i3 = zzejn.zzd(bArr, i, zzejmVar);
                break;
            default:
                throw new RuntimeException("unsupported field type.");
        }
        return i3;
    }

    /* JADX WARN: Removed duplicated region for block: B:179:0x0944  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> com.google.android.gms.internal.ads.zzems<T> zza(java.lang.Class<T> r18, com.google.android.gms.internal.ads.zzemm r19, com.google.android.gms.internal.ads.zzemw r20, com.google.android.gms.internal.ads.zzely r21, com.google.android.gms.internal.ads.zzeob<?, ?> r22, com.google.android.gms.internal.ads.zzekq<?> r23, com.google.android.gms.internal.ads.zzemh r24) {
        /*
            Method dump skipped, instructions count: 2583
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzems.zza(java.lang.Class, com.google.android.gms.internal.ads.zzemm, com.google.android.gms.internal.ads.zzemw, com.google.android.gms.internal.ads.zzely, com.google.android.gms.internal.ads.zzeob, com.google.android.gms.internal.ads.zzekq, com.google.android.gms.internal.ads.zzemh):com.google.android.gms.internal.ads.zzems");
    }

    private final <K, V, UT, UB> UB zza(int i, int i2, Map<K, V> map, zzeli zzeliVar, UB ub, zzeob<UT, UB> zzeobVar) {
        zzemf<?, ?> zzas = this.zzith.zzas(zzhl(i));
        Iterator<Map.Entry<K, V>> it = map.entrySet().iterator();
        while (it.hasNext()) {
            Map.Entry<K, V> next = it.next();
            if (!zzeliVar.zzi(((Integer) next.getValue()).intValue())) {
                UB ub2 = ub;
                if (ub == null) {
                    ub2 = zzeobVar.zzbky();
                }
                zzejz zzgb = zzejr.zzgb(zzemg.zza(zzas, next.getKey(), next.getValue()));
                try {
                    zzemg.zza(zzgb.zzbgr(), zzas, next.getKey(), next.getValue());
                    zzeobVar.zza((zzeob<UT, UB>) ub2, i2, zzgb.zzbgq());
                    it.remove();
                    ub = ub2;
                } catch (IOException e) {
                    throw new RuntimeException(e);
                }
            }
        }
        return ub;
    }

    private final <UT, UB> UB zza(Object obj, int i, UB ub, zzeob<UT, UB> zzeobVar) {
        zzeli zzhm;
        int i2 = this.zzisr[i];
        Object zzp = zzeoh.zzp(obj, zzhn(i) & 1048575);
        if (zzp != null && (zzhm = zzhm(i)) != null) {
            return (UB) zza(i, i2, this.zzith.zzan(zzp), zzhm, (zzeli) ub, (zzeob<UT, zzeli>) zzeobVar);
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

    private static void zza(int i, Object obj, zzeoy zzeoyVar) throws IOException {
        if (obj instanceof String) {
            zzeoyVar.zzi(i, (String) obj);
        } else {
            zzeoyVar.zza(i, (zzejr) obj);
        }
    }

    private static <UT, UB> void zza(zzeob<UT, UB> zzeobVar, T t, zzeoy zzeoyVar) throws IOException {
        zzeobVar.zza((zzeob<UT, UB>) zzeobVar.zzay(t), zzeoyVar);
    }

    private final <K, V> void zza(zzeoy zzeoyVar, int i, Object obj, int i2) throws IOException {
        if (obj != null) {
            zzeoyVar.zza(i, this.zzith.zzas(zzhl(i2)), this.zzith.zzao(obj));
        }
    }

    private final void zza(Object obj, int i, zzend zzendVar) throws IOException {
        if (zzhp(i)) {
            zzeoh.zza(obj, i & 1048575, zzendVar.zzbgz());
        } else if (this.zzisx) {
            zzeoh.zza(obj, i & 1048575, zzendVar.readString());
        } else {
            zzeoh.zza(obj, i & 1048575, zzendVar.zzbha());
        }
    }

    private final void zza(T t, T t2, int i) {
        long zzhn = zzhn(i) & 1048575;
        if (!zze((zzems<T>) t2, i)) {
            return;
        }
        Object zzp = zzeoh.zzp(t, zzhn);
        Object zzp2 = zzeoh.zzp(t2, zzhn);
        if (zzp != null && zzp2 != null) {
            zzeoh.zza(t, zzhn, zzeld.zze(zzp, zzp2));
            zzf((zzems<T>) t, i);
        } else if (zzp2 == null) {
        } else {
            zzeoh.zza(t, zzhn, zzp2);
            zzf((zzems<T>) t, i);
        }
    }

    private final boolean zza(T t, int i, int i2) {
        return zzeoh.zzk(t, (long) (zzho(i2) & 1048575)) == i;
    }

    private final boolean zza(T t, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? zze((zzems<T>) t, i) : (i3 & i4) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean zza(Object obj, int i, zzenj zzenjVar) {
        return zzenjVar.zzaw(zzeoh.zzp(obj, i & 1048575));
    }

    private final int zzao(int i, int i2) {
        if (i < this.zzist || i > this.zzisu) {
            return -1;
        }
        return zzap(i, i2);
    }

    private final int zzap(int i, int i2) {
        int length = (this.zzisr.length / 3) - 1;
        while (i2 <= length) {
            int i3 = (length + i2) >>> 1;
            int i4 = i3 * 3;
            int i5 = this.zzisr[i4];
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

    private static zzeoe zzav(Object obj) {
        zzelb zzelbVar = (zzelb) obj;
        zzeoe zzeoeVar = zzelbVar.zziqk;
        zzeoe zzeoeVar2 = zzeoeVar;
        if (zzeoeVar == zzeoe.zzbkz()) {
            zzeoeVar2 = zzeoe.zzbla();
            zzelbVar.zziqk = zzeoeVar2;
        }
        return zzeoeVar2;
    }

    private final void zzb(T t, int i, int i2) {
        zzeoh.zzb(t, zzho(i2) & 1048575, i);
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0053  */
    /* JADX WARN: Removed duplicated region for block: B:172:0x098f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final void zzb(T r9, com.google.android.gms.internal.ads.zzeoy r10) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2498
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzems.zzb(java.lang.Object, com.google.android.gms.internal.ads.zzeoy):void");
    }

    private final void zzb(T t, T t2, int i) {
        int zzhn = zzhn(i);
        int i2 = this.zzisr[i];
        long j = zzhn & 1048575;
        if (!zza((zzems<T>) t2, i2, i)) {
            return;
        }
        Object obj = null;
        if (zza((zzems<T>) t, i2, i)) {
            obj = zzeoh.zzp(t, j);
        }
        Object zzp = zzeoh.zzp(t2, j);
        if (obj != null && zzp != null) {
            zzeoh.zza(t, j, zzeld.zze(obj, zzp));
            zzb((zzems<T>) t, i2, i);
        } else if (zzp == null) {
        } else {
            zzeoh.zza(t, j, zzp);
            zzb((zzems<T>) t, i2, i);
        }
    }

    private final boolean zzc(T t, T t2, int i) {
        return zze((zzems<T>) t, i) == zze((zzems<T>) t2, i);
    }

    private static List<?> zze(Object obj, long j) {
        return (List) zzeoh.zzp(obj, j);
    }

    private final boolean zze(T t, int i) {
        int zzho = zzho(i);
        long j = zzho & 1048575;
        if (j != 1048575) {
            return (zzeoh.zzk(t, j) & (1 << (zzho >>> 20))) != 0;
        }
        int zzhn = zzhn(i);
        long j2 = zzhn & 1048575;
        switch ((zzhn & 267386880) >>> 20) {
            case 0:
                return zzeoh.zzo(t, j2) != 0.0d;
            case 1:
                return zzeoh.zzn(t, j2) != 0.0f;
            case 2:
                return zzeoh.zzl(t, j2) != 0;
            case 3:
                return zzeoh.zzl(t, j2) != 0;
            case 4:
                return zzeoh.zzk(t, j2) != 0;
            case 5:
                return zzeoh.zzl(t, j2) != 0;
            case 6:
                return zzeoh.zzk(t, j2) != 0;
            case 7:
                return zzeoh.zzm(t, j2);
            case 8:
                Object zzp = zzeoh.zzp(t, j2);
                if (zzp instanceof String) {
                    return !((String) zzp).isEmpty();
                } else if (!(zzp instanceof zzejr)) {
                    throw new IllegalArgumentException();
                } else {
                    return !zzejr.zzilz.equals(zzp);
                }
            case 9:
                return zzeoh.zzp(t, j2) != null;
            case 10:
                return !zzejr.zzilz.equals(zzeoh.zzp(t, j2));
            case 11:
                return zzeoh.zzk(t, j2) != 0;
            case 12:
                return zzeoh.zzk(t, j2) != 0;
            case 13:
                return zzeoh.zzk(t, j2) != 0;
            case 14:
                return zzeoh.zzl(t, j2) != 0;
            case 15:
                return zzeoh.zzk(t, j2) != 0;
            case 16:
                return zzeoh.zzl(t, j2) != 0;
            case 17:
                return zzeoh.zzp(t, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private static <T> double zzf(T t, long j) {
        return ((Double) zzeoh.zzp(t, j)).doubleValue();
    }

    private final void zzf(T t, int i) {
        int zzho = zzho(i);
        long j = 1048575 & zzho;
        if (j == 1048575) {
            return;
        }
        zzeoh.zzb(t, j, (1 << (zzho >>> 20)) | zzeoh.zzk(t, j));
    }

    private static <T> float zzg(T t, long j) {
        return ((Float) zzeoh.zzp(t, j)).floatValue();
    }

    private static <T> int zzh(T t, long j) {
        return ((Integer) zzeoh.zzp(t, j)).intValue();
    }

    private final zzenj zzhk(int i) {
        int i2 = (i / 3) << 1;
        zzenj zzenjVar = (zzenj) this.zziss[i2];
        if (zzenjVar != null) {
            return zzenjVar;
        }
        zzenj<T> zzh = zzenc.zzbkf().zzh((Class) this.zziss[i2 + 1]);
        this.zziss[i2] = zzh;
        return zzh;
    }

    private final Object zzhl(int i) {
        return this.zziss[(i / 3) << 1];
    }

    private final zzeli zzhm(int i) {
        return (zzeli) this.zziss[((i / 3) << 1) + 1];
    }

    private final int zzhn(int i) {
        return this.zzisr[i + 1];
    }

    private final int zzho(int i) {
        return this.zzisr[i + 2];
    }

    private static boolean zzhp(int i) {
        return (i & 536870912) != 0;
    }

    private final int zzhq(int i) {
        if (i < this.zzist || i > this.zzisu) {
            return -1;
        }
        return zzap(i, 0);
    }

    private static <T> long zzi(T t, long j) {
        return ((Long) zzeoh.zzp(t, j)).longValue();
    }

    private static <T> boolean zzj(T t, long j) {
        return ((Boolean) zzeoh.zzp(t, j)).booleanValue();
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0179, code lost:
        if (com.google.android.gms.internal.ads.zzenl.zzh(com.google.android.gms.internal.ads.zzeoh.zzp(r7, r0), com.google.android.gms.internal.ads.zzeoh.zzp(r8, r0)) != false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x01c1, code lost:
        if (com.google.android.gms.internal.ads.zzenl.zzh(com.google.android.gms.internal.ads.zzeoh.zzp(r7, r0), com.google.android.gms.internal.ads.zzeoh.zzp(r8, r0)) != false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x01df, code lost:
        if (com.google.android.gms.internal.ads.zzeoh.zzl(r7, r0) == com.google.android.gms.internal.ads.zzeoh.zzl(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x01fc, code lost:
        if (com.google.android.gms.internal.ads.zzeoh.zzk(r7, r0) == com.google.android.gms.internal.ads.zzeoh.zzk(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x021a, code lost:
        if (com.google.android.gms.internal.ads.zzeoh.zzl(r7, r0) == com.google.android.gms.internal.ads.zzeoh.zzl(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0237, code lost:
        if (com.google.android.gms.internal.ads.zzeoh.zzk(r7, r0) == com.google.android.gms.internal.ads.zzeoh.zzk(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0254, code lost:
        if (com.google.android.gms.internal.ads.zzeoh.zzk(r7, r0) == com.google.android.gms.internal.ads.zzeoh.zzk(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0271, code lost:
        if (com.google.android.gms.internal.ads.zzeoh.zzk(r7, r0) == com.google.android.gms.internal.ads.zzeoh.zzk(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0291, code lost:
        if (com.google.android.gms.internal.ads.zzenl.zzh(com.google.android.gms.internal.ads.zzeoh.zzp(r7, r0), com.google.android.gms.internal.ads.zzeoh.zzp(r8, r0)) != false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x02b1, code lost:
        if (com.google.android.gms.internal.ads.zzenl.zzh(com.google.android.gms.internal.ads.zzeoh.zzp(r7, r0), com.google.android.gms.internal.ads.zzeoh.zzp(r8, r0)) != false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x02d1, code lost:
        if (com.google.android.gms.internal.ads.zzenl.zzh(com.google.android.gms.internal.ads.zzeoh.zzp(r7, r0), com.google.android.gms.internal.ads.zzeoh.zzp(r8, r0)) != false) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x02ee, code lost:
        if (com.google.android.gms.internal.ads.zzeoh.zzm(r7, r0) == com.google.android.gms.internal.ads.zzeoh.zzm(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x030b, code lost:
        if (com.google.android.gms.internal.ads.zzeoh.zzk(r7, r0) == com.google.android.gms.internal.ads.zzeoh.zzk(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x0329, code lost:
        if (com.google.android.gms.internal.ads.zzeoh.zzl(r7, r0) == com.google.android.gms.internal.ads.zzeoh.zzl(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0346, code lost:
        if (com.google.android.gms.internal.ads.zzeoh.zzk(r7, r0) == com.google.android.gms.internal.ads.zzeoh.zzk(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0364, code lost:
        if (com.google.android.gms.internal.ads.zzeoh.zzl(r7, r0) == com.google.android.gms.internal.ads.zzeoh.zzl(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0382, code lost:
        if (com.google.android.gms.internal.ads.zzeoh.zzl(r7, r0) == com.google.android.gms.internal.ads.zzeoh.zzl(r8, r0)) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x03a5, code lost:
        if (java.lang.Float.floatToIntBits(com.google.android.gms.internal.ads.zzeoh.zzn(r7, r0)) == java.lang.Float.floatToIntBits(com.google.android.gms.internal.ads.zzeoh.zzn(r8, r0))) goto L86;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x03c9, code lost:
        if (java.lang.Double.doubleToLongBits(com.google.android.gms.internal.ads.zzeoh.zzo(r7, r0)) == java.lang.Double.doubleToLongBits(com.google.android.gms.internal.ads.zzeoh.zzo(r8, r0))) goto L86;
     */
    @Override // com.google.android.gms.internal.ads.zzenj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean equals(T r7, T r8) {
        /*
            Method dump skipped, instructions count: 1041
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzems.equals(java.lang.Object, java.lang.Object):boolean");
    }

    @Override // com.google.android.gms.internal.ads.zzenj
    public final int hashCode(T t) {
        int i;
        int i2;
        int i3;
        int length = this.zzisr.length;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int i6 = i5;
            if (i4 >= length) {
                int hashCode = (i6 * 53) + this.zzitf.zzay(t).hashCode();
                int i7 = hashCode;
                if (this.zzisw) {
                    i7 = (hashCode * 53) + this.zzitg.zzai(t).hashCode();
                }
                return i7;
            }
            int zzhn = zzhn(i4);
            int i8 = this.zzisr[i4];
            long j = 1048575 & zzhn;
            int i9 = 37;
            switch ((zzhn & 267386880) >>> 20) {
                case 0:
                    i2 = i6 * 53;
                    i3 = zzeld.zzfq(Double.doubleToLongBits(zzeoh.zzo(t, j)));
                    i = i2 + i3;
                    break;
                case 1:
                    i2 = i6 * 53;
                    i3 = Float.floatToIntBits(zzeoh.zzn(t, j));
                    i = i2 + i3;
                    break;
                case 2:
                    i2 = i6 * 53;
                    i3 = zzeld.zzfq(zzeoh.zzl(t, j));
                    i = i2 + i3;
                    break;
                case 3:
                    i2 = i6 * 53;
                    i3 = zzeld.zzfq(zzeoh.zzl(t, j));
                    i = i2 + i3;
                    break;
                case 4:
                    i2 = i6 * 53;
                    i3 = zzeoh.zzk(t, j);
                    i = i2 + i3;
                    break;
                case 5:
                    i2 = i6 * 53;
                    i3 = zzeld.zzfq(zzeoh.zzl(t, j));
                    i = i2 + i3;
                    break;
                case 6:
                    i2 = i6 * 53;
                    i3 = zzeoh.zzk(t, j);
                    i = i2 + i3;
                    break;
                case 7:
                    i2 = i6 * 53;
                    i3 = zzeld.zzbt(zzeoh.zzm(t, j));
                    i = i2 + i3;
                    break;
                case 8:
                    i2 = i6 * 53;
                    i3 = ((String) zzeoh.zzp(t, j)).hashCode();
                    i = i2 + i3;
                    break;
                case 9:
                    Object zzp = zzeoh.zzp(t, j);
                    if (zzp != null) {
                        i9 = zzp.hashCode();
                    }
                    i = (i6 * 53) + i9;
                    break;
                case 10:
                    i2 = i6 * 53;
                    i3 = zzeoh.zzp(t, j).hashCode();
                    i = i2 + i3;
                    break;
                case 11:
                    i2 = i6 * 53;
                    i3 = zzeoh.zzk(t, j);
                    i = i2 + i3;
                    break;
                case 12:
                    i2 = i6 * 53;
                    i3 = zzeoh.zzk(t, j);
                    i = i2 + i3;
                    break;
                case 13:
                    i2 = i6 * 53;
                    i3 = zzeoh.zzk(t, j);
                    i = i2 + i3;
                    break;
                case 14:
                    i2 = i6 * 53;
                    i3 = zzeld.zzfq(zzeoh.zzl(t, j));
                    i = i2 + i3;
                    break;
                case 15:
                    i2 = i6 * 53;
                    i3 = zzeoh.zzk(t, j);
                    i = i2 + i3;
                    break;
                case 16:
                    i2 = i6 * 53;
                    i3 = zzeld.zzfq(zzeoh.zzl(t, j));
                    i = i2 + i3;
                    break;
                case 17:
                    Object zzp2 = zzeoh.zzp(t, j);
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
                    i3 = zzeoh.zzp(t, j).hashCode();
                    i = i2 + i3;
                    break;
                case 50:
                    i2 = i6 * 53;
                    i3 = zzeoh.zzp(t, j).hashCode();
                    i = i2 + i3;
                    break;
                case 51:
                    i = i6;
                    if (!zza((zzems<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzeld.zzfq(Double.doubleToLongBits(zzf(t, j)));
                        i = i2 + i3;
                        break;
                    }
                case 52:
                    i = i6;
                    if (!zza((zzems<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = Float.floatToIntBits(zzg(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 53:
                    i = i6;
                    if (!zza((zzems<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzeld.zzfq(zzi(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 54:
                    i = i6;
                    if (!zza((zzems<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzeld.zzfq(zzi(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 55:
                    i = i6;
                    if (!zza((zzems<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzh(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 56:
                    i = i6;
                    if (!zza((zzems<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzeld.zzfq(zzi(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 57:
                    i = i6;
                    if (!zza((zzems<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzh(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 58:
                    i = i6;
                    if (!zza((zzems<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzeld.zzbt(zzj(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 59:
                    i = i6;
                    if (!zza((zzems<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = ((String) zzeoh.zzp(t, j)).hashCode();
                        i = i2 + i3;
                        break;
                    }
                case 60:
                    i = i6;
                    if (!zza((zzems<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzeoh.zzp(t, j).hashCode();
                        i = i2 + i3;
                        break;
                    }
                case 61:
                    i = i6;
                    if (!zza((zzems<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzeoh.zzp(t, j).hashCode();
                        i = i2 + i3;
                        break;
                    }
                case 62:
                    i = i6;
                    if (!zza((zzems<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzh(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 63:
                    i = i6;
                    if (!zza((zzems<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzh(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 64:
                    i = i6;
                    if (!zza((zzems<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzh(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 65:
                    i = i6;
                    if (!zza((zzems<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzeld.zzfq(zzi(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 66:
                    i = i6;
                    if (!zza((zzems<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzh(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 67:
                    i = i6;
                    if (!zza((zzems<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzeld.zzfq(zzi(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 68:
                    i = i6;
                    if (!zza((zzems<T>) t, i8, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzeoh.zzp(t, j).hashCode();
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

    @Override // com.google.android.gms.internal.ads.zzenj
    public final T newInstance() {
        return (T) this.zzitd.newInstance(this.zzisv);
    }

    /* JADX WARN: Code restructure failed: missing block: B:145:0x077f, code lost:
        if (r33 == 1048575) goto L147;
     */
    /* JADX WARN: Code restructure failed: missing block: B:146:0x0782, code lost:
        r28.putInt(r17, r33, r29);
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x078d, code lost:
        r22 = null;
        r19 = r18.zzitb;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x079a, code lost:
        if (r19 >= r18.zzitc) goto L237;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x079d, code lost:
        r22 = (com.google.android.gms.internal.ads.zzeoe) r18.zza((java.lang.Object) r17, r18.zzita[r19], (int) r22, (com.google.android.gms.internal.ads.zzeob<UT, int>) r18.zzitf);
        r19 = r19 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x07bb, code lost:
        if (r22 == null) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x07be, code lost:
        r18.zzitf.zzj(r17, r22);
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x07ca, code lost:
        if (r21 != 0) goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x07d1, code lost:
        if (r32 != r20) goto L158;
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x07da, code lost:
        throw com.google.android.gms.internal.ads.zzelo.zzbjh();
     */
    /* JADX WARN: Code restructure failed: missing block: B:161:0x07df, code lost:
        if (r32 > r20) goto L166;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x07e6, code lost:
        if (r31 != r21) goto L166;
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x07eb, code lost:
        return r32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x07ef, code lost:
        throw com.google.android.gms.internal.ads.zzelo.zzbjh();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zza(T r17, byte[] r18, int r19, int r20, int r21, com.google.android.gms.internal.ads.zzejm r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2032
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzems.zza(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.ads.zzejm):int");
    }

    @Override // com.google.android.gms.internal.ads.zzenj
    public final void zza(T t, zzend zzendVar, zzeko zzekoVar) throws IOException {
        Object obj;
        Objects.requireNonNull(zzekoVar);
        zzeob zzeobVar = this.zzitf;
        zzekq<?> zzekqVar = this.zzitg;
        zzeku<?> zzekuVar = null;
        Object obj2 = null;
        while (true) {
            Object obj3 = obj2;
            try {
                int zzbhq = zzendVar.zzbhq();
                Object obj4 = obj2;
                int zzhq = zzhq(zzbhq);
                if (zzhq >= 0) {
                    int zzhn = zzhn(zzhq);
                    switch ((267386880 & zzhn) >>> 20) {
                        case 0:
                            zzeoh.zza(t, zzhn & 1048575, zzendVar.readDouble());
                            Object obj5 = obj2;
                            zzf((zzems<T>) t, zzhq);
                            continue;
                        case 1:
                            zzeoh.zza((Object) t, zzhn & 1048575, zzendVar.readFloat());
                            Object obj6 = obj2;
                            zzf((zzems<T>) t, zzhq);
                            continue;
                        case 2:
                            zzeoh.zza((Object) t, zzhn & 1048575, zzendVar.zzbgu());
                            Object obj7 = obj2;
                            zzf((zzems<T>) t, zzhq);
                            continue;
                        case 3:
                            zzeoh.zza((Object) t, zzhn & 1048575, zzendVar.zzbgt());
                            Object obj8 = obj2;
                            zzf((zzems<T>) t, zzhq);
                            continue;
                        case 4:
                            zzeoh.zzb(t, zzhn & 1048575, zzendVar.zzbgv());
                            Object obj9 = obj2;
                            zzf((zzems<T>) t, zzhq);
                            continue;
                        case 5:
                            zzeoh.zza((Object) t, zzhn & 1048575, zzendVar.zzbgw());
                            Object obj10 = obj2;
                            zzf((zzems<T>) t, zzhq);
                            continue;
                        case 6:
                            zzeoh.zzb(t, zzhn & 1048575, zzendVar.zzbgx());
                            Object obj11 = obj2;
                            zzf((zzems<T>) t, zzhq);
                            continue;
                        case 7:
                            zzeoh.zza(t, zzhn & 1048575, zzendVar.zzbgy());
                            Object obj12 = obj2;
                            zzf((zzems<T>) t, zzhq);
                            continue;
                        case 8:
                            zza(t, zzhn, zzendVar);
                            Object obj13 = obj2;
                            zzf((zzems<T>) t, zzhq);
                            continue;
                        case 9:
                            if (!zze((zzems<T>) t, zzhq)) {
                                zzeoh.zza(t, zzhn & 1048575, zzendVar.zza(zzhk(zzhq), zzekoVar));
                                Object obj14 = obj2;
                                zzf((zzems<T>) t, zzhq);
                                break;
                            } else {
                                long j = zzhn & 1048575;
                                zzeoh.zza(t, j, zzeld.zze(zzeoh.zzp(t, j), zzendVar.zza(zzhk(zzhq), zzekoVar)));
                                continue;
                            }
                        case 10:
                            zzeoh.zza(t, zzhn & 1048575, zzendVar.zzbha());
                            Object obj15 = obj2;
                            zzf((zzems<T>) t, zzhq);
                            continue;
                        case 11:
                            zzeoh.zzb(t, zzhn & 1048575, zzendVar.zzbhb());
                            Object obj16 = obj2;
                            zzf((zzems<T>) t, zzhq);
                            continue;
                        case 12:
                            int zzbhc = zzendVar.zzbhc();
                            Object obj17 = obj2;
                            zzeli zzhm = zzhm(zzhq);
                            if (zzhm != null && !zzhm.zzi(zzbhc)) {
                                obj2 = zzenl.zza(zzbhq, zzbhc, obj2, zzeobVar);
                                continue;
                            }
                            zzeoh.zzb(t, zzhn & 1048575, zzbhc);
                            Object obj18 = obj2;
                            zzf((zzems<T>) t, zzhq);
                            break;
                        case 13:
                            zzeoh.zzb(t, zzhn & 1048575, zzendVar.zzbhd());
                            Object obj19 = obj2;
                            zzf((zzems<T>) t, zzhq);
                            continue;
                        case 14:
                            zzeoh.zza((Object) t, zzhn & 1048575, zzendVar.zzbhe());
                            Object obj20 = obj2;
                            zzf((zzems<T>) t, zzhq);
                            continue;
                        case 15:
                            zzeoh.zzb(t, zzhn & 1048575, zzendVar.zzbhf());
                            Object obj21 = obj2;
                            zzf((zzems<T>) t, zzhq);
                            continue;
                        case 16:
                            zzeoh.zza((Object) t, zzhn & 1048575, zzendVar.zzbhg());
                            Object obj22 = obj2;
                            zzf((zzems<T>) t, zzhq);
                            continue;
                        case 17:
                            if (!zze((zzems<T>) t, zzhq)) {
                                zzeoh.zza(t, zzhn & 1048575, zzendVar.zzb(zzhk(zzhq), zzekoVar));
                                Object obj23 = obj2;
                                zzf((zzems<T>) t, zzhq);
                                break;
                            } else {
                                long j2 = zzhn & 1048575;
                                zzeoh.zza(t, j2, zzeld.zze(zzeoh.zzp(t, j2), zzendVar.zzb(zzhk(zzhq), zzekoVar)));
                                continue;
                            }
                        case 18:
                            zzendVar.zzm(this.zzite.zza(t, zzhn & 1048575));
                            continue;
                        case 19:
                            zzendVar.zzn(this.zzite.zza(t, zzhn & 1048575));
                            continue;
                        case 20:
                            zzendVar.zzp(this.zzite.zza(t, zzhn & 1048575));
                            continue;
                        case 21:
                            zzendVar.zzo(this.zzite.zza(t, zzhn & 1048575));
                            continue;
                        case 22:
                            zzendVar.zzq(this.zzite.zza(t, zzhn & 1048575));
                            continue;
                        case 23:
                            zzendVar.zzr(this.zzite.zza(t, zzhn & 1048575));
                            continue;
                        case 24:
                            zzendVar.zzs(this.zzite.zza(t, zzhn & 1048575));
                            continue;
                        case 25:
                            zzendVar.zzt(this.zzite.zza(t, zzhn & 1048575));
                            continue;
                        case 26:
                            if (!zzhp(zzhn)) {
                                zzendVar.readStringList(this.zzite.zza(t, zzhn & 1048575));
                                break;
                            } else {
                                Object obj24 = obj2;
                                zzendVar.zzu(this.zzite.zza(t, zzhn & 1048575));
                                continue;
                            }
                        case 27:
                            zzendVar.zza(this.zzite.zza(t, zzhn & 1048575), zzhk(zzhq), zzekoVar);
                            continue;
                        case 28:
                            zzendVar.zzv(this.zzite.zza(t, zzhn & 1048575));
                            continue;
                        case 29:
                            zzendVar.zzw(this.zzite.zza(t, zzhn & 1048575));
                            continue;
                        case 30:
                            List<Integer> zza = this.zzite.zza(t, zzhn & 1048575);
                            Object obj25 = obj2;
                            zzendVar.zzx(zza);
                            Object obj26 = obj2;
                            obj2 = zzenl.zza(zzbhq, zza, zzhm(zzhq), obj2, zzeobVar);
                            continue;
                        case 31:
                            zzendVar.zzy(this.zzite.zza(t, zzhn & 1048575));
                            continue;
                        case 32:
                            zzendVar.zzz(this.zzite.zza(t, zzhn & 1048575));
                            continue;
                        case 33:
                            zzendVar.zzaa(this.zzite.zza(t, zzhn & 1048575));
                            continue;
                        case 34:
                            zzendVar.zzab(this.zzite.zza(t, zzhn & 1048575));
                            continue;
                        case 35:
                            zzendVar.zzm(this.zzite.zza(t, zzhn & 1048575));
                            continue;
                        case 36:
                            zzendVar.zzn(this.zzite.zza(t, zzhn & 1048575));
                            continue;
                        case 37:
                            zzendVar.zzp(this.zzite.zza(t, zzhn & 1048575));
                            continue;
                        case 38:
                            zzendVar.zzo(this.zzite.zza(t, zzhn & 1048575));
                            continue;
                        case 39:
                            zzendVar.zzq(this.zzite.zza(t, zzhn & 1048575));
                            continue;
                        case 40:
                            zzendVar.zzr(this.zzite.zza(t, zzhn & 1048575));
                            continue;
                        case 41:
                            zzendVar.zzs(this.zzite.zza(t, zzhn & 1048575));
                            continue;
                        case 42:
                            zzendVar.zzt(this.zzite.zza(t, zzhn & 1048575));
                            continue;
                        case 43:
                            zzendVar.zzw(this.zzite.zza(t, zzhn & 1048575));
                            continue;
                        case 44:
                            List<Integer> zza2 = this.zzite.zza(t, zzhn & 1048575);
                            Object obj27 = obj2;
                            zzendVar.zzx(zza2);
                            Object obj28 = obj2;
                            obj2 = zzenl.zza(zzbhq, zza2, zzhm(zzhq), obj2, zzeobVar);
                            continue;
                        case 45:
                            zzendVar.zzy(this.zzite.zza(t, zzhn & 1048575));
                            continue;
                        case 46:
                            zzendVar.zzz(this.zzite.zza(t, zzhn & 1048575));
                            continue;
                        case 47:
                            zzendVar.zzaa(this.zzite.zza(t, zzhn & 1048575));
                            continue;
                        case 48:
                            zzendVar.zzab(this.zzite.zza(t, zzhn & 1048575));
                            continue;
                        case 49:
                            long j3 = zzhn & 1048575;
                            zzenj<T> zzhk = zzhk(zzhq);
                            Object obj29 = obj2;
                            zzendVar.zzb(this.zzite.zza(t, j3), zzhk, zzekoVar);
                            continue;
                        case 50:
                            Object zzhl = zzhl(zzhq);
                            Object obj30 = obj2;
                            long zzhn2 = zzhn(zzhq) & 1048575;
                            Object obj31 = obj2;
                            Object zzp = zzeoh.zzp(t, zzhn2);
                            if (zzp == null) {
                                obj = this.zzith.zzar(zzhl);
                                Object obj32 = obj2;
                                zzeoh.zza(t, zzhn2, obj);
                            } else {
                                obj = zzp;
                                if (this.zzith.zzap(zzp)) {
                                    Object obj33 = obj2;
                                    obj = this.zzith.zzar(zzhl);
                                    Object obj34 = obj2;
                                    this.zzith.zzf(obj, zzp);
                                    Object obj35 = obj2;
                                    zzeoh.zza(t, zzhn2, obj);
                                }
                            }
                            Object obj36 = obj2;
                            zzendVar.zza(this.zzith.zzan(obj), this.zzith.zzas(zzhl), zzekoVar);
                            continue;
                        case 51:
                            zzeoh.zza(t, zzhn & 1048575, Double.valueOf(zzendVar.readDouble()));
                            Object obj37 = obj2;
                            zzb((zzems<T>) t, zzbhq, zzhq);
                            continue;
                        case 52:
                            zzeoh.zza(t, zzhn & 1048575, Float.valueOf(zzendVar.readFloat()));
                            Object obj38 = obj2;
                            zzb((zzems<T>) t, zzbhq, zzhq);
                            continue;
                        case 53:
                            zzeoh.zza(t, zzhn & 1048575, Long.valueOf(zzendVar.zzbgu()));
                            Object obj39 = obj2;
                            zzb((zzems<T>) t, zzbhq, zzhq);
                            continue;
                        case 54:
                            zzeoh.zza(t, zzhn & 1048575, Long.valueOf(zzendVar.zzbgt()));
                            Object obj40 = obj2;
                            zzb((zzems<T>) t, zzbhq, zzhq);
                            continue;
                        case 55:
                            zzeoh.zza(t, zzhn & 1048575, Integer.valueOf(zzendVar.zzbgv()));
                            Object obj41 = obj2;
                            zzb((zzems<T>) t, zzbhq, zzhq);
                            continue;
                        case 56:
                            zzeoh.zza(t, zzhn & 1048575, Long.valueOf(zzendVar.zzbgw()));
                            Object obj42 = obj2;
                            zzb((zzems<T>) t, zzbhq, zzhq);
                            continue;
                        case 57:
                            zzeoh.zza(t, zzhn & 1048575, Integer.valueOf(zzendVar.zzbgx()));
                            Object obj43 = obj2;
                            zzb((zzems<T>) t, zzbhq, zzhq);
                            continue;
                        case 58:
                            zzeoh.zza(t, zzhn & 1048575, Boolean.valueOf(zzendVar.zzbgy()));
                            Object obj44 = obj2;
                            zzb((zzems<T>) t, zzbhq, zzhq);
                            continue;
                        case 59:
                            zza(t, zzhn, zzendVar);
                            Object obj45 = obj2;
                            zzb((zzems<T>) t, zzbhq, zzhq);
                            continue;
                        case 60:
                            if (zza((zzems<T>) t, zzbhq, zzhq)) {
                                long j4 = zzhn & 1048575;
                                zzeoh.zza(t, j4, zzeld.zze(zzeoh.zzp(t, j4), zzendVar.zza(zzhk(zzhq), zzekoVar)));
                            } else {
                                zzeoh.zza(t, zzhn & 1048575, zzendVar.zza(zzhk(zzhq), zzekoVar));
                                Object obj46 = obj2;
                                zzf((zzems<T>) t, zzhq);
                            }
                            Object obj47 = obj2;
                            zzb((zzems<T>) t, zzbhq, zzhq);
                            continue;
                        case 61:
                            zzeoh.zza(t, zzhn & 1048575, zzendVar.zzbha());
                            Object obj48 = obj2;
                            zzb((zzems<T>) t, zzbhq, zzhq);
                            continue;
                        case 62:
                            zzeoh.zza(t, zzhn & 1048575, Integer.valueOf(zzendVar.zzbhb()));
                            Object obj49 = obj2;
                            zzb((zzems<T>) t, zzbhq, zzhq);
                            continue;
                        case 63:
                            int zzbhc2 = zzendVar.zzbhc();
                            Object obj50 = obj2;
                            zzeli zzhm2 = zzhm(zzhq);
                            if (zzhm2 != null && !zzhm2.zzi(zzbhc2)) {
                                obj2 = zzenl.zza(zzbhq, zzbhc2, obj2, zzeobVar);
                                continue;
                            }
                            zzeoh.zza(t, zzhn & 1048575, Integer.valueOf(zzbhc2));
                            Object obj51 = obj2;
                            zzb((zzems<T>) t, zzbhq, zzhq);
                            break;
                        case 64:
                            zzeoh.zza(t, zzhn & 1048575, Integer.valueOf(zzendVar.zzbhd()));
                            Object obj52 = obj2;
                            zzb((zzems<T>) t, zzbhq, zzhq);
                            continue;
                        case 65:
                            zzeoh.zza(t, zzhn & 1048575, Long.valueOf(zzendVar.zzbhe()));
                            Object obj53 = obj2;
                            zzb((zzems<T>) t, zzbhq, zzhq);
                            continue;
                        case 66:
                            zzeoh.zza(t, zzhn & 1048575, Integer.valueOf(zzendVar.zzbhf()));
                            Object obj54 = obj2;
                            zzb((zzems<T>) t, zzbhq, zzhq);
                            continue;
                        case 67:
                            zzeoh.zza(t, zzhn & 1048575, Long.valueOf(zzendVar.zzbhg()));
                            Object obj55 = obj2;
                            zzb((zzems<T>) t, zzbhq, zzhq);
                            continue;
                        case 68:
                            zzeoh.zza(t, zzhn & 1048575, zzendVar.zzb(zzhk(zzhq), zzekoVar));
                            Object obj56 = obj2;
                            zzb((zzems<T>) t, zzbhq, zzhq);
                            continue;
                        default:
                            Object obj57 = obj2;
                            if (obj2 == null) {
                                Object obj58 = obj2;
                                obj3 = obj2;
                                try {
                                    obj57 = zzeobVar.zzbky();
                                } catch (zzeln e) {
                                    zzeobVar.zza(zzendVar);
                                    Object obj59 = obj58;
                                    if (obj58 == null) {
                                        obj59 = zzeobVar.zzaz(t);
                                    }
                                    Object obj60 = obj59;
                                    obj2 = obj59;
                                    if (!zzeobVar.zza((zzeob) obj59, zzendVar)) {
                                        for (int i = this.zzitb; i < this.zzitc; i++) {
                                            obj59 = zza((Object) t, this.zzita[i], (int) obj59, (zzeob<UT, int>) zzeobVar);
                                        }
                                        if (obj59 == null) {
                                            return;
                                        }
                                        zzeobVar.zzj(t, obj59);
                                        return;
                                    }
                                    break;
                                }
                            }
                            obj2 = obj57;
                            if (!zzeobVar.zza((zzeob) obj57, zzendVar)) {
                                for (int i2 = this.zzitb; i2 < this.zzitc; i2++) {
                                    obj57 = zza((Object) t, this.zzita[i2], (int) obj57, (zzeob<UT, int>) zzeobVar);
                                }
                                if (obj57 == null) {
                                    return;
                                }
                                zzeobVar.zzj(t, obj57);
                                return;
                            }
                            continue;
                    }
                } else if (zzbhq == Integer.MAX_VALUE) {
                    for (int i3 = this.zzitb; i3 < this.zzitc; i3++) {
                        obj2 = zza((Object) t, this.zzita[i3], (int) obj2, (zzeob<UT, int>) zzeobVar);
                    }
                    if (obj2 == null) {
                        return;
                    }
                    zzeobVar.zzj(t, obj2);
                    return;
                } else {
                    Object zza3 = !this.zzisw ? null : zzekqVar.zza(zzekoVar, this.zzisv, zzbhq);
                    if (zza3 != null) {
                        zzeku<?> zzekuVar2 = zzekuVar;
                        if (zzekuVar == null) {
                            zzekuVar2 = zzekqVar.zzaj(t);
                        }
                        Object obj61 = obj2;
                        obj2 = zzekqVar.zza(zzendVar, zza3, zzekoVar, zzekuVar2, obj2, zzeobVar);
                        zzekuVar = zzekuVar2;
                    } else {
                        zzeobVar.zza(zzendVar);
                        Object obj62 = obj2;
                        if (obj2 == null) {
                            obj62 = zzeobVar.zzaz(t);
                        }
                        Object obj63 = obj62;
                        obj2 = obj62;
                        if (!zzeobVar.zza((zzeob) obj62, zzendVar)) {
                            for (int i4 = this.zzitb; i4 < this.zzitc; i4++) {
                                obj62 = zza((Object) t, this.zzita[i4], (int) obj62, (zzeob<UT, int>) zzeobVar);
                            }
                            if (obj62 == null) {
                                return;
                            }
                            zzeobVar.zzj(t, obj62);
                            return;
                        }
                    }
                }
            } catch (Throwable th) {
                for (int i5 = this.zzitb; i5 < this.zzitc; i5++) {
                    obj3 = zza((Object) t, this.zzita[i5], (int) obj3, (zzeob<UT, int>) zzeobVar);
                }
                if (obj3 != null) {
                    zzeobVar.zzj(t, obj3);
                }
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:13:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x0a0f  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0a8b  */
    /* JADX WARN: Removed duplicated region for block: B:339:0x1446  */
    @Override // com.google.android.gms.internal.ads.zzenj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r8, com.google.android.gms.internal.ads.zzeoy r9) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 5245
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzems.zza(java.lang.Object, com.google.android.gms.internal.ads.zzeoy):void");
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x049c, code lost:
        if (r28 == r0) goto L111;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x04c9, code lost:
        if (r28 == r0) goto L111;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v209, types: [int] */
    @Override // com.google.android.gms.internal.ads.zzenj
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void zza(T r17, byte[] r18, int r19, int r20, com.google.android.gms.internal.ads.zzejm r21) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1340
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzems.zza(java.lang.Object, byte[], int, int, com.google.android.gms.internal.ads.zzejm):void");
    }

    @Override // com.google.android.gms.internal.ads.zzenj
    public final void zzak(T t) {
        int i;
        int i2 = this.zzitb;
        while (true) {
            i = this.zzitc;
            if (i2 >= i) {
                break;
            }
            long zzhn = zzhn(this.zzita[i2]) & 1048575;
            Object zzp = zzeoh.zzp(t, zzhn);
            if (zzp != null) {
                zzeoh.zza(t, zzhn, this.zzith.zzaq(zzp));
            }
            i2++;
        }
        int length = this.zzita.length;
        for (int i3 = i; i3 < length; i3++) {
            this.zzite.zzb(t, this.zzita[i3]);
        }
        this.zzitf.zzak(t);
        if (this.zzisw) {
            this.zzitg.zzak(t);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzenj
    public final int zzau(T t) {
        int i;
        int i2;
        int i3;
        int i4;
        int zzc;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int zzc2;
        int i11;
        int i12;
        int i13;
        if (!this.zzisy) {
            Unsafe unsafe = zzhzj;
            int i14 = 0;
            int i15 = 0;
            int i16 = 1048575;
            int i17 = 0;
            while (i14 < this.zzisr.length) {
                int zzhn = zzhn(i14);
                int[] iArr = this.zzisr;
                int i18 = iArr[i14];
                int i19 = (zzhn & 267386880) >>> 20;
                if (i19 <= 17) {
                    int i20 = iArr[i14 + 2];
                    int i21 = i20 & 1048575;
                    int i22 = 1 << (i20 >>> 20);
                    i = i16;
                    i2 = i22;
                    if (i21 != i16) {
                        i17 = unsafe.getInt(t, i21);
                        i = i21;
                        i2 = i22;
                    }
                } else {
                    i2 = 0;
                    i = i16;
                }
                long j = zzhn & 1048575;
                switch (i19) {
                    case 0:
                        i3 = i15;
                        if ((i17 & i2) != 0) {
                            i3 = i15 + zzekl.zzc(i18, 0.0d);
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        i3 = i15;
                        if ((i17 & i2) != 0) {
                            i3 = i15 + zzekl.zzb(i18, 0.0f);
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        i3 = i15;
                        if ((i2 & i17) != 0) {
                            i4 = zzekl.zzl(i18, unsafe.getLong(t, j));
                            i3 = i15 + i4;
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        i3 = i15;
                        if ((i2 & i17) != 0) {
                            i4 = zzekl.zzm(i18, unsafe.getLong(t, j));
                            i3 = i15 + i4;
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        i3 = i15;
                        if ((i2 & i17) != 0) {
                            i4 = zzekl.zzag(i18, unsafe.getInt(t, j));
                            i3 = i15 + i4;
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        i3 = i15;
                        if ((i17 & i2) != 0) {
                            i4 = zzekl.zzo(i18, 0L);
                            i3 = i15 + i4;
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        i3 = i15;
                        if ((i17 & i2) != 0) {
                            i3 = i15 + zzekl.zzaj(i18, 0);
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        i3 = i15;
                        if ((i17 & i2) != 0) {
                            i3 = i15 + zzekl.zzi(i18, true);
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        i3 = i15;
                        if ((i17 & i2) != 0) {
                            Object object = unsafe.getObject(t, j);
                            zzc = object instanceof zzejr ? zzekl.zzc(i18, (zzejr) object) : zzekl.zzj(i18, (String) object);
                            i3 = i15 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        i3 = i15;
                        if ((i17 & i2) != 0) {
                            zzc = zzenl.zzc(i18, unsafe.getObject(t, j), zzhk(i14));
                            i3 = i15 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        i3 = i15;
                        if ((i17 & i2) != 0) {
                            zzc = zzekl.zzc(i18, (zzejr) unsafe.getObject(t, j));
                            i3 = i15 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        i3 = i15;
                        if ((i17 & i2) != 0) {
                            zzc = zzekl.zzah(i18, unsafe.getInt(t, j));
                            i3 = i15 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        i3 = i15;
                        if ((i17 & i2) != 0) {
                            zzc = zzekl.zzal(i18, unsafe.getInt(t, j));
                            i3 = i15 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        i3 = i15;
                        if ((i17 & i2) != 0) {
                            i5 = zzekl.zzak(i18, 0);
                            i3 = i15 + i5;
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        i3 = i15;
                        if ((i17 & i2) != 0) {
                            zzc = zzekl.zzp(i18, 0L);
                            i3 = i15 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        i3 = i15;
                        if ((i17 & i2) != 0) {
                            zzc = zzekl.zzai(i18, unsafe.getInt(t, j));
                            i3 = i15 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        i3 = i15;
                        if ((i17 & i2) != 0) {
                            zzc = zzekl.zzn(i18, unsafe.getLong(t, j));
                            i3 = i15 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        i3 = i15;
                        if ((i17 & i2) != 0) {
                            zzc = zzekl.zzc(i18, (zzemo) unsafe.getObject(t, j), zzhk(i14));
                            i3 = i15 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        zzc = zzenl.zzw(i18, (List) unsafe.getObject(t, j), false);
                        i3 = i15 + zzc;
                        break;
                    case 19:
                        i6 = zzenl.zzv(i18, (List) unsafe.getObject(t, j), false);
                        i3 = i15 + i6;
                        break;
                    case 20:
                        i6 = zzenl.zzo(i18, (List) unsafe.getObject(t, j), false);
                        i3 = i15 + i6;
                        break;
                    case 21:
                        i6 = zzenl.zzp(i18, (List) unsafe.getObject(t, j), false);
                        i3 = i15 + i6;
                        break;
                    case 22:
                        i6 = zzenl.zzs(i18, (List) unsafe.getObject(t, j), false);
                        i3 = i15 + i6;
                        break;
                    case 23:
                        i6 = zzenl.zzw(i18, (List) unsafe.getObject(t, j), false);
                        i3 = i15 + i6;
                        break;
                    case 24:
                        i6 = zzenl.zzv(i18, (List) unsafe.getObject(t, j), false);
                        i3 = i15 + i6;
                        break;
                    case 25:
                        i6 = zzenl.zzx(i18, (List) unsafe.getObject(t, j), false);
                        i3 = i15 + i6;
                        break;
                    case 26:
                        zzc = zzenl.zzc(i18, (List) unsafe.getObject(t, j));
                        i3 = i15 + zzc;
                        break;
                    case 27:
                        zzc = zzenl.zzc(i18, (List<?>) unsafe.getObject(t, j), zzhk(i14));
                        i3 = i15 + zzc;
                        break;
                    case 28:
                        zzc = zzenl.zzd(i18, (List) unsafe.getObject(t, j));
                        i3 = i15 + zzc;
                        break;
                    case 29:
                        zzc = zzenl.zzt(i18, (List) unsafe.getObject(t, j), false);
                        i3 = i15 + zzc;
                        break;
                    case 30:
                        i6 = zzenl.zzr(i18, (List) unsafe.getObject(t, j), false);
                        i3 = i15 + i6;
                        break;
                    case 31:
                        i6 = zzenl.zzv(i18, (List) unsafe.getObject(t, j), false);
                        i3 = i15 + i6;
                        break;
                    case 32:
                        i6 = zzenl.zzw(i18, (List) unsafe.getObject(t, j), false);
                        i3 = i15 + i6;
                        break;
                    case 33:
                        i6 = zzenl.zzu(i18, (List) unsafe.getObject(t, j), false);
                        i3 = i15 + i6;
                        break;
                    case 34:
                        i6 = zzenl.zzq(i18, (List) unsafe.getObject(t, j), false);
                        i3 = i15 + i6;
                        break;
                    case 35:
                        int zzak = zzenl.zzak((List) unsafe.getObject(t, j));
                        i3 = i15;
                        if (zzak > 0) {
                            i9 = zzekl.zzgv(i18);
                            i7 = zzekl.zzgx(zzak);
                            i8 = zzak;
                            i5 = i9 + i7 + i8;
                            i3 = i15 + i5;
                            break;
                        } else {
                            break;
                        }
                    case 36:
                        int zzaj = zzenl.zzaj((List) unsafe.getObject(t, j));
                        i3 = i15;
                        if (zzaj > 0) {
                            int zzgv = zzekl.zzgv(i18);
                            i7 = zzekl.zzgx(zzaj);
                            i8 = zzaj;
                            i9 = zzgv;
                            i5 = i9 + i7 + i8;
                            i3 = i15 + i5;
                            break;
                        } else {
                            break;
                        }
                    case 37:
                        int zzac = zzenl.zzac((List) unsafe.getObject(t, j));
                        i3 = i15;
                        if (zzac > 0) {
                            int zzgv2 = zzekl.zzgv(i18);
                            i7 = zzekl.zzgx(zzac);
                            i8 = zzac;
                            i9 = zzgv2;
                            i5 = i9 + i7 + i8;
                            i3 = i15 + i5;
                            break;
                        } else {
                            break;
                        }
                    case 38:
                        int zzad = zzenl.zzad((List) unsafe.getObject(t, j));
                        i3 = i15;
                        if (zzad > 0) {
                            int zzgv3 = zzekl.zzgv(i18);
                            i7 = zzekl.zzgx(zzad);
                            i8 = zzad;
                            i9 = zzgv3;
                            i5 = i9 + i7 + i8;
                            i3 = i15 + i5;
                            break;
                        } else {
                            break;
                        }
                    case 39:
                        int zzag = zzenl.zzag((List) unsafe.getObject(t, j));
                        i3 = i15;
                        if (zzag > 0) {
                            int zzgv4 = zzekl.zzgv(i18);
                            i7 = zzekl.zzgx(zzag);
                            i8 = zzag;
                            i9 = zzgv4;
                            i5 = i9 + i7 + i8;
                            i3 = i15 + i5;
                            break;
                        } else {
                            break;
                        }
                    case 40:
                        int zzak2 = zzenl.zzak((List) unsafe.getObject(t, j));
                        i3 = i15;
                        if (zzak2 > 0) {
                            int zzgv5 = zzekl.zzgv(i18);
                            i7 = zzekl.zzgx(zzak2);
                            i8 = zzak2;
                            i9 = zzgv5;
                            i5 = i9 + i7 + i8;
                            i3 = i15 + i5;
                            break;
                        } else {
                            break;
                        }
                    case 41:
                        int zzaj2 = zzenl.zzaj((List) unsafe.getObject(t, j));
                        i3 = i15;
                        if (zzaj2 > 0) {
                            int zzgv6 = zzekl.zzgv(i18);
                            i7 = zzekl.zzgx(zzaj2);
                            i8 = zzaj2;
                            i9 = zzgv6;
                            i5 = i9 + i7 + i8;
                            i3 = i15 + i5;
                            break;
                        } else {
                            break;
                        }
                    case 42:
                        int zzal = zzenl.zzal((List) unsafe.getObject(t, j));
                        i3 = i15;
                        if (zzal > 0) {
                            int zzgv7 = zzekl.zzgv(i18);
                            i7 = zzekl.zzgx(zzal);
                            i8 = zzal;
                            i9 = zzgv7;
                            i5 = i9 + i7 + i8;
                            i3 = i15 + i5;
                            break;
                        } else {
                            break;
                        }
                    case 43:
                        int zzah = zzenl.zzah((List) unsafe.getObject(t, j));
                        i3 = i15;
                        if (zzah > 0) {
                            int zzgv8 = zzekl.zzgv(i18);
                            i7 = zzekl.zzgx(zzah);
                            i8 = zzah;
                            i9 = zzgv8;
                            i5 = i9 + i7 + i8;
                            i3 = i15 + i5;
                            break;
                        } else {
                            break;
                        }
                    case 44:
                        int zzaf = zzenl.zzaf((List) unsafe.getObject(t, j));
                        i3 = i15;
                        if (zzaf > 0) {
                            int zzgv9 = zzekl.zzgv(i18);
                            i7 = zzekl.zzgx(zzaf);
                            i8 = zzaf;
                            i9 = zzgv9;
                            i5 = i9 + i7 + i8;
                            i3 = i15 + i5;
                            break;
                        } else {
                            break;
                        }
                    case 45:
                        int zzaj3 = zzenl.zzaj((List) unsafe.getObject(t, j));
                        i3 = i15;
                        if (zzaj3 > 0) {
                            int zzgv10 = zzekl.zzgv(i18);
                            i7 = zzekl.zzgx(zzaj3);
                            i8 = zzaj3;
                            i9 = zzgv10;
                            i5 = i9 + i7 + i8;
                            i3 = i15 + i5;
                            break;
                        } else {
                            break;
                        }
                    case 46:
                        int zzak3 = zzenl.zzak((List) unsafe.getObject(t, j));
                        i3 = i15;
                        if (zzak3 > 0) {
                            int zzgv11 = zzekl.zzgv(i18);
                            i7 = zzekl.zzgx(zzak3);
                            i8 = zzak3;
                            i9 = zzgv11;
                            i5 = i9 + i7 + i8;
                            i3 = i15 + i5;
                            break;
                        } else {
                            break;
                        }
                    case 47:
                        int zzai = zzenl.zzai((List) unsafe.getObject(t, j));
                        i3 = i15;
                        if (zzai > 0) {
                            int zzgv12 = zzekl.zzgv(i18);
                            i7 = zzekl.zzgx(zzai);
                            i8 = zzai;
                            i9 = zzgv12;
                            i5 = i9 + i7 + i8;
                            i3 = i15 + i5;
                            break;
                        } else {
                            break;
                        }
                    case 48:
                        int zzae = zzenl.zzae((List) unsafe.getObject(t, j));
                        i3 = i15;
                        if (zzae > 0) {
                            int zzgv13 = zzekl.zzgv(i18);
                            i7 = zzekl.zzgx(zzae);
                            i8 = zzae;
                            i9 = zzgv13;
                            i5 = i9 + i7 + i8;
                            i3 = i15 + i5;
                            break;
                        } else {
                            break;
                        }
                    case 49:
                        zzc = zzenl.zzd(i18, (List) unsafe.getObject(t, j), zzhk(i14));
                        i3 = i15 + zzc;
                        break;
                    case 50:
                        zzc = this.zzith.zzb(i18, unsafe.getObject(t, j), zzhl(i14));
                        i3 = i15 + zzc;
                        break;
                    case 51:
                        i3 = i15;
                        if (zza((zzems<T>) t, i18, i14)) {
                            zzc = zzekl.zzc(i18, 0.0d);
                            i3 = i15 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        i3 = i15;
                        if (zza((zzems<T>) t, i18, i14)) {
                            i5 = zzekl.zzb(i18, 0.0f);
                            i3 = i15 + i5;
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        i3 = i15;
                        if (zza((zzems<T>) t, i18, i14)) {
                            zzc = zzekl.zzl(i18, zzi(t, j));
                            i3 = i15 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        i3 = i15;
                        if (zza((zzems<T>) t, i18, i14)) {
                            zzc = zzekl.zzm(i18, zzi(t, j));
                            i3 = i15 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        i3 = i15;
                        if (zza((zzems<T>) t, i18, i14)) {
                            zzc = zzekl.zzag(i18, zzh(t, j));
                            i3 = i15 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        i3 = i15;
                        if (zza((zzems<T>) t, i18, i14)) {
                            zzc = zzekl.zzo(i18, 0L);
                            i3 = i15 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        i3 = i15;
                        if (zza((zzems<T>) t, i18, i14)) {
                            i5 = zzekl.zzaj(i18, 0);
                            i3 = i15 + i5;
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        i3 = i15;
                        if (zza((zzems<T>) t, i18, i14)) {
                            i5 = zzekl.zzi(i18, true);
                            i3 = i15 + i5;
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        i3 = i15;
                        if (zza((zzems<T>) t, i18, i14)) {
                            Object object2 = unsafe.getObject(t, j);
                            zzc = object2 instanceof zzejr ? zzekl.zzc(i18, (zzejr) object2) : zzekl.zzj(i18, (String) object2);
                            i3 = i15 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 60:
                        i3 = i15;
                        if (zza((zzems<T>) t, i18, i14)) {
                            zzc = zzenl.zzc(i18, unsafe.getObject(t, j), zzhk(i14));
                            i3 = i15 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        i3 = i15;
                        if (zza((zzems<T>) t, i18, i14)) {
                            zzc = zzekl.zzc(i18, (zzejr) unsafe.getObject(t, j));
                            i3 = i15 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        i3 = i15;
                        if (zza((zzems<T>) t, i18, i14)) {
                            zzc = zzekl.zzah(i18, zzh(t, j));
                            i3 = i15 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        i3 = i15;
                        if (zza((zzems<T>) t, i18, i14)) {
                            zzc = zzekl.zzal(i18, zzh(t, j));
                            i3 = i15 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        i3 = i15;
                        if (zza((zzems<T>) t, i18, i14)) {
                            i5 = zzekl.zzak(i18, 0);
                            i3 = i15 + i5;
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        i3 = i15;
                        if (zza((zzems<T>) t, i18, i14)) {
                            zzc = zzekl.zzp(i18, 0L);
                            i3 = i15 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        i3 = i15;
                        if (zza((zzems<T>) t, i18, i14)) {
                            zzc = zzekl.zzai(i18, zzh(t, j));
                            i3 = i15 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        i3 = i15;
                        if (zza((zzems<T>) t, i18, i14)) {
                            zzc = zzekl.zzn(i18, zzi(t, j));
                            i3 = i15 + zzc;
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        i3 = i15;
                        if (zza((zzems<T>) t, i18, i14)) {
                            zzc = zzekl.zzc(i18, (zzemo) unsafe.getObject(t, j), zzhk(i14));
                            i3 = i15 + zzc;
                            break;
                        } else {
                            break;
                        }
                    default:
                        i3 = i15;
                        break;
                }
                i14 += 3;
                i15 = i3;
                i16 = i;
            }
            int zza = i15 + zza(this.zzitf, t);
            int i23 = zza;
            if (this.zzisw) {
                zzeku<?> zzai2 = this.zzitg.zzai(t);
                int i24 = 0;
                for (int i25 = 0; i25 < zzai2.zzinp.zzbkq(); i25++) {
                    Map.Entry<?, Object> zzhu = zzai2.zzinp.zzhu(i25);
                    i24 += zzeku.zzb((zzekw) zzhu.getKey(), zzhu.getValue());
                }
                for (Map.Entry<?, Object> entry : zzai2.zzinp.zzbkr()) {
                    i24 += zzeku.zzb((zzekw) entry.getKey(), entry.getValue());
                }
                i23 = zza + i24;
            }
            return i23;
        }
        Unsafe unsafe2 = zzhzj;
        int i26 = 0;
        int i27 = 0;
        while (true) {
            int i28 = i27;
            if (i26 >= this.zzisr.length) {
                return i28 + zza(this.zzitf, t);
            }
            int zzhn2 = zzhn(i26);
            int i29 = (zzhn2 & 267386880) >>> 20;
            int i30 = this.zzisr[i26];
            long j2 = zzhn2 & 1048575;
            if (i29 >= zzekv.DOUBLE_LIST_PACKED.m1353id() && i29 <= zzekv.SINT64_LIST_PACKED.m1353id()) {
                int i31 = this.zzisr[i26 + 2];
            }
            switch (i29) {
                case 0:
                    i10 = i28;
                    if (zze((zzems<T>) t, i26)) {
                        zzc2 = zzekl.zzc(i30, 0.0d);
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 1:
                    i10 = i28;
                    if (zze((zzems<T>) t, i26)) {
                        zzc2 = zzekl.zzb(i30, 0.0f);
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 2:
                    i10 = i28;
                    if (zze((zzems<T>) t, i26)) {
                        zzc2 = zzekl.zzl(i30, zzeoh.zzl(t, j2));
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 3:
                    i10 = i28;
                    if (zze((zzems<T>) t, i26)) {
                        zzc2 = zzekl.zzm(i30, zzeoh.zzl(t, j2));
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 4:
                    i10 = i28;
                    if (zze((zzems<T>) t, i26)) {
                        zzc2 = zzekl.zzag(i30, zzeoh.zzk(t, j2));
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 5:
                    i10 = i28;
                    if (zze((zzems<T>) t, i26)) {
                        zzc2 = zzekl.zzo(i30, 0L);
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 6:
                    i10 = i28;
                    if (zze((zzems<T>) t, i26)) {
                        zzc2 = zzekl.zzaj(i30, 0);
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 7:
                    i10 = i28;
                    if (zze((zzems<T>) t, i26)) {
                        zzc2 = zzekl.zzi(i30, true);
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 8:
                    i10 = i28;
                    if (zze((zzems<T>) t, i26)) {
                        Object zzp = zzeoh.zzp(t, j2);
                        if (zzp instanceof zzejr) {
                            zzc2 = zzekl.zzc(i30, (zzejr) zzp);
                            break;
                        } else {
                            zzc2 = zzekl.zzj(i30, (String) zzp);
                            break;
                        }
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 9:
                    i10 = i28;
                    if (zze((zzems<T>) t, i26)) {
                        zzc2 = zzenl.zzc(i30, zzeoh.zzp(t, j2), zzhk(i26));
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 10:
                    i10 = i28;
                    if (zze((zzems<T>) t, i26)) {
                        zzc2 = zzekl.zzc(i30, (zzejr) zzeoh.zzp(t, j2));
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 11:
                    i10 = i28;
                    if (zze((zzems<T>) t, i26)) {
                        zzc2 = zzekl.zzah(i30, zzeoh.zzk(t, j2));
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 12:
                    i10 = i28;
                    if (zze((zzems<T>) t, i26)) {
                        zzc2 = zzekl.zzal(i30, zzeoh.zzk(t, j2));
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 13:
                    i10 = i28;
                    if (zze((zzems<T>) t, i26)) {
                        zzc2 = zzekl.zzak(i30, 0);
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 14:
                    i10 = i28;
                    if (zze((zzems<T>) t, i26)) {
                        zzc2 = zzekl.zzp(i30, 0L);
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 15:
                    i10 = i28;
                    if (zze((zzems<T>) t, i26)) {
                        zzc2 = zzekl.zzai(i30, zzeoh.zzk(t, j2));
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 16:
                    i10 = i28;
                    if (zze((zzems<T>) t, i26)) {
                        zzc2 = zzekl.zzn(i30, zzeoh.zzl(t, j2));
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 17:
                    i10 = i28;
                    if (zze((zzems<T>) t, i26)) {
                        zzc2 = zzekl.zzc(i30, (zzemo) zzeoh.zzp(t, j2), zzhk(i26));
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 18:
                    zzc2 = zzenl.zzw(i30, zze(t, j2), false);
                    break;
                case 19:
                    zzc2 = zzenl.zzv(i30, zze(t, j2), false);
                    break;
                case 20:
                    zzc2 = zzenl.zzo(i30, zze(t, j2), false);
                    break;
                case 21:
                    zzc2 = zzenl.zzp(i30, zze(t, j2), false);
                    break;
                case 22:
                    zzc2 = zzenl.zzs(i30, zze(t, j2), false);
                    break;
                case 23:
                    zzc2 = zzenl.zzw(i30, zze(t, j2), false);
                    break;
                case 24:
                    zzc2 = zzenl.zzv(i30, zze(t, j2), false);
                    break;
                case 25:
                    zzc2 = zzenl.zzx(i30, zze(t, j2), false);
                    break;
                case 26:
                    zzc2 = zzenl.zzc(i30, zze(t, j2));
                    break;
                case 27:
                    zzc2 = zzenl.zzc(i30, zze(t, j2), zzhk(i26));
                    break;
                case 28:
                    zzc2 = zzenl.zzd(i30, zze(t, j2));
                    break;
                case 29:
                    zzc2 = zzenl.zzt(i30, zze(t, j2), false);
                    break;
                case 30:
                    zzc2 = zzenl.zzr(i30, zze(t, j2), false);
                    break;
                case 31:
                    zzc2 = zzenl.zzv(i30, zze(t, j2), false);
                    break;
                case 32:
                    zzc2 = zzenl.zzw(i30, zze(t, j2), false);
                    break;
                case 33:
                    zzc2 = zzenl.zzu(i30, zze(t, j2), false);
                    break;
                case 34:
                    zzc2 = zzenl.zzq(i30, zze(t, j2), false);
                    break;
                case 35:
                    i13 = zzenl.zzak((List) unsafe2.getObject(t, j2));
                    i10 = i28;
                    if (i13 > 0) {
                        i12 = zzekl.zzgv(i30);
                        i11 = zzekl.zzgx(i13);
                        zzc2 = i12 + i11 + i13;
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 36:
                    i13 = zzenl.zzaj((List) unsafe2.getObject(t, j2));
                    i10 = i28;
                    if (i13 > 0) {
                        i12 = zzekl.zzgv(i30);
                        i11 = zzekl.zzgx(i13);
                        zzc2 = i12 + i11 + i13;
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 37:
                    i13 = zzenl.zzac((List) unsafe2.getObject(t, j2));
                    i10 = i28;
                    if (i13 > 0) {
                        i12 = zzekl.zzgv(i30);
                        i11 = zzekl.zzgx(i13);
                        zzc2 = i12 + i11 + i13;
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 38:
                    i13 = zzenl.zzad((List) unsafe2.getObject(t, j2));
                    i10 = i28;
                    if (i13 > 0) {
                        i12 = zzekl.zzgv(i30);
                        i11 = zzekl.zzgx(i13);
                        zzc2 = i12 + i11 + i13;
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 39:
                    i13 = zzenl.zzag((List) unsafe2.getObject(t, j2));
                    i10 = i28;
                    if (i13 > 0) {
                        i12 = zzekl.zzgv(i30);
                        i11 = zzekl.zzgx(i13);
                        zzc2 = i12 + i11 + i13;
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 40:
                    i13 = zzenl.zzak((List) unsafe2.getObject(t, j2));
                    i10 = i28;
                    if (i13 > 0) {
                        i12 = zzekl.zzgv(i30);
                        i11 = zzekl.zzgx(i13);
                        zzc2 = i12 + i11 + i13;
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 41:
                    i13 = zzenl.zzaj((List) unsafe2.getObject(t, j2));
                    i10 = i28;
                    if (i13 > 0) {
                        i12 = zzekl.zzgv(i30);
                        i11 = zzekl.zzgx(i13);
                        zzc2 = i12 + i11 + i13;
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 42:
                    i13 = zzenl.zzal((List) unsafe2.getObject(t, j2));
                    i10 = i28;
                    if (i13 > 0) {
                        i12 = zzekl.zzgv(i30);
                        i11 = zzekl.zzgx(i13);
                        zzc2 = i12 + i11 + i13;
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 43:
                    i13 = zzenl.zzah((List) unsafe2.getObject(t, j2));
                    i10 = i28;
                    if (i13 > 0) {
                        i12 = zzekl.zzgv(i30);
                        i11 = zzekl.zzgx(i13);
                        zzc2 = i12 + i11 + i13;
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 44:
                    i13 = zzenl.zzaf((List) unsafe2.getObject(t, j2));
                    i10 = i28;
                    if (i13 > 0) {
                        i12 = zzekl.zzgv(i30);
                        i11 = zzekl.zzgx(i13);
                        zzc2 = i12 + i11 + i13;
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 45:
                    i13 = zzenl.zzaj((List) unsafe2.getObject(t, j2));
                    i10 = i28;
                    if (i13 > 0) {
                        i12 = zzekl.zzgv(i30);
                        i11 = zzekl.zzgx(i13);
                        zzc2 = i12 + i11 + i13;
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 46:
                    i13 = zzenl.zzak((List) unsafe2.getObject(t, j2));
                    i10 = i28;
                    if (i13 > 0) {
                        i12 = zzekl.zzgv(i30);
                        i11 = zzekl.zzgx(i13);
                        zzc2 = i12 + i11 + i13;
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 47:
                    i13 = zzenl.zzai((List) unsafe2.getObject(t, j2));
                    i10 = i28;
                    if (i13 > 0) {
                        i12 = zzekl.zzgv(i30);
                        i11 = zzekl.zzgx(i13);
                        zzc2 = i12 + i11 + i13;
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 48:
                    i13 = zzenl.zzae((List) unsafe2.getObject(t, j2));
                    i10 = i28;
                    if (i13 > 0) {
                        i12 = zzekl.zzgv(i30);
                        i11 = zzekl.zzgx(i13);
                        zzc2 = i12 + i11 + i13;
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 49:
                    zzc2 = zzenl.zzd(i30, zze(t, j2), zzhk(i26));
                    break;
                case 50:
                    zzc2 = this.zzith.zzb(i30, zzeoh.zzp(t, j2), zzhl(i26));
                    break;
                case 51:
                    i10 = i28;
                    if (zza((zzems<T>) t, i30, i26)) {
                        zzc2 = zzekl.zzc(i30, 0.0d);
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 52:
                    i10 = i28;
                    if (zza((zzems<T>) t, i30, i26)) {
                        zzc2 = zzekl.zzb(i30, 0.0f);
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 53:
                    i10 = i28;
                    if (zza((zzems<T>) t, i30, i26)) {
                        zzc2 = zzekl.zzl(i30, zzi(t, j2));
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 54:
                    i10 = i28;
                    if (zza((zzems<T>) t, i30, i26)) {
                        zzc2 = zzekl.zzm(i30, zzi(t, j2));
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 55:
                    i10 = i28;
                    if (zza((zzems<T>) t, i30, i26)) {
                        zzc2 = zzekl.zzag(i30, zzh(t, j2));
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 56:
                    i10 = i28;
                    if (zza((zzems<T>) t, i30, i26)) {
                        zzc2 = zzekl.zzo(i30, 0L);
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 57:
                    i10 = i28;
                    if (zza((zzems<T>) t, i30, i26)) {
                        zzc2 = zzekl.zzaj(i30, 0);
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 58:
                    i10 = i28;
                    if (zza((zzems<T>) t, i30, i26)) {
                        zzc2 = zzekl.zzi(i30, true);
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 59:
                    i10 = i28;
                    if (zza((zzems<T>) t, i30, i26)) {
                        Object zzp2 = zzeoh.zzp(t, j2);
                        if (zzp2 instanceof zzejr) {
                            zzc2 = zzekl.zzc(i30, (zzejr) zzp2);
                            break;
                        } else {
                            zzc2 = zzekl.zzj(i30, (String) zzp2);
                            break;
                        }
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 60:
                    i10 = i28;
                    if (zza((zzems<T>) t, i30, i26)) {
                        zzc2 = zzenl.zzc(i30, zzeoh.zzp(t, j2), zzhk(i26));
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 61:
                    i10 = i28;
                    if (zza((zzems<T>) t, i30, i26)) {
                        zzc2 = zzekl.zzc(i30, (zzejr) zzeoh.zzp(t, j2));
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 62:
                    i10 = i28;
                    if (zza((zzems<T>) t, i30, i26)) {
                        zzc2 = zzekl.zzah(i30, zzh(t, j2));
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 63:
                    i10 = i28;
                    if (zza((zzems<T>) t, i30, i26)) {
                        zzc2 = zzekl.zzal(i30, zzh(t, j2));
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 64:
                    i10 = i28;
                    if (zza((zzems<T>) t, i30, i26)) {
                        zzc2 = zzekl.zzak(i30, 0);
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 65:
                    i10 = i28;
                    if (zza((zzems<T>) t, i30, i26)) {
                        zzc2 = zzekl.zzp(i30, 0L);
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 66:
                    i10 = i28;
                    if (zza((zzems<T>) t, i30, i26)) {
                        zzc2 = zzekl.zzai(i30, zzh(t, j2));
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 67:
                    i10 = i28;
                    if (zza((zzems<T>) t, i30, i26)) {
                        zzc2 = zzekl.zzn(i30, zzi(t, j2));
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                case 68:
                    i10 = i28;
                    if (zza((zzems<T>) t, i30, i26)) {
                        zzc2 = zzekl.zzc(i30, (zzemo) zzeoh.zzp(t, j2), zzhk(i26));
                        break;
                    } else {
                        continue;
                        i26 += 3;
                        i27 = i10;
                    }
                default:
                    i10 = i28;
                    continue;
                    i26 += 3;
                    i27 = i10;
            }
            i10 = i28 + zzc2;
            i26 += 3;
            i27 = i10;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzenj
    public final boolean zzaw(T t) {
        int i = 1048575;
        int i2 = 0;
        for (int i3 = 0; i3 < this.zzitb; i3++) {
            int i4 = this.zzita[i3];
            int i5 = this.zzisr[i4];
            int zzhn = zzhn(i4);
            int i6 = this.zzisr[i4 + 2];
            int i7 = i6 & 1048575;
            int i8 = 1 << (i6 >>> 20);
            if (i7 != i) {
                if (i7 != 1048575) {
                    i2 = zzhzj.getInt(t, i7);
                }
                i = i7;
            }
            if (((268435456 & zzhn) != 0) && !zza((zzems<T>) t, i4, i, i2, i8)) {
                return false;
            }
            int i9 = (267386880 & zzhn) >>> 20;
            if (i9 != 9 && i9 != 17) {
                if (i9 != 27) {
                    if (i9 == 60 || i9 == 68) {
                        if (zza((zzems<T>) t, i5, i4) && !zza(t, zzhn, zzhk(i4))) {
                            return false;
                        }
                    } else if (i9 != 49) {
                        if (i9 != 50) {
                            continue;
                        } else {
                            Map<?, ?> zzao = this.zzith.zzao(zzeoh.zzp(t, zzhn & 1048575));
                            boolean z = true;
                            if (!zzao.isEmpty()) {
                                z = true;
                                if (this.zzith.zzas(zzhl(i4)).zzism.zzbli() == zzeov.MESSAGE) {
                                    zzenj<T> zzenjVar = null;
                                    Iterator<?> it = zzao.values().iterator();
                                    while (true) {
                                        z = true;
                                        if (!it.hasNext()) {
                                            break;
                                        }
                                        Object next = it.next();
                                        zzenj<T> zzenjVar2 = zzenjVar;
                                        if (zzenjVar == null) {
                                            zzenjVar2 = zzenc.zzbkf().zzh(next.getClass());
                                        }
                                        zzenjVar = zzenjVar2;
                                        if (!zzenjVar2.zzaw(next)) {
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
                List list = (List) zzeoh.zzp(t, zzhn & 1048575);
                boolean z2 = true;
                if (!list.isEmpty()) {
                    zzenj zzhk = zzhk(i4);
                    int i10 = 0;
                    while (true) {
                        z2 = true;
                        if (i10 >= list.size()) {
                            break;
                        } else if (!zzhk.zzaw(list.get(i10))) {
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
            } else if (zza((zzems<T>) t, i4, i, i2, i8) && !zza(t, zzhn, zzhk(i4))) {
                return false;
            }
        }
        return !this.zzisw || this.zzitg.zzai(t).isInitialized();
    }

    @Override // com.google.android.gms.internal.ads.zzenj
    public final void zzg(T t, T t2) {
        Objects.requireNonNull(t2);
        for (int i = 0; i < this.zzisr.length; i += 3) {
            int zzhn = zzhn(i);
            long j = 1048575 & zzhn;
            int i2 = this.zzisr[i];
            switch ((zzhn & 267386880) >>> 20) {
                case 0:
                    if (zze((zzems<T>) t2, i)) {
                        zzeoh.zza(t, j, zzeoh.zzo(t2, j));
                        zzf((zzems<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zze((zzems<T>) t2, i)) {
                        zzeoh.zza((Object) t, j, zzeoh.zzn(t2, j));
                        zzf((zzems<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zze((zzems<T>) t2, i)) {
                        zzeoh.zza((Object) t, j, zzeoh.zzl(t2, j));
                        zzf((zzems<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zze((zzems<T>) t2, i)) {
                        zzeoh.zza((Object) t, j, zzeoh.zzl(t2, j));
                        zzf((zzems<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zze((zzems<T>) t2, i)) {
                        zzeoh.zzb(t, j, zzeoh.zzk(t2, j));
                        zzf((zzems<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zze((zzems<T>) t2, i)) {
                        zzeoh.zza((Object) t, j, zzeoh.zzl(t2, j));
                        zzf((zzems<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zze((zzems<T>) t2, i)) {
                        zzeoh.zzb(t, j, zzeoh.zzk(t2, j));
                        zzf((zzems<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zze((zzems<T>) t2, i)) {
                        zzeoh.zza(t, j, zzeoh.zzm(t2, j));
                        zzf((zzems<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (zze((zzems<T>) t2, i)) {
                        zzeoh.zza(t, j, zzeoh.zzp(t2, j));
                        zzf((zzems<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    zza(t, t2, i);
                    break;
                case 10:
                    if (zze((zzems<T>) t2, i)) {
                        zzeoh.zza(t, j, zzeoh.zzp(t2, j));
                        zzf((zzems<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zze((zzems<T>) t2, i)) {
                        zzeoh.zzb(t, j, zzeoh.zzk(t2, j));
                        zzf((zzems<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zze((zzems<T>) t2, i)) {
                        zzeoh.zzb(t, j, zzeoh.zzk(t2, j));
                        zzf((zzems<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zze((zzems<T>) t2, i)) {
                        zzeoh.zzb(t, j, zzeoh.zzk(t2, j));
                        zzf((zzems<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zze((zzems<T>) t2, i)) {
                        zzeoh.zza((Object) t, j, zzeoh.zzl(t2, j));
                        zzf((zzems<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zze((zzems<T>) t2, i)) {
                        zzeoh.zzb(t, j, zzeoh.zzk(t2, j));
                        zzf((zzems<T>) t, i);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zze((zzems<T>) t2, i)) {
                        zzeoh.zza((Object) t, j, zzeoh.zzl(t2, j));
                        zzf((zzems<T>) t, i);
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
                    this.zzite.zza(t, t2, j);
                    break;
                case 50:
                    zzenl.zza(this.zzith, t, t2, j);
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
                    if (zza((zzems<T>) t2, i2, i)) {
                        zzeoh.zza(t, j, zzeoh.zzp(t2, j));
                        zzb((zzems<T>) t, i2, i);
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
                    if (zza((zzems<T>) t2, i2, i)) {
                        zzeoh.zza(t, j, zzeoh.zzp(t2, j));
                        zzb((zzems<T>) t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    zzb(t, t2, i);
                    break;
            }
        }
        zzenl.zza(this.zzitf, t, t2);
        if (this.zzisw) {
            zzenl.zza(this.zzitg, t, t2);
        }
    }
}
