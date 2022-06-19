package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import sun.misc.Unsafe;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzlf.class */
public final class zzlf<T> implements zzln<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzml.zzg();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzlc zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final int[] zzj;
    private final int zzk;
    private final int zzl;
    private final zzkq zzm;
    private final zzmb zzn;
    private final zzjk zzo;
    private final zzlh zzp;
    private final zzkx zzq;

    private zzlf(int[] iArr, Object[] objArr, int i, int i2, zzlc zzlcVar, boolean z, boolean z2, int[] iArr2, int i3, int i4, zzlh zzlhVar, zzkq zzkqVar, zzmb zzmbVar, zzjk zzjkVar, zzkx zzkxVar, byte[] bArr) {
        this.zzc = iArr;
        this.zzd = objArr;
        this.zze = i;
        this.zzf = i2;
        this.zzi = z;
        boolean z3 = false;
        if (zzjkVar != null) {
            z3 = false;
            if (zzjkVar.zzc(zzlcVar)) {
                z3 = true;
            }
        }
        this.zzh = z3;
        this.zzj = iArr2;
        this.zzk = i3;
        this.zzl = i4;
        this.zzp = zzlhVar;
        this.zzm = zzkqVar;
        this.zzn = zzmbVar;
        this.zzo = zzjkVar;
        this.zzg = zzlcVar;
        this.zzq = zzkxVar;
    }

    private static int zzA(int i) {
        return (i >>> 20) & 255;
    }

    private final int zzB(int i) {
        return this.zzc[i + 1];
    }

    private static long zzC(Object obj, long j) {
        return ((Long) zzml.zzf(obj, j)).longValue();
    }

    private final zzkb zzD(int i) {
        int i2 = i / 3;
        return (zzkb) this.zzd[i2 + i2 + 1];
    }

    private final zzln zzE(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        zzln zzlnVar = (zzln) this.zzd[i3];
        if (zzlnVar != null) {
            return zzlnVar;
        }
        zzln zzb2 = zzlk.zza().zzb((Class) this.zzd[i3 + 1]);
        this.zzd[i3] = zzb2;
        return zzb2;
    }

    private final Object zzF(int i) {
        int i2 = i / 3;
        return this.zzd[i2 + i2];
    }

    private static Field zzG(Class cls, String str) {
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
            StringBuilder sb = new StringBuilder(C22128a.m8642b(String.valueOf(str).length(), 40, name.length(), String.valueOf(arrays).length()));
            C22128a.m8666T0(sb, "Field ", str, " for ", name);
            throw new RuntimeException(C22128a.m8618h(sb, " not found. Known fields are ", arrays));
        }
    }

    private final void zzH(Object obj, Object obj2, int i) {
        long zzB = zzB(i) & 1048575;
        if (!zzM(obj2, i)) {
            return;
        }
        Object zzf = zzml.zzf(obj, zzB);
        Object zzf2 = zzml.zzf(obj2, zzB);
        if (zzf != null && zzf2 != null) {
            zzml.zzs(obj, zzB, zzkf.zzg(zzf, zzf2));
            zzJ(obj, i);
        } else if (zzf2 == null) {
        } else {
            zzml.zzs(obj, zzB, zzf2);
            zzJ(obj, i);
        }
    }

    private final void zzI(Object obj, Object obj2, int i) {
        int zzB = zzB(i);
        int i2 = this.zzc[i];
        long j = zzB & 1048575;
        if (!zzP(obj2, i2, i)) {
            return;
        }
        Object zzf = zzP(obj, i2, i) ? zzml.zzf(obj, j) : null;
        Object zzf2 = zzml.zzf(obj2, j);
        if (zzf != null && zzf2 != null) {
            zzml.zzs(obj, j, zzkf.zzg(zzf, zzf2));
            zzK(obj, i2, i);
        } else if (zzf2 == null) {
        } else {
            zzml.zzs(obj, j, zzf2);
            zzK(obj, i2, i);
        }
    }

    private final void zzJ(Object obj, int i) {
        int zzy = zzy(i);
        long j = 1048575 & zzy;
        if (j == 1048575) {
            return;
        }
        zzml.zzq(obj, j, (1 << (zzy >>> 20)) | zzml.zzc(obj, j));
    }

    private final void zzK(Object obj, int i, int i2) {
        zzml.zzq(obj, zzy(i2) & 1048575, i);
    }

    private final boolean zzL(Object obj, Object obj2, int i) {
        return zzM(obj, i) == zzM(obj2, i);
    }

    private final boolean zzM(Object obj, int i) {
        int zzy = zzy(i);
        long j = zzy & 1048575;
        if (j != 1048575) {
            return (zzml.zzc(obj, j) & (1 << (zzy >>> 20))) != 0;
        }
        int zzB = zzB(i);
        long j2 = zzB & 1048575;
        switch (zzA(zzB)) {
            case 0:
                return Double.doubleToRawLongBits(zzml.zza(obj, j2)) != 0;
            case 1:
                return Float.floatToRawIntBits(zzml.zzb(obj, j2)) != 0;
            case 2:
                return zzml.zzd(obj, j2) != 0;
            case 3:
                return zzml.zzd(obj, j2) != 0;
            case 4:
                return zzml.zzc(obj, j2) != 0;
            case 5:
                return zzml.zzd(obj, j2) != 0;
            case 6:
                return zzml.zzc(obj, j2) != 0;
            case 7:
                return zzml.zzw(obj, j2);
            case 8:
                Object zzf = zzml.zzf(obj, j2);
                if (zzf instanceof String) {
                    return !((String) zzf).isEmpty();
                } else if (!(zzf instanceof zzix)) {
                    throw new IllegalArgumentException();
                } else {
                    return !zzix.zzb.equals(zzf);
                }
            case 9:
                return zzml.zzf(obj, j2) != null;
            case 10:
                return !zzix.zzb.equals(zzml.zzf(obj, j2));
            case 11:
                return zzml.zzc(obj, j2) != 0;
            case 12:
                return zzml.zzc(obj, j2) != 0;
            case 13:
                return zzml.zzc(obj, j2) != 0;
            case 14:
                return zzml.zzd(obj, j2) != 0;
            case 15:
                return zzml.zzc(obj, j2) != 0;
            case 16:
                return zzml.zzd(obj, j2) != 0;
            case 17:
                return zzml.zzf(obj, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zzN(Object obj, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? zzM(obj, i) : (i3 & i4) != 0;
    }

    private static boolean zzO(Object obj, int i, zzln zzlnVar) {
        return zzlnVar.zzj(zzml.zzf(obj, i & 1048575));
    }

    private final boolean zzP(Object obj, int i, int i2) {
        return zzml.zzc(obj, (long) (zzy(i2) & 1048575)) == i;
    }

    private static boolean zzQ(Object obj, long j) {
        return ((Boolean) zzml.zzf(obj, j)).booleanValue();
    }

    private final void zzR(Object obj, zzjf zzjfVar) throws IOException {
        int i;
        int i2;
        if (this.zzh) {
            this.zzo.zza(obj);
            throw null;
        }
        int length = this.zzc.length;
        Unsafe unsafe = zzb;
        int i3 = 1048575;
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int i6 = i5;
            if (i4 >= length) {
                zzmb zzmbVar = this.zzn;
                zzmbVar.zzi(zzmbVar.zzc(obj), zzjfVar);
                return;
            }
            int zzB = zzB(i4);
            int[] iArr = this.zzc;
            int i7 = iArr[i4];
            int zzA = zzA(zzB);
            if (zzA <= 17) {
                int i8 = iArr[i4 + 2];
                int i9 = i8 & 1048575;
                i = i6;
                int i10 = i3;
                if (i9 != i3) {
                    i = unsafe.getInt(obj, i9);
                    i10 = i9;
                }
                i2 = 1 << (i8 >>> 20);
                i3 = i10;
            } else {
                i2 = 0;
                i = i6;
            }
            long j = zzB & 1048575;
            switch (zzA) {
                case 0:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzjfVar.zzf(i7, zzml.zza(obj, j));
                        break;
                    }
                case 1:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzjfVar.zzo(i7, zzml.zzb(obj, j));
                        break;
                    }
                case 2:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzjfVar.zzt(i7, unsafe.getLong(obj, j));
                        break;
                    }
                case 3:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzjfVar.zzJ(i7, unsafe.getLong(obj, j));
                        break;
                    }
                case 4:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzjfVar.zzr(i7, unsafe.getInt(obj, j));
                        break;
                    }
                case 5:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzjfVar.zzm(i7, unsafe.getLong(obj, j));
                        break;
                    }
                case 6:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzjfVar.zzk(i7, unsafe.getInt(obj, j));
                        break;
                    }
                case 7:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzjfVar.zzb(i7, zzml.zzw(obj, j));
                        break;
                    }
                case 8:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzT(i7, unsafe.getObject(obj, j), zzjfVar);
                        break;
                    }
                case 9:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzjfVar.zzv(i7, unsafe.getObject(obj, j), zzE(i4));
                        break;
                    }
                case 10:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzjfVar.zzd(i7, (zzix) unsafe.getObject(obj, j));
                        break;
                    }
                case 11:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzjfVar.zzH(i7, unsafe.getInt(obj, j));
                        break;
                    }
                case 12:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzjfVar.zzi(i7, unsafe.getInt(obj, j));
                        break;
                    }
                case 13:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzjfVar.zzw(i7, unsafe.getInt(obj, j));
                        break;
                    }
                case 14:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzjfVar.zzy(i7, unsafe.getLong(obj, j));
                        break;
                    }
                case 15:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzjfVar.zzA(i7, unsafe.getInt(obj, j));
                        break;
                    }
                case 16:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzjfVar.zzC(i7, unsafe.getLong(obj, j));
                        break;
                    }
                case 17:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzjfVar.zzq(i7, unsafe.getObject(obj, j), zzE(i4));
                        break;
                    }
                case 18:
                    zzlp.zzL(this.zzc[i4], (List) unsafe.getObject(obj, j), zzjfVar, false);
                    break;
                case 19:
                    zzlp.zzP(this.zzc[i4], (List) unsafe.getObject(obj, j), zzjfVar, false);
                    break;
                case 20:
                    zzlp.zzS(this.zzc[i4], (List) unsafe.getObject(obj, j), zzjfVar, false);
                    break;
                case 21:
                    zzlp.zzaa(this.zzc[i4], (List) unsafe.getObject(obj, j), zzjfVar, false);
                    break;
                case 22:
                    zzlp.zzR(this.zzc[i4], (List) unsafe.getObject(obj, j), zzjfVar, false);
                    break;
                case 23:
                    zzlp.zzO(this.zzc[i4], (List) unsafe.getObject(obj, j), zzjfVar, false);
                    break;
                case 24:
                    zzlp.zzN(this.zzc[i4], (List) unsafe.getObject(obj, j), zzjfVar, false);
                    break;
                case 25:
                    zzlp.zzJ(this.zzc[i4], (List) unsafe.getObject(obj, j), zzjfVar, false);
                    break;
                case 26:
                    zzlp.zzY(this.zzc[i4], (List) unsafe.getObject(obj, j), zzjfVar);
                    break;
                case 27:
                    zzlp.zzT(this.zzc[i4], (List) unsafe.getObject(obj, j), zzjfVar, zzE(i4));
                    break;
                case 28:
                    zzlp.zzK(this.zzc[i4], (List) unsafe.getObject(obj, j), zzjfVar);
                    break;
                case 29:
                    zzlp.zzZ(this.zzc[i4], (List) unsafe.getObject(obj, j), zzjfVar, false);
                    break;
                case 30:
                    zzlp.zzM(this.zzc[i4], (List) unsafe.getObject(obj, j), zzjfVar, false);
                    break;
                case 31:
                    zzlp.zzU(this.zzc[i4], (List) unsafe.getObject(obj, j), zzjfVar, false);
                    break;
                case 32:
                    zzlp.zzV(this.zzc[i4], (List) unsafe.getObject(obj, j), zzjfVar, false);
                    break;
                case 33:
                    zzlp.zzW(this.zzc[i4], (List) unsafe.getObject(obj, j), zzjfVar, false);
                    break;
                case 34:
                    zzlp.zzX(this.zzc[i4], (List) unsafe.getObject(obj, j), zzjfVar, false);
                    break;
                case 35:
                    zzlp.zzL(this.zzc[i4], (List) unsafe.getObject(obj, j), zzjfVar, true);
                    break;
                case 36:
                    zzlp.zzP(this.zzc[i4], (List) unsafe.getObject(obj, j), zzjfVar, true);
                    break;
                case 37:
                    zzlp.zzS(this.zzc[i4], (List) unsafe.getObject(obj, j), zzjfVar, true);
                    break;
                case 38:
                    zzlp.zzaa(this.zzc[i4], (List) unsafe.getObject(obj, j), zzjfVar, true);
                    break;
                case 39:
                    zzlp.zzR(this.zzc[i4], (List) unsafe.getObject(obj, j), zzjfVar, true);
                    break;
                case 40:
                    zzlp.zzO(this.zzc[i4], (List) unsafe.getObject(obj, j), zzjfVar, true);
                    break;
                case 41:
                    zzlp.zzN(this.zzc[i4], (List) unsafe.getObject(obj, j), zzjfVar, true);
                    break;
                case 42:
                    zzlp.zzJ(this.zzc[i4], (List) unsafe.getObject(obj, j), zzjfVar, true);
                    break;
                case 43:
                    zzlp.zzZ(this.zzc[i4], (List) unsafe.getObject(obj, j), zzjfVar, true);
                    break;
                case 44:
                    zzlp.zzM(this.zzc[i4], (List) unsafe.getObject(obj, j), zzjfVar, true);
                    break;
                case 45:
                    zzlp.zzU(this.zzc[i4], (List) unsafe.getObject(obj, j), zzjfVar, true);
                    break;
                case 46:
                    zzlp.zzV(this.zzc[i4], (List) unsafe.getObject(obj, j), zzjfVar, true);
                    break;
                case 47:
                    zzlp.zzW(this.zzc[i4], (List) unsafe.getObject(obj, j), zzjfVar, true);
                    break;
                case 48:
                    zzlp.zzX(this.zzc[i4], (List) unsafe.getObject(obj, j), zzjfVar, true);
                    break;
                case 49:
                    zzlp.zzQ(this.zzc[i4], (List) unsafe.getObject(obj, j), zzjfVar, zzE(i4));
                    break;
                case 50:
                    zzS(zzjfVar, i7, unsafe.getObject(obj, j), i4);
                    break;
                case 51:
                    if (!zzP(obj, i7, i4)) {
                        break;
                    } else {
                        zzjfVar.zzf(i7, zzn(obj, j));
                        break;
                    }
                case 52:
                    if (!zzP(obj, i7, i4)) {
                        break;
                    } else {
                        zzjfVar.zzo(i7, zzo(obj, j));
                        break;
                    }
                case 53:
                    if (!zzP(obj, i7, i4)) {
                        break;
                    } else {
                        zzjfVar.zzt(i7, zzC(obj, j));
                        break;
                    }
                case 54:
                    if (!zzP(obj, i7, i4)) {
                        break;
                    } else {
                        zzjfVar.zzJ(i7, zzC(obj, j));
                        break;
                    }
                case 55:
                    if (!zzP(obj, i7, i4)) {
                        break;
                    } else {
                        zzjfVar.zzr(i7, zzr(obj, j));
                        break;
                    }
                case 56:
                    if (!zzP(obj, i7, i4)) {
                        break;
                    } else {
                        zzjfVar.zzm(i7, zzC(obj, j));
                        break;
                    }
                case 57:
                    if (!zzP(obj, i7, i4)) {
                        break;
                    } else {
                        zzjfVar.zzk(i7, zzr(obj, j));
                        break;
                    }
                case 58:
                    if (!zzP(obj, i7, i4)) {
                        break;
                    } else {
                        zzjfVar.zzb(i7, zzQ(obj, j));
                        break;
                    }
                case 59:
                    if (!zzP(obj, i7, i4)) {
                        break;
                    } else {
                        zzT(i7, unsafe.getObject(obj, j), zzjfVar);
                        break;
                    }
                case 60:
                    if (!zzP(obj, i7, i4)) {
                        break;
                    } else {
                        zzjfVar.zzv(i7, unsafe.getObject(obj, j), zzE(i4));
                        break;
                    }
                case 61:
                    if (!zzP(obj, i7, i4)) {
                        break;
                    } else {
                        zzjfVar.zzd(i7, (zzix) unsafe.getObject(obj, j));
                        break;
                    }
                case 62:
                    if (!zzP(obj, i7, i4)) {
                        break;
                    } else {
                        zzjfVar.zzH(i7, zzr(obj, j));
                        break;
                    }
                case 63:
                    if (!zzP(obj, i7, i4)) {
                        break;
                    } else {
                        zzjfVar.zzi(i7, zzr(obj, j));
                        break;
                    }
                case 64:
                    if (!zzP(obj, i7, i4)) {
                        break;
                    } else {
                        zzjfVar.zzw(i7, zzr(obj, j));
                        break;
                    }
                case 65:
                    if (!zzP(obj, i7, i4)) {
                        break;
                    } else {
                        zzjfVar.zzy(i7, zzC(obj, j));
                        break;
                    }
                case 66:
                    if (!zzP(obj, i7, i4)) {
                        break;
                    } else {
                        zzjfVar.zzA(i7, zzr(obj, j));
                        break;
                    }
                case 67:
                    if (!zzP(obj, i7, i4)) {
                        break;
                    } else {
                        zzjfVar.zzC(i7, zzC(obj, j));
                        break;
                    }
                case 68:
                    if (!zzP(obj, i7, i4)) {
                        break;
                    } else {
                        zzjfVar.zzq(i7, unsafe.getObject(obj, j), zzE(i4));
                        break;
                    }
            }
            i4 += 3;
            i5 = i;
        }
    }

    private final void zzS(zzjf zzjfVar, int i, Object obj, int i2) throws IOException {
        if (obj == null) {
            return;
        }
        zzkv zzkvVar = (zzkv) zzF(i2);
        throw null;
    }

    private static final void zzT(int i, Object obj, zzjf zzjfVar) throws IOException {
        if (obj instanceof String) {
            zzjfVar.zzF(i, (String) obj);
        } else {
            zzjfVar.zzd(i, (zzix) obj);
        }
    }

    public static zzmc zzd(Object obj) {
        zzjx zzjxVar = (zzjx) obj;
        zzmc zzmcVar = zzjxVar.zzc;
        zzmc zzmcVar2 = zzmcVar;
        if (zzmcVar == zzmc.zzc()) {
            zzmcVar2 = zzmc.zze();
            zzjxVar.zzc = zzmcVar2;
        }
        return zzmcVar2;
    }

    public static zzlf zzk(Class cls, zzkz zzkzVar, zzlh zzlhVar, zzkq zzkqVar, zzmb zzmbVar, zzjk zzjkVar, zzkx zzkxVar) {
        if (zzkzVar instanceof zzlm) {
            return zzl((zzlm) zzkzVar, zzlhVar, zzkqVar, zzmbVar, zzjkVar, zzkxVar);
        }
        zzly zzlyVar = (zzly) zzkzVar;
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:124:0x06df  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x06e9  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0718  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0722  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x095f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static com.google.android.gms.internal.measurement.zzlf zzl(com.google.android.gms.internal.measurement.zzlm r19, com.google.android.gms.internal.measurement.zzlh r20, com.google.android.gms.internal.measurement.zzkq r21, com.google.android.gms.internal.measurement.zzmb r22, com.google.android.gms.internal.measurement.zzjk r23, com.google.android.gms.internal.measurement.zzkx r24) {
        /*
            Method dump skipped, instructions count: 2600
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzlf.zzl(com.google.android.gms.internal.measurement.zzlm, com.google.android.gms.internal.measurement.zzlh, com.google.android.gms.internal.measurement.zzkq, com.google.android.gms.internal.measurement.zzmb, com.google.android.gms.internal.measurement.zzjk, com.google.android.gms.internal.measurement.zzkx):com.google.android.gms.internal.measurement.zzlf");
    }

    private static double zzn(Object obj, long j) {
        return ((Double) zzml.zzf(obj, j)).doubleValue();
    }

    private static float zzo(Object obj, long j) {
        return ((Float) zzml.zzf(obj, j)).floatValue();
    }

    private final int zzp(Object obj) {
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
        int i19;
        int i20;
        int i21;
        int i22;
        int i23;
        Unsafe unsafe = zzb;
        int i24 = 0;
        int i25 = 0;
        int i26 = 0;
        int i27 = 1048575;
        while (i26 < this.zzc.length) {
            int zzB = zzB(i26);
            int[] iArr = this.zzc;
            int i28 = iArr[i26];
            int zzA = zzA(zzB);
            if (zzA <= 17) {
                int i29 = iArr[i26 + 2];
                int i30 = i29 & 1048575;
                int i31 = 1 << (i29 >>> 20);
                i2 = i27;
                i = i31;
                if (i30 != i27) {
                    i24 = unsafe.getInt(obj, i30);
                    i2 = i30;
                    i = i31;
                }
            } else {
                i = 0;
                i2 = i27;
            }
            long j = 1048575 & zzB;
            switch (zzA) {
                case 0:
                    i3 = i25;
                    if ((i24 & i) == 0) {
                        break;
                    } else {
                        i5 = zzje.zzA(i28 << 3);
                        i4 = i5 + 8;
                        i3 = i25 + i4;
                        break;
                    }
                case 1:
                    i3 = i25;
                    if ((i24 & i) == 0) {
                        break;
                    } else {
                        i6 = zzje.zzA(i28 << 3);
                        i4 = i6 + 4;
                        i3 = i25 + i4;
                        break;
                    }
                case 2:
                    i3 = i25;
                    if ((i24 & i) == 0) {
                        break;
                    } else {
                        long j2 = unsafe.getLong(obj, j);
                        i7 = zzje.zzA(i28 << 3);
                        i8 = zzje.zzB(j2);
                        i4 = i7 + i8;
                        i3 = i25 + i4;
                        break;
                    }
                case 3:
                    i3 = i25;
                    if ((i24 & i) == 0) {
                        break;
                    } else {
                        long j3 = unsafe.getLong(obj, j);
                        i7 = zzje.zzA(i28 << 3);
                        i8 = zzje.zzB(j3);
                        i4 = i7 + i8;
                        i3 = i25 + i4;
                        break;
                    }
                case 4:
                    i3 = i25;
                    if ((i24 & i) == 0) {
                        break;
                    } else {
                        int i32 = unsafe.getInt(obj, j);
                        i10 = zzje.zzA(i28 << 3);
                        i9 = zzje.zzv(i32);
                        i4 = i9 + i10;
                        i3 = i25 + i4;
                        break;
                    }
                case 5:
                    i3 = i25;
                    if ((i24 & i) == 0) {
                        break;
                    } else {
                        i5 = zzje.zzA(i28 << 3);
                        i4 = i5 + 8;
                        i3 = i25 + i4;
                        break;
                    }
                case 6:
                    i3 = i25;
                    if ((i24 & i) == 0) {
                        break;
                    } else {
                        i6 = zzje.zzA(i28 << 3);
                        i4 = i6 + 4;
                        i3 = i25 + i4;
                        break;
                    }
                case 7:
                    i3 = i25;
                    if ((i24 & i) == 0) {
                        break;
                    } else {
                        i11 = zzje.zzA(i28 << 3);
                        i4 = i11 + 1;
                        i3 = i25 + i4;
                        break;
                    }
                case 8:
                    i3 = i25;
                    if ((i24 & i) == 0) {
                        break;
                    } else {
                        Object object = unsafe.getObject(obj, j);
                        if (!(object instanceof zzix)) {
                            i10 = zzje.zzA(i28 << 3);
                            i9 = zzje.zzy((String) object);
                            i4 = i9 + i10;
                            i3 = i25 + i4;
                            break;
                        } else {
                            i12 = zzje.zzA(i28 << 3);
                            i14 = ((zzix) object).zzd();
                            i13 = zzje.zzA(i14);
                            i3 = C22128a.m8642b(i13, i14, i12, i25);
                            break;
                        }
                    }
                case 9:
                    i3 = i25;
                    if ((i24 & i) == 0) {
                        break;
                    } else {
                        i4 = zzlp.zzo(i28, unsafe.getObject(obj, j), zzE(i26));
                        i3 = i25 + i4;
                        break;
                    }
                case 10:
                    i3 = i25;
                    if ((i24 & i) == 0) {
                        break;
                    } else {
                        zzix zzixVar = (zzix) unsafe.getObject(obj, j);
                        i12 = zzje.zzA(i28 << 3);
                        i14 = zzixVar.zzd();
                        i13 = zzje.zzA(i14);
                        i3 = C22128a.m8642b(i13, i14, i12, i25);
                        break;
                    }
                case 11:
                    i3 = i25;
                    if ((i24 & i) == 0) {
                        break;
                    } else {
                        int i33 = unsafe.getInt(obj, j);
                        i10 = zzje.zzA(i28 << 3);
                        i9 = zzje.zzA(i33);
                        i4 = i9 + i10;
                        i3 = i25 + i4;
                        break;
                    }
                case 12:
                    i3 = i25;
                    if ((i24 & i) == 0) {
                        break;
                    } else {
                        int i34 = unsafe.getInt(obj, j);
                        i10 = zzje.zzA(i28 << 3);
                        i9 = zzje.zzv(i34);
                        i4 = i9 + i10;
                        i3 = i25 + i4;
                        break;
                    }
                case 13:
                    i3 = i25;
                    if ((i24 & i) == 0) {
                        break;
                    } else {
                        i6 = zzje.zzA(i28 << 3);
                        i4 = i6 + 4;
                        i3 = i25 + i4;
                        break;
                    }
                case 14:
                    i3 = i25;
                    if ((i24 & i) == 0) {
                        break;
                    } else {
                        i5 = zzje.zzA(i28 << 3);
                        i4 = i5 + 8;
                        i3 = i25 + i4;
                        break;
                    }
                case 15:
                    i3 = i25;
                    if ((i24 & i) == 0) {
                        break;
                    } else {
                        int i35 = unsafe.getInt(obj, j);
                        i10 = zzje.zzA(i28 << 3);
                        i9 = zzje.zzA((i35 >> 31) ^ (i35 + i35));
                        i4 = i9 + i10;
                        i3 = i25 + i4;
                        break;
                    }
                case 16:
                    i3 = i25;
                    if ((i & i24) == 0) {
                        break;
                    } else {
                        long j4 = unsafe.getLong(obj, j);
                        i16 = zzje.zzA(i28 << 3);
                        i15 = zzje.zzB((j4 >> 63) ^ (j4 + j4));
                        i4 = i15 + i16;
                        i3 = i25 + i4;
                        break;
                    }
                case 17:
                    i3 = i25;
                    if ((i24 & i) == 0) {
                        break;
                    } else {
                        i4 = zzje.zzu(i28, (zzlc) unsafe.getObject(obj, j), zzE(i26));
                        i3 = i25 + i4;
                        break;
                    }
                case 18:
                    i4 = zzlp.zzh(i28, (List) unsafe.getObject(obj, j), false);
                    i3 = i25 + i4;
                    break;
                case 19:
                    i4 = zzlp.zzf(i28, (List) unsafe.getObject(obj, j), false);
                    i3 = i25 + i4;
                    break;
                case 20:
                    i4 = zzlp.zzm(i28, (List) unsafe.getObject(obj, j), false);
                    i3 = i25 + i4;
                    break;
                case 21:
                    i4 = zzlp.zzx(i28, (List) unsafe.getObject(obj, j), false);
                    i3 = i25 + i4;
                    break;
                case 22:
                    i4 = zzlp.zzk(i28, (List) unsafe.getObject(obj, j), false);
                    i3 = i25 + i4;
                    break;
                case 23:
                    i4 = zzlp.zzh(i28, (List) unsafe.getObject(obj, j), false);
                    i3 = i25 + i4;
                    break;
                case 24:
                    i4 = zzlp.zzf(i28, (List) unsafe.getObject(obj, j), false);
                    i3 = i25 + i4;
                    break;
                case 25:
                    i4 = zzlp.zza(i28, (List) unsafe.getObject(obj, j), false);
                    i3 = i25 + i4;
                    break;
                case 26:
                    i4 = zzlp.zzu(i28, (List) unsafe.getObject(obj, j));
                    i3 = i25 + i4;
                    break;
                case 27:
                    i4 = zzlp.zzp(i28, (List) unsafe.getObject(obj, j), zzE(i26));
                    i3 = i25 + i4;
                    break;
                case 28:
                    i4 = zzlp.zzc(i28, (List) unsafe.getObject(obj, j));
                    i3 = i25 + i4;
                    break;
                case 29:
                    i4 = zzlp.zzv(i28, (List) unsafe.getObject(obj, j), false);
                    i3 = i25 + i4;
                    break;
                case 30:
                    i4 = zzlp.zzd(i28, (List) unsafe.getObject(obj, j), false);
                    i3 = i25 + i4;
                    break;
                case 31:
                    i4 = zzlp.zzf(i28, (List) unsafe.getObject(obj, j), false);
                    i3 = i25 + i4;
                    break;
                case 32:
                    i4 = zzlp.zzh(i28, (List) unsafe.getObject(obj, j), false);
                    i3 = i25 + i4;
                    break;
                case 33:
                    i4 = zzlp.zzq(i28, (List) unsafe.getObject(obj, j), false);
                    i3 = i25 + i4;
                    break;
                case 34:
                    i4 = zzlp.zzs(i28, (List) unsafe.getObject(obj, j), false);
                    i3 = i25 + i4;
                    break;
                case 35:
                    int zzi = zzlp.zzi((List) unsafe.getObject(obj, j));
                    i3 = i25;
                    if (zzi <= 0) {
                        break;
                    } else {
                        i20 = zzje.zzz(i28);
                        i18 = zzje.zzA(zzi);
                        i19 = zzi;
                        i17 = i18 + i20 + i19;
                        i3 = i25 + i17;
                        break;
                    }
                case 36:
                    int zzg = zzlp.zzg((List) unsafe.getObject(obj, j));
                    i3 = i25;
                    if (zzg <= 0) {
                        break;
                    } else {
                        int zzz = zzje.zzz(i28);
                        i18 = zzje.zzA(zzg);
                        i19 = zzg;
                        i20 = zzz;
                        i17 = i18 + i20 + i19;
                        i3 = i25 + i17;
                        break;
                    }
                case 37:
                    int zzn = zzlp.zzn((List) unsafe.getObject(obj, j));
                    i3 = i25;
                    if (zzn <= 0) {
                        break;
                    } else {
                        int zzz2 = zzje.zzz(i28);
                        i18 = zzje.zzA(zzn);
                        i19 = zzn;
                        i20 = zzz2;
                        i17 = i18 + i20 + i19;
                        i3 = i25 + i17;
                        break;
                    }
                case 38:
                    int zzy = zzlp.zzy((List) unsafe.getObject(obj, j));
                    i3 = i25;
                    if (zzy <= 0) {
                        break;
                    } else {
                        int zzz3 = zzje.zzz(i28);
                        i18 = zzje.zzA(zzy);
                        i19 = zzy;
                        i20 = zzz3;
                        i17 = i18 + i20 + i19;
                        i3 = i25 + i17;
                        break;
                    }
                case 39:
                    int zzl = zzlp.zzl((List) unsafe.getObject(obj, j));
                    i3 = i25;
                    if (zzl <= 0) {
                        break;
                    } else {
                        int zzz4 = zzje.zzz(i28);
                        i18 = zzje.zzA(zzl);
                        i19 = zzl;
                        i20 = zzz4;
                        i17 = i18 + i20 + i19;
                        i3 = i25 + i17;
                        break;
                    }
                case 40:
                    int zzi2 = zzlp.zzi((List) unsafe.getObject(obj, j));
                    i3 = i25;
                    if (zzi2 <= 0) {
                        break;
                    } else {
                        int zzz5 = zzje.zzz(i28);
                        i18 = zzje.zzA(zzi2);
                        i19 = zzi2;
                        i20 = zzz5;
                        i17 = i18 + i20 + i19;
                        i3 = i25 + i17;
                        break;
                    }
                case 41:
                    int zzg2 = zzlp.zzg((List) unsafe.getObject(obj, j));
                    i3 = i25;
                    if (zzg2 <= 0) {
                        break;
                    } else {
                        int zzz6 = zzje.zzz(i28);
                        i18 = zzje.zzA(zzg2);
                        i19 = zzg2;
                        i20 = zzz6;
                        i17 = i18 + i20 + i19;
                        i3 = i25 + i17;
                        break;
                    }
                case 42:
                    int zzb2 = zzlp.zzb((List) unsafe.getObject(obj, j));
                    i3 = i25;
                    if (zzb2 <= 0) {
                        break;
                    } else {
                        int zzz7 = zzje.zzz(i28);
                        i18 = zzje.zzA(zzb2);
                        i19 = zzb2;
                        i20 = zzz7;
                        i17 = i18 + i20 + i19;
                        i3 = i25 + i17;
                        break;
                    }
                case 43:
                    int zzw = zzlp.zzw((List) unsafe.getObject(obj, j));
                    i3 = i25;
                    if (zzw <= 0) {
                        break;
                    } else {
                        int zzz8 = zzje.zzz(i28);
                        i18 = zzje.zzA(zzw);
                        i19 = zzw;
                        i20 = zzz8;
                        i17 = i18 + i20 + i19;
                        i3 = i25 + i17;
                        break;
                    }
                case 44:
                    int zze = zzlp.zze((List) unsafe.getObject(obj, j));
                    i3 = i25;
                    if (zze <= 0) {
                        break;
                    } else {
                        int zzz9 = zzje.zzz(i28);
                        i18 = zzje.zzA(zze);
                        i19 = zze;
                        i20 = zzz9;
                        i17 = i18 + i20 + i19;
                        i3 = i25 + i17;
                        break;
                    }
                case 45:
                    int zzg3 = zzlp.zzg((List) unsafe.getObject(obj, j));
                    i3 = i25;
                    if (zzg3 <= 0) {
                        break;
                    } else {
                        int zzz10 = zzje.zzz(i28);
                        i18 = zzje.zzA(zzg3);
                        i19 = zzg3;
                        i20 = zzz10;
                        i17 = i18 + i20 + i19;
                        i3 = i25 + i17;
                        break;
                    }
                case 46:
                    int zzi3 = zzlp.zzi((List) unsafe.getObject(obj, j));
                    i3 = i25;
                    if (zzi3 <= 0) {
                        break;
                    } else {
                        int zzz11 = zzje.zzz(i28);
                        i18 = zzje.zzA(zzi3);
                        i19 = zzi3;
                        i20 = zzz11;
                        i17 = i18 + i20 + i19;
                        i3 = i25 + i17;
                        break;
                    }
                case 47:
                    int zzr = zzlp.zzr((List) unsafe.getObject(obj, j));
                    i3 = i25;
                    if (zzr <= 0) {
                        break;
                    } else {
                        int zzz12 = zzje.zzz(i28);
                        i18 = zzje.zzA(zzr);
                        i19 = zzr;
                        i20 = zzz12;
                        i17 = i18 + i20 + i19;
                        i3 = i25 + i17;
                        break;
                    }
                case 48:
                    int zzt = zzlp.zzt((List) unsafe.getObject(obj, j));
                    i3 = i25;
                    if (zzt <= 0) {
                        break;
                    } else {
                        int zzz13 = zzje.zzz(i28);
                        i18 = zzje.zzA(zzt);
                        i19 = zzt;
                        i20 = zzz13;
                        i17 = i18 + i20 + i19;
                        i3 = i25 + i17;
                        break;
                    }
                case 49:
                    i4 = zzlp.zzj(i28, (List) unsafe.getObject(obj, j), zzE(i26));
                    i3 = i25 + i4;
                    break;
                case 50:
                    zzkx.zza(i28, unsafe.getObject(obj, j), zzF(i26));
                    i3 = i25;
                    break;
                case 51:
                    i3 = i25;
                    if (!zzP(obj, i28, i26)) {
                        break;
                    } else {
                        i5 = zzje.zzA(i28 << 3);
                        i4 = i5 + 8;
                        i3 = i25 + i4;
                        break;
                    }
                case 52:
                    i3 = i25;
                    if (!zzP(obj, i28, i26)) {
                        break;
                    } else {
                        i6 = zzje.zzA(i28 << 3);
                        i4 = i6 + 4;
                        i3 = i25 + i4;
                        break;
                    }
                case 53:
                    i3 = i25;
                    if (!zzP(obj, i28, i26)) {
                        break;
                    } else {
                        long zzC = zzC(obj, j);
                        i7 = zzje.zzA(i28 << 3);
                        i8 = zzje.zzB(zzC);
                        i4 = i7 + i8;
                        i3 = i25 + i4;
                        break;
                    }
                case 54:
                    i3 = i25;
                    if (!zzP(obj, i28, i26)) {
                        break;
                    } else {
                        long zzC2 = zzC(obj, j);
                        i7 = zzje.zzA(i28 << 3);
                        i8 = zzje.zzB(zzC2);
                        i4 = i7 + i8;
                        i3 = i25 + i4;
                        break;
                    }
                case 55:
                    i3 = i25;
                    if (!zzP(obj, i28, i26)) {
                        break;
                    } else {
                        int zzr2 = zzr(obj, j);
                        i10 = zzje.zzA(i28 << 3);
                        i9 = zzje.zzv(zzr2);
                        i4 = i9 + i10;
                        i3 = i25 + i4;
                        break;
                    }
                case 56:
                    i3 = i25;
                    if (!zzP(obj, i28, i26)) {
                        break;
                    } else {
                        i5 = zzje.zzA(i28 << 3);
                        i4 = i5 + 8;
                        i3 = i25 + i4;
                        break;
                    }
                case 57:
                    i3 = i25;
                    if (!zzP(obj, i28, i26)) {
                        break;
                    } else {
                        i6 = zzje.zzA(i28 << 3);
                        i4 = i6 + 4;
                        i3 = i25 + i4;
                        break;
                    }
                case 58:
                    i3 = i25;
                    if (!zzP(obj, i28, i26)) {
                        break;
                    } else {
                        i11 = zzje.zzA(i28 << 3);
                        i4 = i11 + 1;
                        i3 = i25 + i4;
                        break;
                    }
                case 59:
                    i3 = i25;
                    if (!zzP(obj, i28, i26)) {
                        break;
                    } else {
                        Object object2 = unsafe.getObject(obj, j);
                        if (!(object2 instanceof zzix)) {
                            i10 = zzje.zzA(i28 << 3);
                            i9 = zzje.zzy((String) object2);
                            i4 = i9 + i10;
                            i3 = i25 + i4;
                            break;
                        } else {
                            i22 = zzje.zzA(i28 << 3);
                            i23 = ((zzix) object2).zzd();
                            i21 = zzje.zzA(i23);
                            i17 = i21 + i23 + i22;
                            i3 = i25 + i17;
                            break;
                        }
                    }
                case 60:
                    i3 = i25;
                    if (!zzP(obj, i28, i26)) {
                        break;
                    } else {
                        i4 = zzlp.zzo(i28, unsafe.getObject(obj, j), zzE(i26));
                        i3 = i25 + i4;
                        break;
                    }
                case 61:
                    i3 = i25;
                    if (!zzP(obj, i28, i26)) {
                        break;
                    } else {
                        zzix zzixVar2 = (zzix) unsafe.getObject(obj, j);
                        i22 = zzje.zzA(i28 << 3);
                        i23 = zzixVar2.zzd();
                        i21 = zzje.zzA(i23);
                        i17 = i21 + i23 + i22;
                        i3 = i25 + i17;
                        break;
                    }
                case 62:
                    i3 = i25;
                    if (!zzP(obj, i28, i26)) {
                        break;
                    } else {
                        int zzr3 = zzr(obj, j);
                        i10 = zzje.zzA(i28 << 3);
                        i9 = zzje.zzA(zzr3);
                        i4 = i9 + i10;
                        i3 = i25 + i4;
                        break;
                    }
                case 63:
                    i3 = i25;
                    if (!zzP(obj, i28, i26)) {
                        break;
                    } else {
                        int zzr4 = zzr(obj, j);
                        i10 = zzje.zzA(i28 << 3);
                        i9 = zzje.zzv(zzr4);
                        i4 = i9 + i10;
                        i3 = i25 + i4;
                        break;
                    }
                case 64:
                    i3 = i25;
                    if (!zzP(obj, i28, i26)) {
                        break;
                    } else {
                        i6 = zzje.zzA(i28 << 3);
                        i4 = i6 + 4;
                        i3 = i25 + i4;
                        break;
                    }
                case 65:
                    i3 = i25;
                    if (!zzP(obj, i28, i26)) {
                        break;
                    } else {
                        i5 = zzje.zzA(i28 << 3);
                        i4 = i5 + 8;
                        i3 = i25 + i4;
                        break;
                    }
                case 66:
                    i3 = i25;
                    if (!zzP(obj, i28, i26)) {
                        break;
                    } else {
                        int zzr5 = zzr(obj, j);
                        i10 = zzje.zzA(i28 << 3);
                        i9 = zzje.zzA((zzr5 >> 31) ^ (zzr5 + zzr5));
                        i4 = i9 + i10;
                        i3 = i25 + i4;
                        break;
                    }
                case 67:
                    i3 = i25;
                    if (!zzP(obj, i28, i26)) {
                        break;
                    } else {
                        long zzC3 = zzC(obj, j);
                        i16 = zzje.zzA(i28 << 3);
                        i15 = zzje.zzB((zzC3 >> 63) ^ (zzC3 + zzC3));
                        i4 = i15 + i16;
                        i3 = i25 + i4;
                        break;
                    }
                case 68:
                    i3 = i25;
                    if (!zzP(obj, i28, i26)) {
                        break;
                    } else {
                        i4 = zzje.zzu(i28, (zzlc) unsafe.getObject(obj, j), zzE(i26));
                        i3 = i25 + i4;
                        break;
                    }
                default:
                    i3 = i25;
                    break;
            }
            i26 += 3;
            i27 = i2;
            i25 = i3;
        }
        zzmb zzmbVar = this.zzn;
        int zza2 = zzmbVar.zza(zzmbVar.zzc(obj));
        if (!this.zzh) {
            return zza2 + i25;
        }
        this.zzo.zza(obj);
        throw null;
    }

    private final int zzq(Object obj) {
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
        Unsafe unsafe = zzb;
        int i17 = 0;
        int i18 = 0;
        while (true) {
            int i19 = i18;
            if (i17 >= this.zzc.length) {
                zzmb zzmbVar = this.zzn;
                return zzmbVar.zza(zzmbVar.zzc(obj)) + i19;
            }
            int zzB = zzB(i17);
            int zzA = zzA(zzB);
            int i20 = this.zzc[i17];
            long j = zzB & 1048575;
            if (zzA >= zzjp.DOUBLE_LIST_PACKED.zza() && zzA <= zzjp.SINT64_LIST_PACKED.zza()) {
                int i21 = this.zzc[i17 + 2];
            }
            switch (zzA) {
                case 0:
                    i = i19;
                    if (zzM(obj, i17)) {
                        i3 = zzje.zzA(i20 << 3);
                        i2 = i3 + 8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 1:
                    i = i19;
                    if (zzM(obj, i17)) {
                        i4 = zzje.zzA(i20 << 3);
                        i2 = i4 + 4;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 2:
                    i = i19;
                    if (zzM(obj, i17)) {
                        long zzd = zzml.zzd(obj, j);
                        i6 = zzje.zzA(i20 << 3);
                        i5 = zzje.zzB(zzd);
                        i2 = i5 + i6;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 3:
                    i = i19;
                    if (zzM(obj, i17)) {
                        long zzd2 = zzml.zzd(obj, j);
                        i6 = zzje.zzA(i20 << 3);
                        i5 = zzje.zzB(zzd2);
                        i2 = i5 + i6;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 4:
                    i = i19;
                    if (zzM(obj, i17)) {
                        int zzc = zzml.zzc(obj, j);
                        i8 = zzje.zzA(i20 << 3);
                        i7 = zzje.zzv(zzc);
                        i2 = i7 + i8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 5:
                    i = i19;
                    if (zzM(obj, i17)) {
                        i3 = zzje.zzA(i20 << 3);
                        i2 = i3 + 8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 6:
                    i = i19;
                    if (zzM(obj, i17)) {
                        i4 = zzje.zzA(i20 << 3);
                        i2 = i4 + 4;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 7:
                    i = i19;
                    if (zzM(obj, i17)) {
                        i9 = zzje.zzA(i20 << 3);
                        i2 = i9 + 1;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 8:
                    i = i19;
                    if (zzM(obj, i17)) {
                        Object zzf = zzml.zzf(obj, j);
                        if (!(zzf instanceof zzix)) {
                            i8 = zzje.zzA(i20 << 3);
                            i7 = zzje.zzy((String) zzf);
                            i2 = i7 + i8;
                            break;
                        } else {
                            i13 = zzje.zzA(i20 << 3);
                            i12 = ((zzix) zzf).zzd();
                            i11 = zzje.zzA(i12);
                            i10 = i11 + i12 + i13;
                            i = i19 + i10;
                            i17 += 3;
                            i18 = i;
                        }
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 9:
                    i = i19;
                    if (zzM(obj, i17)) {
                        i2 = zzlp.zzo(i20, zzml.zzf(obj, j), zzE(i17));
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 10:
                    i = i19;
                    if (zzM(obj, i17)) {
                        zzix zzixVar = (zzix) zzml.zzf(obj, j);
                        i13 = zzje.zzA(i20 << 3);
                        i12 = zzixVar.zzd();
                        i11 = zzje.zzA(i12);
                        i10 = i11 + i12 + i13;
                        i = i19 + i10;
                        i17 += 3;
                        i18 = i;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 11:
                    i = i19;
                    if (zzM(obj, i17)) {
                        int zzc2 = zzml.zzc(obj, j);
                        i8 = zzje.zzA(i20 << 3);
                        i7 = zzje.zzA(zzc2);
                        i2 = i7 + i8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 12:
                    i = i19;
                    if (zzM(obj, i17)) {
                        int zzc3 = zzml.zzc(obj, j);
                        i8 = zzje.zzA(i20 << 3);
                        i7 = zzje.zzv(zzc3);
                        i2 = i7 + i8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 13:
                    i = i19;
                    if (zzM(obj, i17)) {
                        i4 = zzje.zzA(i20 << 3);
                        i2 = i4 + 4;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 14:
                    i = i19;
                    if (zzM(obj, i17)) {
                        i3 = zzje.zzA(i20 << 3);
                        i2 = i3 + 8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 15:
                    i = i19;
                    if (zzM(obj, i17)) {
                        int zzc4 = zzml.zzc(obj, j);
                        i8 = zzje.zzA(i20 << 3);
                        i7 = zzje.zzA((zzc4 >> 31) ^ (zzc4 + zzc4));
                        i2 = i7 + i8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 16:
                    i = i19;
                    if (zzM(obj, i17)) {
                        long zzd3 = zzml.zzd(obj, j);
                        i8 = zzje.zzA(i20 << 3);
                        i7 = zzje.zzB((zzd3 >> 63) ^ (zzd3 + zzd3));
                        i2 = i7 + i8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 17:
                    i = i19;
                    if (zzM(obj, i17)) {
                        i2 = zzje.zzu(i20, (zzlc) zzml.zzf(obj, j), zzE(i17));
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 18:
                    i2 = zzlp.zzh(i20, (List) zzml.zzf(obj, j), false);
                    break;
                case 19:
                    i2 = zzlp.zzf(i20, (List) zzml.zzf(obj, j), false);
                    break;
                case 20:
                    i2 = zzlp.zzm(i20, (List) zzml.zzf(obj, j), false);
                    break;
                case 21:
                    i2 = zzlp.zzx(i20, (List) zzml.zzf(obj, j), false);
                    break;
                case 22:
                    i2 = zzlp.zzk(i20, (List) zzml.zzf(obj, j), false);
                    break;
                case 23:
                    i2 = zzlp.zzh(i20, (List) zzml.zzf(obj, j), false);
                    break;
                case 24:
                    i2 = zzlp.zzf(i20, (List) zzml.zzf(obj, j), false);
                    break;
                case 25:
                    i2 = zzlp.zza(i20, (List) zzml.zzf(obj, j), false);
                    break;
                case 26:
                    i2 = zzlp.zzu(i20, (List) zzml.zzf(obj, j));
                    break;
                case 27:
                    i2 = zzlp.zzp(i20, (List) zzml.zzf(obj, j), zzE(i17));
                    break;
                case 28:
                    i2 = zzlp.zzc(i20, (List) zzml.zzf(obj, j));
                    break;
                case 29:
                    i2 = zzlp.zzv(i20, (List) zzml.zzf(obj, j), false);
                    break;
                case 30:
                    i2 = zzlp.zzd(i20, (List) zzml.zzf(obj, j), false);
                    break;
                case 31:
                    i2 = zzlp.zzf(i20, (List) zzml.zzf(obj, j), false);
                    break;
                case 32:
                    i2 = zzlp.zzh(i20, (List) zzml.zzf(obj, j), false);
                    break;
                case 33:
                    i2 = zzlp.zzq(i20, (List) zzml.zzf(obj, j), false);
                    break;
                case 34:
                    i2 = zzlp.zzs(i20, (List) zzml.zzf(obj, j), false);
                    break;
                case 35:
                    int zzi = zzlp.zzi((List) unsafe.getObject(obj, j));
                    i = i19;
                    if (zzi > 0) {
                        i16 = zzje.zzz(i20);
                        i14 = zzje.zzA(zzi);
                        i15 = zzi;
                        i10 = i14 + i16 + i15;
                        i = i19 + i10;
                        i17 += 3;
                        i18 = i;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 36:
                    int zzg = zzlp.zzg((List) unsafe.getObject(obj, j));
                    i = i19;
                    if (zzg > 0) {
                        int zzz = zzje.zzz(i20);
                        i14 = zzje.zzA(zzg);
                        i15 = zzg;
                        i16 = zzz;
                        i10 = i14 + i16 + i15;
                        i = i19 + i10;
                        i17 += 3;
                        i18 = i;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 37:
                    int zzn = zzlp.zzn((List) unsafe.getObject(obj, j));
                    i = i19;
                    if (zzn > 0) {
                        int zzz2 = zzje.zzz(i20);
                        i14 = zzje.zzA(zzn);
                        i15 = zzn;
                        i16 = zzz2;
                        i10 = i14 + i16 + i15;
                        i = i19 + i10;
                        i17 += 3;
                        i18 = i;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 38:
                    int zzy = zzlp.zzy((List) unsafe.getObject(obj, j));
                    i = i19;
                    if (zzy > 0) {
                        int zzz3 = zzje.zzz(i20);
                        i14 = zzje.zzA(zzy);
                        i15 = zzy;
                        i16 = zzz3;
                        i10 = i14 + i16 + i15;
                        i = i19 + i10;
                        i17 += 3;
                        i18 = i;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 39:
                    int zzl = zzlp.zzl((List) unsafe.getObject(obj, j));
                    i = i19;
                    if (zzl > 0) {
                        int zzz4 = zzje.zzz(i20);
                        i14 = zzje.zzA(zzl);
                        i15 = zzl;
                        i16 = zzz4;
                        i10 = i14 + i16 + i15;
                        i = i19 + i10;
                        i17 += 3;
                        i18 = i;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 40:
                    int zzi2 = zzlp.zzi((List) unsafe.getObject(obj, j));
                    i = i19;
                    if (zzi2 > 0) {
                        int zzz5 = zzje.zzz(i20);
                        i14 = zzje.zzA(zzi2);
                        i15 = zzi2;
                        i16 = zzz5;
                        i10 = i14 + i16 + i15;
                        i = i19 + i10;
                        i17 += 3;
                        i18 = i;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 41:
                    int zzg2 = zzlp.zzg((List) unsafe.getObject(obj, j));
                    i = i19;
                    if (zzg2 > 0) {
                        int zzz6 = zzje.zzz(i20);
                        i14 = zzje.zzA(zzg2);
                        i15 = zzg2;
                        i16 = zzz6;
                        i10 = i14 + i16 + i15;
                        i = i19 + i10;
                        i17 += 3;
                        i18 = i;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 42:
                    int zzb2 = zzlp.zzb((List) unsafe.getObject(obj, j));
                    i = i19;
                    if (zzb2 > 0) {
                        int zzz7 = zzje.zzz(i20);
                        i14 = zzje.zzA(zzb2);
                        i15 = zzb2;
                        i16 = zzz7;
                        i10 = i14 + i16 + i15;
                        i = i19 + i10;
                        i17 += 3;
                        i18 = i;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 43:
                    int zzw = zzlp.zzw((List) unsafe.getObject(obj, j));
                    i = i19;
                    if (zzw > 0) {
                        int zzz8 = zzje.zzz(i20);
                        i14 = zzje.zzA(zzw);
                        i15 = zzw;
                        i16 = zzz8;
                        i10 = i14 + i16 + i15;
                        i = i19 + i10;
                        i17 += 3;
                        i18 = i;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 44:
                    int zze = zzlp.zze((List) unsafe.getObject(obj, j));
                    i = i19;
                    if (zze > 0) {
                        int zzz9 = zzje.zzz(i20);
                        i14 = zzje.zzA(zze);
                        i15 = zze;
                        i16 = zzz9;
                        i10 = i14 + i16 + i15;
                        i = i19 + i10;
                        i17 += 3;
                        i18 = i;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 45:
                    int zzg3 = zzlp.zzg((List) unsafe.getObject(obj, j));
                    i = i19;
                    if (zzg3 > 0) {
                        int zzz10 = zzje.zzz(i20);
                        i14 = zzje.zzA(zzg3);
                        i15 = zzg3;
                        i16 = zzz10;
                        i10 = i14 + i16 + i15;
                        i = i19 + i10;
                        i17 += 3;
                        i18 = i;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 46:
                    int zzi3 = zzlp.zzi((List) unsafe.getObject(obj, j));
                    i = i19;
                    if (zzi3 > 0) {
                        int zzz11 = zzje.zzz(i20);
                        i14 = zzje.zzA(zzi3);
                        i15 = zzi3;
                        i16 = zzz11;
                        i10 = i14 + i16 + i15;
                        i = i19 + i10;
                        i17 += 3;
                        i18 = i;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 47:
                    int zzr = zzlp.zzr((List) unsafe.getObject(obj, j));
                    i = i19;
                    if (zzr > 0) {
                        int zzz12 = zzje.zzz(i20);
                        i14 = zzje.zzA(zzr);
                        i15 = zzr;
                        i16 = zzz12;
                        i10 = i14 + i16 + i15;
                        i = i19 + i10;
                        i17 += 3;
                        i18 = i;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 48:
                    int zzt = zzlp.zzt((List) unsafe.getObject(obj, j));
                    i = i19;
                    if (zzt > 0) {
                        int zzz13 = zzje.zzz(i20);
                        i14 = zzje.zzA(zzt);
                        i15 = zzt;
                        i16 = zzz13;
                        i10 = i14 + i16 + i15;
                        i = i19 + i10;
                        i17 += 3;
                        i18 = i;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 49:
                    i2 = zzlp.zzj(i20, (List) zzml.zzf(obj, j), zzE(i17));
                    break;
                case 50:
                    zzkx.zza(i20, zzml.zzf(obj, j), zzF(i17));
                    i = i19;
                    continue;
                    i17 += 3;
                    i18 = i;
                case 51:
                    i = i19;
                    if (zzP(obj, i20, i17)) {
                        i3 = zzje.zzA(i20 << 3);
                        i2 = i3 + 8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 52:
                    i = i19;
                    if (zzP(obj, i20, i17)) {
                        i4 = zzje.zzA(i20 << 3);
                        i2 = i4 + 4;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 53:
                    i = i19;
                    if (zzP(obj, i20, i17)) {
                        long zzC = zzC(obj, j);
                        i6 = zzje.zzA(i20 << 3);
                        i5 = zzje.zzB(zzC);
                        i2 = i5 + i6;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 54:
                    i = i19;
                    if (zzP(obj, i20, i17)) {
                        long zzC2 = zzC(obj, j);
                        i6 = zzje.zzA(i20 << 3);
                        i5 = zzje.zzB(zzC2);
                        i2 = i5 + i6;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 55:
                    i = i19;
                    if (zzP(obj, i20, i17)) {
                        int zzr2 = zzr(obj, j);
                        i8 = zzje.zzA(i20 << 3);
                        i7 = zzje.zzv(zzr2);
                        i2 = i7 + i8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 56:
                    i = i19;
                    if (zzP(obj, i20, i17)) {
                        i3 = zzje.zzA(i20 << 3);
                        i2 = i3 + 8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 57:
                    i = i19;
                    if (zzP(obj, i20, i17)) {
                        i4 = zzje.zzA(i20 << 3);
                        i2 = i4 + 4;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 58:
                    i = i19;
                    if (zzP(obj, i20, i17)) {
                        i9 = zzje.zzA(i20 << 3);
                        i2 = i9 + 1;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 59:
                    i = i19;
                    if (zzP(obj, i20, i17)) {
                        Object zzf2 = zzml.zzf(obj, j);
                        if (!(zzf2 instanceof zzix)) {
                            i8 = zzje.zzA(i20 << 3);
                            i7 = zzje.zzy((String) zzf2);
                            i2 = i7 + i8;
                            break;
                        } else {
                            i13 = zzje.zzA(i20 << 3);
                            i12 = ((zzix) zzf2).zzd();
                            i11 = zzje.zzA(i12);
                            i10 = i11 + i12 + i13;
                            i = i19 + i10;
                            i17 += 3;
                            i18 = i;
                        }
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 60:
                    i = i19;
                    if (zzP(obj, i20, i17)) {
                        i2 = zzlp.zzo(i20, zzml.zzf(obj, j), zzE(i17));
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 61:
                    i = i19;
                    if (zzP(obj, i20, i17)) {
                        zzix zzixVar2 = (zzix) zzml.zzf(obj, j);
                        i13 = zzje.zzA(i20 << 3);
                        i12 = zzixVar2.zzd();
                        i11 = zzje.zzA(i12);
                        i10 = i11 + i12 + i13;
                        i = i19 + i10;
                        i17 += 3;
                        i18 = i;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 62:
                    i = i19;
                    if (zzP(obj, i20, i17)) {
                        int zzr3 = zzr(obj, j);
                        i8 = zzje.zzA(i20 << 3);
                        i7 = zzje.zzA(zzr3);
                        i2 = i7 + i8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 63:
                    i = i19;
                    if (zzP(obj, i20, i17)) {
                        int zzr4 = zzr(obj, j);
                        i8 = zzje.zzA(i20 << 3);
                        i7 = zzje.zzv(zzr4);
                        i2 = i7 + i8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 64:
                    i = i19;
                    if (zzP(obj, i20, i17)) {
                        i4 = zzje.zzA(i20 << 3);
                        i2 = i4 + 4;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 65:
                    i = i19;
                    if (zzP(obj, i20, i17)) {
                        i3 = zzje.zzA(i20 << 3);
                        i2 = i3 + 8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 66:
                    i = i19;
                    if (zzP(obj, i20, i17)) {
                        int zzr5 = zzr(obj, j);
                        i8 = zzje.zzA(i20 << 3);
                        i7 = zzje.zzA((zzr5 >> 31) ^ (zzr5 + zzr5));
                        i2 = i7 + i8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 67:
                    i = i19;
                    if (zzP(obj, i20, i17)) {
                        long zzC3 = zzC(obj, j);
                        i8 = zzje.zzA(i20 << 3);
                        i7 = zzje.zzB((zzC3 >> 63) ^ (zzC3 + zzC3));
                        i2 = i7 + i8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 68:
                    i = i19;
                    if (zzP(obj, i20, i17)) {
                        i2 = zzje.zzu(i20, (zzlc) zzml.zzf(obj, j), zzE(i17));
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                default:
                    i = i19;
                    continue;
                    i17 += 3;
                    i18 = i;
            }
            i = i19 + i2;
            i17 += 3;
            i18 = i;
        }
    }

    private static int zzr(Object obj, long j) {
        return ((Integer) zzml.zzf(obj, j)).intValue();
    }

    private final int zzs(Object obj, byte[] bArr, int i, int i2, int i3, long j, zzik zzikVar) throws IOException {
        Unsafe unsafe = zzb;
        Object zzF = zzF(i3);
        Object object = unsafe.getObject(obj, j);
        if (!((zzkw) object).zze()) {
            zzkw zzb2 = zzkw.zza().zzb();
            zzkx.zzb(zzb2, object);
            unsafe.putObject(obj, j, zzb2);
        }
        zzkv zzkvVar = (zzkv) zzF;
        throw null;
    }

    private final int zzt(Object obj, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, zzik zzikVar) throws IOException {
        Unsafe unsafe = zzb;
        long j2 = this.zzc[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(obj, j, Double.valueOf(Double.longBitsToDouble(zzil.zzn(bArr, i))));
                    unsafe.putInt(obj, j2, i4);
                    return i + 8;
                }
                break;
            case 52:
                if (i5 == 5) {
                    unsafe.putObject(obj, j, Float.valueOf(Float.intBitsToFloat(zzil.zzb(bArr, i))));
                    unsafe.putInt(obj, j2, i4);
                    return i + 4;
                }
                break;
            case 53:
            case 54:
                if (i5 == 0) {
                    int zzm = zzil.zzm(bArr, i, zzikVar);
                    unsafe.putObject(obj, j, Long.valueOf(zzikVar.zzb));
                    unsafe.putInt(obj, j2, i4);
                    return zzm;
                }
                break;
            case 55:
            case 62:
                if (i5 == 0) {
                    int zzj = zzil.zzj(bArr, i, zzikVar);
                    unsafe.putObject(obj, j, Integer.valueOf(zzikVar.zza));
                    unsafe.putInt(obj, j2, i4);
                    return zzj;
                }
                break;
            case 56:
            case 65:
                if (i5 == 1) {
                    unsafe.putObject(obj, j, Long.valueOf(zzil.zzn(bArr, i)));
                    unsafe.putInt(obj, j2, i4);
                    return i + 8;
                }
                break;
            case 57:
            case 64:
                if (i5 == 5) {
                    unsafe.putObject(obj, j, Integer.valueOf(zzil.zzb(bArr, i)));
                    unsafe.putInt(obj, j2, i4);
                    return i + 4;
                }
                break;
            case 58:
                if (i5 == 0) {
                    int zzm2 = zzil.zzm(bArr, i, zzikVar);
                    unsafe.putObject(obj, j, Boolean.valueOf(zzikVar.zzb != 0));
                    unsafe.putInt(obj, j2, i4);
                    return zzm2;
                }
                break;
            case 59:
                if (i5 == 2) {
                    i = zzil.zzj(bArr, i, zzikVar);
                    int i9 = zzikVar.zza;
                    if (i9 == 0) {
                        unsafe.putObject(obj, j, "");
                    } else if ((i6 & 536870912) != 0 && !zzmq.zzf(bArr, i, i + i9)) {
                        throw zzkh.zzc();
                    } else {
                        unsafe.putObject(obj, j, new String(bArr, i, i9, zzkf.zzb));
                        i += i9;
                    }
                    unsafe.putInt(obj, j2, i4);
                    break;
                }
                break;
            case 60:
                if (i5 == 2) {
                    i = zzil.zzd(zzE(i8), bArr, i, i2, zzikVar);
                    Object object = unsafe.getInt(obj, j2) == i4 ? unsafe.getObject(obj, j) : null;
                    if (object == null) {
                        unsafe.putObject(obj, j, zzikVar.zzc);
                    } else {
                        unsafe.putObject(obj, j, zzkf.zzg(object, zzikVar.zzc));
                    }
                    unsafe.putInt(obj, j2, i4);
                    break;
                }
                break;
            case 61:
                if (i5 == 2) {
                    int zza2 = zzil.zza(bArr, i, zzikVar);
                    unsafe.putObject(obj, j, zzikVar.zzc);
                    unsafe.putInt(obj, j2, i4);
                    return zza2;
                }
                break;
            case 63:
                if (i5 == 0) {
                    i = zzil.zzj(bArr, i, zzikVar);
                    int i10 = zzikVar.zza;
                    zzkb zzD = zzD(i8);
                    if (zzD != null && !zzD.zza(i10)) {
                        zzd(obj).zzh(i3, Long.valueOf(i10));
                        break;
                    } else {
                        unsafe.putObject(obj, j, Integer.valueOf(i10));
                        unsafe.putInt(obj, j2, i4);
                        break;
                    }
                }
                break;
            case 66:
                if (i5 == 0) {
                    int zzj2 = zzil.zzj(bArr, i, zzikVar);
                    unsafe.putObject(obj, j, Integer.valueOf(zzja.zzb(zzikVar.zza)));
                    unsafe.putInt(obj, j2, i4);
                    return zzj2;
                }
                break;
            case 67:
                if (i5 == 0) {
                    int zzm3 = zzil.zzm(bArr, i, zzikVar);
                    unsafe.putObject(obj, j, Long.valueOf(zzja.zzc(zzikVar.zzb)));
                    unsafe.putInt(obj, j2, i4);
                    return zzm3;
                }
                break;
            case 68:
                if (i5 == 3) {
                    i = zzil.zzc(zzE(i8), bArr, i, i2, (i3 & (-8)) | 4, zzikVar);
                    Object object2 = unsafe.getInt(obj, j2) == i4 ? unsafe.getObject(obj, j) : null;
                    if (object2 == null) {
                        unsafe.putObject(obj, j, zzikVar.zzc);
                    } else {
                        unsafe.putObject(obj, j, zzkf.zzg(object2, zzikVar.zzc));
                    }
                    unsafe.putInt(obj, j2, i4);
                    break;
                }
                break;
        }
        return i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:108:0x04cc, code lost:
        if (r25 != r0) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x0500, code lost:
        if (r25 != r0) goto L101;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v212, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zzu(java.lang.Object r17, byte[] r18, int r19, int r20, com.google.android.gms.internal.measurement.zzik r21) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1358
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzlf.zzu(java.lang.Object, byte[], int, int, com.google.android.gms.internal.measurement.zzik):int");
    }

    /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:56)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:30)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:18)
        */
    /* JADX WARN: Removed duplicated region for block: B:117:0x03ed  */
    /* JADX WARN: Removed duplicated region for block: B:321:0x0912 A[SYNTHETIC] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:114:0x03dd -> B:115:0x03e3). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:137:0x04a0 -> B:138:0x04a3). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:77:0x02f8 -> B:78:0x02fd). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zzv(java.lang.Object r9, byte[] r10, int r11, int r12, int r13, int r14, int r15, int r16, long r17, int r19, long r20, com.google.android.gms.internal.measurement.zzik r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2324
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzlf.zzv(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, com.google.android.gms.internal.measurement.zzik):int");
    }

    private final int zzw(int i) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzz(i, 0);
    }

    private final int zzx(int i, int i2) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzz(i, i2);
    }

    private final int zzy(int i) {
        return this.zzc[i + 2];
    }

    private final int zzz(int i, int i2) {
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

    @Override // com.google.android.gms.internal.measurement.zzln
    public final int zza(Object obj) {
        return this.zzi ? zzq(obj) : zzp(obj);
    }

    @Override // com.google.android.gms.internal.measurement.zzln
    public final int zzb(Object obj) {
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
                int hashCode = this.zzn.zzc(obj).hashCode();
                if (!this.zzh) {
                    return hashCode + (i8 * 53);
                }
                this.zzo.zza(obj);
                throw null;
            }
            int zzB = zzB(i6);
            int i9 = this.zzc[i6];
            long j = 1048575 & zzB;
            int i10 = 37;
            switch (zzA(zzB)) {
                case 0:
                    i2 = i8 * 53;
                    i3 = zzkf.zzc(Double.doubleToLongBits(zzml.zza(obj, j)));
                    i = i3 + i2;
                    break;
                case 1:
                    i2 = i8 * 53;
                    i3 = Float.floatToIntBits(zzml.zzb(obj, j));
                    i = i3 + i2;
                    break;
                case 2:
                    i2 = i8 * 53;
                    i3 = zzkf.zzc(zzml.zzd(obj, j));
                    i = i3 + i2;
                    break;
                case 3:
                    i2 = i8 * 53;
                    i3 = zzkf.zzc(zzml.zzd(obj, j));
                    i = i3 + i2;
                    break;
                case 4:
                    i2 = i8 * 53;
                    i3 = zzml.zzc(obj, j);
                    i = i3 + i2;
                    break;
                case 5:
                    i2 = i8 * 53;
                    i3 = zzkf.zzc(zzml.zzd(obj, j));
                    i = i3 + i2;
                    break;
                case 6:
                    i2 = i8 * 53;
                    i3 = zzml.zzc(obj, j);
                    i = i3 + i2;
                    break;
                case 7:
                    i2 = i8 * 53;
                    i3 = zzkf.zza(zzml.zzw(obj, j));
                    i = i3 + i2;
                    break;
                case 8:
                    i2 = i8 * 53;
                    i3 = ((String) zzml.zzf(obj, j)).hashCode();
                    i = i3 + i2;
                    break;
                case 9:
                    Object zzf = zzml.zzf(obj, j);
                    if (zzf != null) {
                        i10 = zzf.hashCode();
                    }
                    i = (i8 * 53) + i10;
                    break;
                case 10:
                    i2 = i8 * 53;
                    i3 = zzml.zzf(obj, j).hashCode();
                    i = i3 + i2;
                    break;
                case 11:
                    i2 = i8 * 53;
                    i3 = zzml.zzc(obj, j);
                    i = i3 + i2;
                    break;
                case 12:
                    i2 = i8 * 53;
                    i3 = zzml.zzc(obj, j);
                    i = i3 + i2;
                    break;
                case 13:
                    i2 = i8 * 53;
                    i3 = zzml.zzc(obj, j);
                    i = i3 + i2;
                    break;
                case 14:
                    i2 = i8 * 53;
                    i3 = zzkf.zzc(zzml.zzd(obj, j));
                    i = i3 + i2;
                    break;
                case 15:
                    i2 = i8 * 53;
                    i3 = zzml.zzc(obj, j);
                    i = i3 + i2;
                    break;
                case 16:
                    i2 = i8 * 53;
                    i3 = zzkf.zzc(zzml.zzd(obj, j));
                    i = i3 + i2;
                    break;
                case 17:
                    Object zzf2 = zzml.zzf(obj, j);
                    if (zzf2 != null) {
                        i10 = zzf2.hashCode();
                    }
                    i = (i8 * 53) + i10;
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
                    i3 = zzml.zzf(obj, j).hashCode();
                    i = i3 + i2;
                    break;
                case 50:
                    i2 = i8 * 53;
                    i3 = zzml.zzf(obj, j).hashCode();
                    i = i3 + i2;
                    break;
                case 51:
                    i = i8;
                    if (!zzP(obj, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzkf.zzc(Double.doubleToLongBits(zzn(obj, j)));
                        i = i3 + i2;
                        break;
                    }
                case 52:
                    i = i8;
                    if (!zzP(obj, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = Float.floatToIntBits(zzo(obj, j));
                        i = i3 + i2;
                        break;
                    }
                case 53:
                    i = i8;
                    if (!zzP(obj, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzkf.zzc(zzC(obj, j));
                        i = i3 + i2;
                        break;
                    }
                case 54:
                    i = i8;
                    if (!zzP(obj, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzkf.zzc(zzC(obj, j));
                        i = i3 + i2;
                        break;
                    }
                case 55:
                    i = i8;
                    if (!zzP(obj, i9, i6)) {
                        break;
                    } else {
                        i4 = i8 * 53;
                        i5 = zzr(obj, j);
                        i = i4 + i5;
                        break;
                    }
                case 56:
                    i = i8;
                    if (!zzP(obj, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzkf.zzc(zzC(obj, j));
                        i = i3 + i2;
                        break;
                    }
                case 57:
                    i = i8;
                    if (!zzP(obj, i9, i6)) {
                        break;
                    } else {
                        i4 = i8 * 53;
                        i5 = zzr(obj, j);
                        i = i4 + i5;
                        break;
                    }
                case 58:
                    i = i8;
                    if (!zzP(obj, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzkf.zza(zzQ(obj, j));
                        i = i3 + i2;
                        break;
                    }
                case 59:
                    i = i8;
                    if (!zzP(obj, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = ((String) zzml.zzf(obj, j)).hashCode();
                        i = i3 + i2;
                        break;
                    }
                case 60:
                    i = i8;
                    if (!zzP(obj, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzml.zzf(obj, j).hashCode();
                        i = i3 + i2;
                        break;
                    }
                case 61:
                    i = i8;
                    if (!zzP(obj, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzml.zzf(obj, j).hashCode();
                        i = i3 + i2;
                        break;
                    }
                case 62:
                    i = i8;
                    if (!zzP(obj, i9, i6)) {
                        break;
                    } else {
                        i4 = i8 * 53;
                        i5 = zzr(obj, j);
                        i = i4 + i5;
                        break;
                    }
                case 63:
                    i = i8;
                    if (!zzP(obj, i9, i6)) {
                        break;
                    } else {
                        i4 = i8 * 53;
                        i5 = zzr(obj, j);
                        i = i4 + i5;
                        break;
                    }
                case 64:
                    i = i8;
                    if (!zzP(obj, i9, i6)) {
                        break;
                    } else {
                        i4 = i8 * 53;
                        i5 = zzr(obj, j);
                        i = i4 + i5;
                        break;
                    }
                case 65:
                    i = i8;
                    if (!zzP(obj, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzkf.zzc(zzC(obj, j));
                        i = i3 + i2;
                        break;
                    }
                case 66:
                    i = i8;
                    if (!zzP(obj, i9, i6)) {
                        break;
                    } else {
                        i4 = i8 * 53;
                        i5 = zzr(obj, j);
                        i = i4 + i5;
                        break;
                    }
                case 67:
                    i = i8;
                    if (!zzP(obj, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzkf.zzc(zzC(obj, j));
                        i = i3 + i2;
                        break;
                    }
                case 68:
                    i = i8;
                    if (!zzP(obj, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzml.zzf(obj, j).hashCode();
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

    /* JADX WARN: Code restructure failed: missing block: B:147:0x06e9, code lost:
        if (r32 == 1048575) goto L149;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x06ec, code lost:
        r0.putInt(r18, r32, r30);
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x06f7, code lost:
        r19 = r17.zzk;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x0701, code lost:
        if (r19 >= r17.zzl) goto L237;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x0704, code lost:
        r0 = r17.zzj[r19];
        r0 = r17.zzc[r0];
        r0 = com.google.android.gms.internal.measurement.zzml.zzf(r18, r17.zzB(r0) & 1048575);
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x0727, code lost:
        if (r0 != null) goto L154;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x0733, code lost:
        if (r17.zzD(r0) != null) goto L238;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x0736, code lost:
        r19 = r19 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x073c, code lost:
        r0 = (com.google.android.gms.internal.measurement.zzkw) r0;
        r0 = (com.google.android.gms.internal.measurement.zzkv) r17.zzF(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x074d, code lost:
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x0750, code lost:
        if (r35 != 0) goto L165;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x0757, code lost:
        if (r21 != r20) goto L163;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x0760, code lost:
        throw com.google.android.gms.internal.measurement.zzkh.zze();
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x0765, code lost:
        if (r21 > r20) goto L171;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x076c, code lost:
        if (r28 != r35) goto L171;
     */
    /* JADX WARN: Code restructure failed: missing block: B:170:0x0771, code lost:
        return r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x0775, code lost:
        throw com.google.android.gms.internal.measurement.zzkh.zze();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzc(java.lang.Object r17, byte[] r18, int r19, int r20, int r21, com.google.android.gms.internal.measurement.zzik r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1910
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzlf.zzc(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.measurement.zzik):int");
    }

    @Override // com.google.android.gms.internal.measurement.zzln
    public final Object zze() {
        return ((zzjx) this.zzg).zzl(4, null, null);
    }

    @Override // com.google.android.gms.internal.measurement.zzln
    public final void zzf(Object obj) {
        int i;
        int i2 = this.zzk;
        while (true) {
            i = this.zzl;
            if (i2 >= i) {
                break;
            }
            long zzB = zzB(this.zzj[i2]) & 1048575;
            Object zzf = zzml.zzf(obj, zzB);
            if (zzf != null) {
                ((zzkw) zzf).zzc();
                zzml.zzs(obj, zzB, zzf);
            }
            i2++;
        }
        int length = this.zzj.length;
        for (int i3 = i; i3 < length; i3++) {
            this.zzm.zza(obj, this.zzj[i3]);
        }
        this.zzn.zzg(obj);
        if (this.zzh) {
            this.zzo.zzb(obj);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzln
    public final void zzg(Object obj, Object obj2) {
        Objects.requireNonNull(obj2);
        for (int i = 0; i < this.zzc.length; i += 3) {
            int zzB = zzB(i);
            long j = 1048575 & zzB;
            int i2 = this.zzc[i];
            switch (zzA(zzB)) {
                case 0:
                    if (zzM(obj2, i)) {
                        zzml.zzo(obj, j, zzml.zza(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zzM(obj2, i)) {
                        zzml.zzp(obj, j, zzml.zzb(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zzM(obj2, i)) {
                        zzml.zzr(obj, j, zzml.zzd(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zzM(obj2, i)) {
                        zzml.zzr(obj, j, zzml.zzd(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zzM(obj2, i)) {
                        zzml.zzq(obj, j, zzml.zzc(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zzM(obj2, i)) {
                        zzml.zzr(obj, j, zzml.zzd(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zzM(obj2, i)) {
                        zzml.zzq(obj, j, zzml.zzc(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zzM(obj2, i)) {
                        zzml.zzm(obj, j, zzml.zzw(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (zzM(obj2, i)) {
                        zzml.zzs(obj, j, zzml.zzf(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    zzH(obj, obj2, i);
                    break;
                case 10:
                    if (zzM(obj2, i)) {
                        zzml.zzs(obj, j, zzml.zzf(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zzM(obj2, i)) {
                        zzml.zzq(obj, j, zzml.zzc(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zzM(obj2, i)) {
                        zzml.zzq(obj, j, zzml.zzc(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zzM(obj2, i)) {
                        zzml.zzq(obj, j, zzml.zzc(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zzM(obj2, i)) {
                        zzml.zzr(obj, j, zzml.zzd(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zzM(obj2, i)) {
                        zzml.zzq(obj, j, zzml.zzc(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zzM(obj2, i)) {
                        zzml.zzr(obj, j, zzml.zzd(obj2, j));
                        zzJ(obj, i);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    zzH(obj, obj2, i);
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
                    this.zzm.zzb(obj, obj2, j);
                    break;
                case 50:
                    zzlp.zzI(this.zzq, obj, obj2, j);
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
                    if (zzP(obj2, i2, i)) {
                        zzml.zzs(obj, j, zzml.zzf(obj2, j));
                        zzK(obj, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    zzI(obj, obj2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zzP(obj2, i2, i)) {
                        zzml.zzs(obj, j, zzml.zzf(obj2, j));
                        zzK(obj, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    zzI(obj, obj2, i);
                    break;
            }
        }
        zzlp.zzF(this.zzn, obj, obj2);
        if (this.zzh) {
            zzlp.zzE(this.zzo, obj, obj2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzln
    public final void zzh(Object obj, byte[] bArr, int i, int i2, zzik zzikVar) throws IOException {
        if (this.zzi) {
            zzu(obj, bArr, i, i2, zzikVar);
        } else {
            zzc(obj, bArr, i, i2, 0, zzikVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzln
    public final boolean zzi(Object obj, Object obj2) {
        boolean z;
        int length = this.zzc.length;
        for (int i = 0; i < length; i += 3) {
            int zzB = zzB(i);
            long j = zzB & 1048575;
            switch (zzA(zzB)) {
                case 0:
                    if (!zzL(obj, obj2, i) || Double.doubleToLongBits(zzml.zza(obj, j)) != Double.doubleToLongBits(zzml.zza(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 1:
                    if (!zzL(obj, obj2, i) || Float.floatToIntBits(zzml.zzb(obj, j)) != Float.floatToIntBits(zzml.zzb(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 2:
                    if (!zzL(obj, obj2, i) || zzml.zzd(obj, j) != zzml.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 3:
                    if (!zzL(obj, obj2, i) || zzml.zzd(obj, j) != zzml.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 4:
                    if (!zzL(obj, obj2, i) || zzml.zzc(obj, j) != zzml.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 5:
                    if (!zzL(obj, obj2, i) || zzml.zzd(obj, j) != zzml.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 6:
                    if (!zzL(obj, obj2, i) || zzml.zzc(obj, j) != zzml.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 7:
                    if (!zzL(obj, obj2, i) || zzml.zzw(obj, j) != zzml.zzw(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 8:
                    if (!zzL(obj, obj2, i) || !zzlp.zzH(zzml.zzf(obj, j), zzml.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 9:
                    if (!zzL(obj, obj2, i) || !zzlp.zzH(zzml.zzf(obj, j), zzml.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 10:
                    if (!zzL(obj, obj2, i) || !zzlp.zzH(zzml.zzf(obj, j), zzml.zzf(obj2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 11:
                    if (!zzL(obj, obj2, i) || zzml.zzc(obj, j) != zzml.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 12:
                    if (!zzL(obj, obj2, i) || zzml.zzc(obj, j) != zzml.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 13:
                    if (!zzL(obj, obj2, i) || zzml.zzc(obj, j) != zzml.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 14:
                    if (!zzL(obj, obj2, i) || zzml.zzd(obj, j) != zzml.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 15:
                    if (!zzL(obj, obj2, i) || zzml.zzc(obj, j) != zzml.zzc(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 16:
                    if (!zzL(obj, obj2, i) || zzml.zzd(obj, j) != zzml.zzd(obj2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 17:
                    if (!zzL(obj, obj2, i) || !zzlp.zzH(zzml.zzf(obj, j), zzml.zzf(obj2, j))) {
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
                    z = zzlp.zzH(zzml.zzf(obj, j), zzml.zzf(obj2, j));
                    break;
                case 50:
                    z = zzlp.zzH(zzml.zzf(obj, j), zzml.zzf(obj2, j));
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
                    long zzy = zzy(i) & 1048575;
                    if (zzml.zzc(obj, zzy) != zzml.zzc(obj2, zzy) || !zzlp.zzH(zzml.zzf(obj, j), zzml.zzf(obj2, j))) {
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
        if (!this.zzn.zzc(obj).equals(this.zzn.zzc(obj2))) {
            return false;
        }
        if (!this.zzh) {
            return true;
        }
        this.zzo.zza(obj);
        this.zzo.zza(obj2);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzln
    public final boolean zzj(Object obj) {
        int i = 1048575;
        int i2 = 0;
        for (int i3 = 0; i3 < this.zzk; i3++) {
            int i4 = this.zzj[i3];
            int i5 = this.zzc[i4];
            int zzB = zzB(i4);
            int i6 = this.zzc[i4 + 2];
            int i7 = i6 & 1048575;
            int i8 = 1 << (i6 >>> 20);
            if (i7 != i) {
                if (i7 != 1048575) {
                    i2 = zzb.getInt(obj, i7);
                }
                i = i7;
            }
            if ((268435456 & zzB) != 0 && !zzN(obj, i4, i, i2, i8)) {
                return false;
            }
            int zzA = zzA(zzB);
            if (zzA != 9 && zzA != 17) {
                if (zzA != 27) {
                    if (zzA == 60 || zzA == 68) {
                        if (zzP(obj, i5, i4) && !zzO(obj, zzB, zzE(i4))) {
                            return false;
                        }
                    } else if (zzA != 49) {
                        if (zzA == 50 && !((zzkw) zzml.zzf(obj, zzB & 1048575)).isEmpty()) {
                            zzkv zzkvVar = (zzkv) zzF(i4);
                            throw null;
                        }
                    }
                }
                List list = (List) zzml.zzf(obj, zzB & 1048575);
                if (!list.isEmpty()) {
                    zzln zzE = zzE(i4);
                    for (int i9 = 0; i9 < list.size(); i9++) {
                        if (!zzE.zzj(list.get(i9))) {
                            return false;
                        }
                    }
                    continue;
                } else {
                    continue;
                }
            } else if (zzN(obj, i4, i, i2, i8) && !zzO(obj, zzB, zzE(i4))) {
                return false;
            }
        }
        if (!this.zzh) {
            return true;
        }
        this.zzo.zza(obj);
        throw null;
    }

    @Override // com.google.android.gms.internal.measurement.zzln
    public final void zzm(Object obj, zzjf zzjfVar) throws IOException {
        if (!this.zzi) {
            zzR(obj, zzjfVar);
        } else if (this.zzh) {
            this.zzo.zza(obj);
            throw null;
        } else {
            int length = this.zzc.length;
            for (int i = 0; i < length; i += 3) {
                int zzB = zzB(i);
                int i2 = this.zzc[i];
                switch (zzA(zzB)) {
                    case 0:
                        if (zzM(obj, i)) {
                            zzjfVar.zzf(i2, zzml.zza(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (zzM(obj, i)) {
                            zzjfVar.zzo(i2, zzml.zzb(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (zzM(obj, i)) {
                            zzjfVar.zzt(i2, zzml.zzd(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (zzM(obj, i)) {
                            zzjfVar.zzJ(i2, zzml.zzd(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (zzM(obj, i)) {
                            zzjfVar.zzr(i2, zzml.zzc(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (zzM(obj, i)) {
                            zzjfVar.zzm(i2, zzml.zzd(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (zzM(obj, i)) {
                            zzjfVar.zzk(i2, zzml.zzc(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (zzM(obj, i)) {
                            zzjfVar.zzb(i2, zzml.zzw(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (zzM(obj, i)) {
                            zzT(i2, zzml.zzf(obj, zzB & 1048575), zzjfVar);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        if (zzM(obj, i)) {
                            zzjfVar.zzv(i2, zzml.zzf(obj, zzB & 1048575), zzE(i));
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (zzM(obj, i)) {
                            zzjfVar.zzd(i2, (zzix) zzml.zzf(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (zzM(obj, i)) {
                            zzjfVar.zzH(i2, zzml.zzc(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (zzM(obj, i)) {
                            zzjfVar.zzi(i2, zzml.zzc(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (zzM(obj, i)) {
                            zzjfVar.zzw(i2, zzml.zzc(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (zzM(obj, i)) {
                            zzjfVar.zzy(i2, zzml.zzd(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (zzM(obj, i)) {
                            zzjfVar.zzA(i2, zzml.zzc(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (zzM(obj, i)) {
                            zzjfVar.zzC(i2, zzml.zzd(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        if (zzM(obj, i)) {
                            zzjfVar.zzq(i2, zzml.zzf(obj, zzB & 1048575), zzE(i));
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        zzlp.zzL(i2, (List) zzml.zzf(obj, zzB & 1048575), zzjfVar, false);
                        break;
                    case 19:
                        zzlp.zzP(i2, (List) zzml.zzf(obj, zzB & 1048575), zzjfVar, false);
                        break;
                    case 20:
                        zzlp.zzS(i2, (List) zzml.zzf(obj, zzB & 1048575), zzjfVar, false);
                        break;
                    case 21:
                        zzlp.zzaa(i2, (List) zzml.zzf(obj, zzB & 1048575), zzjfVar, false);
                        break;
                    case 22:
                        zzlp.zzR(i2, (List) zzml.zzf(obj, zzB & 1048575), zzjfVar, false);
                        break;
                    case 23:
                        zzlp.zzO(i2, (List) zzml.zzf(obj, zzB & 1048575), zzjfVar, false);
                        break;
                    case 24:
                        zzlp.zzN(i2, (List) zzml.zzf(obj, zzB & 1048575), zzjfVar, false);
                        break;
                    case 25:
                        zzlp.zzJ(i2, (List) zzml.zzf(obj, zzB & 1048575), zzjfVar, false);
                        break;
                    case 26:
                        zzlp.zzY(i2, (List) zzml.zzf(obj, zzB & 1048575), zzjfVar);
                        break;
                    case 27:
                        zzlp.zzT(i2, (List) zzml.zzf(obj, zzB & 1048575), zzjfVar, zzE(i));
                        break;
                    case 28:
                        zzlp.zzK(i2, (List) zzml.zzf(obj, zzB & 1048575), zzjfVar);
                        break;
                    case 29:
                        zzlp.zzZ(i2, (List) zzml.zzf(obj, zzB & 1048575), zzjfVar, false);
                        break;
                    case 30:
                        zzlp.zzM(i2, (List) zzml.zzf(obj, zzB & 1048575), zzjfVar, false);
                        break;
                    case 31:
                        zzlp.zzU(i2, (List) zzml.zzf(obj, zzB & 1048575), zzjfVar, false);
                        break;
                    case 32:
                        zzlp.zzV(i2, (List) zzml.zzf(obj, zzB & 1048575), zzjfVar, false);
                        break;
                    case 33:
                        zzlp.zzW(i2, (List) zzml.zzf(obj, zzB & 1048575), zzjfVar, false);
                        break;
                    case 34:
                        zzlp.zzX(i2, (List) zzml.zzf(obj, zzB & 1048575), zzjfVar, false);
                        break;
                    case 35:
                        zzlp.zzL(i2, (List) zzml.zzf(obj, zzB & 1048575), zzjfVar, true);
                        break;
                    case 36:
                        zzlp.zzP(i2, (List) zzml.zzf(obj, zzB & 1048575), zzjfVar, true);
                        break;
                    case 37:
                        zzlp.zzS(i2, (List) zzml.zzf(obj, zzB & 1048575), zzjfVar, true);
                        break;
                    case 38:
                        zzlp.zzaa(i2, (List) zzml.zzf(obj, zzB & 1048575), zzjfVar, true);
                        break;
                    case 39:
                        zzlp.zzR(i2, (List) zzml.zzf(obj, zzB & 1048575), zzjfVar, true);
                        break;
                    case 40:
                        zzlp.zzO(i2, (List) zzml.zzf(obj, zzB & 1048575), zzjfVar, true);
                        break;
                    case 41:
                        zzlp.zzN(i2, (List) zzml.zzf(obj, zzB & 1048575), zzjfVar, true);
                        break;
                    case 42:
                        zzlp.zzJ(i2, (List) zzml.zzf(obj, zzB & 1048575), zzjfVar, true);
                        break;
                    case 43:
                        zzlp.zzZ(i2, (List) zzml.zzf(obj, zzB & 1048575), zzjfVar, true);
                        break;
                    case 44:
                        zzlp.zzM(i2, (List) zzml.zzf(obj, zzB & 1048575), zzjfVar, true);
                        break;
                    case 45:
                        zzlp.zzU(i2, (List) zzml.zzf(obj, zzB & 1048575), zzjfVar, true);
                        break;
                    case 46:
                        zzlp.zzV(i2, (List) zzml.zzf(obj, zzB & 1048575), zzjfVar, true);
                        break;
                    case 47:
                        zzlp.zzW(i2, (List) zzml.zzf(obj, zzB & 1048575), zzjfVar, true);
                        break;
                    case 48:
                        zzlp.zzX(i2, (List) zzml.zzf(obj, zzB & 1048575), zzjfVar, true);
                        break;
                    case 49:
                        zzlp.zzQ(i2, (List) zzml.zzf(obj, zzB & 1048575), zzjfVar, zzE(i));
                        break;
                    case 50:
                        zzS(zzjfVar, i2, zzml.zzf(obj, zzB & 1048575), i);
                        break;
                    case 51:
                        if (zzP(obj, i2, i)) {
                            zzjfVar.zzf(i2, zzn(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        if (zzP(obj, i2, i)) {
                            zzjfVar.zzo(i2, zzo(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        if (zzP(obj, i2, i)) {
                            zzjfVar.zzt(i2, zzC(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        if (zzP(obj, i2, i)) {
                            zzjfVar.zzJ(i2, zzC(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        if (zzP(obj, i2, i)) {
                            zzjfVar.zzr(i2, zzr(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        if (zzP(obj, i2, i)) {
                            zzjfVar.zzm(i2, zzC(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        if (zzP(obj, i2, i)) {
                            zzjfVar.zzk(i2, zzr(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        if (zzP(obj, i2, i)) {
                            zzjfVar.zzb(i2, zzQ(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        if (zzP(obj, i2, i)) {
                            zzT(i2, zzml.zzf(obj, zzB & 1048575), zzjfVar);
                            break;
                        } else {
                            break;
                        }
                    case 60:
                        if (zzP(obj, i2, i)) {
                            zzjfVar.zzv(i2, zzml.zzf(obj, zzB & 1048575), zzE(i));
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        if (zzP(obj, i2, i)) {
                            zzjfVar.zzd(i2, (zzix) zzml.zzf(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        if (zzP(obj, i2, i)) {
                            zzjfVar.zzH(i2, zzr(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        if (zzP(obj, i2, i)) {
                            zzjfVar.zzi(i2, zzr(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (zzP(obj, i2, i)) {
                            zzjfVar.zzw(i2, zzr(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (zzP(obj, i2, i)) {
                            zzjfVar.zzy(i2, zzC(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        if (zzP(obj, i2, i)) {
                            zzjfVar.zzA(i2, zzr(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        if (zzP(obj, i2, i)) {
                            zzjfVar.zzC(i2, zzC(obj, zzB & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        if (zzP(obj, i2, i)) {
                            zzjfVar.zzq(i2, zzml.zzf(obj, zzB & 1048575), zzE(i));
                            break;
                        } else {
                            break;
                        }
                }
            }
            zzmb zzmbVar = this.zzn;
            zzmbVar.zzi(zzmbVar.zzc(obj), zzjfVar);
        }
    }
}
