package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import sun.misc.Unsafe;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzja.class */
public final class zzja<T> implements zzji<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzkh.zzr();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzix zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final int[] zzj;
    private final int zzk;
    private final int zzl;
    private final zzil zzm;
    private final zzjw<?, ?> zzn;
    private final zzhf<?> zzo;
    private final zzjc zzp;
    private final zzis zzq;

    /* JADX WARN: Multi-variable type inference failed */
    private zzja(int[] iArr, int[] iArr2, Object[] objArr, int i, int i2, zzix zzixVar, boolean z, boolean z2, int[] iArr3, int i3, int i4, zzjc zzjcVar, zzil zzilVar, zzjw<?, ?> zzjwVar, zzhf<?> zzhfVar, zzis zzisVar) {
        this.zzc = iArr;
        this.zzd = iArr2;
        this.zze = objArr;
        this.zzf = i;
        this.zzi = zzixVar;
        boolean z3 = false;
        if (zzjwVar != 0) {
            z3 = false;
            if (zzjwVar.zza(i2)) {
                z3 = true;
            }
        }
        this.zzh = z3;
        this.zzj = z2;
        this.zzk = iArr3;
        this.zzl = i3;
        this.zzp = i4;
        this.zzm = zzjcVar;
        this.zzn = zzilVar;
        this.zzo = zzjwVar;
        this.zzg = i2;
        this.zzq = zzhfVar;
    }

    private final int zzA(int i) {
        return this.zzc[i + 1];
    }

    private final int zzB(int i) {
        return this.zzc[i + 2];
    }

    private static int zzC(int i) {
        return (i >>> 20) & 255;
    }

    private static <T> double zzD(T t, long j) {
        return ((Double) zzkh.zzn(t, j)).doubleValue();
    }

    private static <T> float zzE(T t, long j) {
        return ((Float) zzkh.zzn(t, j)).floatValue();
    }

    private static <T> int zzF(T t, long j) {
        return ((Integer) zzkh.zzn(t, j)).intValue();
    }

    private static <T> long zzG(T t, long j) {
        return ((Long) zzkh.zzn(t, j)).longValue();
    }

    private static <T> boolean zzH(T t, long j) {
        return ((Boolean) zzkh.zzn(t, j)).booleanValue();
    }

    private final boolean zzI(T t, T t2, int i) {
        return zzK(t, i) == zzK(t2, i);
    }

    private final boolean zzJ(T t, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? zzK(t, i) : (i3 & i4) != 0;
    }

    private final boolean zzK(T t, int i) {
        int zzB = zzB(i);
        long j = zzB & 1048575;
        if (j != 1048575) {
            return (zzkh.zzd(t, j) & (1 << (zzB >>> 20))) != 0;
        }
        int zzA = zzA(i);
        long j2 = zzA & 1048575;
        switch (zzC(zzA)) {
            case 0:
                return zzkh.zzl(t, j2) != 0.0d;
            case 1:
                return zzkh.zzj(t, j2) != 0.0f;
            case 2:
                return zzkh.zzf(t, j2) != 0;
            case 3:
                return zzkh.zzf(t, j2) != 0;
            case 4:
                return zzkh.zzd(t, j2) != 0;
            case 5:
                return zzkh.zzf(t, j2) != 0;
            case 6:
                return zzkh.zzd(t, j2) != 0;
            case 7:
                return zzkh.zzh(t, j2);
            case 8:
                Object zzn = zzkh.zzn(t, j2);
                if (zzn instanceof String) {
                    return !((String) zzn).isEmpty();
                } else if (!(zzn instanceof zzgs)) {
                    throw new IllegalArgumentException();
                } else {
                    return !zzgs.zzb.equals(zzn);
                }
            case 9:
                return zzkh.zzn(t, j2) != null;
            case 10:
                return !zzgs.zzb.equals(zzkh.zzn(t, j2));
            case 11:
                return zzkh.zzd(t, j2) != 0;
            case 12:
                return zzkh.zzd(t, j2) != 0;
            case 13:
                return zzkh.zzd(t, j2) != 0;
            case 14:
                return zzkh.zzf(t, j2) != 0;
            case 15:
                return zzkh.zzd(t, j2) != 0;
            case 16:
                return zzkh.zzf(t, j2) != 0;
            case 17:
                return zzkh.zzn(t, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final void zzL(T t, int i) {
        int zzB = zzB(i);
        long j = 1048575 & zzB;
        if (j == 1048575) {
            return;
        }
        zzkh.zze(t, j, (1 << (zzB >>> 20)) | zzkh.zzd(t, j));
    }

    private final boolean zzM(T t, int i, int i2) {
        return zzkh.zzd(t, (long) (zzB(i2) & 1048575)) == i;
    }

    private final void zzN(T t, int i, int i2) {
        zzkh.zze(t, zzB(i2) & 1048575, i);
    }

    private final int zzO(int i) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzQ(i, 0);
    }

    private final int zzP(int i, int i2) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzQ(i, i2);
    }

    private final int zzQ(int i, int i2) {
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

    private final void zzR(T t, zzha zzhaVar) throws IOException {
        int i;
        int i2;
        if (this.zzh) {
            this.zzo.zzb(t);
            throw null;
        }
        int length = this.zzc.length;
        Unsafe unsafe = zzb;
        int i3 = 0;
        int i4 = 0;
        int i5 = 1048575;
        while (i3 < length) {
            int zzA = zzA(i3);
            int i6 = this.zzc[i3];
            int zzC = zzC(zzA);
            if (zzC <= 17) {
                int i7 = this.zzc[i3 + 2];
                int i8 = i7 & 1048575;
                i = i4;
                int i9 = i5;
                if (i8 != i5) {
                    i = unsafe.getInt(t, i8);
                    i9 = i8;
                }
                i2 = 1 << (i7 >>> 20);
                i5 = i9;
            } else {
                i2 = 0;
                i = i4;
            }
            long j = zzA & 1048575;
            switch (zzC) {
                case 0:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzhaVar.zzf(i6, zzkh.zzl(t, j));
                        break;
                    }
                case 1:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzhaVar.zze(i6, zzkh.zzj(t, j));
                        break;
                    }
                case 2:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzhaVar.zzc(i6, unsafe.getLong(t, j));
                        break;
                    }
                case 3:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzhaVar.zzh(i6, unsafe.getLong(t, j));
                        break;
                    }
                case 4:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzhaVar.zzi(i6, unsafe.getInt(t, j));
                        break;
                    }
                case 5:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzhaVar.zzj(i6, unsafe.getLong(t, j));
                        break;
                    }
                case 6:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzhaVar.zzk(i6, unsafe.getInt(t, j));
                        break;
                    }
                case 7:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzhaVar.zzl(i6, zzkh.zzh(t, j));
                        break;
                    }
                case 8:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzT(i6, unsafe.getObject(t, j), zzhaVar);
                        break;
                    }
                case 9:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzhaVar.zzr(i6, unsafe.getObject(t, j), zzv(i3));
                        break;
                    }
                case 10:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzhaVar.zzn(i6, (zzgs) unsafe.getObject(t, j));
                        break;
                    }
                case 11:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzhaVar.zzo(i6, unsafe.getInt(t, j));
                        break;
                    }
                case 12:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzhaVar.zzg(i6, unsafe.getInt(t, j));
                        break;
                    }
                case 13:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzhaVar.zzb(i6, unsafe.getInt(t, j));
                        break;
                    }
                case 14:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzhaVar.zzd(i6, unsafe.getLong(t, j));
                        break;
                    }
                case 15:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzhaVar.zzp(i6, unsafe.getInt(t, j));
                        break;
                    }
                case 16:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzhaVar.zzq(i6, unsafe.getLong(t, j));
                        break;
                    }
                case 17:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzhaVar.zzs(i6, unsafe.getObject(t, j), zzv(i3));
                        break;
                    }
                case 18:
                    zzjk.zzJ(this.zzc[i3], (List) unsafe.getObject(t, j), zzhaVar, false);
                    break;
                case 19:
                    zzjk.zzK(this.zzc[i3], (List) unsafe.getObject(t, j), zzhaVar, false);
                    break;
                case 20:
                    zzjk.zzL(this.zzc[i3], (List) unsafe.getObject(t, j), zzhaVar, false);
                    break;
                case 21:
                    zzjk.zzM(this.zzc[i3], (List) unsafe.getObject(t, j), zzhaVar, false);
                    break;
                case 22:
                    zzjk.zzQ(this.zzc[i3], (List) unsafe.getObject(t, j), zzhaVar, false);
                    break;
                case 23:
                    zzjk.zzO(this.zzc[i3], (List) unsafe.getObject(t, j), zzhaVar, false);
                    break;
                case 24:
                    zzjk.zzT(this.zzc[i3], (List) unsafe.getObject(t, j), zzhaVar, false);
                    break;
                case 25:
                    zzjk.zzW(this.zzc[i3], (List) unsafe.getObject(t, j), zzhaVar, false);
                    break;
                case 26:
                    zzjk.zzX(this.zzc[i3], (List) unsafe.getObject(t, j), zzhaVar);
                    break;
                case 27:
                    zzjk.zzZ(this.zzc[i3], (List) unsafe.getObject(t, j), zzhaVar, zzv(i3));
                    break;
                case 28:
                    zzjk.zzY(this.zzc[i3], (List) unsafe.getObject(t, j), zzhaVar);
                    break;
                case 29:
                    zzjk.zzR(this.zzc[i3], (List) unsafe.getObject(t, j), zzhaVar, false);
                    break;
                case 30:
                    zzjk.zzV(this.zzc[i3], (List) unsafe.getObject(t, j), zzhaVar, false);
                    break;
                case 31:
                    zzjk.zzU(this.zzc[i3], (List) unsafe.getObject(t, j), zzhaVar, false);
                    break;
                case 32:
                    zzjk.zzP(this.zzc[i3], (List) unsafe.getObject(t, j), zzhaVar, false);
                    break;
                case 33:
                    zzjk.zzS(this.zzc[i3], (List) unsafe.getObject(t, j), zzhaVar, false);
                    break;
                case 34:
                    zzjk.zzN(this.zzc[i3], (List) unsafe.getObject(t, j), zzhaVar, false);
                    break;
                case 35:
                    zzjk.zzJ(this.zzc[i3], (List) unsafe.getObject(t, j), zzhaVar, true);
                    break;
                case 36:
                    zzjk.zzK(this.zzc[i3], (List) unsafe.getObject(t, j), zzhaVar, true);
                    break;
                case 37:
                    zzjk.zzL(this.zzc[i3], (List) unsafe.getObject(t, j), zzhaVar, true);
                    break;
                case 38:
                    zzjk.zzM(this.zzc[i3], (List) unsafe.getObject(t, j), zzhaVar, true);
                    break;
                case 39:
                    zzjk.zzQ(this.zzc[i3], (List) unsafe.getObject(t, j), zzhaVar, true);
                    break;
                case 40:
                    zzjk.zzO(this.zzc[i3], (List) unsafe.getObject(t, j), zzhaVar, true);
                    break;
                case 41:
                    zzjk.zzT(this.zzc[i3], (List) unsafe.getObject(t, j), zzhaVar, true);
                    break;
                case 42:
                    zzjk.zzW(this.zzc[i3], (List) unsafe.getObject(t, j), zzhaVar, true);
                    break;
                case 43:
                    zzjk.zzR(this.zzc[i3], (List) unsafe.getObject(t, j), zzhaVar, true);
                    break;
                case 44:
                    zzjk.zzV(this.zzc[i3], (List) unsafe.getObject(t, j), zzhaVar, true);
                    break;
                case 45:
                    zzjk.zzU(this.zzc[i3], (List) unsafe.getObject(t, j), zzhaVar, true);
                    break;
                case 46:
                    zzjk.zzP(this.zzc[i3], (List) unsafe.getObject(t, j), zzhaVar, true);
                    break;
                case 47:
                    zzjk.zzS(this.zzc[i3], (List) unsafe.getObject(t, j), zzhaVar, true);
                    break;
                case 48:
                    zzjk.zzN(this.zzc[i3], (List) unsafe.getObject(t, j), zzhaVar, true);
                    break;
                case 49:
                    zzjk.zzaa(this.zzc[i3], (List) unsafe.getObject(t, j), zzhaVar, zzv(i3));
                    break;
                case 50:
                    zzS(zzhaVar, i6, unsafe.getObject(t, j), i3);
                    break;
                case 51:
                    if (!zzM(t, i6, i3)) {
                        break;
                    } else {
                        zzhaVar.zzf(i6, zzD(t, j));
                        break;
                    }
                case 52:
                    if (!zzM(t, i6, i3)) {
                        break;
                    } else {
                        zzhaVar.zze(i6, zzE(t, j));
                        break;
                    }
                case 53:
                    if (!zzM(t, i6, i3)) {
                        break;
                    } else {
                        zzhaVar.zzc(i6, zzG(t, j));
                        break;
                    }
                case 54:
                    if (!zzM(t, i6, i3)) {
                        break;
                    } else {
                        zzhaVar.zzh(i6, zzG(t, j));
                        break;
                    }
                case 55:
                    if (!zzM(t, i6, i3)) {
                        break;
                    } else {
                        zzhaVar.zzi(i6, zzF(t, j));
                        break;
                    }
                case 56:
                    if (!zzM(t, i6, i3)) {
                        break;
                    } else {
                        zzhaVar.zzj(i6, zzG(t, j));
                        break;
                    }
                case 57:
                    if (!zzM(t, i6, i3)) {
                        break;
                    } else {
                        zzhaVar.zzk(i6, zzF(t, j));
                        break;
                    }
                case 58:
                    if (!zzM(t, i6, i3)) {
                        break;
                    } else {
                        zzhaVar.zzl(i6, zzH(t, j));
                        break;
                    }
                case 59:
                    if (!zzM(t, i6, i3)) {
                        break;
                    } else {
                        zzT(i6, unsafe.getObject(t, j), zzhaVar);
                        break;
                    }
                case 60:
                    if (!zzM(t, i6, i3)) {
                        break;
                    } else {
                        zzhaVar.zzr(i6, unsafe.getObject(t, j), zzv(i3));
                        break;
                    }
                case 61:
                    if (!zzM(t, i6, i3)) {
                        break;
                    } else {
                        zzhaVar.zzn(i6, (zzgs) unsafe.getObject(t, j));
                        break;
                    }
                case 62:
                    if (!zzM(t, i6, i3)) {
                        break;
                    } else {
                        zzhaVar.zzo(i6, zzF(t, j));
                        break;
                    }
                case 63:
                    if (!zzM(t, i6, i3)) {
                        break;
                    } else {
                        zzhaVar.zzg(i6, zzF(t, j));
                        break;
                    }
                case 64:
                    if (!zzM(t, i6, i3)) {
                        break;
                    } else {
                        zzhaVar.zzb(i6, zzF(t, j));
                        break;
                    }
                case 65:
                    if (!zzM(t, i6, i3)) {
                        break;
                    } else {
                        zzhaVar.zzd(i6, zzG(t, j));
                        break;
                    }
                case 66:
                    if (!zzM(t, i6, i3)) {
                        break;
                    } else {
                        zzhaVar.zzp(i6, zzF(t, j));
                        break;
                    }
                case 67:
                    if (!zzM(t, i6, i3)) {
                        break;
                    } else {
                        zzhaVar.zzq(i6, zzG(t, j));
                        break;
                    }
                case 68:
                    if (!zzM(t, i6, i3)) {
                        break;
                    } else {
                        zzhaVar.zzs(i6, unsafe.getObject(t, j), zzv(i3));
                        break;
                    }
            }
            i3 += 3;
            i4 = i;
        }
        zzjw<?, ?> zzjwVar = this.zzn;
        zzjwVar.zzi(zzjwVar.zzd(t), zzhaVar);
    }

    private final <K, V> void zzS(zzha zzhaVar, int i, Object obj, int i2) throws IOException {
        if (obj == null) {
            return;
        }
        zziq zziqVar = (zziq) zzw(i2);
        throw null;
    }

    private static final void zzT(int i, Object obj, zzha zzhaVar) throws IOException {
        if (obj instanceof String) {
            zzhaVar.zzm(i, (String) obj);
        } else {
            zzhaVar.zzn(i, (zzgs) obj);
        }
    }

    static zzjx zzf(Object obj) {
        zzhs zzhsVar = (zzhs) obj;
        zzjx zzjxVar = zzhsVar.zzc;
        zzjx zzjxVar2 = zzjxVar;
        if (zzjxVar == zzjx.zza()) {
            zzjxVar2 = zzjx.zzb();
            zzhsVar.zzc = zzjxVar2;
        }
        return zzjxVar2;
    }

    public static <T> zzja<T> zzk(Class<T> cls, zziu zziuVar, zzjc zzjcVar, zzil zzilVar, zzjw<?, ?> zzjwVar, zzhf<?> zzhfVar, zzis zzisVar) {
        if (zziuVar instanceof zzjh) {
            return zzl((zzjh) zziuVar, zzjcVar, zzilVar, zzjwVar, zzhfVar, zzisVar);
        }
        zzjt zzjtVar = (zzjt) zziuVar;
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:124:0x06d9  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x06e3  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0712  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x071c  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0959  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    static <T> com.google.android.gms.internal.measurement.zzja<T> zzl(com.google.android.gms.internal.measurement.zzjh r19, com.google.android.gms.internal.measurement.zzjc r20, com.google.android.gms.internal.measurement.zzil r21, com.google.android.gms.internal.measurement.zzjw<?, ?> r22, com.google.android.gms.internal.measurement.zzhf<?> r23, com.google.android.gms.internal.measurement.zzis r24) {
        /*
            Method dump skipped, instructions count: 2594
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzja.zzl(com.google.android.gms.internal.measurement.zzjh, com.google.android.gms.internal.measurement.zzjc, com.google.android.gms.internal.measurement.zzil, com.google.android.gms.internal.measurement.zzjw, com.google.android.gms.internal.measurement.zzhf, com.google.android.gms.internal.measurement.zzis):com.google.android.gms.internal.measurement.zzja");
    }

    private static Field zzn(Class<?> cls, String str) {
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

    private final void zzo(T t, T t2, int i) {
        long zzA = zzA(i) & 1048575;
        if (!zzK(t2, i)) {
            return;
        }
        Object zzn = zzkh.zzn(t, zzA);
        Object zzn2 = zzkh.zzn(t2, zzA);
        if (zzn != null && zzn2 != null) {
            zzkh.zzo(t, zzA, zzia.zzi(zzn, zzn2));
            zzL(t, i);
        } else if (zzn2 == null) {
        } else {
            zzkh.zzo(t, zzA, zzn2);
            zzL(t, i);
        }
    }

    private final void zzp(T t, T t2, int i) {
        int zzA = zzA(i);
        int i2 = this.zzc[i];
        long j = zzA & 1048575;
        if (!zzM(t2, i2, i)) {
            return;
        }
        Object zzn = zzM(t, i2, i) ? zzkh.zzn(t, j) : null;
        Object zzn2 = zzkh.zzn(t2, j);
        if (zzn != null && zzn2 != null) {
            zzkh.zzo(t, j, zzia.zzi(zzn, zzn2));
            zzN(t, i2, i);
        } else if (zzn2 == null) {
        } else {
            zzkh.zzo(t, j, zzn2);
            zzN(t, i2, i);
        }
    }

    private final int zzq(T t) {
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
        int zzw;
        int zzc;
        int zzw2;
        int i13;
        int i14;
        Unsafe unsafe = zzb;
        int i15 = 0;
        int i16 = 0;
        int i17 = 0;
        int i18 = 1048575;
        while (true) {
            int i19 = i18;
            if (i15 >= this.zzc.length) {
                zzjw<?, ?> zzjwVar = this.zzn;
                int zzh = zzjwVar.zzh(zzjwVar.zzd(t));
                if (!this.zzh) {
                    return i16 + zzh;
                }
                this.zzo.zzb(t);
                throw null;
            }
            int zzA = zzA(i15);
            int i20 = this.zzc[i15];
            int zzC = zzC(zzA);
            if (zzC <= 17) {
                int i21 = this.zzc[i15 + 2];
                int i22 = i21 & 1048575;
                int i23 = 1 << (i21 >>> 20);
                i = i19;
                i2 = i23;
                if (i22 != i19) {
                    i17 = unsafe.getInt(t, i22);
                    i = i22;
                    i2 = i23;
                }
            } else {
                i2 = 0;
                i = i19;
            }
            long j = zzA & 1048575;
            switch (zzC) {
                case 0:
                    i3 = i16;
                    if ((i17 & i2) != 0) {
                        i4 = zzgz.zzw(i20 << 3);
                        i5 = i4 + 8;
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 1:
                    i3 = i16;
                    if ((i17 & i2) != 0) {
                        i6 = zzgz.zzw(i20 << 3);
                        i5 = i6 + 4;
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 2:
                    i3 = i16;
                    if ((i17 & i2) != 0) {
                        long j2 = unsafe.getLong(t, j);
                        i8 = zzgz.zzw(i20 << 3);
                        i7 = zzgz.zzx(j2);
                        i5 = i8 + i7;
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 3:
                    i3 = i16;
                    if ((i17 & i2) != 0) {
                        long j3 = unsafe.getLong(t, j);
                        i8 = zzgz.zzw(i20 << 3);
                        i7 = zzgz.zzx(j3);
                        i5 = i8 + i7;
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 4:
                    i3 = i16;
                    if ((i17 & i2) != 0) {
                        int i24 = unsafe.getInt(t, j);
                        i10 = zzgz.zzw(i20 << 3);
                        i11 = zzgz.zzv(i24);
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 5:
                    i3 = i16;
                    if ((i17 & i2) != 0) {
                        i4 = zzgz.zzw(i20 << 3);
                        i5 = i4 + 8;
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 6:
                    i3 = i16;
                    if ((i17 & i2) != 0) {
                        i6 = zzgz.zzw(i20 << 3);
                        i5 = i6 + 4;
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 7:
                    i3 = i16;
                    if ((i17 & i2) != 0) {
                        i12 = zzgz.zzw(i20 << 3);
                        i5 = i12 + 1;
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 8:
                    i3 = i16;
                    if ((i17 & i2) != 0) {
                        Object object = unsafe.getObject(t, j);
                        if (object instanceof zzgs) {
                            zzw = zzgz.zzw(i20 << 3);
                            zzc = ((zzgs) object).zzc();
                            zzw2 = zzgz.zzw(zzc);
                            i9 = zzw + zzw2 + zzc;
                            i3 = i16 + i9;
                            i15 += 3;
                            i16 = i3;
                            i18 = i;
                        } else {
                            i10 = zzgz.zzw(i20 << 3);
                            i11 = zzgz.zzy((String) object);
                            i9 = i10 + i11;
                            i3 = i16 + i9;
                            i15 += 3;
                            i16 = i3;
                            i18 = i;
                        }
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 9:
                    i3 = i16;
                    if ((i17 & i2) != 0) {
                        i5 = zzjk.zzw(i20, unsafe.getObject(t, j), zzv(i15));
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 10:
                    i3 = i16;
                    if ((i17 & i2) != 0) {
                        zzgs zzgsVar = (zzgs) unsafe.getObject(t, j);
                        zzw = zzgz.zzw(i20 << 3);
                        zzc = zzgsVar.zzc();
                        zzw2 = zzgz.zzw(zzc);
                        i9 = zzw + zzw2 + zzc;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 11:
                    i3 = i16;
                    if ((i17 & i2) != 0) {
                        int i25 = unsafe.getInt(t, j);
                        i10 = zzgz.zzw(i20 << 3);
                        i11 = zzgz.zzw(i25);
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 12:
                    i3 = i16;
                    if ((i17 & i2) != 0) {
                        int i26 = unsafe.getInt(t, j);
                        i10 = zzgz.zzw(i20 << 3);
                        i11 = zzgz.zzv(i26);
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 13:
                    i3 = i16;
                    if ((i17 & i2) != 0) {
                        i6 = zzgz.zzw(i20 << 3);
                        i5 = i6 + 4;
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 14:
                    i3 = i16;
                    if ((i17 & i2) != 0) {
                        i4 = zzgz.zzw(i20 << 3);
                        i5 = i4 + 8;
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 15:
                    i3 = i16;
                    if ((i17 & i2) != 0) {
                        int i27 = unsafe.getInt(t, j);
                        i10 = zzgz.zzw(i20 << 3);
                        i11 = zzgz.zzw((i27 >> 31) ^ (i27 + i27));
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 16:
                    i3 = i16;
                    if ((i17 & i2) != 0) {
                        long j4 = unsafe.getLong(t, j);
                        i10 = zzgz.zzw(i20 << 3);
                        i11 = zzgz.zzx((j4 >> 63) ^ (j4 + j4));
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 17:
                    i3 = i16;
                    if ((i17 & i2) != 0) {
                        i5 = zzgz.zzE(i20, (zzix) unsafe.getObject(t, j), zzv(i15));
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 18:
                    i5 = zzjk.zzs(i20, (List) unsafe.getObject(t, j), false);
                    break;
                case 19:
                    i5 = zzjk.zzq(i20, (List) unsafe.getObject(t, j), false);
                    break;
                case 20:
                    i5 = zzjk.zzc(i20, (List) unsafe.getObject(t, j), false);
                    break;
                case 21:
                    i5 = zzjk.zze(i20, (List) unsafe.getObject(t, j), false);
                    break;
                case 22:
                    i5 = zzjk.zzk(i20, (List) unsafe.getObject(t, j), false);
                    break;
                case 23:
                    i5 = zzjk.zzs(i20, (List) unsafe.getObject(t, j), false);
                    break;
                case 24:
                    i5 = zzjk.zzq(i20, (List) unsafe.getObject(t, j), false);
                    break;
                case 25:
                    i5 = zzjk.zzu(i20, (List) unsafe.getObject(t, j), false);
                    break;
                case 26:
                    i5 = zzjk.zzv(i20, (List) unsafe.getObject(t, j));
                    break;
                case 27:
                    i5 = zzjk.zzx(i20, (List) unsafe.getObject(t, j), zzv(i15));
                    break;
                case 28:
                    i5 = zzjk.zzy(i20, (List) unsafe.getObject(t, j));
                    break;
                case 29:
                    i5 = zzjk.zzm(i20, (List) unsafe.getObject(t, j), false);
                    break;
                case 30:
                    i5 = zzjk.zzi(i20, (List) unsafe.getObject(t, j), false);
                    break;
                case 31:
                    i5 = zzjk.zzq(i20, (List) unsafe.getObject(t, j), false);
                    break;
                case 32:
                    i5 = zzjk.zzs(i20, (List) unsafe.getObject(t, j), false);
                    break;
                case 33:
                    i5 = zzjk.zzo(i20, (List) unsafe.getObject(t, j), false);
                    break;
                case 34:
                    i5 = zzjk.zzg(i20, (List) unsafe.getObject(t, j), false);
                    break;
                case 35:
                    int zzr = zzjk.zzr((List) unsafe.getObject(t, j));
                    i3 = i16;
                    if (zzr > 0) {
                        i14 = zzgz.zzu(i20);
                        i13 = zzgz.zzw(zzr);
                        i11 = zzr;
                        i10 = i14 + i13;
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 36:
                    int zzp = zzjk.zzp((List) unsafe.getObject(t, j));
                    i3 = i16;
                    if (zzp > 0) {
                        int zzu = zzgz.zzu(i20);
                        i13 = zzgz.zzw(zzp);
                        i11 = zzp;
                        i14 = zzu;
                        i10 = i14 + i13;
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 37:
                    int zzb2 = zzjk.zzb((List) unsafe.getObject(t, j));
                    i3 = i16;
                    if (zzb2 > 0) {
                        int zzu2 = zzgz.zzu(i20);
                        i13 = zzgz.zzw(zzb2);
                        i11 = zzb2;
                        i14 = zzu2;
                        i10 = i14 + i13;
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 38:
                    int zzd = zzjk.zzd((List) unsafe.getObject(t, j));
                    i3 = i16;
                    if (zzd > 0) {
                        int zzu3 = zzgz.zzu(i20);
                        i13 = zzgz.zzw(zzd);
                        i11 = zzd;
                        i14 = zzu3;
                        i10 = i14 + i13;
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 39:
                    int zzj = zzjk.zzj((List) unsafe.getObject(t, j));
                    i3 = i16;
                    if (zzj > 0) {
                        int zzu4 = zzgz.zzu(i20);
                        i13 = zzgz.zzw(zzj);
                        i11 = zzj;
                        i14 = zzu4;
                        i10 = i14 + i13;
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 40:
                    int zzr2 = zzjk.zzr((List) unsafe.getObject(t, j));
                    i3 = i16;
                    if (zzr2 > 0) {
                        int zzu5 = zzgz.zzu(i20);
                        i13 = zzgz.zzw(zzr2);
                        i11 = zzr2;
                        i14 = zzu5;
                        i10 = i14 + i13;
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 41:
                    int zzp2 = zzjk.zzp((List) unsafe.getObject(t, j));
                    i3 = i16;
                    if (zzp2 > 0) {
                        int zzu6 = zzgz.zzu(i20);
                        i13 = zzgz.zzw(zzp2);
                        i11 = zzp2;
                        i14 = zzu6;
                        i10 = i14 + i13;
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 42:
                    int zzt = zzjk.zzt((List) unsafe.getObject(t, j));
                    i3 = i16;
                    if (zzt > 0) {
                        int zzu7 = zzgz.zzu(i20);
                        i13 = zzgz.zzw(zzt);
                        i11 = zzt;
                        i14 = zzu7;
                        i10 = i14 + i13;
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 43:
                    int zzl = zzjk.zzl((List) unsafe.getObject(t, j));
                    i3 = i16;
                    if (zzl > 0) {
                        int zzu8 = zzgz.zzu(i20);
                        i13 = zzgz.zzw(zzl);
                        i11 = zzl;
                        i14 = zzu8;
                        i10 = i14 + i13;
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 44:
                    int zzh2 = zzjk.zzh((List) unsafe.getObject(t, j));
                    i3 = i16;
                    if (zzh2 > 0) {
                        int zzu9 = zzgz.zzu(i20);
                        i13 = zzgz.zzw(zzh2);
                        i11 = zzh2;
                        i14 = zzu9;
                        i10 = i14 + i13;
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 45:
                    int zzp3 = zzjk.zzp((List) unsafe.getObject(t, j));
                    i3 = i16;
                    if (zzp3 > 0) {
                        int zzu10 = zzgz.zzu(i20);
                        i13 = zzgz.zzw(zzp3);
                        i11 = zzp3;
                        i14 = zzu10;
                        i10 = i14 + i13;
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 46:
                    int zzr3 = zzjk.zzr((List) unsafe.getObject(t, j));
                    i3 = i16;
                    if (zzr3 > 0) {
                        int zzu11 = zzgz.zzu(i20);
                        i13 = zzgz.zzw(zzr3);
                        i11 = zzr3;
                        i14 = zzu11;
                        i10 = i14 + i13;
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 47:
                    int zzn = zzjk.zzn((List) unsafe.getObject(t, j));
                    i3 = i16;
                    if (zzn > 0) {
                        int zzu12 = zzgz.zzu(i20);
                        i13 = zzgz.zzw(zzn);
                        i11 = zzn;
                        i14 = zzu12;
                        i10 = i14 + i13;
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 48:
                    int zzf = zzjk.zzf((List) unsafe.getObject(t, j));
                    i3 = i16;
                    if (zzf > 0) {
                        int zzu13 = zzgz.zzu(i20);
                        i13 = zzgz.zzw(zzf);
                        i11 = zzf;
                        i14 = zzu13;
                        i10 = i14 + i13;
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 49:
                    i5 = zzjk.zzz(i20, (List) unsafe.getObject(t, j), zzv(i15));
                    break;
                case 50:
                    zzis.zza(i20, unsafe.getObject(t, j), zzw(i15));
                    i3 = i16;
                    continue;
                    i15 += 3;
                    i16 = i3;
                    i18 = i;
                case 51:
                    i3 = i16;
                    if (zzM(t, i20, i15)) {
                        i4 = zzgz.zzw(i20 << 3);
                        i5 = i4 + 8;
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 52:
                    i3 = i16;
                    if (zzM(t, i20, i15)) {
                        i6 = zzgz.zzw(i20 << 3);
                        i5 = i6 + 4;
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 53:
                    i3 = i16;
                    if (zzM(t, i20, i15)) {
                        long zzG = zzG(t, j);
                        i8 = zzgz.zzw(i20 << 3);
                        i7 = zzgz.zzx(zzG);
                        i5 = i8 + i7;
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 54:
                    i3 = i16;
                    if (zzM(t, i20, i15)) {
                        long zzG2 = zzG(t, j);
                        i8 = zzgz.zzw(i20 << 3);
                        i7 = zzgz.zzx(zzG2);
                        i5 = i8 + i7;
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 55:
                    i3 = i16;
                    if (zzM(t, i20, i15)) {
                        int zzF = zzF(t, j);
                        i10 = zzgz.zzw(i20 << 3);
                        i11 = zzgz.zzv(zzF);
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 56:
                    i3 = i16;
                    if (zzM(t, i20, i15)) {
                        i4 = zzgz.zzw(i20 << 3);
                        i5 = i4 + 8;
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 57:
                    i3 = i16;
                    if (zzM(t, i20, i15)) {
                        i6 = zzgz.zzw(i20 << 3);
                        i5 = i6 + 4;
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 58:
                    i3 = i16;
                    if (zzM(t, i20, i15)) {
                        i12 = zzgz.zzw(i20 << 3);
                        i5 = i12 + 1;
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 59:
                    i3 = i16;
                    if (zzM(t, i20, i15)) {
                        Object object2 = unsafe.getObject(t, j);
                        if (object2 instanceof zzgs) {
                            zzw = zzgz.zzw(i20 << 3);
                            zzc = ((zzgs) object2).zzc();
                            zzw2 = zzgz.zzw(zzc);
                            i9 = zzw + zzw2 + zzc;
                            i3 = i16 + i9;
                            i15 += 3;
                            i16 = i3;
                            i18 = i;
                        } else {
                            i10 = zzgz.zzw(i20 << 3);
                            i11 = zzgz.zzy((String) object2);
                            i9 = i10 + i11;
                            i3 = i16 + i9;
                            i15 += 3;
                            i16 = i3;
                            i18 = i;
                        }
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 60:
                    i3 = i16;
                    if (zzM(t, i20, i15)) {
                        i5 = zzjk.zzw(i20, unsafe.getObject(t, j), zzv(i15));
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 61:
                    i3 = i16;
                    if (zzM(t, i20, i15)) {
                        zzgs zzgsVar2 = (zzgs) unsafe.getObject(t, j);
                        zzw = zzgz.zzw(i20 << 3);
                        zzc = zzgsVar2.zzc();
                        zzw2 = zzgz.zzw(zzc);
                        i9 = zzw + zzw2 + zzc;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 62:
                    i3 = i16;
                    if (zzM(t, i20, i15)) {
                        int zzF2 = zzF(t, j);
                        i10 = zzgz.zzw(i20 << 3);
                        i11 = zzgz.zzw(zzF2);
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 63:
                    i3 = i16;
                    if (zzM(t, i20, i15)) {
                        int zzF3 = zzF(t, j);
                        i10 = zzgz.zzw(i20 << 3);
                        i11 = zzgz.zzv(zzF3);
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 64:
                    i3 = i16;
                    if (zzM(t, i20, i15)) {
                        i6 = zzgz.zzw(i20 << 3);
                        i5 = i6 + 4;
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 65:
                    i3 = i16;
                    if (zzM(t, i20, i15)) {
                        i4 = zzgz.zzw(i20 << 3);
                        i5 = i4 + 8;
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 66:
                    i3 = i16;
                    if (zzM(t, i20, i15)) {
                        int zzF4 = zzF(t, j);
                        i10 = zzgz.zzw(i20 << 3);
                        i11 = zzgz.zzw((zzF4 >> 31) ^ (zzF4 + zzF4));
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 67:
                    i3 = i16;
                    if (zzM(t, i20, i15)) {
                        long zzG3 = zzG(t, j);
                        i10 = zzgz.zzw(i20 << 3);
                        i11 = zzgz.zzx((zzG3 >> 63) ^ (zzG3 + zzG3));
                        i9 = i10 + i11;
                        i3 = i16 + i9;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                case 68:
                    i3 = i16;
                    if (zzM(t, i20, i15)) {
                        i5 = zzgz.zzE(i20, (zzix) unsafe.getObject(t, j), zzv(i15));
                        break;
                    } else {
                        continue;
                        i15 += 3;
                        i16 = i3;
                        i18 = i;
                    }
                default:
                    i3 = i16;
                    continue;
                    i15 += 3;
                    i16 = i3;
                    i18 = i;
            }
            i3 = i16 + i5;
            i15 += 3;
            i16 = i3;
            i18 = i;
        }
    }

    private final int zzr(T t) {
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
        int zzw;
        int zzc;
        int zzw2;
        int i11;
        int i12;
        Unsafe unsafe = zzb;
        int i13 = 0;
        int i14 = 0;
        while (true) {
            int i15 = i14;
            if (i13 >= this.zzc.length) {
                zzjw<?, ?> zzjwVar = this.zzn;
                return i15 + zzjwVar.zzh(zzjwVar.zzd(t));
            }
            int zzA = zzA(i13);
            int zzC = zzC(zzA);
            int i16 = this.zzc[i13];
            long j = zzA & 1048575;
            if (zzC >= zzhk.DOUBLE_LIST_PACKED.zza() && zzC <= zzhk.SINT64_LIST_PACKED.zza()) {
                int i17 = this.zzc[i13 + 2];
            }
            switch (zzC) {
                case 0:
                    i = i15;
                    if (!zzK(t, i13)) {
                        break;
                    } else {
                        i2 = zzgz.zzw(i16 << 3);
                        i3 = i2 + 8;
                        i = i15 + i3;
                        break;
                    }
                case 1:
                    i = i15;
                    if (!zzK(t, i13)) {
                        break;
                    } else {
                        i4 = zzgz.zzw(i16 << 3);
                        i3 = i4 + 4;
                        i = i15 + i3;
                        break;
                    }
                case 2:
                    i = i15;
                    if (!zzK(t, i13)) {
                        break;
                    } else {
                        long zzf = zzkh.zzf(t, j);
                        i6 = zzgz.zzw(i16 << 3);
                        i5 = zzgz.zzx(zzf);
                        i = i15 + i6 + i5;
                        break;
                    }
                case 3:
                    i = i15;
                    if (!zzK(t, i13)) {
                        break;
                    } else {
                        long zzf2 = zzkh.zzf(t, j);
                        i6 = zzgz.zzw(i16 << 3);
                        i5 = zzgz.zzx(zzf2);
                        i = i15 + i6 + i5;
                        break;
                    }
                case 4:
                    i = i15;
                    if (!zzK(t, i13)) {
                        break;
                    } else {
                        int zzd = zzkh.zzd(t, j);
                        i9 = zzgz.zzw(i16 << 3);
                        i8 = zzgz.zzv(zzd);
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 5:
                    i = i15;
                    if (!zzK(t, i13)) {
                        break;
                    } else {
                        i2 = zzgz.zzw(i16 << 3);
                        i3 = i2 + 8;
                        i = i15 + i3;
                        break;
                    }
                case 6:
                    i = i15;
                    if (!zzK(t, i13)) {
                        break;
                    } else {
                        i4 = zzgz.zzw(i16 << 3);
                        i3 = i4 + 4;
                        i = i15 + i3;
                        break;
                    }
                case 7:
                    i = i15;
                    if (!zzK(t, i13)) {
                        break;
                    } else {
                        i10 = zzgz.zzw(i16 << 3);
                        i3 = i10 + 1;
                        i = i15 + i3;
                        break;
                    }
                case 8:
                    i = i15;
                    if (!zzK(t, i13)) {
                        break;
                    } else {
                        Object zzn = zzkh.zzn(t, j);
                        if (zzn instanceof zzgs) {
                            zzw = zzgz.zzw(i16 << 3);
                            zzc = ((zzgs) zzn).zzc();
                            zzw2 = zzgz.zzw(zzc);
                            i7 = zzw + zzw2 + zzc;
                            i = i15 + i7;
                            break;
                        } else {
                            i9 = zzgz.zzw(i16 << 3);
                            i8 = zzgz.zzy((String) zzn);
                            i7 = i9 + i8;
                            i = i15 + i7;
                        }
                    }
                case 9:
                    i = i15;
                    if (!zzK(t, i13)) {
                        break;
                    } else {
                        i3 = zzjk.zzw(i16, zzkh.zzn(t, j), zzv(i13));
                        i = i15 + i3;
                        break;
                    }
                case 10:
                    i = i15;
                    if (!zzK(t, i13)) {
                        break;
                    } else {
                        zzgs zzgsVar = (zzgs) zzkh.zzn(t, j);
                        zzw = zzgz.zzw(i16 << 3);
                        zzc = zzgsVar.zzc();
                        zzw2 = zzgz.zzw(zzc);
                        i7 = zzw + zzw2 + zzc;
                        i = i15 + i7;
                        break;
                    }
                case 11:
                    i = i15;
                    if (!zzK(t, i13)) {
                        break;
                    } else {
                        int zzd2 = zzkh.zzd(t, j);
                        i9 = zzgz.zzw(i16 << 3);
                        i8 = zzgz.zzw(zzd2);
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 12:
                    i = i15;
                    if (!zzK(t, i13)) {
                        break;
                    } else {
                        int zzd3 = zzkh.zzd(t, j);
                        i9 = zzgz.zzw(i16 << 3);
                        i8 = zzgz.zzv(zzd3);
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 13:
                    i = i15;
                    if (!zzK(t, i13)) {
                        break;
                    } else {
                        i4 = zzgz.zzw(i16 << 3);
                        i3 = i4 + 4;
                        i = i15 + i3;
                        break;
                    }
                case 14:
                    i = i15;
                    if (!zzK(t, i13)) {
                        break;
                    } else {
                        i2 = zzgz.zzw(i16 << 3);
                        i3 = i2 + 8;
                        i = i15 + i3;
                        break;
                    }
                case 15:
                    i = i15;
                    if (!zzK(t, i13)) {
                        break;
                    } else {
                        int zzd4 = zzkh.zzd(t, j);
                        i9 = zzgz.zzw(i16 << 3);
                        i8 = zzgz.zzw((zzd4 >> 31) ^ (zzd4 + zzd4));
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 16:
                    i = i15;
                    if (!zzK(t, i13)) {
                        break;
                    } else {
                        long zzf3 = zzkh.zzf(t, j);
                        i9 = zzgz.zzw(i16 << 3);
                        i8 = zzgz.zzx((zzf3 >> 63) ^ (zzf3 + zzf3));
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 17:
                    i = i15;
                    if (!zzK(t, i13)) {
                        break;
                    } else {
                        i3 = zzgz.zzE(i16, (zzix) zzkh.zzn(t, j), zzv(i13));
                        i = i15 + i3;
                        break;
                    }
                case 18:
                    i3 = zzjk.zzs(i16, (List) zzkh.zzn(t, j), false);
                    i = i15 + i3;
                    break;
                case 19:
                    i3 = zzjk.zzq(i16, (List) zzkh.zzn(t, j), false);
                    i = i15 + i3;
                    break;
                case 20:
                    i3 = zzjk.zzc(i16, (List) zzkh.zzn(t, j), false);
                    i = i15 + i3;
                    break;
                case 21:
                    i3 = zzjk.zze(i16, (List) zzkh.zzn(t, j), false);
                    i = i15 + i3;
                    break;
                case 22:
                    i3 = zzjk.zzk(i16, (List) zzkh.zzn(t, j), false);
                    i = i15 + i3;
                    break;
                case 23:
                    i3 = zzjk.zzs(i16, (List) zzkh.zzn(t, j), false);
                    i = i15 + i3;
                    break;
                case 24:
                    i3 = zzjk.zzq(i16, (List) zzkh.zzn(t, j), false);
                    i = i15 + i3;
                    break;
                case 25:
                    i3 = zzjk.zzu(i16, (List) zzkh.zzn(t, j), false);
                    i = i15 + i3;
                    break;
                case 26:
                    i3 = zzjk.zzv(i16, (List) zzkh.zzn(t, j));
                    i = i15 + i3;
                    break;
                case 27:
                    i3 = zzjk.zzx(i16, (List) zzkh.zzn(t, j), zzv(i13));
                    i = i15 + i3;
                    break;
                case 28:
                    i3 = zzjk.zzy(i16, (List) zzkh.zzn(t, j));
                    i = i15 + i3;
                    break;
                case 29:
                    i3 = zzjk.zzm(i16, (List) zzkh.zzn(t, j), false);
                    i = i15 + i3;
                    break;
                case 30:
                    i3 = zzjk.zzi(i16, (List) zzkh.zzn(t, j), false);
                    i = i15 + i3;
                    break;
                case 31:
                    i3 = zzjk.zzq(i16, (List) zzkh.zzn(t, j), false);
                    i = i15 + i3;
                    break;
                case 32:
                    i3 = zzjk.zzs(i16, (List) zzkh.zzn(t, j), false);
                    i = i15 + i3;
                    break;
                case 33:
                    i3 = zzjk.zzo(i16, (List) zzkh.zzn(t, j), false);
                    i = i15 + i3;
                    break;
                case 34:
                    i3 = zzjk.zzg(i16, (List) zzkh.zzn(t, j), false);
                    i = i15 + i3;
                    break;
                case 35:
                    int zzr = zzjk.zzr((List) unsafe.getObject(t, j));
                    i = i15;
                    if (zzr <= 0) {
                        break;
                    } else {
                        i12 = zzgz.zzu(i16);
                        i11 = zzgz.zzw(zzr);
                        i8 = zzr;
                        i9 = i12 + i11;
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 36:
                    int zzp = zzjk.zzp((List) unsafe.getObject(t, j));
                    i = i15;
                    if (zzp <= 0) {
                        break;
                    } else {
                        int zzu = zzgz.zzu(i16);
                        i11 = zzgz.zzw(zzp);
                        i8 = zzp;
                        i12 = zzu;
                        i9 = i12 + i11;
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 37:
                    int zzb2 = zzjk.zzb((List) unsafe.getObject(t, j));
                    i = i15;
                    if (zzb2 <= 0) {
                        break;
                    } else {
                        int zzu2 = zzgz.zzu(i16);
                        i11 = zzgz.zzw(zzb2);
                        i8 = zzb2;
                        i12 = zzu2;
                        i9 = i12 + i11;
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 38:
                    int zzd5 = zzjk.zzd((List) unsafe.getObject(t, j));
                    i = i15;
                    if (zzd5 <= 0) {
                        break;
                    } else {
                        int zzu3 = zzgz.zzu(i16);
                        i11 = zzgz.zzw(zzd5);
                        i8 = zzd5;
                        i12 = zzu3;
                        i9 = i12 + i11;
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 39:
                    int zzj = zzjk.zzj((List) unsafe.getObject(t, j));
                    i = i15;
                    if (zzj <= 0) {
                        break;
                    } else {
                        int zzu4 = zzgz.zzu(i16);
                        i11 = zzgz.zzw(zzj);
                        i8 = zzj;
                        i12 = zzu4;
                        i9 = i12 + i11;
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 40:
                    int zzr2 = zzjk.zzr((List) unsafe.getObject(t, j));
                    i = i15;
                    if (zzr2 <= 0) {
                        break;
                    } else {
                        int zzu5 = zzgz.zzu(i16);
                        i11 = zzgz.zzw(zzr2);
                        i8 = zzr2;
                        i12 = zzu5;
                        i9 = i12 + i11;
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 41:
                    int zzp2 = zzjk.zzp((List) unsafe.getObject(t, j));
                    i = i15;
                    if (zzp2 <= 0) {
                        break;
                    } else {
                        int zzu6 = zzgz.zzu(i16);
                        i11 = zzgz.zzw(zzp2);
                        i8 = zzp2;
                        i12 = zzu6;
                        i9 = i12 + i11;
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 42:
                    int zzt = zzjk.zzt((List) unsafe.getObject(t, j));
                    i = i15;
                    if (zzt <= 0) {
                        break;
                    } else {
                        int zzu7 = zzgz.zzu(i16);
                        i11 = zzgz.zzw(zzt);
                        i8 = zzt;
                        i12 = zzu7;
                        i9 = i12 + i11;
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 43:
                    int zzl = zzjk.zzl((List) unsafe.getObject(t, j));
                    i = i15;
                    if (zzl <= 0) {
                        break;
                    } else {
                        int zzu8 = zzgz.zzu(i16);
                        i11 = zzgz.zzw(zzl);
                        i8 = zzl;
                        i12 = zzu8;
                        i9 = i12 + i11;
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 44:
                    int zzh = zzjk.zzh((List) unsafe.getObject(t, j));
                    i = i15;
                    if (zzh <= 0) {
                        break;
                    } else {
                        int zzu9 = zzgz.zzu(i16);
                        i11 = zzgz.zzw(zzh);
                        i8 = zzh;
                        i12 = zzu9;
                        i9 = i12 + i11;
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 45:
                    int zzp3 = zzjk.zzp((List) unsafe.getObject(t, j));
                    i = i15;
                    if (zzp3 <= 0) {
                        break;
                    } else {
                        int zzu10 = zzgz.zzu(i16);
                        i11 = zzgz.zzw(zzp3);
                        i8 = zzp3;
                        i12 = zzu10;
                        i9 = i12 + i11;
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 46:
                    int zzr3 = zzjk.zzr((List) unsafe.getObject(t, j));
                    i = i15;
                    if (zzr3 <= 0) {
                        break;
                    } else {
                        int zzu11 = zzgz.zzu(i16);
                        i11 = zzgz.zzw(zzr3);
                        i8 = zzr3;
                        i12 = zzu11;
                        i9 = i12 + i11;
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 47:
                    int zzn2 = zzjk.zzn((List) unsafe.getObject(t, j));
                    i = i15;
                    if (zzn2 <= 0) {
                        break;
                    } else {
                        int zzu12 = zzgz.zzu(i16);
                        i11 = zzgz.zzw(zzn2);
                        i8 = zzn2;
                        i12 = zzu12;
                        i9 = i12 + i11;
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 48:
                    int zzf4 = zzjk.zzf((List) unsafe.getObject(t, j));
                    i = i15;
                    if (zzf4 <= 0) {
                        break;
                    } else {
                        int zzu13 = zzgz.zzu(i16);
                        i11 = zzgz.zzw(zzf4);
                        i8 = zzf4;
                        i12 = zzu13;
                        i9 = i12 + i11;
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 49:
                    i3 = zzjk.zzz(i16, (List) zzkh.zzn(t, j), zzv(i13));
                    i = i15 + i3;
                    break;
                case 50:
                    zzis.zza(i16, zzkh.zzn(t, j), zzw(i13));
                    i = i15;
                    break;
                case 51:
                    i = i15;
                    if (!zzM(t, i16, i13)) {
                        break;
                    } else {
                        i2 = zzgz.zzw(i16 << 3);
                        i3 = i2 + 8;
                        i = i15 + i3;
                        break;
                    }
                case 52:
                    i = i15;
                    if (!zzM(t, i16, i13)) {
                        break;
                    } else {
                        i4 = zzgz.zzw(i16 << 3);
                        i3 = i4 + 4;
                        i = i15 + i3;
                        break;
                    }
                case 53:
                    i = i15;
                    if (!zzM(t, i16, i13)) {
                        break;
                    } else {
                        long zzG = zzG(t, j);
                        i6 = zzgz.zzw(i16 << 3);
                        i5 = zzgz.zzx(zzG);
                        i = i15 + i6 + i5;
                        break;
                    }
                case 54:
                    i = i15;
                    if (!zzM(t, i16, i13)) {
                        break;
                    } else {
                        long zzG2 = zzG(t, j);
                        i6 = zzgz.zzw(i16 << 3);
                        i5 = zzgz.zzx(zzG2);
                        i = i15 + i6 + i5;
                        break;
                    }
                case 55:
                    i = i15;
                    if (!zzM(t, i16, i13)) {
                        break;
                    } else {
                        int zzF = zzF(t, j);
                        i9 = zzgz.zzw(i16 << 3);
                        i8 = zzgz.zzv(zzF);
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 56:
                    i = i15;
                    if (!zzM(t, i16, i13)) {
                        break;
                    } else {
                        i2 = zzgz.zzw(i16 << 3);
                        i3 = i2 + 8;
                        i = i15 + i3;
                        break;
                    }
                case 57:
                    i = i15;
                    if (!zzM(t, i16, i13)) {
                        break;
                    } else {
                        i4 = zzgz.zzw(i16 << 3);
                        i3 = i4 + 4;
                        i = i15 + i3;
                        break;
                    }
                case 58:
                    i = i15;
                    if (!zzM(t, i16, i13)) {
                        break;
                    } else {
                        i10 = zzgz.zzw(i16 << 3);
                        i3 = i10 + 1;
                        i = i15 + i3;
                        break;
                    }
                case 59:
                    i = i15;
                    if (!zzM(t, i16, i13)) {
                        break;
                    } else {
                        Object zzn3 = zzkh.zzn(t, j);
                        if (zzn3 instanceof zzgs) {
                            zzw = zzgz.zzw(i16 << 3);
                            zzc = ((zzgs) zzn3).zzc();
                            zzw2 = zzgz.zzw(zzc);
                            i7 = zzw + zzw2 + zzc;
                            i = i15 + i7;
                            break;
                        } else {
                            i9 = zzgz.zzw(i16 << 3);
                            i8 = zzgz.zzy((String) zzn3);
                            i7 = i9 + i8;
                            i = i15 + i7;
                        }
                    }
                case 60:
                    i = i15;
                    if (!zzM(t, i16, i13)) {
                        break;
                    } else {
                        i3 = zzjk.zzw(i16, zzkh.zzn(t, j), zzv(i13));
                        i = i15 + i3;
                        break;
                    }
                case 61:
                    i = i15;
                    if (!zzM(t, i16, i13)) {
                        break;
                    } else {
                        zzgs zzgsVar2 = (zzgs) zzkh.zzn(t, j);
                        zzw = zzgz.zzw(i16 << 3);
                        zzc = zzgsVar2.zzc();
                        zzw2 = zzgz.zzw(zzc);
                        i7 = zzw + zzw2 + zzc;
                        i = i15 + i7;
                        break;
                    }
                case 62:
                    i = i15;
                    if (!zzM(t, i16, i13)) {
                        break;
                    } else {
                        int zzF2 = zzF(t, j);
                        i9 = zzgz.zzw(i16 << 3);
                        i8 = zzgz.zzw(zzF2);
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 63:
                    i = i15;
                    if (!zzM(t, i16, i13)) {
                        break;
                    } else {
                        int zzF3 = zzF(t, j);
                        i9 = zzgz.zzw(i16 << 3);
                        i8 = zzgz.zzv(zzF3);
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 64:
                    i = i15;
                    if (!zzM(t, i16, i13)) {
                        break;
                    } else {
                        i4 = zzgz.zzw(i16 << 3);
                        i3 = i4 + 4;
                        i = i15 + i3;
                        break;
                    }
                case 65:
                    i = i15;
                    if (!zzM(t, i16, i13)) {
                        break;
                    } else {
                        i2 = zzgz.zzw(i16 << 3);
                        i3 = i2 + 8;
                        i = i15 + i3;
                        break;
                    }
                case 66:
                    i = i15;
                    if (!zzM(t, i16, i13)) {
                        break;
                    } else {
                        int zzF4 = zzF(t, j);
                        i9 = zzgz.zzw(i16 << 3);
                        i8 = zzgz.zzw((zzF4 >> 31) ^ (zzF4 + zzF4));
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 67:
                    i = i15;
                    if (!zzM(t, i16, i13)) {
                        break;
                    } else {
                        long zzG3 = zzG(t, j);
                        i9 = zzgz.zzw(i16 << 3);
                        i8 = zzgz.zzx((zzG3 >> 63) ^ (zzG3 + zzG3));
                        i7 = i9 + i8;
                        i = i15 + i7;
                        break;
                    }
                case 68:
                    i = i15;
                    if (!zzM(t, i16, i13)) {
                        break;
                    } else {
                        i3 = zzgz.zzE(i16, (zzix) zzkh.zzn(t, j), zzv(i13));
                        i = i15 + i3;
                        break;
                    }
                default:
                    i = i15;
                    break;
            }
            i13 += 3;
            i14 = i;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x0404  */
    /* JADX WARN: Removed duplicated region for block: B:321:0x093d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0317  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:115:0x03f6 -> B:116:0x03fb). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:77:0x030c -> B:78:0x0311). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zzs(T r9, byte[] r10, int r11, int r12, int r13, int r14, int r15, int r16, long r17, int r19, long r20, com.google.android.gms.internal.measurement.zzge r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2370
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzja.zzs(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, com.google.android.gms.internal.measurement.zzge):int");
    }

    private final <K, V> int zzt(T t, byte[] bArr, int i, int i2, int i3, long j, zzge zzgeVar) throws IOException {
        Unsafe unsafe = zzb;
        Object zzw = zzw(i3);
        Object object = unsafe.getObject(t, j);
        if (!((zzir) object).zze()) {
            zzir<K, V> zzc = zzir.zza().zzc();
            zzis.zzb(zzc, object);
            unsafe.putObject(t, j, zzc);
        }
        zziq zziqVar = (zziq) zzw;
        throw null;
    }

    private final int zzu(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, zzge zzgeVar) throws IOException {
        Unsafe unsafe = zzb;
        long j2 = this.zzc[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Double.valueOf(Double.longBitsToDouble(zzgf.zze(bArr, i))));
                    unsafe.putInt(t, j2, i4);
                    return i + 8;
                }
                break;
            case 52:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Float.valueOf(Float.intBitsToFloat(zzgf.zzd(bArr, i))));
                    unsafe.putInt(t, j2, i4);
                    return i + 4;
                }
                break;
            case 53:
            case 54:
                if (i5 == 0) {
                    int zzc = zzgf.zzc(bArr, i, zzgeVar);
                    unsafe.putObject(t, j, Long.valueOf(zzgeVar.zzb));
                    unsafe.putInt(t, j2, i4);
                    return zzc;
                }
                break;
            case 55:
            case 62:
                if (i5 == 0) {
                    int zza2 = zzgf.zza(bArr, i, zzgeVar);
                    unsafe.putObject(t, j, Integer.valueOf(zzgeVar.zza));
                    unsafe.putInt(t, j2, i4);
                    return zza2;
                }
                break;
            case 56:
            case 65:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Long.valueOf(zzgf.zze(bArr, i)));
                    unsafe.putInt(t, j2, i4);
                    return i + 8;
                }
                break;
            case 57:
            case 64:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Integer.valueOf(zzgf.zzd(bArr, i)));
                    unsafe.putInt(t, j2, i4);
                    return i + 4;
                }
                break;
            case 58:
                if (i5 == 0) {
                    int zzc2 = zzgf.zzc(bArr, i, zzgeVar);
                    unsafe.putObject(t, j, Boolean.valueOf(zzgeVar.zzb != 0));
                    unsafe.putInt(t, j2, i4);
                    return zzc2;
                }
                break;
            case 59:
                if (i5 == 2) {
                    i = zzgf.zza(bArr, i, zzgeVar);
                    int i9 = zzgeVar.zza;
                    if (i9 == 0) {
                        unsafe.putObject(t, j, "");
                    } else if ((i6 & 536870912) != 0 && !zzkn.zzb(bArr, i, i + i9)) {
                        throw zzic.zzf();
                    } else {
                        unsafe.putObject(t, j, new String(bArr, i, i9, zzia.zza));
                        i += i9;
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 60:
                if (i5 == 2) {
                    i = zzgf.zzi(zzv(i8), bArr, i, i2, zzgeVar);
                    Object object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object == null) {
                        unsafe.putObject(t, j, zzgeVar.zzc);
                    } else {
                        unsafe.putObject(t, j, zzia.zzi(object, zzgeVar.zzc));
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 61:
                if (i5 == 2) {
                    int zzh = zzgf.zzh(bArr, i, zzgeVar);
                    unsafe.putObject(t, j, zzgeVar.zzc);
                    unsafe.putInt(t, j2, i4);
                    return zzh;
                }
                break;
            case 63:
                if (i5 == 0) {
                    i = zzgf.zza(bArr, i, zzgeVar);
                    int i10 = zzgeVar.zza;
                    zzhw zzx = zzx(i8);
                    if (zzx != null && !zzx.zza(i10)) {
                        zzf(t).zzh(i3, Long.valueOf(i10));
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
                    int zza3 = zzgf.zza(bArr, i, zzgeVar);
                    unsafe.putObject(t, j, Integer.valueOf(zzgv.zzb(zzgeVar.zza)));
                    unsafe.putInt(t, j2, i4);
                    return zza3;
                }
                break;
            case 67:
                if (i5 == 0) {
                    int zzc3 = zzgf.zzc(bArr, i, zzgeVar);
                    unsafe.putObject(t, j, Long.valueOf(zzgv.zzc(zzgeVar.zzb)));
                    unsafe.putInt(t, j2, i4);
                    return zzc3;
                }
                break;
            case 68:
                if (i5 == 3) {
                    i = zzgf.zzj(zzv(i8), bArr, i, i2, (i3 & (-8)) | 4, zzgeVar);
                    Object object2 = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object2 == null) {
                        unsafe.putObject(t, j, zzgeVar.zzc);
                    } else {
                        unsafe.putObject(t, j, zzia.zzi(object2, zzgeVar.zzc));
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
        }
        return i;
    }

    private final zzji zzv(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        zzji zzjiVar = (zzji) this.zzd[i3];
        if (zzjiVar != null) {
            return zzjiVar;
        }
        zzji<T> zzb2 = zzjf.zza().zzb((Class) this.zzd[i3 + 1]);
        this.zzd[i3] = zzb2;
        return zzb2;
    }

    private final Object zzw(int i) {
        int i2 = i / 3;
        return this.zzd[i2 + i2];
    }

    private final zzhw zzx(int i) {
        int i2 = i / 3;
        return (zzhw) this.zzd[i2 + i2 + 1];
    }

    /* JADX WARN: Code restructure failed: missing block: B:108:0x04b6, code lost:
        if (r24 != r0) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x04ef, code lost:
        if (r24 != r0) goto L101;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v208, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zzy(T r17, byte[] r18, int r19, int r20, com.google.android.gms.internal.measurement.zzge r21) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzja.zzy(java.lang.Object, byte[], int, int, com.google.android.gms.internal.measurement.zzge):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean zzz(Object obj, int i, zzji zzjiVar) {
        return zzjiVar.zzj(zzkh.zzn(obj, i & 1048575));
    }

    @Override // com.google.android.gms.internal.measurement.zzji
    public final T zza() {
        return (T) ((zzhs) this.zzg).zzl(4, null, null);
    }

    @Override // com.google.android.gms.internal.measurement.zzji
    public final boolean zzb(T t, T t2) {
        boolean z;
        int length = this.zzc.length;
        for (int i = 0; i < length; i += 3) {
            int zzA = zzA(i);
            long j = zzA & 1048575;
            switch (zzC(zzA)) {
                case 0:
                    if (!zzI(t, t2, i) || Double.doubleToLongBits(zzkh.zzl(t, j)) != Double.doubleToLongBits(zzkh.zzl(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 1:
                    if (!zzI(t, t2, i) || Float.floatToIntBits(zzkh.zzj(t, j)) != Float.floatToIntBits(zzkh.zzj(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 2:
                    if (!zzI(t, t2, i) || zzkh.zzf(t, j) != zzkh.zzf(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 3:
                    if (!zzI(t, t2, i) || zzkh.zzf(t, j) != zzkh.zzf(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 4:
                    if (!zzI(t, t2, i) || zzkh.zzd(t, j) != zzkh.zzd(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 5:
                    if (!zzI(t, t2, i) || zzkh.zzf(t, j) != zzkh.zzf(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 6:
                    if (!zzI(t, t2, i) || zzkh.zzd(t, j) != zzkh.zzd(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 7:
                    if (!zzI(t, t2, i) || zzkh.zzh(t, j) != zzkh.zzh(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 8:
                    if (!zzI(t, t2, i) || !zzjk.zzD(zzkh.zzn(t, j), zzkh.zzn(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 9:
                    if (!zzI(t, t2, i) || !zzjk.zzD(zzkh.zzn(t, j), zzkh.zzn(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 10:
                    if (!zzI(t, t2, i) || !zzjk.zzD(zzkh.zzn(t, j), zzkh.zzn(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 11:
                    if (!zzI(t, t2, i) || zzkh.zzd(t, j) != zzkh.zzd(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 12:
                    if (!zzI(t, t2, i) || zzkh.zzd(t, j) != zzkh.zzd(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 13:
                    if (!zzI(t, t2, i) || zzkh.zzd(t, j) != zzkh.zzd(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 14:
                    if (!zzI(t, t2, i) || zzkh.zzf(t, j) != zzkh.zzf(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 15:
                    if (!zzI(t, t2, i) || zzkh.zzd(t, j) != zzkh.zzd(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 16:
                    if (!zzI(t, t2, i) || zzkh.zzf(t, j) != zzkh.zzf(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 17:
                    if (!zzI(t, t2, i) || !zzjk.zzD(zzkh.zzn(t, j), zzkh.zzn(t2, j))) {
                        return false;
                    }
                    continue;
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
                    z = zzjk.zzD(zzkh.zzn(t, j), zzkh.zzn(t2, j));
                    break;
                case 50:
                    z = zzjk.zzD(zzkh.zzn(t, j), zzkh.zzn(t2, j));
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
                case 60:
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                case 68:
                    long zzB = zzB(i) & 1048575;
                    if (zzkh.zzd(t, zzB) != zzkh.zzd(t2, zzB) || !zzjk.zzD(zzkh.zzn(t, j), zzkh.zzn(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                default:
            }
            if (!z) {
                return false;
            }
        }
        if (!this.zzn.zzd(t).equals(this.zzn.zzd(t2))) {
            return false;
        }
        if (!this.zzh) {
            return true;
        }
        this.zzo.zzb(t);
        this.zzo.zzb(t2);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzji
    public final int zzc(T t) {
        int i;
        int i2;
        int i3;
        int length = this.zzc.length;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int i6 = i5;
            if (i4 >= length) {
                int hashCode = this.zzn.zzd(t).hashCode();
                if (!this.zzh) {
                    return (i6 * 53) + hashCode;
                }
                this.zzo.zzb(t);
                throw null;
            }
            int zzA = zzA(i4);
            int i7 = this.zzc[i4];
            long j = 1048575 & zzA;
            int i8 = 37;
            switch (zzC(zzA)) {
                case 0:
                    i2 = i6 * 53;
                    i3 = zzia.zze(Double.doubleToLongBits(zzkh.zzl(t, j)));
                    i = i2 + i3;
                    break;
                case 1:
                    i2 = i6 * 53;
                    i3 = Float.floatToIntBits(zzkh.zzj(t, j));
                    i = i2 + i3;
                    break;
                case 2:
                    i2 = i6 * 53;
                    i3 = zzia.zze(zzkh.zzf(t, j));
                    i = i2 + i3;
                    break;
                case 3:
                    i2 = i6 * 53;
                    i3 = zzia.zze(zzkh.zzf(t, j));
                    i = i2 + i3;
                    break;
                case 4:
                    i2 = i6 * 53;
                    i3 = zzkh.zzd(t, j);
                    i = i2 + i3;
                    break;
                case 5:
                    i2 = i6 * 53;
                    i3 = zzia.zze(zzkh.zzf(t, j));
                    i = i2 + i3;
                    break;
                case 6:
                    i2 = i6 * 53;
                    i3 = zzkh.zzd(t, j);
                    i = i2 + i3;
                    break;
                case 7:
                    i2 = i6 * 53;
                    i3 = zzia.zzf(zzkh.zzh(t, j));
                    i = i2 + i3;
                    break;
                case 8:
                    i2 = i6 * 53;
                    i3 = ((String) zzkh.zzn(t, j)).hashCode();
                    i = i2 + i3;
                    break;
                case 9:
                    Object zzn = zzkh.zzn(t, j);
                    if (zzn != null) {
                        i8 = zzn.hashCode();
                    }
                    i = (i6 * 53) + i8;
                    break;
                case 10:
                    i2 = i6 * 53;
                    i3 = zzkh.zzn(t, j).hashCode();
                    i = i2 + i3;
                    break;
                case 11:
                    i2 = i6 * 53;
                    i3 = zzkh.zzd(t, j);
                    i = i2 + i3;
                    break;
                case 12:
                    i2 = i6 * 53;
                    i3 = zzkh.zzd(t, j);
                    i = i2 + i3;
                    break;
                case 13:
                    i2 = i6 * 53;
                    i3 = zzkh.zzd(t, j);
                    i = i2 + i3;
                    break;
                case 14:
                    i2 = i6 * 53;
                    i3 = zzia.zze(zzkh.zzf(t, j));
                    i = i2 + i3;
                    break;
                case 15:
                    i2 = i6 * 53;
                    i3 = zzkh.zzd(t, j);
                    i = i2 + i3;
                    break;
                case 16:
                    i2 = i6 * 53;
                    i3 = zzia.zze(zzkh.zzf(t, j));
                    i = i2 + i3;
                    break;
                case 17:
                    Object zzn2 = zzkh.zzn(t, j);
                    if (zzn2 != null) {
                        i8 = zzn2.hashCode();
                    }
                    i = (i6 * 53) + i8;
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
                    i3 = zzkh.zzn(t, j).hashCode();
                    i = i2 + i3;
                    break;
                case 50:
                    i2 = i6 * 53;
                    i3 = zzkh.zzn(t, j).hashCode();
                    i = i2 + i3;
                    break;
                case 51:
                    i = i6;
                    if (!zzM(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzia.zze(Double.doubleToLongBits(zzD(t, j)));
                        i = i2 + i3;
                        break;
                    }
                case 52:
                    i = i6;
                    if (!zzM(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = Float.floatToIntBits(zzE(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 53:
                    i = i6;
                    if (!zzM(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzia.zze(zzG(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 54:
                    i = i6;
                    if (!zzM(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzia.zze(zzG(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 55:
                    i = i6;
                    if (!zzM(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzF(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 56:
                    i = i6;
                    if (!zzM(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzia.zze(zzG(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 57:
                    i = i6;
                    if (!zzM(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzF(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 58:
                    i = i6;
                    if (!zzM(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzia.zzf(zzH(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 59:
                    i = i6;
                    if (!zzM(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = ((String) zzkh.zzn(t, j)).hashCode();
                        i = i2 + i3;
                        break;
                    }
                case 60:
                    i = i6;
                    if (!zzM(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzkh.zzn(t, j).hashCode();
                        i = i2 + i3;
                        break;
                    }
                case 61:
                    i = i6;
                    if (!zzM(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzkh.zzn(t, j).hashCode();
                        i = i2 + i3;
                        break;
                    }
                case 62:
                    i = i6;
                    if (!zzM(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzF(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 63:
                    i = i6;
                    if (!zzM(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzF(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 64:
                    i = i6;
                    if (!zzM(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzF(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 65:
                    i = i6;
                    if (!zzM(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzia.zze(zzG(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 66:
                    i = i6;
                    if (!zzM(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzF(t, j);
                        i = i2 + i3;
                        break;
                    }
                case 67:
                    i = i6;
                    if (!zzM(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzia.zze(zzG(t, j));
                        i = i2 + i3;
                        break;
                    }
                case 68:
                    i = i6;
                    if (!zzM(t, i7, i4)) {
                        break;
                    } else {
                        i2 = i6 * 53;
                        i3 = zzkh.zzn(t, j).hashCode();
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

    @Override // com.google.android.gms.internal.measurement.zzji
    public final void zzd(T t, T t2) {
        Objects.requireNonNull(t2);
        for (int i = 0; i < this.zzc.length; i += 3) {
            int zzA = zzA(i);
            long j = 1048575 & zzA;
            int i2 = this.zzc[i];
            switch (zzC(zzA)) {
                case 0:
                    if (zzK(t2, i)) {
                        zzkh.zzm(t, j, zzkh.zzl(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zzK(t2, i)) {
                        zzkh.zzk(t, j, zzkh.zzj(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zzK(t2, i)) {
                        zzkh.zzg(t, j, zzkh.zzf(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zzK(t2, i)) {
                        zzkh.zzg(t, j, zzkh.zzf(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zzK(t2, i)) {
                        zzkh.zze(t, j, zzkh.zzd(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zzK(t2, i)) {
                        zzkh.zzg(t, j, zzkh.zzf(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zzK(t2, i)) {
                        zzkh.zze(t, j, zzkh.zzd(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zzK(t2, i)) {
                        zzkh.zzi(t, j, zzkh.zzh(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (zzK(t2, i)) {
                        zzkh.zzo(t, j, zzkh.zzn(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    zzo(t, t2, i);
                    break;
                case 10:
                    if (zzK(t2, i)) {
                        zzkh.zzo(t, j, zzkh.zzn(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zzK(t2, i)) {
                        zzkh.zze(t, j, zzkh.zzd(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zzK(t2, i)) {
                        zzkh.zze(t, j, zzkh.zzd(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zzK(t2, i)) {
                        zzkh.zze(t, j, zzkh.zzd(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zzK(t2, i)) {
                        zzkh.zzg(t, j, zzkh.zzf(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zzK(t2, i)) {
                        zzkh.zze(t, j, zzkh.zzd(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zzK(t2, i)) {
                        zzkh.zzg(t, j, zzkh.zzf(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    zzo(t, t2, i);
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
                    this.zzm.zzb(t, t2, j);
                    break;
                case 50:
                    zzjk.zzI(this.zzq, t, t2, j);
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
                    if (zzM(t2, i2, i)) {
                        zzkh.zzo(t, j, zzkh.zzn(t2, j));
                        zzN(t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    zzp(t, t2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zzM(t2, i2, i)) {
                        zzkh.zzo(t, j, zzkh.zzn(t2, j));
                        zzN(t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    zzp(t, t2, i);
                    break;
            }
        }
        zzjk.zzF(this.zzn, t, t2);
        if (this.zzh) {
            zzjk.zzE(this.zzo, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzji
    public final int zze(T t) {
        return this.zzi ? zzr(t) : zzq(t);
    }

    /* JADX WARN: Code restructure failed: missing block: B:139:0x066d, code lost:
        if (r32 == 1048575) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0670, code lost:
        r0.putInt(r18, r32, r35);
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x067b, code lost:
        r19 = r17.zzk;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0685, code lost:
        if (r19 >= r17.zzl) goto L213;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x0688, code lost:
        r0 = r17.zzj[r19];
        r0 = r17.zzc[r0];
        r0 = com.google.android.gms.internal.measurement.zzkh.zzn(r18, r17.zzA(r0) & 1048575);
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x06ab, code lost:
        if (r0 != null) goto L146;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x06b7, code lost:
        if (r17.zzx(r0) != null) goto L214;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x06ba, code lost:
        r19 = r19 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x06c0, code lost:
        r0 = (com.google.android.gms.internal.measurement.zzir) r0;
        r0 = (com.google.android.gms.internal.measurement.zziq) r17.zzw(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x06d1, code lost:
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x06d4, code lost:
        if (r21 != 0) goto L157;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x06db, code lost:
        if (r28 != r20) goto L155;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x06e4, code lost:
        throw com.google.android.gms.internal.measurement.zzic.zze();
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x06e9, code lost:
        if (r28 > r20) goto L163;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x06f0, code lost:
        if (r29 != r21) goto L163;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x06f5, code lost:
        return r28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x06f9, code lost:
        throw com.google.android.gms.internal.measurement.zzic.zze();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzg(T r17, byte[] r18, int r19, int r20, int r21, com.google.android.gms.internal.measurement.zzge r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1786
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzja.zzg(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.measurement.zzge):int");
    }

    @Override // com.google.android.gms.internal.measurement.zzji
    public final void zzh(T t, byte[] bArr, int i, int i2, zzge zzgeVar) throws IOException {
        if (this.zzi) {
            zzy(t, bArr, i, i2, zzgeVar);
        } else {
            zzg(t, bArr, i, i2, 0, zzgeVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzji
    public final void zzi(T t) {
        int i;
        int i2 = this.zzk;
        while (true) {
            i = this.zzl;
            if (i2 >= i) {
                break;
            }
            long zzA = zzA(this.zzj[i2]) & 1048575;
            Object zzn = zzkh.zzn(t, zzA);
            if (zzn != null) {
                ((zzir) zzn).zzd();
                zzkh.zzo(t, zzA, zzn);
            }
            i2++;
        }
        int length = this.zzj.length;
        for (int i3 = i; i3 < length; i3++) {
            this.zzm.zza(t, this.zzj[i3]);
        }
        this.zzn.zze(t);
        if (this.zzh) {
            this.zzo.zzc(t);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.measurement.zzji
    public final boolean zzj(T t) {
        int i = 1048575;
        int i2 = 0;
        for (int i3 = 0; i3 < this.zzk; i3++) {
            int i4 = this.zzj[i3];
            int i5 = this.zzc[i4];
            int zzA = zzA(i4);
            int i6 = this.zzc[i4 + 2];
            int i7 = i6 & 1048575;
            int i8 = 1 << (i6 >>> 20);
            if (i7 != i) {
                if (i7 != 1048575) {
                    i2 = zzb.getInt(t, i7);
                }
                i = i7;
            }
            if ((268435456 & zzA) != 0 && !zzJ(t, i4, i, i2, i8)) {
                return false;
            }
            int zzC = zzC(zzA);
            if (zzC != 9 && zzC != 17) {
                if (zzC != 27) {
                    if (zzC == 60 || zzC == 68) {
                        if (zzM(t, i5, i4) && !zzz(t, zzA, zzv(i4))) {
                            return false;
                        }
                    } else if (zzC != 49) {
                        if (zzC == 50 && !((zzir) zzkh.zzn(t, zzA & 1048575)).isEmpty()) {
                            zziq zziqVar = (zziq) zzw(i4);
                            throw null;
                        }
                    }
                }
                List list = (List) zzkh.zzn(t, zzA & 1048575);
                if (!list.isEmpty()) {
                    zzji zzv = zzv(i4);
                    for (int i9 = 0; i9 < list.size(); i9++) {
                        if (!zzv.zzj(list.get(i9))) {
                            return false;
                        }
                    }
                    continue;
                } else {
                    continue;
                }
            } else if (zzJ(t, i4, i, i2, i8) && !zzz(t, zzA, zzv(i4))) {
                return false;
            }
        }
        if (!this.zzh) {
            return true;
        }
        this.zzo.zzb(t);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzji
    public final void zzm(T t, zzha zzhaVar) throws IOException {
        if (!this.zzi) {
            zzR(t, zzhaVar);
        } else if (this.zzh) {
            this.zzo.zzb(t);
            throw null;
        } else {
            int length = this.zzc.length;
            for (int i = 0; i < length; i += 3) {
                int zzA = zzA(i);
                int i2 = this.zzc[i];
                switch (zzC(zzA)) {
                    case 0:
                        if (zzK(t, i)) {
                            zzhaVar.zzf(i2, zzkh.zzl(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (zzK(t, i)) {
                            zzhaVar.zze(i2, zzkh.zzj(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (zzK(t, i)) {
                            zzhaVar.zzc(i2, zzkh.zzf(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (zzK(t, i)) {
                            zzhaVar.zzh(i2, zzkh.zzf(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (zzK(t, i)) {
                            zzhaVar.zzi(i2, zzkh.zzd(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (zzK(t, i)) {
                            zzhaVar.zzj(i2, zzkh.zzf(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (zzK(t, i)) {
                            zzhaVar.zzk(i2, zzkh.zzd(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (zzK(t, i)) {
                            zzhaVar.zzl(i2, zzkh.zzh(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (zzK(t, i)) {
                            zzT(i2, zzkh.zzn(t, zzA & 1048575), zzhaVar);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        if (zzK(t, i)) {
                            zzhaVar.zzr(i2, zzkh.zzn(t, zzA & 1048575), zzv(i));
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (zzK(t, i)) {
                            zzhaVar.zzn(i2, (zzgs) zzkh.zzn(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (zzK(t, i)) {
                            zzhaVar.zzo(i2, zzkh.zzd(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (zzK(t, i)) {
                            zzhaVar.zzg(i2, zzkh.zzd(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (zzK(t, i)) {
                            zzhaVar.zzb(i2, zzkh.zzd(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (zzK(t, i)) {
                            zzhaVar.zzd(i2, zzkh.zzf(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (zzK(t, i)) {
                            zzhaVar.zzp(i2, zzkh.zzd(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (zzK(t, i)) {
                            zzhaVar.zzq(i2, zzkh.zzf(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        if (zzK(t, i)) {
                            zzhaVar.zzs(i2, zzkh.zzn(t, zzA & 1048575), zzv(i));
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        zzjk.zzJ(this.zzc[i], (List) zzkh.zzn(t, zzA & 1048575), zzhaVar, false);
                        break;
                    case 19:
                        zzjk.zzK(this.zzc[i], (List) zzkh.zzn(t, zzA & 1048575), zzhaVar, false);
                        break;
                    case 20:
                        zzjk.zzL(this.zzc[i], (List) zzkh.zzn(t, zzA & 1048575), zzhaVar, false);
                        break;
                    case 21:
                        zzjk.zzM(this.zzc[i], (List) zzkh.zzn(t, zzA & 1048575), zzhaVar, false);
                        break;
                    case 22:
                        zzjk.zzQ(this.zzc[i], (List) zzkh.zzn(t, zzA & 1048575), zzhaVar, false);
                        break;
                    case 23:
                        zzjk.zzO(this.zzc[i], (List) zzkh.zzn(t, zzA & 1048575), zzhaVar, false);
                        break;
                    case 24:
                        zzjk.zzT(this.zzc[i], (List) zzkh.zzn(t, zzA & 1048575), zzhaVar, false);
                        break;
                    case 25:
                        zzjk.zzW(this.zzc[i], (List) zzkh.zzn(t, zzA & 1048575), zzhaVar, false);
                        break;
                    case 26:
                        zzjk.zzX(this.zzc[i], (List) zzkh.zzn(t, zzA & 1048575), zzhaVar);
                        break;
                    case 27:
                        zzjk.zzZ(this.zzc[i], (List) zzkh.zzn(t, zzA & 1048575), zzhaVar, zzv(i));
                        break;
                    case 28:
                        zzjk.zzY(this.zzc[i], (List) zzkh.zzn(t, zzA & 1048575), zzhaVar);
                        break;
                    case 29:
                        zzjk.zzR(this.zzc[i], (List) zzkh.zzn(t, zzA & 1048575), zzhaVar, false);
                        break;
                    case 30:
                        zzjk.zzV(this.zzc[i], (List) zzkh.zzn(t, zzA & 1048575), zzhaVar, false);
                        break;
                    case 31:
                        zzjk.zzU(this.zzc[i], (List) zzkh.zzn(t, zzA & 1048575), zzhaVar, false);
                        break;
                    case 32:
                        zzjk.zzP(this.zzc[i], (List) zzkh.zzn(t, zzA & 1048575), zzhaVar, false);
                        break;
                    case 33:
                        zzjk.zzS(this.zzc[i], (List) zzkh.zzn(t, zzA & 1048575), zzhaVar, false);
                        break;
                    case 34:
                        zzjk.zzN(this.zzc[i], (List) zzkh.zzn(t, zzA & 1048575), zzhaVar, false);
                        break;
                    case 35:
                        zzjk.zzJ(this.zzc[i], (List) zzkh.zzn(t, zzA & 1048575), zzhaVar, true);
                        break;
                    case 36:
                        zzjk.zzK(this.zzc[i], (List) zzkh.zzn(t, zzA & 1048575), zzhaVar, true);
                        break;
                    case 37:
                        zzjk.zzL(this.zzc[i], (List) zzkh.zzn(t, zzA & 1048575), zzhaVar, true);
                        break;
                    case 38:
                        zzjk.zzM(this.zzc[i], (List) zzkh.zzn(t, zzA & 1048575), zzhaVar, true);
                        break;
                    case 39:
                        zzjk.zzQ(this.zzc[i], (List) zzkh.zzn(t, zzA & 1048575), zzhaVar, true);
                        break;
                    case 40:
                        zzjk.zzO(this.zzc[i], (List) zzkh.zzn(t, zzA & 1048575), zzhaVar, true);
                        break;
                    case 41:
                        zzjk.zzT(this.zzc[i], (List) zzkh.zzn(t, zzA & 1048575), zzhaVar, true);
                        break;
                    case 42:
                        zzjk.zzW(this.zzc[i], (List) zzkh.zzn(t, zzA & 1048575), zzhaVar, true);
                        break;
                    case 43:
                        zzjk.zzR(this.zzc[i], (List) zzkh.zzn(t, zzA & 1048575), zzhaVar, true);
                        break;
                    case 44:
                        zzjk.zzV(this.zzc[i], (List) zzkh.zzn(t, zzA & 1048575), zzhaVar, true);
                        break;
                    case 45:
                        zzjk.zzU(this.zzc[i], (List) zzkh.zzn(t, zzA & 1048575), zzhaVar, true);
                        break;
                    case 46:
                        zzjk.zzP(this.zzc[i], (List) zzkh.zzn(t, zzA & 1048575), zzhaVar, true);
                        break;
                    case 47:
                        zzjk.zzS(this.zzc[i], (List) zzkh.zzn(t, zzA & 1048575), zzhaVar, true);
                        break;
                    case 48:
                        zzjk.zzN(this.zzc[i], (List) zzkh.zzn(t, zzA & 1048575), zzhaVar, true);
                        break;
                    case 49:
                        zzjk.zzaa(this.zzc[i], (List) zzkh.zzn(t, zzA & 1048575), zzhaVar, zzv(i));
                        break;
                    case 50:
                        zzS(zzhaVar, i2, zzkh.zzn(t, zzA & 1048575), i);
                        break;
                    case 51:
                        if (zzM(t, i2, i)) {
                            zzhaVar.zzf(i2, zzD(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        if (zzM(t, i2, i)) {
                            zzhaVar.zze(i2, zzE(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        if (zzM(t, i2, i)) {
                            zzhaVar.zzc(i2, zzG(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        if (zzM(t, i2, i)) {
                            zzhaVar.zzh(i2, zzG(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        if (zzM(t, i2, i)) {
                            zzhaVar.zzi(i2, zzF(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        if (zzM(t, i2, i)) {
                            zzhaVar.zzj(i2, zzG(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        if (zzM(t, i2, i)) {
                            zzhaVar.zzk(i2, zzF(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        if (zzM(t, i2, i)) {
                            zzhaVar.zzl(i2, zzH(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        if (zzM(t, i2, i)) {
                            zzT(i2, zzkh.zzn(t, zzA & 1048575), zzhaVar);
                            break;
                        } else {
                            break;
                        }
                    case 60:
                        if (zzM(t, i2, i)) {
                            zzhaVar.zzr(i2, zzkh.zzn(t, zzA & 1048575), zzv(i));
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        if (zzM(t, i2, i)) {
                            zzhaVar.zzn(i2, (zzgs) zzkh.zzn(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        if (zzM(t, i2, i)) {
                            zzhaVar.zzo(i2, zzF(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        if (zzM(t, i2, i)) {
                            zzhaVar.zzg(i2, zzF(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (zzM(t, i2, i)) {
                            zzhaVar.zzb(i2, zzF(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (zzM(t, i2, i)) {
                            zzhaVar.zzd(i2, zzG(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        if (zzM(t, i2, i)) {
                            zzhaVar.zzp(i2, zzF(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        if (zzM(t, i2, i)) {
                            zzhaVar.zzq(i2, zzG(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        if (zzM(t, i2, i)) {
                            zzhaVar.zzs(i2, zzkh.zzn(t, zzA & 1048575), zzv(i));
                            break;
                        } else {
                            break;
                        }
                }
            }
            zzjw<?, ?> zzjwVar = this.zzn;
            zzjwVar.zzi(zzjwVar.zzd(t), zzhaVar);
        }
    }
}
