package com.google.android.gms.internal.ads;

import com.google.android.libraries.places.api.model.PlaceLikelihood;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import p193e.p1432d.p1439c.p1440a.C22128a;
import sun.misc.Unsafe;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzghl.class */
public final class zzghl<T> implements zzghz<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzgiy.zzt();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzghi zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final boolean zzj;
    private final int[] zzk;
    private final int zzl;
    private final int zzm;
    private final zzggw zzn;
    private final zzgio<?, ?> zzo;
    private final zzgfn<?> zzp;
    private final zzghn zzq;
    private final zzghd zzr;

    /* JADX WARN: Multi-variable type inference failed */
    private zzghl(int[] iArr, int[] iArr2, Object[] objArr, int i, int i2, zzghi zzghiVar, boolean z, boolean z2, int[] iArr3, int i3, int i4, zzghn zzghnVar, zzggw zzggwVar, zzgio<?, ?> zzgioVar, zzgfn<?> zzgfnVar, zzghd zzghdVar) {
        this.zzc = iArr;
        this.zzd = iArr2;
        this.zze = objArr;
        this.zzf = i;
        this.zzi = i2 instanceof zzgga;
        this.zzj = zzghiVar;
        boolean z3 = false;
        if (zzgioVar != 0) {
            z3 = false;
            if (zzgioVar.zza((zzghi) i2)) {
                z3 = true;
            }
        }
        this.zzh = z3;
        this.zzk = z2;
        this.zzl = iArr3;
        this.zzm = i3;
        this.zzq = i4;
        this.zzn = zzghnVar;
        this.zzo = zzggwVar;
        this.zzp = zzgioVar;
        this.zzg = i2;
        this.zzr = zzgfnVar;
    }

    private final <UT, UB> UB zzA(Object obj, int i, UB ub, zzgio<UT, UB> zzgioVar) {
        int i2 = this.zzc[i];
        Object zzn = zzgiy.zzn(obj, zzD(i) & 1048575);
        if (zzn != null && zzy(i) != null) {
            zzghc zzghcVar = (zzghc) zzn;
            zzghb zzghbVar = (zzghb) zzx(i);
            throw null;
        }
        return ub;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean zzB(Object obj, int i, zzghz zzghzVar) {
        return zzghzVar.zzk(zzgiy.zzn(obj, i & 1048575));
    }

    private final void zzC(Object obj, int i, zzght zzghtVar) throws IOException {
        if (zzG(i)) {
            zzgiy.zzo(obj, i & 1048575, zzghtVar.zzn());
        } else if (this.zzi) {
            zzgiy.zzo(obj, i & 1048575, zzghtVar.zzm());
        } else {
            zzgiy.zzo(obj, i & 1048575, zzghtVar.zzq());
        }
    }

    private final int zzD(int i) {
        return this.zzc[i + 1];
    }

    private final int zzE(int i) {
        return this.zzc[i + 2];
    }

    private static int zzF(int i) {
        return (i >>> 20) & 255;
    }

    private static boolean zzG(int i) {
        return (i & 536870912) != 0;
    }

    private static <T> double zzH(T t, long j) {
        return ((Double) zzgiy.zzn(t, j)).doubleValue();
    }

    private static <T> float zzI(T t, long j) {
        return ((Float) zzgiy.zzn(t, j)).floatValue();
    }

    private static <T> int zzJ(T t, long j) {
        return ((Integer) zzgiy.zzn(t, j)).intValue();
    }

    private static <T> long zzK(T t, long j) {
        return ((Long) zzgiy.zzn(t, j)).longValue();
    }

    private static <T> boolean zzL(T t, long j) {
        return ((Boolean) zzgiy.zzn(t, j)).booleanValue();
    }

    private final boolean zzM(T t, T t2, int i) {
        return zzO(t, i) == zzO(t2, i);
    }

    private final boolean zzN(T t, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? zzO(t, i) : (i3 & i4) != 0;
    }

    private final boolean zzO(T t, int i) {
        int zzE = zzE(i);
        long j = zzE & 1048575;
        if (j != 1048575) {
            return (zzgiy.zzd(t, j) & (1 << (zzE >>> 20))) != 0;
        }
        int zzD = zzD(i);
        long j2 = zzD & 1048575;
        switch (zzF(zzD)) {
            case 0:
                return zzgiy.zzl(t, j2) != PlaceLikelihood.LIKELIHOOD_MIN_VALUE;
            case 1:
                return zzgiy.zzj(t, j2) != 0.0f;
            case 2:
                return zzgiy.zzf(t, j2) != 0;
            case 3:
                return zzgiy.zzf(t, j2) != 0;
            case 4:
                return zzgiy.zzd(t, j2) != 0;
            case 5:
                return zzgiy.zzf(t, j2) != 0;
            case 6:
                return zzgiy.zzd(t, j2) != 0;
            case 7:
                return zzgiy.zzh(t, j2);
            case 8:
                Object zzn = zzgiy.zzn(t, j2);
                if (zzn instanceof String) {
                    return !((String) zzn).isEmpty();
                } else if (!(zzn instanceof zzgex)) {
                    throw new IllegalArgumentException();
                } else {
                    return !zzgex.zzb.equals(zzn);
                }
            case 9:
                return zzgiy.zzn(t, j2) != null;
            case 10:
                return !zzgex.zzb.equals(zzgiy.zzn(t, j2));
            case 11:
                return zzgiy.zzd(t, j2) != 0;
            case 12:
                return zzgiy.zzd(t, j2) != 0;
            case 13:
                return zzgiy.zzd(t, j2) != 0;
            case 14:
                return zzgiy.zzf(t, j2) != 0;
            case 15:
                return zzgiy.zzd(t, j2) != 0;
            case 16:
                return zzgiy.zzf(t, j2) != 0;
            case 17:
                return zzgiy.zzn(t, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final void zzP(T t, int i) {
        int zzE = zzE(i);
        long j = 1048575 & zzE;
        if (j == 1048575) {
            return;
        }
        zzgiy.zze(t, j, (1 << (zzE >>> 20)) | zzgiy.zzd(t, j));
    }

    private final boolean zzQ(T t, int i, int i2) {
        return zzgiy.zzd(t, (long) (zzE(i2) & 1048575)) == i;
    }

    private final void zzR(T t, int i, int i2) {
        zzgiy.zze(t, zzE(i2) & 1048575, i);
    }

    private final int zzS(int i) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzU(i, 0);
    }

    private final int zzT(int i, int i2) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzU(i, i2);
    }

    private final int zzU(int i, int i2) {
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

    private final void zzV(T t, zzgfi zzgfiVar) throws IOException {
        int i;
        int i2;
        if (this.zzh) {
            this.zzp.zzb(t);
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
                zzgio<?, ?> zzgioVar = this.zzo;
                zzgioVar.zzr(zzgioVar.zzj(t), zzgfiVar);
                return;
            }
            int zzD = zzD(i4);
            int i7 = this.zzc[i4];
            int zzF = zzF(zzD);
            if (zzF <= 17) {
                int i8 = this.zzc[i4 + 2];
                int i9 = i8 & 1048575;
                i = i6;
                int i10 = i3;
                if (i9 != i3) {
                    i = unsafe.getInt(t, i9);
                    i10 = i9;
                }
                i2 = 1 << (i8 >>> 20);
                i3 = i10;
            } else {
                i2 = 0;
                i = i6;
            }
            long j = zzD & 1048575;
            switch (zzF) {
                case 0:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzgfiVar.zzf(i7, zzgiy.zzl(t, j));
                        break;
                    }
                case 1:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzgfiVar.zze(i7, zzgiy.zzj(t, j));
                        break;
                    }
                case 2:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzgfiVar.zzc(i7, unsafe.getLong(t, j));
                        break;
                    }
                case 3:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzgfiVar.zzh(i7, unsafe.getLong(t, j));
                        break;
                    }
                case 4:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzgfiVar.zzi(i7, unsafe.getInt(t, j));
                        break;
                    }
                case 5:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzgfiVar.zzj(i7, unsafe.getLong(t, j));
                        break;
                    }
                case 6:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzgfiVar.zzk(i7, unsafe.getInt(t, j));
                        break;
                    }
                case 7:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzgfiVar.zzl(i7, zzgiy.zzh(t, j));
                        break;
                    }
                case 8:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzX(i7, unsafe.getObject(t, j), zzgfiVar);
                        break;
                    }
                case 9:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzgfiVar.zzr(i7, unsafe.getObject(t, j), zzw(i4));
                        break;
                    }
                case 10:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzgfiVar.zzn(i7, (zzgex) unsafe.getObject(t, j));
                        break;
                    }
                case 11:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzgfiVar.zzo(i7, unsafe.getInt(t, j));
                        break;
                    }
                case 12:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzgfiVar.zzg(i7, unsafe.getInt(t, j));
                        break;
                    }
                case 13:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzgfiVar.zzb(i7, unsafe.getInt(t, j));
                        break;
                    }
                case 14:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzgfiVar.zzd(i7, unsafe.getLong(t, j));
                        break;
                    }
                case 15:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzgfiVar.zzp(i7, unsafe.getInt(t, j));
                        break;
                    }
                case 16:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzgfiVar.zzq(i7, unsafe.getLong(t, j));
                        break;
                    }
                case 17:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzgfiVar.zzs(i7, unsafe.getObject(t, j), zzw(i4));
                        break;
                    }
                case 18:
                    zzgib.zzJ(this.zzc[i4], (List) unsafe.getObject(t, j), zzgfiVar, false);
                    break;
                case 19:
                    zzgib.zzK(this.zzc[i4], (List) unsafe.getObject(t, j), zzgfiVar, false);
                    break;
                case 20:
                    zzgib.zzL(this.zzc[i4], (List) unsafe.getObject(t, j), zzgfiVar, false);
                    break;
                case 21:
                    zzgib.zzM(this.zzc[i4], (List) unsafe.getObject(t, j), zzgfiVar, false);
                    break;
                case 22:
                    zzgib.zzQ(this.zzc[i4], (List) unsafe.getObject(t, j), zzgfiVar, false);
                    break;
                case 23:
                    zzgib.zzO(this.zzc[i4], (List) unsafe.getObject(t, j), zzgfiVar, false);
                    break;
                case 24:
                    zzgib.zzT(this.zzc[i4], (List) unsafe.getObject(t, j), zzgfiVar, false);
                    break;
                case 25:
                    zzgib.zzW(this.zzc[i4], (List) unsafe.getObject(t, j), zzgfiVar, false);
                    break;
                case 26:
                    zzgib.zzX(this.zzc[i4], (List) unsafe.getObject(t, j), zzgfiVar);
                    break;
                case 27:
                    zzgib.zzZ(this.zzc[i4], (List) unsafe.getObject(t, j), zzgfiVar, zzw(i4));
                    break;
                case 28:
                    zzgib.zzY(this.zzc[i4], (List) unsafe.getObject(t, j), zzgfiVar);
                    break;
                case 29:
                    zzgib.zzR(this.zzc[i4], (List) unsafe.getObject(t, j), zzgfiVar, false);
                    break;
                case 30:
                    zzgib.zzV(this.zzc[i4], (List) unsafe.getObject(t, j), zzgfiVar, false);
                    break;
                case 31:
                    zzgib.zzU(this.zzc[i4], (List) unsafe.getObject(t, j), zzgfiVar, false);
                    break;
                case 32:
                    zzgib.zzP(this.zzc[i4], (List) unsafe.getObject(t, j), zzgfiVar, false);
                    break;
                case 33:
                    zzgib.zzS(this.zzc[i4], (List) unsafe.getObject(t, j), zzgfiVar, false);
                    break;
                case 34:
                    zzgib.zzN(this.zzc[i4], (List) unsafe.getObject(t, j), zzgfiVar, false);
                    break;
                case 35:
                    zzgib.zzJ(this.zzc[i4], (List) unsafe.getObject(t, j), zzgfiVar, true);
                    break;
                case 36:
                    zzgib.zzK(this.zzc[i4], (List) unsafe.getObject(t, j), zzgfiVar, true);
                    break;
                case 37:
                    zzgib.zzL(this.zzc[i4], (List) unsafe.getObject(t, j), zzgfiVar, true);
                    break;
                case 38:
                    zzgib.zzM(this.zzc[i4], (List) unsafe.getObject(t, j), zzgfiVar, true);
                    break;
                case 39:
                    zzgib.zzQ(this.zzc[i4], (List) unsafe.getObject(t, j), zzgfiVar, true);
                    break;
                case 40:
                    zzgib.zzO(this.zzc[i4], (List) unsafe.getObject(t, j), zzgfiVar, true);
                    break;
                case 41:
                    zzgib.zzT(this.zzc[i4], (List) unsafe.getObject(t, j), zzgfiVar, true);
                    break;
                case 42:
                    zzgib.zzW(this.zzc[i4], (List) unsafe.getObject(t, j), zzgfiVar, true);
                    break;
                case 43:
                    zzgib.zzR(this.zzc[i4], (List) unsafe.getObject(t, j), zzgfiVar, true);
                    break;
                case 44:
                    zzgib.zzV(this.zzc[i4], (List) unsafe.getObject(t, j), zzgfiVar, true);
                    break;
                case 45:
                    zzgib.zzU(this.zzc[i4], (List) unsafe.getObject(t, j), zzgfiVar, true);
                    break;
                case 46:
                    zzgib.zzP(this.zzc[i4], (List) unsafe.getObject(t, j), zzgfiVar, true);
                    break;
                case 47:
                    zzgib.zzS(this.zzc[i4], (List) unsafe.getObject(t, j), zzgfiVar, true);
                    break;
                case 48:
                    zzgib.zzN(this.zzc[i4], (List) unsafe.getObject(t, j), zzgfiVar, true);
                    break;
                case 49:
                    zzgib.zzaa(this.zzc[i4], (List) unsafe.getObject(t, j), zzgfiVar, zzw(i4));
                    break;
                case 50:
                    zzW(zzgfiVar, i7, unsafe.getObject(t, j), i4);
                    break;
                case 51:
                    if (!zzQ(t, i7, i4)) {
                        break;
                    } else {
                        zzgfiVar.zzf(i7, zzH(t, j));
                        break;
                    }
                case 52:
                    if (!zzQ(t, i7, i4)) {
                        break;
                    } else {
                        zzgfiVar.zze(i7, zzI(t, j));
                        break;
                    }
                case 53:
                    if (!zzQ(t, i7, i4)) {
                        break;
                    } else {
                        zzgfiVar.zzc(i7, zzK(t, j));
                        break;
                    }
                case 54:
                    if (!zzQ(t, i7, i4)) {
                        break;
                    } else {
                        zzgfiVar.zzh(i7, zzK(t, j));
                        break;
                    }
                case 55:
                    if (!zzQ(t, i7, i4)) {
                        break;
                    } else {
                        zzgfiVar.zzi(i7, zzJ(t, j));
                        break;
                    }
                case 56:
                    if (!zzQ(t, i7, i4)) {
                        break;
                    } else {
                        zzgfiVar.zzj(i7, zzK(t, j));
                        break;
                    }
                case 57:
                    if (!zzQ(t, i7, i4)) {
                        break;
                    } else {
                        zzgfiVar.zzk(i7, zzJ(t, j));
                        break;
                    }
                case 58:
                    if (!zzQ(t, i7, i4)) {
                        break;
                    } else {
                        zzgfiVar.zzl(i7, zzL(t, j));
                        break;
                    }
                case 59:
                    if (!zzQ(t, i7, i4)) {
                        break;
                    } else {
                        zzX(i7, unsafe.getObject(t, j), zzgfiVar);
                        break;
                    }
                case 60:
                    if (!zzQ(t, i7, i4)) {
                        break;
                    } else {
                        zzgfiVar.zzr(i7, unsafe.getObject(t, j), zzw(i4));
                        break;
                    }
                case 61:
                    if (!zzQ(t, i7, i4)) {
                        break;
                    } else {
                        zzgfiVar.zzn(i7, (zzgex) unsafe.getObject(t, j));
                        break;
                    }
                case 62:
                    if (!zzQ(t, i7, i4)) {
                        break;
                    } else {
                        zzgfiVar.zzo(i7, zzJ(t, j));
                        break;
                    }
                case 63:
                    if (!zzQ(t, i7, i4)) {
                        break;
                    } else {
                        zzgfiVar.zzg(i7, zzJ(t, j));
                        break;
                    }
                case 64:
                    if (!zzQ(t, i7, i4)) {
                        break;
                    } else {
                        zzgfiVar.zzb(i7, zzJ(t, j));
                        break;
                    }
                case 65:
                    if (!zzQ(t, i7, i4)) {
                        break;
                    } else {
                        zzgfiVar.zzd(i7, zzK(t, j));
                        break;
                    }
                case 66:
                    if (!zzQ(t, i7, i4)) {
                        break;
                    } else {
                        zzgfiVar.zzp(i7, zzJ(t, j));
                        break;
                    }
                case 67:
                    if (!zzQ(t, i7, i4)) {
                        break;
                    } else {
                        zzgfiVar.zzq(i7, zzK(t, j));
                        break;
                    }
                case 68:
                    if (!zzQ(t, i7, i4)) {
                        break;
                    } else {
                        zzgfiVar.zzs(i7, unsafe.getObject(t, j), zzw(i4));
                        break;
                    }
            }
            i4 += 3;
            i5 = i;
        }
    }

    private final <K, V> void zzW(zzgfi zzgfiVar, int i, Object obj, int i2) throws IOException {
        if (obj == null) {
            return;
        }
        zzghb zzghbVar = (zzghb) zzx(i2);
        throw null;
    }

    private static final void zzX(int i, Object obj, zzgfi zzgfiVar) throws IOException {
        if (obj instanceof String) {
            zzgfiVar.zzm(i, (String) obj);
        } else {
            zzgfiVar.zzn(i, (zzgex) obj);
        }
    }

    public static zzgip zzg(Object obj) {
        zzgga zzggaVar = (zzgga) obj;
        zzgip zzgipVar = zzggaVar.zzc;
        zzgip zzgipVar2 = zzgipVar;
        if (zzgipVar == zzgip.zza()) {
            zzgipVar2 = zzgip.zzb();
            zzggaVar.zzc = zzgipVar2;
        }
        return zzgipVar2;
    }

    public static <T> zzghl<T> zzl(Class<T> cls, zzghf zzghfVar, zzghn zzghnVar, zzggw zzggwVar, zzgio<?, ?> zzgioVar, zzgfn<?> zzgfnVar, zzghd zzghdVar) {
        if (zzghfVar instanceof zzghs) {
            return zzm((zzghs) zzghfVar, zzghnVar, zzggwVar, zzgioVar, zzgfnVar, zzghdVar);
        }
        zzgil zzgilVar = (zzgil) zzghfVar;
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:124:0x06e3  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x06ed  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x071c  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0726  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0963  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> com.google.android.gms.internal.ads.zzghl<T> zzm(com.google.android.gms.internal.ads.zzghs r19, com.google.android.gms.internal.ads.zzghn r20, com.google.android.gms.internal.ads.zzggw r21, com.google.android.gms.internal.ads.zzgio<?, ?> r22, com.google.android.gms.internal.ads.zzgfn<?> r23, com.google.android.gms.internal.ads.zzghd r24) {
        /*
            Method dump skipped, instructions count: 2603
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzghl.zzm(com.google.android.gms.internal.ads.zzghs, com.google.android.gms.internal.ads.zzghn, com.google.android.gms.internal.ads.zzggw, com.google.android.gms.internal.ads.zzgio, com.google.android.gms.internal.ads.zzgfn, com.google.android.gms.internal.ads.zzghd):com.google.android.gms.internal.ads.zzghl");
    }

    private static Field zzo(Class<?> cls, String str) {
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

    private final void zzp(T t, T t2, int i) {
        long zzD = zzD(i) & 1048575;
        if (!zzO(t2, i)) {
            return;
        }
        Object zzn = zzgiy.zzn(t, zzD);
        Object zzn2 = zzgiy.zzn(t2, zzD);
        if (zzn != null && zzn2 != null) {
            zzgiy.zzo(t, zzD, zzggk.zzi(zzn, zzn2));
            zzP(t, i);
        } else if (zzn2 == null) {
        } else {
            zzgiy.zzo(t, zzD, zzn2);
            zzP(t, i);
        }
    }

    private final void zzq(T t, T t2, int i) {
        int zzD = zzD(i);
        int i2 = this.zzc[i];
        long j = zzD & 1048575;
        if (!zzQ(t2, i2, i)) {
            return;
        }
        Object zzn = zzQ(t, i2, i) ? zzgiy.zzn(t, j) : null;
        Object zzn2 = zzgiy.zzn(t2, j);
        if (zzn != null && zzn2 != null) {
            zzgiy.zzo(t, j, zzggk.zzi(zzn, zzn2));
            zzR(t, i2, i);
        } else if (zzn2 == null) {
        } else {
            zzgiy.zzo(t, j, zzn2);
            zzR(t, i2, i);
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
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        Unsafe unsafe = zzb;
        int i19 = 1048575;
        int i20 = 0;
        int i21 = 0;
        int i22 = 0;
        while (i20 < this.zzc.length) {
            int zzD = zzD(i20);
            int i23 = this.zzc[i20];
            int zzF = zzF(zzD);
            if (zzF <= 17) {
                int i24 = this.zzc[i20 + 2];
                int i25 = i24 & 1048575;
                int i26 = 1 << (i24 >>> 20);
                i = i19;
                i2 = i26;
                if (i25 != i19) {
                    i21 = unsafe.getInt(t, i25);
                    i = i25;
                    i2 = i26;
                }
            } else {
                i2 = 0;
                i = i19;
            }
            long j = zzD & 1048575;
            switch (zzF) {
                case 0:
                    i3 = i22;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        i5 = zzgfh.zzx(i23 << 3);
                        i4 = i5 + 8;
                        i3 = i22 + i4;
                        break;
                    }
                case 1:
                    i3 = i22;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        i6 = zzgfh.zzx(i23 << 3);
                        i4 = i6 + 4;
                        i3 = i22 + i4;
                        break;
                    }
                case 2:
                    i3 = i22;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        long j2 = unsafe.getLong(t, j);
                        i7 = zzgfh.zzx(i23 << 3);
                        i8 = zzgfh.zzy(j2);
                        i3 = i22 + i8 + i7;
                        break;
                    }
                case 3:
                    i3 = i22;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        long j3 = unsafe.getLong(t, j);
                        i7 = zzgfh.zzx(i23 << 3);
                        i8 = zzgfh.zzy(j3);
                        i3 = i22 + i8 + i7;
                        break;
                    }
                case 4:
                    i3 = i22;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        int i27 = unsafe.getInt(t, j);
                        i10 = zzgfh.zzx(i23 << 3);
                        i9 = zzgfh.zzw(i27);
                        i4 = i9 + i10;
                        i3 = i22 + i4;
                        break;
                    }
                case 5:
                    i3 = i22;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        i5 = zzgfh.zzx(i23 << 3);
                        i4 = i5 + 8;
                        i3 = i22 + i4;
                        break;
                    }
                case 6:
                    i3 = i22;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        i6 = zzgfh.zzx(i23 << 3);
                        i4 = i6 + 4;
                        i3 = i22 + i4;
                        break;
                    }
                case 7:
                    i3 = i22;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        i11 = zzgfh.zzx(i23 << 3);
                        i4 = i11 + 1;
                        i3 = i22 + i4;
                        break;
                    }
                case 8:
                    i3 = i22;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        Object object = unsafe.getObject(t, j);
                        if (!(object instanceof zzgex)) {
                            i10 = zzgfh.zzx(i23 << 3);
                            i9 = zzgfh.zzz((String) object);
                            i4 = i9 + i10;
                            i3 = i22 + i4;
                            break;
                        } else {
                            i15 = zzgfh.zzx(i23 << 3);
                            i14 = ((zzgex) object).zzc();
                            i13 = zzgfh.zzx(i14);
                            i12 = i13 + i14 + i15;
                            i3 = i22 + i12;
                            break;
                        }
                    }
                case 9:
                    i3 = i22;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        i4 = zzgib.zzw(i23, unsafe.getObject(t, j), zzw(i20));
                        i3 = i22 + i4;
                        break;
                    }
                case 10:
                    i3 = i22;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        zzgex zzgexVar = (zzgex) unsafe.getObject(t, j);
                        i15 = zzgfh.zzx(i23 << 3);
                        i14 = zzgexVar.zzc();
                        i13 = zzgfh.zzx(i14);
                        i12 = i13 + i14 + i15;
                        i3 = i22 + i12;
                        break;
                    }
                case 11:
                    i3 = i22;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        int i28 = unsafe.getInt(t, j);
                        i10 = zzgfh.zzx(i23 << 3);
                        i9 = zzgfh.zzx(i28);
                        i4 = i9 + i10;
                        i3 = i22 + i4;
                        break;
                    }
                case 12:
                    i3 = i22;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        int i29 = unsafe.getInt(t, j);
                        i10 = zzgfh.zzx(i23 << 3);
                        i9 = zzgfh.zzw(i29);
                        i4 = i9 + i10;
                        i3 = i22 + i4;
                        break;
                    }
                case 13:
                    i3 = i22;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        i6 = zzgfh.zzx(i23 << 3);
                        i4 = i6 + 4;
                        i3 = i22 + i4;
                        break;
                    }
                case 14:
                    i3 = i22;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        i5 = zzgfh.zzx(i23 << 3);
                        i4 = i5 + 8;
                        i3 = i22 + i4;
                        break;
                    }
                case 15:
                    i3 = i22;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        int i30 = unsafe.getInt(t, j);
                        i10 = zzgfh.zzx(i23 << 3);
                        i9 = zzgfh.zzx((i30 >> 31) ^ (i30 + i30));
                        i4 = i9 + i10;
                        i3 = i22 + i4;
                        break;
                    }
                case 16:
                    i3 = i22;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        long j4 = unsafe.getLong(t, j);
                        i10 = zzgfh.zzx(i23 << 3);
                        i9 = zzgfh.zzy((j4 >> 63) ^ (j4 + j4));
                        i4 = i9 + i10;
                        i3 = i22 + i4;
                        break;
                    }
                case 17:
                    i3 = i22;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        i4 = zzgfh.zzF(i23, (zzghi) unsafe.getObject(t, j), zzw(i20));
                        i3 = i22 + i4;
                        break;
                    }
                case 18:
                    i4 = zzgib.zzs(i23, (List) unsafe.getObject(t, j), false);
                    i3 = i22 + i4;
                    break;
                case 19:
                    i4 = zzgib.zzq(i23, (List) unsafe.getObject(t, j), false);
                    i3 = i22 + i4;
                    break;
                case 20:
                    i4 = zzgib.zzc(i23, (List) unsafe.getObject(t, j), false);
                    i3 = i22 + i4;
                    break;
                case 21:
                    i4 = zzgib.zze(i23, (List) unsafe.getObject(t, j), false);
                    i3 = i22 + i4;
                    break;
                case 22:
                    i4 = zzgib.zzk(i23, (List) unsafe.getObject(t, j), false);
                    i3 = i22 + i4;
                    break;
                case 23:
                    i4 = zzgib.zzs(i23, (List) unsafe.getObject(t, j), false);
                    i3 = i22 + i4;
                    break;
                case 24:
                    i4 = zzgib.zzq(i23, (List) unsafe.getObject(t, j), false);
                    i3 = i22 + i4;
                    break;
                case 25:
                    i4 = zzgib.zzu(i23, (List) unsafe.getObject(t, j), false);
                    i3 = i22 + i4;
                    break;
                case 26:
                    i4 = zzgib.zzv(i23, (List) unsafe.getObject(t, j));
                    i3 = i22 + i4;
                    break;
                case 27:
                    i4 = zzgib.zzx(i23, (List) unsafe.getObject(t, j), zzw(i20));
                    i3 = i22 + i4;
                    break;
                case 28:
                    i4 = zzgib.zzy(i23, (List) unsafe.getObject(t, j));
                    i3 = i22 + i4;
                    break;
                case 29:
                    i4 = zzgib.zzm(i23, (List) unsafe.getObject(t, j), false);
                    i3 = i22 + i4;
                    break;
                case 30:
                    i4 = zzgib.zzi(i23, (List) unsafe.getObject(t, j), false);
                    i3 = i22 + i4;
                    break;
                case 31:
                    i4 = zzgib.zzq(i23, (List) unsafe.getObject(t, j), false);
                    i3 = i22 + i4;
                    break;
                case 32:
                    i4 = zzgib.zzs(i23, (List) unsafe.getObject(t, j), false);
                    i3 = i22 + i4;
                    break;
                case 33:
                    i4 = zzgib.zzo(i23, (List) unsafe.getObject(t, j), false);
                    i3 = i22 + i4;
                    break;
                case 34:
                    i4 = zzgib.zzg(i23, (List) unsafe.getObject(t, j), false);
                    i3 = i22 + i4;
                    break;
                case 35:
                    int zzr = zzgib.zzr((List) unsafe.getObject(t, j));
                    i3 = i22;
                    if (zzr <= 0) {
                        break;
                    } else {
                        i18 = zzgfh.zzv(i23);
                        i16 = zzgfh.zzx(zzr);
                        i17 = zzr;
                        i12 = i16 + i18 + i17;
                        i3 = i22 + i12;
                        break;
                    }
                case 36:
                    int zzp = zzgib.zzp((List) unsafe.getObject(t, j));
                    i3 = i22;
                    if (zzp <= 0) {
                        break;
                    } else {
                        int zzv = zzgfh.zzv(i23);
                        i16 = zzgfh.zzx(zzp);
                        i17 = zzp;
                        i18 = zzv;
                        i12 = i16 + i18 + i17;
                        i3 = i22 + i12;
                        break;
                    }
                case 37:
                    int zzb2 = zzgib.zzb((List) unsafe.getObject(t, j));
                    i3 = i22;
                    if (zzb2 <= 0) {
                        break;
                    } else {
                        int zzv2 = zzgfh.zzv(i23);
                        i16 = zzgfh.zzx(zzb2);
                        i17 = zzb2;
                        i18 = zzv2;
                        i12 = i16 + i18 + i17;
                        i3 = i22 + i12;
                        break;
                    }
                case 38:
                    int zzd = zzgib.zzd((List) unsafe.getObject(t, j));
                    i3 = i22;
                    if (zzd <= 0) {
                        break;
                    } else {
                        int zzv3 = zzgfh.zzv(i23);
                        i16 = zzgfh.zzx(zzd);
                        i17 = zzd;
                        i18 = zzv3;
                        i12 = i16 + i18 + i17;
                        i3 = i22 + i12;
                        break;
                    }
                case 39:
                    int zzj = zzgib.zzj((List) unsafe.getObject(t, j));
                    i3 = i22;
                    if (zzj <= 0) {
                        break;
                    } else {
                        int zzv4 = zzgfh.zzv(i23);
                        i16 = zzgfh.zzx(zzj);
                        i17 = zzj;
                        i18 = zzv4;
                        i12 = i16 + i18 + i17;
                        i3 = i22 + i12;
                        break;
                    }
                case 40:
                    int zzr2 = zzgib.zzr((List) unsafe.getObject(t, j));
                    i3 = i22;
                    if (zzr2 <= 0) {
                        break;
                    } else {
                        int zzv5 = zzgfh.zzv(i23);
                        i16 = zzgfh.zzx(zzr2);
                        i17 = zzr2;
                        i18 = zzv5;
                        i12 = i16 + i18 + i17;
                        i3 = i22 + i12;
                        break;
                    }
                case 41:
                    int zzp2 = zzgib.zzp((List) unsafe.getObject(t, j));
                    i3 = i22;
                    if (zzp2 <= 0) {
                        break;
                    } else {
                        int zzv6 = zzgfh.zzv(i23);
                        i16 = zzgfh.zzx(zzp2);
                        i17 = zzp2;
                        i18 = zzv6;
                        i12 = i16 + i18 + i17;
                        i3 = i22 + i12;
                        break;
                    }
                case 42:
                    int zzt = zzgib.zzt((List) unsafe.getObject(t, j));
                    i3 = i22;
                    if (zzt <= 0) {
                        break;
                    } else {
                        int zzv7 = zzgfh.zzv(i23);
                        i16 = zzgfh.zzx(zzt);
                        i17 = zzt;
                        i18 = zzv7;
                        i12 = i16 + i18 + i17;
                        i3 = i22 + i12;
                        break;
                    }
                case 43:
                    int zzl = zzgib.zzl((List) unsafe.getObject(t, j));
                    i3 = i22;
                    if (zzl <= 0) {
                        break;
                    } else {
                        int zzv8 = zzgfh.zzv(i23);
                        i16 = zzgfh.zzx(zzl);
                        i17 = zzl;
                        i18 = zzv8;
                        i12 = i16 + i18 + i17;
                        i3 = i22 + i12;
                        break;
                    }
                case 44:
                    int zzh = zzgib.zzh((List) unsafe.getObject(t, j));
                    i3 = i22;
                    if (zzh <= 0) {
                        break;
                    } else {
                        int zzv9 = zzgfh.zzv(i23);
                        i16 = zzgfh.zzx(zzh);
                        i17 = zzh;
                        i18 = zzv9;
                        i12 = i16 + i18 + i17;
                        i3 = i22 + i12;
                        break;
                    }
                case 45:
                    int zzp3 = zzgib.zzp((List) unsafe.getObject(t, j));
                    i3 = i22;
                    if (zzp3 <= 0) {
                        break;
                    } else {
                        int zzv10 = zzgfh.zzv(i23);
                        i16 = zzgfh.zzx(zzp3);
                        i17 = zzp3;
                        i18 = zzv10;
                        i12 = i16 + i18 + i17;
                        i3 = i22 + i12;
                        break;
                    }
                case 46:
                    int zzr3 = zzgib.zzr((List) unsafe.getObject(t, j));
                    i3 = i22;
                    if (zzr3 <= 0) {
                        break;
                    } else {
                        int zzv11 = zzgfh.zzv(i23);
                        i16 = zzgfh.zzx(zzr3);
                        i17 = zzr3;
                        i18 = zzv11;
                        i12 = i16 + i18 + i17;
                        i3 = i22 + i12;
                        break;
                    }
                case 47:
                    int zzn = zzgib.zzn((List) unsafe.getObject(t, j));
                    i3 = i22;
                    if (zzn <= 0) {
                        break;
                    } else {
                        int zzv12 = zzgfh.zzv(i23);
                        i16 = zzgfh.zzx(zzn);
                        i17 = zzn;
                        i18 = zzv12;
                        i12 = i16 + i18 + i17;
                        i3 = i22 + i12;
                        break;
                    }
                case 48:
                    int zzf = zzgib.zzf((List) unsafe.getObject(t, j));
                    i3 = i22;
                    if (zzf <= 0) {
                        break;
                    } else {
                        int zzv13 = zzgfh.zzv(i23);
                        i16 = zzgfh.zzx(zzf);
                        i17 = zzf;
                        i18 = zzv13;
                        i12 = i16 + i18 + i17;
                        i3 = i22 + i12;
                        break;
                    }
                case 49:
                    i4 = zzgib.zzz(i23, (List) unsafe.getObject(t, j), zzw(i20));
                    i3 = i22 + i4;
                    break;
                case 50:
                    zzghd.zza(i23, unsafe.getObject(t, j), zzx(i20));
                    i3 = i22;
                    break;
                case 51:
                    i3 = i22;
                    if (!zzQ(t, i23, i20)) {
                        break;
                    } else {
                        i5 = zzgfh.zzx(i23 << 3);
                        i4 = i5 + 8;
                        i3 = i22 + i4;
                        break;
                    }
                case 52:
                    i3 = i22;
                    if (!zzQ(t, i23, i20)) {
                        break;
                    } else {
                        i6 = zzgfh.zzx(i23 << 3);
                        i4 = i6 + 4;
                        i3 = i22 + i4;
                        break;
                    }
                case 53:
                    i3 = i22;
                    if (!zzQ(t, i23, i20)) {
                        break;
                    } else {
                        long zzK = zzK(t, j);
                        i7 = zzgfh.zzx(i23 << 3);
                        i8 = zzgfh.zzy(zzK);
                        i3 = i22 + i8 + i7;
                        break;
                    }
                case 54:
                    i3 = i22;
                    if (!zzQ(t, i23, i20)) {
                        break;
                    } else {
                        long zzK2 = zzK(t, j);
                        i7 = zzgfh.zzx(i23 << 3);
                        i8 = zzgfh.zzy(zzK2);
                        i3 = i22 + i8 + i7;
                        break;
                    }
                case 55:
                    i3 = i22;
                    if (!zzQ(t, i23, i20)) {
                        break;
                    } else {
                        int zzJ = zzJ(t, j);
                        i10 = zzgfh.zzx(i23 << 3);
                        i9 = zzgfh.zzw(zzJ);
                        i4 = i9 + i10;
                        i3 = i22 + i4;
                        break;
                    }
                case 56:
                    i3 = i22;
                    if (!zzQ(t, i23, i20)) {
                        break;
                    } else {
                        i5 = zzgfh.zzx(i23 << 3);
                        i4 = i5 + 8;
                        i3 = i22 + i4;
                        break;
                    }
                case 57:
                    i3 = i22;
                    if (!zzQ(t, i23, i20)) {
                        break;
                    } else {
                        i6 = zzgfh.zzx(i23 << 3);
                        i4 = i6 + 4;
                        i3 = i22 + i4;
                        break;
                    }
                case 58:
                    i3 = i22;
                    if (!zzQ(t, i23, i20)) {
                        break;
                    } else {
                        i11 = zzgfh.zzx(i23 << 3);
                        i4 = i11 + 1;
                        i3 = i22 + i4;
                        break;
                    }
                case 59:
                    i3 = i22;
                    if (!zzQ(t, i23, i20)) {
                        break;
                    } else {
                        Object object2 = unsafe.getObject(t, j);
                        if (!(object2 instanceof zzgex)) {
                            i10 = zzgfh.zzx(i23 << 3);
                            i9 = zzgfh.zzz((String) object2);
                            i4 = i9 + i10;
                            i3 = i22 + i4;
                            break;
                        } else {
                            i15 = zzgfh.zzx(i23 << 3);
                            i14 = ((zzgex) object2).zzc();
                            i13 = zzgfh.zzx(i14);
                            i12 = i13 + i14 + i15;
                            i3 = i22 + i12;
                            break;
                        }
                    }
                case 60:
                    i3 = i22;
                    if (!zzQ(t, i23, i20)) {
                        break;
                    } else {
                        i4 = zzgib.zzw(i23, unsafe.getObject(t, j), zzw(i20));
                        i3 = i22 + i4;
                        break;
                    }
                case 61:
                    i3 = i22;
                    if (!zzQ(t, i23, i20)) {
                        break;
                    } else {
                        zzgex zzgexVar2 = (zzgex) unsafe.getObject(t, j);
                        i15 = zzgfh.zzx(i23 << 3);
                        i14 = zzgexVar2.zzc();
                        i13 = zzgfh.zzx(i14);
                        i12 = i13 + i14 + i15;
                        i3 = i22 + i12;
                        break;
                    }
                case 62:
                    i3 = i22;
                    if (!zzQ(t, i23, i20)) {
                        break;
                    } else {
                        int zzJ2 = zzJ(t, j);
                        i10 = zzgfh.zzx(i23 << 3);
                        i9 = zzgfh.zzx(zzJ2);
                        i4 = i9 + i10;
                        i3 = i22 + i4;
                        break;
                    }
                case 63:
                    i3 = i22;
                    if (!zzQ(t, i23, i20)) {
                        break;
                    } else {
                        int zzJ3 = zzJ(t, j);
                        i10 = zzgfh.zzx(i23 << 3);
                        i9 = zzgfh.zzw(zzJ3);
                        i4 = i9 + i10;
                        i3 = i22 + i4;
                        break;
                    }
                case 64:
                    i3 = i22;
                    if (!zzQ(t, i23, i20)) {
                        break;
                    } else {
                        i6 = zzgfh.zzx(i23 << 3);
                        i4 = i6 + 4;
                        i3 = i22 + i4;
                        break;
                    }
                case 65:
                    i3 = i22;
                    if (!zzQ(t, i23, i20)) {
                        break;
                    } else {
                        i5 = zzgfh.zzx(i23 << 3);
                        i4 = i5 + 8;
                        i3 = i22 + i4;
                        break;
                    }
                case 66:
                    i3 = i22;
                    if (!zzQ(t, i23, i20)) {
                        break;
                    } else {
                        int zzJ4 = zzJ(t, j);
                        i10 = zzgfh.zzx(i23 << 3);
                        i9 = zzgfh.zzx((zzJ4 >> 31) ^ (zzJ4 + zzJ4));
                        i4 = i9 + i10;
                        i3 = i22 + i4;
                        break;
                    }
                case 67:
                    i3 = i22;
                    if (!zzQ(t, i23, i20)) {
                        break;
                    } else {
                        long zzK3 = zzK(t, j);
                        i10 = zzgfh.zzx(i23 << 3);
                        i9 = zzgfh.zzy((zzK3 >> 63) ^ (zzK3 + zzK3));
                        i4 = i9 + i10;
                        i3 = i22 + i4;
                        break;
                    }
                case 68:
                    i3 = i22;
                    if (!zzQ(t, i23, i20)) {
                        break;
                    } else {
                        i4 = zzgfh.zzF(i23, (zzghi) unsafe.getObject(t, j), zzw(i20));
                        i3 = i22 + i4;
                        break;
                    }
                default:
                    i3 = i22;
                    break;
            }
            i20 += 3;
            i22 = i3;
            i19 = i;
        }
        zzgio<?, ?> zzgioVar = this.zzo;
        int zzq = zzgioVar.zzq(zzgioVar.zzj(t));
        if (!this.zzh) {
            return zzq + i22;
        }
        this.zzp.zzb(t);
        throw null;
    }

    private final int zzs(T t) {
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
                zzgio<?, ?> zzgioVar = this.zzo;
                return zzgioVar.zzq(zzgioVar.zzj(t)) + i19;
            }
            int zzD = zzD(i17);
            int zzF = zzF(zzD);
            int i20 = this.zzc[i17];
            long j = zzD & 1048575;
            if (zzF >= zzgfs.DOUBLE_LIST_PACKED.zza() && zzF <= zzgfs.SINT64_LIST_PACKED.zza()) {
                int i21 = this.zzc[i17 + 2];
            }
            switch (zzF) {
                case 0:
                    i = i19;
                    if (zzO(t, i17)) {
                        i3 = zzgfh.zzx(i20 << 3);
                        i2 = i3 + 8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 1:
                    i = i19;
                    if (zzO(t, i17)) {
                        i4 = zzgfh.zzx(i20 << 3);
                        i2 = i4 + 4;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 2:
                    i = i19;
                    if (zzO(t, i17)) {
                        long zzf = zzgiy.zzf(t, j);
                        i6 = zzgfh.zzx(i20 << 3);
                        i5 = zzgfh.zzy(zzf);
                        i2 = i5 + i6;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 3:
                    i = i19;
                    if (zzO(t, i17)) {
                        long zzf2 = zzgiy.zzf(t, j);
                        i6 = zzgfh.zzx(i20 << 3);
                        i5 = zzgfh.zzy(zzf2);
                        i2 = i5 + i6;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 4:
                    i = i19;
                    if (zzO(t, i17)) {
                        int zzd = zzgiy.zzd(t, j);
                        i8 = zzgfh.zzx(i20 << 3);
                        i7 = zzgfh.zzw(zzd);
                        i2 = i7 + i8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 5:
                    i = i19;
                    if (zzO(t, i17)) {
                        i3 = zzgfh.zzx(i20 << 3);
                        i2 = i3 + 8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 6:
                    i = i19;
                    if (zzO(t, i17)) {
                        i4 = zzgfh.zzx(i20 << 3);
                        i2 = i4 + 4;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 7:
                    i = i19;
                    if (zzO(t, i17)) {
                        i9 = zzgfh.zzx(i20 << 3);
                        i2 = i9 + 1;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 8:
                    i = i19;
                    if (zzO(t, i17)) {
                        Object zzn = zzgiy.zzn(t, j);
                        if (!(zzn instanceof zzgex)) {
                            i8 = zzgfh.zzx(i20 << 3);
                            i7 = zzgfh.zzz((String) zzn);
                            i2 = i7 + i8;
                            break;
                        } else {
                            i13 = zzgfh.zzx(i20 << 3);
                            i12 = ((zzgex) zzn).zzc();
                            i11 = zzgfh.zzx(i12);
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
                    if (zzO(t, i17)) {
                        i2 = zzgib.zzw(i20, zzgiy.zzn(t, j), zzw(i17));
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 10:
                    i = i19;
                    if (zzO(t, i17)) {
                        zzgex zzgexVar = (zzgex) zzgiy.zzn(t, j);
                        i13 = zzgfh.zzx(i20 << 3);
                        i12 = zzgexVar.zzc();
                        i11 = zzgfh.zzx(i12);
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
                    if (zzO(t, i17)) {
                        int zzd2 = zzgiy.zzd(t, j);
                        i8 = zzgfh.zzx(i20 << 3);
                        i7 = zzgfh.zzx(zzd2);
                        i2 = i7 + i8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 12:
                    i = i19;
                    if (zzO(t, i17)) {
                        int zzd3 = zzgiy.zzd(t, j);
                        i8 = zzgfh.zzx(i20 << 3);
                        i7 = zzgfh.zzw(zzd3);
                        i2 = i7 + i8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 13:
                    i = i19;
                    if (zzO(t, i17)) {
                        i4 = zzgfh.zzx(i20 << 3);
                        i2 = i4 + 4;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 14:
                    i = i19;
                    if (zzO(t, i17)) {
                        i3 = zzgfh.zzx(i20 << 3);
                        i2 = i3 + 8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 15:
                    i = i19;
                    if (zzO(t, i17)) {
                        int zzd4 = zzgiy.zzd(t, j);
                        i8 = zzgfh.zzx(i20 << 3);
                        i7 = zzgfh.zzx((zzd4 >> 31) ^ (zzd4 + zzd4));
                        i2 = i7 + i8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 16:
                    i = i19;
                    if (zzO(t, i17)) {
                        long zzf3 = zzgiy.zzf(t, j);
                        i8 = zzgfh.zzx(i20 << 3);
                        i7 = zzgfh.zzy((zzf3 >> 63) ^ (zzf3 + zzf3));
                        i2 = i7 + i8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 17:
                    i = i19;
                    if (zzO(t, i17)) {
                        i2 = zzgfh.zzF(i20, (zzghi) zzgiy.zzn(t, j), zzw(i17));
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 18:
                    i2 = zzgib.zzs(i20, (List) zzgiy.zzn(t, j), false);
                    break;
                case 19:
                    i2 = zzgib.zzq(i20, (List) zzgiy.zzn(t, j), false);
                    break;
                case 20:
                    i2 = zzgib.zzc(i20, (List) zzgiy.zzn(t, j), false);
                    break;
                case 21:
                    i2 = zzgib.zze(i20, (List) zzgiy.zzn(t, j), false);
                    break;
                case 22:
                    i2 = zzgib.zzk(i20, (List) zzgiy.zzn(t, j), false);
                    break;
                case 23:
                    i2 = zzgib.zzs(i20, (List) zzgiy.zzn(t, j), false);
                    break;
                case 24:
                    i2 = zzgib.zzq(i20, (List) zzgiy.zzn(t, j), false);
                    break;
                case 25:
                    i2 = zzgib.zzu(i20, (List) zzgiy.zzn(t, j), false);
                    break;
                case 26:
                    i2 = zzgib.zzv(i20, (List) zzgiy.zzn(t, j));
                    break;
                case 27:
                    i2 = zzgib.zzx(i20, (List) zzgiy.zzn(t, j), zzw(i17));
                    break;
                case 28:
                    i2 = zzgib.zzy(i20, (List) zzgiy.zzn(t, j));
                    break;
                case 29:
                    i2 = zzgib.zzm(i20, (List) zzgiy.zzn(t, j), false);
                    break;
                case 30:
                    i2 = zzgib.zzi(i20, (List) zzgiy.zzn(t, j), false);
                    break;
                case 31:
                    i2 = zzgib.zzq(i20, (List) zzgiy.zzn(t, j), false);
                    break;
                case 32:
                    i2 = zzgib.zzs(i20, (List) zzgiy.zzn(t, j), false);
                    break;
                case 33:
                    i2 = zzgib.zzo(i20, (List) zzgiy.zzn(t, j), false);
                    break;
                case 34:
                    i2 = zzgib.zzg(i20, (List) zzgiy.zzn(t, j), false);
                    break;
                case 35:
                    int zzr = zzgib.zzr((List) unsafe.getObject(t, j));
                    i = i19;
                    if (zzr > 0) {
                        i16 = zzgfh.zzv(i20);
                        i14 = zzgfh.zzx(zzr);
                        i15 = zzr;
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
                    int zzp = zzgib.zzp((List) unsafe.getObject(t, j));
                    i = i19;
                    if (zzp > 0) {
                        int zzv = zzgfh.zzv(i20);
                        i14 = zzgfh.zzx(zzp);
                        i15 = zzp;
                        i16 = zzv;
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
                    int zzb2 = zzgib.zzb((List) unsafe.getObject(t, j));
                    i = i19;
                    if (zzb2 > 0) {
                        int zzv2 = zzgfh.zzv(i20);
                        i14 = zzgfh.zzx(zzb2);
                        i15 = zzb2;
                        i16 = zzv2;
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
                    int zzd5 = zzgib.zzd((List) unsafe.getObject(t, j));
                    i = i19;
                    if (zzd5 > 0) {
                        int zzv3 = zzgfh.zzv(i20);
                        i14 = zzgfh.zzx(zzd5);
                        i15 = zzd5;
                        i16 = zzv3;
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
                    int zzj = zzgib.zzj((List) unsafe.getObject(t, j));
                    i = i19;
                    if (zzj > 0) {
                        int zzv4 = zzgfh.zzv(i20);
                        i14 = zzgfh.zzx(zzj);
                        i15 = zzj;
                        i16 = zzv4;
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
                    int zzr2 = zzgib.zzr((List) unsafe.getObject(t, j));
                    i = i19;
                    if (zzr2 > 0) {
                        int zzv5 = zzgfh.zzv(i20);
                        i14 = zzgfh.zzx(zzr2);
                        i15 = zzr2;
                        i16 = zzv5;
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
                    int zzp2 = zzgib.zzp((List) unsafe.getObject(t, j));
                    i = i19;
                    if (zzp2 > 0) {
                        int zzv6 = zzgfh.zzv(i20);
                        i14 = zzgfh.zzx(zzp2);
                        i15 = zzp2;
                        i16 = zzv6;
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
                    int zzt = zzgib.zzt((List) unsafe.getObject(t, j));
                    i = i19;
                    if (zzt > 0) {
                        int zzv7 = zzgfh.zzv(i20);
                        i14 = zzgfh.zzx(zzt);
                        i15 = zzt;
                        i16 = zzv7;
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
                    int zzl = zzgib.zzl((List) unsafe.getObject(t, j));
                    i = i19;
                    if (zzl > 0) {
                        int zzv8 = zzgfh.zzv(i20);
                        i14 = zzgfh.zzx(zzl);
                        i15 = zzl;
                        i16 = zzv8;
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
                    int zzh = zzgib.zzh((List) unsafe.getObject(t, j));
                    i = i19;
                    if (zzh > 0) {
                        int zzv9 = zzgfh.zzv(i20);
                        i14 = zzgfh.zzx(zzh);
                        i15 = zzh;
                        i16 = zzv9;
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
                    int zzp3 = zzgib.zzp((List) unsafe.getObject(t, j));
                    i = i19;
                    if (zzp3 > 0) {
                        int zzv10 = zzgfh.zzv(i20);
                        i14 = zzgfh.zzx(zzp3);
                        i15 = zzp3;
                        i16 = zzv10;
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
                    int zzr3 = zzgib.zzr((List) unsafe.getObject(t, j));
                    i = i19;
                    if (zzr3 > 0) {
                        int zzv11 = zzgfh.zzv(i20);
                        i14 = zzgfh.zzx(zzr3);
                        i15 = zzr3;
                        i16 = zzv11;
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
                    int zzn2 = zzgib.zzn((List) unsafe.getObject(t, j));
                    i = i19;
                    if (zzn2 > 0) {
                        int zzv12 = zzgfh.zzv(i20);
                        i14 = zzgfh.zzx(zzn2);
                        i15 = zzn2;
                        i16 = zzv12;
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
                    int zzf4 = zzgib.zzf((List) unsafe.getObject(t, j));
                    i = i19;
                    if (zzf4 > 0) {
                        int zzv13 = zzgfh.zzv(i20);
                        i14 = zzgfh.zzx(zzf4);
                        i15 = zzf4;
                        i16 = zzv13;
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
                    i2 = zzgib.zzz(i20, (List) zzgiy.zzn(t, j), zzw(i17));
                    break;
                case 50:
                    zzghd.zza(i20, zzgiy.zzn(t, j), zzx(i17));
                    i = i19;
                    continue;
                    i17 += 3;
                    i18 = i;
                case 51:
                    i = i19;
                    if (zzQ(t, i20, i17)) {
                        i3 = zzgfh.zzx(i20 << 3);
                        i2 = i3 + 8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 52:
                    i = i19;
                    if (zzQ(t, i20, i17)) {
                        i4 = zzgfh.zzx(i20 << 3);
                        i2 = i4 + 4;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 53:
                    i = i19;
                    if (zzQ(t, i20, i17)) {
                        long zzK = zzK(t, j);
                        i6 = zzgfh.zzx(i20 << 3);
                        i5 = zzgfh.zzy(zzK);
                        i2 = i5 + i6;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 54:
                    i = i19;
                    if (zzQ(t, i20, i17)) {
                        long zzK2 = zzK(t, j);
                        i6 = zzgfh.zzx(i20 << 3);
                        i5 = zzgfh.zzy(zzK2);
                        i2 = i5 + i6;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 55:
                    i = i19;
                    if (zzQ(t, i20, i17)) {
                        int zzJ = zzJ(t, j);
                        i8 = zzgfh.zzx(i20 << 3);
                        i7 = zzgfh.zzw(zzJ);
                        i2 = i7 + i8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 56:
                    i = i19;
                    if (zzQ(t, i20, i17)) {
                        i3 = zzgfh.zzx(i20 << 3);
                        i2 = i3 + 8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 57:
                    i = i19;
                    if (zzQ(t, i20, i17)) {
                        i4 = zzgfh.zzx(i20 << 3);
                        i2 = i4 + 4;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 58:
                    i = i19;
                    if (zzQ(t, i20, i17)) {
                        i9 = zzgfh.zzx(i20 << 3);
                        i2 = i9 + 1;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 59:
                    i = i19;
                    if (zzQ(t, i20, i17)) {
                        Object zzn3 = zzgiy.zzn(t, j);
                        if (!(zzn3 instanceof zzgex)) {
                            i8 = zzgfh.zzx(i20 << 3);
                            i7 = zzgfh.zzz((String) zzn3);
                            i2 = i7 + i8;
                            break;
                        } else {
                            i13 = zzgfh.zzx(i20 << 3);
                            i12 = ((zzgex) zzn3).zzc();
                            i11 = zzgfh.zzx(i12);
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
                    if (zzQ(t, i20, i17)) {
                        i2 = zzgib.zzw(i20, zzgiy.zzn(t, j), zzw(i17));
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 61:
                    i = i19;
                    if (zzQ(t, i20, i17)) {
                        zzgex zzgexVar2 = (zzgex) zzgiy.zzn(t, j);
                        i13 = zzgfh.zzx(i20 << 3);
                        i12 = zzgexVar2.zzc();
                        i11 = zzgfh.zzx(i12);
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
                    if (zzQ(t, i20, i17)) {
                        int zzJ2 = zzJ(t, j);
                        i8 = zzgfh.zzx(i20 << 3);
                        i7 = zzgfh.zzx(zzJ2);
                        i2 = i7 + i8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 63:
                    i = i19;
                    if (zzQ(t, i20, i17)) {
                        int zzJ3 = zzJ(t, j);
                        i8 = zzgfh.zzx(i20 << 3);
                        i7 = zzgfh.zzw(zzJ3);
                        i2 = i7 + i8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 64:
                    i = i19;
                    if (zzQ(t, i20, i17)) {
                        i4 = zzgfh.zzx(i20 << 3);
                        i2 = i4 + 4;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 65:
                    i = i19;
                    if (zzQ(t, i20, i17)) {
                        i3 = zzgfh.zzx(i20 << 3);
                        i2 = i3 + 8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 66:
                    i = i19;
                    if (zzQ(t, i20, i17)) {
                        int zzJ4 = zzJ(t, j);
                        i8 = zzgfh.zzx(i20 << 3);
                        i7 = zzgfh.zzx((zzJ4 >> 31) ^ (zzJ4 + zzJ4));
                        i2 = i7 + i8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 67:
                    i = i19;
                    if (zzQ(t, i20, i17)) {
                        long zzK3 = zzK(t, j);
                        i8 = zzgfh.zzx(i20 << 3);
                        i7 = zzgfh.zzy((zzK3 >> 63) ^ (zzK3 + zzK3));
                        i2 = i7 + i8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 68:
                    i = i19;
                    if (zzQ(t, i20, i17)) {
                        i2 = zzgfh.zzF(i20, (zzghi) zzgiy.zzn(t, j), zzw(i17));
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

    /* JADX WARN: Removed duplicated region for block: B:117:0x03e8  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x04a3  */
    /* JADX WARN: Removed duplicated region for block: B:321:0x0908 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:324:0x0908 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0303  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:114:0x03d8 -> B:115:0x03de). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:137:0x0496 -> B:138:0x0499). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:77:0x02f8 -> B:78:0x02fd). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zzt(T r9, byte[] r10, int r11, int r12, int r13, int r14, int r15, int r16, long r17, int r19, long r20, com.google.android.gms.internal.ads.zzgej r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2314
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzghl.zzt(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, com.google.android.gms.internal.ads.zzgej):int");
    }

    private final <K, V> int zzu(T t, byte[] bArr, int i, int i2, int i3, long j, zzgej zzgejVar) throws IOException {
        Unsafe unsafe = zzb;
        Object zzx = zzx(i3);
        Object object = unsafe.getObject(t, j);
        if (zzghd.zzb(object)) {
            zzghc<K, V> zzc = zzghc.zza().zzc();
            zzghd.zzc(zzc, object);
            unsafe.putObject(t, j, zzc);
        }
        zzghb zzghbVar = (zzghb) zzx;
        throw null;
    }

    private final int zzv(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, zzgej zzgejVar) throws IOException {
        Unsafe unsafe = zzb;
        long j2 = this.zzc[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Double.valueOf(Double.longBitsToDouble(zzgek.zze(bArr, i))));
                    unsafe.putInt(t, j2, i4);
                    return i + 8;
                }
                break;
            case 52:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Float.valueOf(Float.intBitsToFloat(zzgek.zzd(bArr, i))));
                    unsafe.putInt(t, j2, i4);
                    return i + 4;
                }
                break;
            case 53:
            case 54:
                if (i5 == 0) {
                    int zzc = zzgek.zzc(bArr, i, zzgejVar);
                    unsafe.putObject(t, j, Long.valueOf(zzgejVar.zzb));
                    unsafe.putInt(t, j2, i4);
                    return zzc;
                }
                break;
            case 55:
            case 62:
                if (i5 == 0) {
                    int zza2 = zzgek.zza(bArr, i, zzgejVar);
                    unsafe.putObject(t, j, Integer.valueOf(zzgejVar.zza));
                    unsafe.putInt(t, j2, i4);
                    return zza2;
                }
                break;
            case 56:
            case 65:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Long.valueOf(zzgek.zze(bArr, i)));
                    unsafe.putInt(t, j2, i4);
                    return i + 8;
                }
                break;
            case 57:
            case 64:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Integer.valueOf(zzgek.zzd(bArr, i)));
                    unsafe.putInt(t, j2, i4);
                    return i + 4;
                }
                break;
            case 58:
                if (i5 == 0) {
                    int zzc2 = zzgek.zzc(bArr, i, zzgejVar);
                    unsafe.putObject(t, j, Boolean.valueOf(zzgejVar.zzb != 0));
                    unsafe.putInt(t, j2, i4);
                    return zzc2;
                }
                break;
            case 59:
                if (i5 == 2) {
                    i = zzgek.zza(bArr, i, zzgejVar);
                    int i9 = zzgejVar.zza;
                    if (i9 == 0) {
                        unsafe.putObject(t, j, "");
                    } else if ((i6 & 536870912) != 0 && !zzgjd.zzb(bArr, i, i + i9)) {
                        throw zzggm.zzl();
                    } else {
                        unsafe.putObject(t, j, new String(bArr, i, i9, zzggk.zza));
                        i += i9;
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 60:
                if (i5 == 2) {
                    i = zzgek.zzi(zzw(i8), bArr, i, i2, zzgejVar);
                    Object object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object == null) {
                        unsafe.putObject(t, j, zzgejVar.zzc);
                    } else {
                        unsafe.putObject(t, j, zzggk.zzi(object, zzgejVar.zzc));
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case 61:
                if (i5 == 2) {
                    int zzh = zzgek.zzh(bArr, i, zzgejVar);
                    unsafe.putObject(t, j, zzgejVar.zzc);
                    unsafe.putInt(t, j2, i4);
                    return zzh;
                }
                break;
            case 63:
                if (i5 == 0) {
                    i = zzgek.zza(bArr, i, zzgejVar);
                    int i10 = zzgejVar.zza;
                    zzgge zzy = zzy(i8);
                    if (zzy != null && !zzy.zza(i10)) {
                        zzg(t).zzh(i3, Long.valueOf(i10));
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
                    int zza3 = zzgek.zza(bArr, i, zzgejVar);
                    unsafe.putObject(t, j, Integer.valueOf(zzgfc.zzG(zzgejVar.zza)));
                    unsafe.putInt(t, j2, i4);
                    return zza3;
                }
                break;
            case 67:
                if (i5 == 0) {
                    int zzc3 = zzgek.zzc(bArr, i, zzgejVar);
                    unsafe.putObject(t, j, Long.valueOf(zzgfc.zzH(zzgejVar.zzb)));
                    unsafe.putInt(t, j2, i4);
                    return zzc3;
                }
                break;
            case 68:
                if (i5 == 3) {
                    i = zzgek.zzj(zzw(i8), bArr, i, i2, (i3 & (-8)) | 4, zzgejVar);
                    Object object2 = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object2 == null) {
                        unsafe.putObject(t, j, zzgejVar.zzc);
                    } else {
                        unsafe.putObject(t, j, zzggk.zzi(object2, zzgejVar.zzc));
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
        }
        return i;
    }

    private final zzghz zzw(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        zzghz zzghzVar = (zzghz) this.zzd[i3];
        if (zzghzVar != null) {
            return zzghzVar;
        }
        zzghz<T> zzb2 = zzghq.zza().zzb((Class) this.zzd[i3 + 1]);
        this.zzd[i3] = zzb2;
        return zzb2;
    }

    private final Object zzx(int i) {
        int i2 = i / 3;
        return this.zzd[i2 + i2];
    }

    private final zzgge zzy(int i) {
        int i2 = i / 3;
        return (zzgge) this.zzd[i2 + i2 + 1];
    }

    /* JADX WARN: Code restructure failed: missing block: B:111:0x04ef, code lost:
        if (r26 != r0) goto L104;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x0523, code lost:
        if (r26 != r0) goto L104;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v218, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zzz(T r17, byte[] r18, int r19, int r20, com.google.android.gms.internal.ads.zzgej r21) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1397
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzghl.zzz(java.lang.Object, byte[], int, int, com.google.android.gms.internal.ads.zzgej):int");
    }

    @Override // com.google.android.gms.internal.ads.zzghz
    public final T zza() {
        return (T) ((zzgga) this.zzg).zzb(4, null, null);
    }

    @Override // com.google.android.gms.internal.ads.zzghz
    public final boolean zzb(T t, T t2) {
        boolean z;
        int length = this.zzc.length;
        for (int i = 0; i < length; i += 3) {
            int zzD = zzD(i);
            long j = zzD & 1048575;
            switch (zzF(zzD)) {
                case 0:
                    if (!zzM(t, t2, i) || Double.doubleToLongBits(zzgiy.zzl(t, j)) != Double.doubleToLongBits(zzgiy.zzl(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 1:
                    if (!zzM(t, t2, i) || Float.floatToIntBits(zzgiy.zzj(t, j)) != Float.floatToIntBits(zzgiy.zzj(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 2:
                    if (!zzM(t, t2, i) || zzgiy.zzf(t, j) != zzgiy.zzf(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 3:
                    if (!zzM(t, t2, i) || zzgiy.zzf(t, j) != zzgiy.zzf(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 4:
                    if (!zzM(t, t2, i) || zzgiy.zzd(t, j) != zzgiy.zzd(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 5:
                    if (!zzM(t, t2, i) || zzgiy.zzf(t, j) != zzgiy.zzf(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 6:
                    if (!zzM(t, t2, i) || zzgiy.zzd(t, j) != zzgiy.zzd(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 7:
                    if (!zzM(t, t2, i) || zzgiy.zzh(t, j) != zzgiy.zzh(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 8:
                    if (!zzM(t, t2, i) || !zzgib.zzD(zzgiy.zzn(t, j), zzgiy.zzn(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 9:
                    if (!zzM(t, t2, i) || !zzgib.zzD(zzgiy.zzn(t, j), zzgiy.zzn(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 10:
                    if (!zzM(t, t2, i) || !zzgib.zzD(zzgiy.zzn(t, j), zzgiy.zzn(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 11:
                    if (!zzM(t, t2, i) || zzgiy.zzd(t, j) != zzgiy.zzd(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 12:
                    if (!zzM(t, t2, i) || zzgiy.zzd(t, j) != zzgiy.zzd(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 13:
                    if (!zzM(t, t2, i) || zzgiy.zzd(t, j) != zzgiy.zzd(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 14:
                    if (!zzM(t, t2, i) || zzgiy.zzf(t, j) != zzgiy.zzf(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 15:
                    if (!zzM(t, t2, i) || zzgiy.zzd(t, j) != zzgiy.zzd(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 16:
                    if (!zzM(t, t2, i) || zzgiy.zzf(t, j) != zzgiy.zzf(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 17:
                    if (!zzM(t, t2, i) || !zzgib.zzD(zzgiy.zzn(t, j), zzgiy.zzn(t2, j))) {
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
                    z = zzgib.zzD(zzgiy.zzn(t, j), zzgiy.zzn(t2, j));
                    break;
                case 50:
                    z = zzgib.zzD(zzgiy.zzn(t, j), zzgiy.zzn(t2, j));
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
                    long zzE = zzE(i) & 1048575;
                    if (zzgiy.zzd(t, zzE) != zzgiy.zzd(t2, zzE) || !zzgib.zzD(zzgiy.zzn(t, j), zzgiy.zzn(t2, j))) {
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
        if (!this.zzo.zzj(t).equals(this.zzo.zzj(t2))) {
            return false;
        }
        if (!this.zzh) {
            return true;
        }
        this.zzp.zzb(t);
        this.zzp.zzb(t2);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzghz
    public final int zzc(T t) {
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
                int hashCode = this.zzo.zzj(t).hashCode();
                if (!this.zzh) {
                    return hashCode + (i8 * 53);
                }
                this.zzp.zzb(t);
                throw null;
            }
            int zzD = zzD(i6);
            int i9 = this.zzc[i6];
            long j = 1048575 & zzD;
            int i10 = 37;
            switch (zzF(zzD)) {
                case 0:
                    i2 = i8 * 53;
                    i3 = zzggk.zze(Double.doubleToLongBits(zzgiy.zzl(t, j)));
                    i = i3 + i2;
                    break;
                case 1:
                    i2 = i8 * 53;
                    i3 = Float.floatToIntBits(zzgiy.zzj(t, j));
                    i = i3 + i2;
                    break;
                case 2:
                    i2 = i8 * 53;
                    i3 = zzggk.zze(zzgiy.zzf(t, j));
                    i = i3 + i2;
                    break;
                case 3:
                    i2 = i8 * 53;
                    i3 = zzggk.zze(zzgiy.zzf(t, j));
                    i = i3 + i2;
                    break;
                case 4:
                    i2 = i8 * 53;
                    i3 = zzgiy.zzd(t, j);
                    i = i3 + i2;
                    break;
                case 5:
                    i2 = i8 * 53;
                    i3 = zzggk.zze(zzgiy.zzf(t, j));
                    i = i3 + i2;
                    break;
                case 6:
                    i2 = i8 * 53;
                    i3 = zzgiy.zzd(t, j);
                    i = i3 + i2;
                    break;
                case 7:
                    i2 = i8 * 53;
                    i3 = zzggk.zzf(zzgiy.zzh(t, j));
                    i = i3 + i2;
                    break;
                case 8:
                    i2 = i8 * 53;
                    i3 = ((String) zzgiy.zzn(t, j)).hashCode();
                    i = i3 + i2;
                    break;
                case 9:
                    Object zzn = zzgiy.zzn(t, j);
                    if (zzn != null) {
                        i10 = zzn.hashCode();
                    }
                    i = (i8 * 53) + i10;
                    break;
                case 10:
                    i2 = i8 * 53;
                    i3 = zzgiy.zzn(t, j).hashCode();
                    i = i3 + i2;
                    break;
                case 11:
                    i2 = i8 * 53;
                    i3 = zzgiy.zzd(t, j);
                    i = i3 + i2;
                    break;
                case 12:
                    i2 = i8 * 53;
                    i3 = zzgiy.zzd(t, j);
                    i = i3 + i2;
                    break;
                case 13:
                    i2 = i8 * 53;
                    i3 = zzgiy.zzd(t, j);
                    i = i3 + i2;
                    break;
                case 14:
                    i2 = i8 * 53;
                    i3 = zzggk.zze(zzgiy.zzf(t, j));
                    i = i3 + i2;
                    break;
                case 15:
                    i2 = i8 * 53;
                    i3 = zzgiy.zzd(t, j);
                    i = i3 + i2;
                    break;
                case 16:
                    i2 = i8 * 53;
                    i3 = zzggk.zze(zzgiy.zzf(t, j));
                    i = i3 + i2;
                    break;
                case 17:
                    Object zzn2 = zzgiy.zzn(t, j);
                    if (zzn2 != null) {
                        i10 = zzn2.hashCode();
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
                    i3 = zzgiy.zzn(t, j).hashCode();
                    i = i3 + i2;
                    break;
                case 50:
                    i2 = i8 * 53;
                    i3 = zzgiy.zzn(t, j).hashCode();
                    i = i3 + i2;
                    break;
                case 51:
                    i = i8;
                    if (!zzQ(t, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzggk.zze(Double.doubleToLongBits(zzH(t, j)));
                        i = i3 + i2;
                        break;
                    }
                case 52:
                    i = i8;
                    if (!zzQ(t, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = Float.floatToIntBits(zzI(t, j));
                        i = i3 + i2;
                        break;
                    }
                case 53:
                    i = i8;
                    if (!zzQ(t, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzggk.zze(zzK(t, j));
                        i = i3 + i2;
                        break;
                    }
                case 54:
                    i = i8;
                    if (!zzQ(t, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzggk.zze(zzK(t, j));
                        i = i3 + i2;
                        break;
                    }
                case 55:
                    i = i8;
                    if (!zzQ(t, i9, i6)) {
                        break;
                    } else {
                        i4 = i8 * 53;
                        i5 = zzJ(t, j);
                        i = i4 + i5;
                        break;
                    }
                case 56:
                    i = i8;
                    if (!zzQ(t, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzggk.zze(zzK(t, j));
                        i = i3 + i2;
                        break;
                    }
                case 57:
                    i = i8;
                    if (!zzQ(t, i9, i6)) {
                        break;
                    } else {
                        i4 = i8 * 53;
                        i5 = zzJ(t, j);
                        i = i4 + i5;
                        break;
                    }
                case 58:
                    i = i8;
                    if (!zzQ(t, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzggk.zzf(zzL(t, j));
                        i = i3 + i2;
                        break;
                    }
                case 59:
                    i = i8;
                    if (!zzQ(t, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = ((String) zzgiy.zzn(t, j)).hashCode();
                        i = i3 + i2;
                        break;
                    }
                case 60:
                    i = i8;
                    if (!zzQ(t, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzgiy.zzn(t, j).hashCode();
                        i = i3 + i2;
                        break;
                    }
                case 61:
                    i = i8;
                    if (!zzQ(t, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzgiy.zzn(t, j).hashCode();
                        i = i3 + i2;
                        break;
                    }
                case 62:
                    i = i8;
                    if (!zzQ(t, i9, i6)) {
                        break;
                    } else {
                        i4 = i8 * 53;
                        i5 = zzJ(t, j);
                        i = i4 + i5;
                        break;
                    }
                case 63:
                    i = i8;
                    if (!zzQ(t, i9, i6)) {
                        break;
                    } else {
                        i4 = i8 * 53;
                        i5 = zzJ(t, j);
                        i = i4 + i5;
                        break;
                    }
                case 64:
                    i = i8;
                    if (!zzQ(t, i9, i6)) {
                        break;
                    } else {
                        i4 = i8 * 53;
                        i5 = zzJ(t, j);
                        i = i4 + i5;
                        break;
                    }
                case 65:
                    i = i8;
                    if (!zzQ(t, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzggk.zze(zzK(t, j));
                        i = i3 + i2;
                        break;
                    }
                case 66:
                    i = i8;
                    if (!zzQ(t, i9, i6)) {
                        break;
                    } else {
                        i4 = i8 * 53;
                        i5 = zzJ(t, j);
                        i = i4 + i5;
                        break;
                    }
                case 67:
                    i = i8;
                    if (!zzQ(t, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzggk.zze(zzK(t, j));
                        i = i3 + i2;
                        break;
                    }
                case 68:
                    i = i8;
                    if (!zzQ(t, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzgiy.zzn(t, j).hashCode();
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

    @Override // com.google.android.gms.internal.ads.zzghz
    public final void zzd(T t, T t2) {
        Objects.requireNonNull(t2);
        for (int i = 0; i < this.zzc.length; i += 3) {
            int zzD = zzD(i);
            long j = 1048575 & zzD;
            int i2 = this.zzc[i];
            switch (zzF(zzD)) {
                case 0:
                    if (zzO(t2, i)) {
                        zzgiy.zzm(t, j, zzgiy.zzl(t2, j));
                        zzP(t, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zzO(t2, i)) {
                        zzgiy.zzk(t, j, zzgiy.zzj(t2, j));
                        zzP(t, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zzO(t2, i)) {
                        zzgiy.zzg(t, j, zzgiy.zzf(t2, j));
                        zzP(t, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zzO(t2, i)) {
                        zzgiy.zzg(t, j, zzgiy.zzf(t2, j));
                        zzP(t, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zzO(t2, i)) {
                        zzgiy.zze(t, j, zzgiy.zzd(t2, j));
                        zzP(t, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zzO(t2, i)) {
                        zzgiy.zzg(t, j, zzgiy.zzf(t2, j));
                        zzP(t, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zzO(t2, i)) {
                        zzgiy.zze(t, j, zzgiy.zzd(t2, j));
                        zzP(t, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zzO(t2, i)) {
                        zzgiy.zzi(t, j, zzgiy.zzh(t2, j));
                        zzP(t, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (zzO(t2, i)) {
                        zzgiy.zzo(t, j, zzgiy.zzn(t2, j));
                        zzP(t, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    zzp(t, t2, i);
                    break;
                case 10:
                    if (zzO(t2, i)) {
                        zzgiy.zzo(t, j, zzgiy.zzn(t2, j));
                        zzP(t, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zzO(t2, i)) {
                        zzgiy.zze(t, j, zzgiy.zzd(t2, j));
                        zzP(t, i);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zzO(t2, i)) {
                        zzgiy.zze(t, j, zzgiy.zzd(t2, j));
                        zzP(t, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zzO(t2, i)) {
                        zzgiy.zze(t, j, zzgiy.zzd(t2, j));
                        zzP(t, i);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zzO(t2, i)) {
                        zzgiy.zzg(t, j, zzgiy.zzf(t2, j));
                        zzP(t, i);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zzO(t2, i)) {
                        zzgiy.zze(t, j, zzgiy.zzd(t2, j));
                        zzP(t, i);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zzO(t2, i)) {
                        zzgiy.zzg(t, j, zzgiy.zzf(t2, j));
                        zzP(t, i);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    zzp(t, t2, i);
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
                    this.zzn.zzc(t, t2, j);
                    break;
                case 50:
                    zzgib.zzI(this.zzr, t, t2, j);
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
                    if (zzQ(t2, i2, i)) {
                        zzgiy.zzo(t, j, zzgiy.zzn(t2, j));
                        zzR(t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 60:
                    zzq(t, t2, i);
                    break;
                case 61:
                case 62:
                case 63:
                case 64:
                case 65:
                case 66:
                case 67:
                    if (zzQ(t2, i2, i)) {
                        zzgiy.zzo(t, j, zzgiy.zzn(t2, j));
                        zzR(t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case 68:
                    zzq(t, t2, i);
                    break;
            }
        }
        zzgib.zzF(this.zzo, t, t2);
        if (this.zzh) {
            zzgib.zzE(this.zzp, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzghz
    public final int zze(T t) {
        return this.zzj ? zzs(t) : zzr(t);
    }

    @Override // com.google.android.gms.internal.ads.zzghz
    public final void zzf(T t, zzght zzghtVar, zzgfm zzgfmVar) throws IOException {
        zzghc zzghcVar;
        Objects.requireNonNull(zzgfmVar);
        zzgio zzgioVar = this.zzo;
        zzgfn<?> zzgfnVar = this.zzp;
        zzgfr<?> zzgfrVar = null;
        Object obj = null;
        while (true) {
            Object obj2 = obj;
            try {
                int zzb2 = zzghtVar.zzb();
                Object obj3 = obj;
                int zzS = zzS(zzb2);
                if (zzS >= 0) {
                    int zzD = zzD(zzS);
                    obj2 = obj;
                    Object obj4 = obj;
                    try {
                        switch (zzF(zzD)) {
                            case 0:
                                zzgiy.zzm(t, zzD & 1048575, zzghtVar.zze());
                                Object obj5 = obj;
                                zzP(t, zzS);
                                break;
                            case 1:
                                zzgiy.zzk(t, zzD & 1048575, zzghtVar.zzf());
                                Object obj6 = obj;
                                zzP(t, zzS);
                                break;
                            case 2:
                                zzgiy.zzg(t, zzD & 1048575, zzghtVar.zzh());
                                Object obj7 = obj;
                                zzP(t, zzS);
                                break;
                            case 3:
                                zzgiy.zzg(t, zzD & 1048575, zzghtVar.zzg());
                                Object obj8 = obj;
                                zzP(t, zzS);
                                break;
                            case 4:
                                zzgiy.zze(t, zzD & 1048575, zzghtVar.zzi());
                                Object obj9 = obj;
                                zzP(t, zzS);
                                break;
                            case 5:
                                zzgiy.zzg(t, zzD & 1048575, zzghtVar.zzj());
                                Object obj10 = obj;
                                zzP(t, zzS);
                                break;
                            case 6:
                                zzgiy.zze(t, zzD & 1048575, zzghtVar.zzk());
                                Object obj11 = obj;
                                zzP(t, zzS);
                                break;
                            case 7:
                                zzgiy.zzi(t, zzD & 1048575, zzghtVar.zzl());
                                Object obj12 = obj;
                                zzP(t, zzS);
                                break;
                            case 8:
                                zzC(t, zzD, zzghtVar);
                                Object obj13 = obj;
                                zzP(t, zzS);
                                break;
                            case 9:
                                if (zzO(t, zzS)) {
                                    long j = zzD & 1048575;
                                    zzgiy.zzo(t, j, zzggk.zzi(zzgiy.zzn(t, j), zzghtVar.zzo(zzw(zzS), zzgfmVar)));
                                    break;
                                } else {
                                    zzgiy.zzo(t, zzD & 1048575, zzghtVar.zzo(zzw(zzS), zzgfmVar));
                                    Object obj14 = obj;
                                    zzP(t, zzS);
                                    break;
                                }
                            case 10:
                                zzgiy.zzo(t, zzD & 1048575, zzghtVar.zzq());
                                Object obj15 = obj;
                                zzP(t, zzS);
                                break;
                            case 11:
                                zzgiy.zze(t, zzD & 1048575, zzghtVar.zzr());
                                Object obj16 = obj;
                                zzP(t, zzS);
                                break;
                            case 12:
                                int zzs = zzghtVar.zzs();
                                Object obj17 = obj;
                                zzgge zzy = zzy(zzS);
                                if (zzy != null && !zzy.zza(zzs)) {
                                    obj = zzgib.zzH(zzb2, zzs, obj, zzgioVar);
                                    break;
                                }
                                zzgiy.zze(t, zzD & 1048575, zzs);
                                Object obj18 = obj;
                                zzP(t, zzS);
                                break;
                            case 13:
                                zzgiy.zze(t, zzD & 1048575, zzghtVar.zzt());
                                Object obj19 = obj;
                                zzP(t, zzS);
                                break;
                            case 14:
                                zzgiy.zzg(t, zzD & 1048575, zzghtVar.zzu());
                                Object obj20 = obj;
                                zzP(t, zzS);
                                break;
                            case 15:
                                zzgiy.zze(t, zzD & 1048575, zzghtVar.zzv());
                                Object obj21 = obj;
                                zzP(t, zzS);
                                break;
                            case 16:
                                zzgiy.zzg(t, zzD & 1048575, zzghtVar.zzw());
                                Object obj22 = obj;
                                zzP(t, zzS);
                                break;
                            case 17:
                                if (zzO(t, zzS)) {
                                    long j2 = zzD & 1048575;
                                    zzgiy.zzo(t, j2, zzggk.zzi(zzgiy.zzn(t, j2), zzghtVar.zzp(zzw(zzS), zzgfmVar)));
                                    break;
                                } else {
                                    zzgiy.zzo(t, zzD & 1048575, zzghtVar.zzp(zzw(zzS), zzgfmVar));
                                    Object obj23 = obj;
                                    zzP(t, zzS);
                                    break;
                                }
                            case 18:
                                zzghtVar.zzx(this.zzn.zza(t, zzD & 1048575));
                                break;
                            case 19:
                                zzghtVar.zzy(this.zzn.zza(t, zzD & 1048575));
                                break;
                            case 20:
                                zzghtVar.zzA(this.zzn.zza(t, zzD & 1048575));
                                break;
                            case 21:
                                zzghtVar.zzz(this.zzn.zza(t, zzD & 1048575));
                                break;
                            case 22:
                                zzghtVar.zzB(this.zzn.zza(t, zzD & 1048575));
                                break;
                            case 23:
                                zzghtVar.zzC(this.zzn.zza(t, zzD & 1048575));
                                break;
                            case 24:
                                zzghtVar.zzD(this.zzn.zza(t, zzD & 1048575));
                                break;
                            case 25:
                                zzghtVar.zzE(this.zzn.zza(t, zzD & 1048575));
                                break;
                            case 26:
                                if (zzG(zzD)) {
                                    Object obj24 = obj;
                                    List<String> zza2 = this.zzn.zza(t, zzD & 1048575);
                                    Object obj25 = obj;
                                    ((zzgfd) zzghtVar).zzF(zza2, true);
                                    break;
                                } else {
                                    List<String> zza3 = this.zzn.zza(t, zzD & 1048575);
                                    Object obj26 = obj;
                                    ((zzgfd) zzghtVar).zzF(zza3, false);
                                    break;
                                }
                            case 27:
                                zzghtVar.zzG(this.zzn.zza(t, zzD & 1048575), zzw(zzS), zzgfmVar);
                                break;
                            case 28:
                                zzghtVar.zzI(this.zzn.zza(t, zzD & 1048575));
                                break;
                            case 29:
                                zzghtVar.zzJ(this.zzn.zza(t, zzD & 1048575));
                                break;
                            case 30:
                                List<Integer> zza4 = this.zzn.zza(t, zzD & 1048575);
                                Object obj27 = obj;
                                zzghtVar.zzK(zza4);
                                Object obj28 = obj;
                                obj = zzgib.zzG(zzb2, zza4, zzy(zzS), obj, zzgioVar);
                                break;
                            case 31:
                                zzghtVar.zzL(this.zzn.zza(t, zzD & 1048575));
                                break;
                            case 32:
                                zzghtVar.zzM(this.zzn.zza(t, zzD & 1048575));
                                break;
                            case 33:
                                zzghtVar.zzN(this.zzn.zza(t, zzD & 1048575));
                                break;
                            case 34:
                                zzghtVar.zzO(this.zzn.zza(t, zzD & 1048575));
                                break;
                            case 35:
                                zzghtVar.zzx(this.zzn.zza(t, zzD & 1048575));
                                break;
                            case 36:
                                zzghtVar.zzy(this.zzn.zza(t, zzD & 1048575));
                                break;
                            case 37:
                                zzghtVar.zzA(this.zzn.zza(t, zzD & 1048575));
                                break;
                            case 38:
                                zzghtVar.zzz(this.zzn.zza(t, zzD & 1048575));
                                break;
                            case 39:
                                zzghtVar.zzB(this.zzn.zza(t, zzD & 1048575));
                                break;
                            case 40:
                                zzghtVar.zzC(this.zzn.zza(t, zzD & 1048575));
                                break;
                            case 41:
                                zzghtVar.zzD(this.zzn.zza(t, zzD & 1048575));
                                break;
                            case 42:
                                zzghtVar.zzE(this.zzn.zza(t, zzD & 1048575));
                                break;
                            case 43:
                                zzghtVar.zzJ(this.zzn.zza(t, zzD & 1048575));
                                break;
                            case 44:
                                List<Integer> zza5 = this.zzn.zza(t, zzD & 1048575);
                                Object obj29 = obj;
                                zzghtVar.zzK(zza5);
                                Object obj30 = obj;
                                obj = zzgib.zzG(zzb2, zza5, zzy(zzS), obj, zzgioVar);
                                break;
                            case 45:
                                zzghtVar.zzL(this.zzn.zza(t, zzD & 1048575));
                                break;
                            case 46:
                                zzghtVar.zzM(this.zzn.zza(t, zzD & 1048575));
                                break;
                            case 47:
                                zzghtVar.zzN(this.zzn.zza(t, zzD & 1048575));
                                break;
                            case 48:
                                zzghtVar.zzO(this.zzn.zza(t, zzD & 1048575));
                                break;
                            case 49:
                                long j3 = zzD & 1048575;
                                zzghz<T> zzw = zzw(zzS);
                                Object obj31 = obj;
                                zzghtVar.zzH(this.zzn.zza(t, j3), zzw, zzgfmVar);
                                break;
                            case 50:
                                Object zzx = zzx(zzS);
                                Object obj32 = obj;
                                long zzD2 = zzD(zzS) & 1048575;
                                Object obj33 = obj;
                                Object zzn = zzgiy.zzn(t, zzD2);
                                if (zzn != null) {
                                    zzghcVar = zzn;
                                    if (zzghd.zzb(zzn)) {
                                        Object obj34 = obj;
                                        zzghc zzc = zzghc.zza().zzc();
                                        Object obj35 = obj;
                                        zzghd.zzc(zzc, zzn);
                                        Object obj36 = obj;
                                        zzgiy.zzo(t, zzD2, zzc);
                                        zzghcVar = zzc;
                                    }
                                } else {
                                    zzghc zzc2 = zzghc.zza().zzc();
                                    Object obj37 = obj;
                                    zzgiy.zzo(t, zzD2, zzc2);
                                    zzghcVar = zzc2;
                                }
                                Object obj38 = obj;
                                zzghc zzghcVar2 = zzghcVar;
                                Object obj39 = obj;
                                zzghb zzghbVar = (zzghb) zzx;
                                obj2 = obj;
                                obj4 = obj;
                                throw null;
                                break;
                            case 51:
                                zzgiy.zzo(t, zzD & 1048575, Double.valueOf(zzghtVar.zze()));
                                Object obj40 = obj;
                                zzR(t, zzb2, zzS);
                                break;
                            case 52:
                                zzgiy.zzo(t, zzD & 1048575, Float.valueOf(zzghtVar.zzf()));
                                Object obj41 = obj;
                                zzR(t, zzb2, zzS);
                                break;
                            case 53:
                                zzgiy.zzo(t, zzD & 1048575, Long.valueOf(zzghtVar.zzh()));
                                Object obj42 = obj;
                                zzR(t, zzb2, zzS);
                                break;
                            case 54:
                                zzgiy.zzo(t, zzD & 1048575, Long.valueOf(zzghtVar.zzg()));
                                Object obj43 = obj;
                                zzR(t, zzb2, zzS);
                                break;
                            case 55:
                                zzgiy.zzo(t, zzD & 1048575, Integer.valueOf(zzghtVar.zzi()));
                                Object obj44 = obj;
                                zzR(t, zzb2, zzS);
                                break;
                            case 56:
                                zzgiy.zzo(t, zzD & 1048575, Long.valueOf(zzghtVar.zzj()));
                                Object obj45 = obj;
                                zzR(t, zzb2, zzS);
                                break;
                            case 57:
                                zzgiy.zzo(t, zzD & 1048575, Integer.valueOf(zzghtVar.zzk()));
                                Object obj46 = obj;
                                zzR(t, zzb2, zzS);
                                break;
                            case 58:
                                zzgiy.zzo(t, zzD & 1048575, Boolean.valueOf(zzghtVar.zzl()));
                                Object obj47 = obj;
                                zzR(t, zzb2, zzS);
                                break;
                            case 59:
                                zzC(t, zzD, zzghtVar);
                                Object obj48 = obj;
                                zzR(t, zzb2, zzS);
                                break;
                            case 60:
                                if (zzQ(t, zzb2, zzS)) {
                                    long j4 = zzD & 1048575;
                                    zzgiy.zzo(t, j4, zzggk.zzi(zzgiy.zzn(t, j4), zzghtVar.zzo(zzw(zzS), zzgfmVar)));
                                } else {
                                    zzgiy.zzo(t, zzD & 1048575, zzghtVar.zzo(zzw(zzS), zzgfmVar));
                                    Object obj49 = obj;
                                    zzP(t, zzS);
                                }
                                Object obj50 = obj;
                                zzR(t, zzb2, zzS);
                                break;
                            case 61:
                                zzgiy.zzo(t, zzD & 1048575, zzghtVar.zzq());
                                Object obj51 = obj;
                                zzR(t, zzb2, zzS);
                                break;
                            case 62:
                                zzgiy.zzo(t, zzD & 1048575, Integer.valueOf(zzghtVar.zzr()));
                                Object obj52 = obj;
                                zzR(t, zzb2, zzS);
                                break;
                            case 63:
                                int zzs2 = zzghtVar.zzs();
                                Object obj53 = obj;
                                zzgge zzy2 = zzy(zzS);
                                if (zzy2 != null && !zzy2.zza(zzs2)) {
                                    obj = zzgib.zzH(zzb2, zzs2, obj, zzgioVar);
                                    break;
                                }
                                zzgiy.zzo(t, zzD & 1048575, Integer.valueOf(zzs2));
                                Object obj54 = obj;
                                zzR(t, zzb2, zzS);
                                break;
                            case 64:
                                zzgiy.zzo(t, zzD & 1048575, Integer.valueOf(zzghtVar.zzt()));
                                Object obj55 = obj;
                                zzR(t, zzb2, zzS);
                                break;
                            case 65:
                                zzgiy.zzo(t, zzD & 1048575, Long.valueOf(zzghtVar.zzu()));
                                Object obj56 = obj;
                                zzR(t, zzb2, zzS);
                                break;
                            case 66:
                                zzgiy.zzo(t, zzD & 1048575, Integer.valueOf(zzghtVar.zzv()));
                                Object obj57 = obj;
                                zzR(t, zzb2, zzS);
                                break;
                            case 67:
                                zzgiy.zzo(t, zzD & 1048575, Long.valueOf(zzghtVar.zzw()));
                                Object obj58 = obj;
                                zzR(t, zzb2, zzS);
                                break;
                            case 68:
                                zzgiy.zzo(t, zzD & 1048575, zzghtVar.zzp(zzw(zzS), zzgfmVar));
                                Object obj59 = obj;
                                zzR(t, zzb2, zzS);
                                break;
                            default:
                                Object obj60 = obj;
                                if (obj == null) {
                                    obj60 = zzgioVar.zzg();
                                }
                                obj = obj60;
                                if (!zzgioVar.zzn(obj60, zzghtVar)) {
                                    for (int i = this.zzl; i < this.zzm; i++) {
                                        obj60 = zzA(t, this.zzk[i], obj60, zzgioVar);
                                    }
                                    if (obj60 == null) {
                                        return;
                                    }
                                    zzgioVar.zzl(t, obj60);
                                    return;
                                }
                                break;
                        }
                    } catch (zzggl e) {
                        zzgioVar.zza(zzghtVar);
                        Object obj61 = obj4;
                        if (obj4 == null) {
                            obj61 = zzgioVar.zzk(t);
                        }
                        Object obj62 = obj61;
                        obj = obj61;
                        if (!zzgioVar.zzn(obj61, zzghtVar)) {
                            for (int i2 = this.zzl; i2 < this.zzm; i2++) {
                                obj61 = zzA(t, this.zzk[i2], obj61, zzgioVar);
                            }
                            if (obj61 == null) {
                                return;
                            }
                            zzgioVar.zzl(t, obj61);
                            return;
                        }
                    }
                } else if (zzb2 == Integer.MAX_VALUE) {
                    for (int i3 = this.zzl; i3 < this.zzm; i3++) {
                        obj = zzA(t, this.zzk[i3], obj, zzgioVar);
                    }
                    if (obj == null) {
                        return;
                    }
                    zzgioVar.zzl(t, obj);
                    return;
                } else {
                    Object zzf = !this.zzh ? null : zzgfnVar.zzf(zzgfmVar, this.zzg, zzb2);
                    if (zzf != null) {
                        zzgfr<?> zzgfrVar2 = zzgfrVar;
                        if (zzgfrVar == null) {
                            zzgfrVar2 = zzgfnVar.zzc(t);
                        }
                        Object obj63 = obj;
                        obj = zzgfnVar.zze(zzghtVar, zzf, zzgfmVar, zzgfrVar2, obj, zzgioVar);
                        zzgfrVar = zzgfrVar2;
                    } else {
                        zzgioVar.zza(zzghtVar);
                        Object obj64 = obj;
                        if (obj == null) {
                            obj64 = zzgioVar.zzk(t);
                        }
                        Object obj65 = obj64;
                        obj = obj64;
                        if (!zzgioVar.zzn(obj64, zzghtVar)) {
                            for (int i4 = this.zzl; i4 < this.zzm; i4++) {
                                obj64 = zzA(t, this.zzk[i4], obj64, zzgioVar);
                            }
                            if (obj64 == null) {
                                return;
                            }
                            zzgioVar.zzl(t, obj64);
                            return;
                        }
                    }
                }
            } catch (Throwable th) {
                for (int i5 = this.zzl; i5 < this.zzm; i5++) {
                    obj2 = zzA(t, this.zzk[i5], obj2, zzgioVar);
                }
                if (obj2 != null) {
                    zzgioVar.zzl(t, obj2);
                }
                throw th;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:138:0x063f, code lost:
        if (r33 == 1048575) goto L140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x0642, code lost:
        r0.putInt(r23, r33, r32);
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x064e, code lost:
        r19 = r34.zzl;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x065a, code lost:
        if (r19 >= r34.zzm) goto L206;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x065d, code lost:
        r34.zzA(r23, r34.zzk[r19], null, r34.zzo);
        r19 = r19 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x067a, code lost:
        if (r21 != 0) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x0681, code lost:
        if (r31 != r20) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x068a, code lost:
        throw com.google.android.gms.internal.ads.zzggm.zzk();
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x068f, code lost:
        if (r31 > r20) goto L156;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x0696, code lost:
        if (r29 != r21) goto L156;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x069b, code lost:
        return r31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x069f, code lost:
        throw com.google.android.gms.internal.ads.zzggm.zzk();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzh(T r17, byte[] r18, int r19, int r20, int r21, com.google.android.gms.internal.ads.zzgej r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1696
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzghl.zzh(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.ads.zzgej):int");
    }

    @Override // com.google.android.gms.internal.ads.zzghz
    public final void zzi(T t, byte[] bArr, int i, int i2, zzgej zzgejVar) throws IOException {
        if (this.zzj) {
            zzz(t, bArr, i, i2, zzgejVar);
        } else {
            zzh(t, bArr, i, i2, 0, zzgejVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzghz
    public final void zzj(T t) {
        int i;
        int i2 = this.zzl;
        while (true) {
            i = this.zzm;
            if (i2 >= i) {
                break;
            }
            long zzD = zzD(this.zzk[i2]) & 1048575;
            Object zzn = zzgiy.zzn(t, zzD);
            if (zzn != null) {
                ((zzghc) zzn).zzd();
                zzgiy.zzo(t, zzD, zzn);
            }
            i2++;
        }
        int length = this.zzk.length;
        for (int i3 = i; i3 < length; i3++) {
            this.zzn.zzb(t, this.zzk[i3]);
        }
        this.zzo.zzm(t);
        if (this.zzh) {
            this.zzp.zzd(t);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzghz
    public final boolean zzk(T t) {
        int i = 1048575;
        int i2 = 0;
        for (int i3 = 0; i3 < this.zzl; i3++) {
            int i4 = this.zzk[i3];
            int i5 = this.zzc[i4];
            int zzD = zzD(i4);
            int i6 = this.zzc[i4 + 2];
            int i7 = i6 & 1048575;
            int i8 = 1 << (i6 >>> 20);
            if (i7 != i) {
                if (i7 != 1048575) {
                    i2 = zzb.getInt(t, i7);
                }
                i = i7;
            }
            if ((268435456 & zzD) != 0 && !zzN(t, i4, i, i2, i8)) {
                return false;
            }
            int zzF = zzF(zzD);
            if (zzF != 9 && zzF != 17) {
                if (zzF != 27) {
                    if (zzF == 60 || zzF == 68) {
                        if (zzQ(t, i5, i4) && !zzB(t, zzD, zzw(i4))) {
                            return false;
                        }
                    } else if (zzF != 49) {
                        if (zzF == 50 && !((zzghc) zzgiy.zzn(t, zzD & 1048575)).isEmpty()) {
                            zzghb zzghbVar = (zzghb) zzx(i4);
                            throw null;
                        }
                    }
                }
                List list = (List) zzgiy.zzn(t, zzD & 1048575);
                if (!list.isEmpty()) {
                    zzghz zzw = zzw(i4);
                    for (int i9 = 0; i9 < list.size(); i9++) {
                        if (!zzw.zzk(list.get(i9))) {
                            return false;
                        }
                    }
                    continue;
                } else {
                    continue;
                }
            } else if (zzN(t, i4, i, i2, i8) && !zzB(t, zzD, zzw(i4))) {
                return false;
            }
        }
        if (!this.zzh) {
            return true;
        }
        this.zzp.zzb(t);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzghz
    public final void zzn(T t, zzgfi zzgfiVar) throws IOException {
        if (!this.zzj) {
            zzV(t, zzgfiVar);
        } else if (this.zzh) {
            this.zzp.zzb(t);
            throw null;
        } else {
            int length = this.zzc.length;
            for (int i = 0; i < length; i += 3) {
                int zzD = zzD(i);
                int i2 = this.zzc[i];
                switch (zzF(zzD)) {
                    case 0:
                        if (zzO(t, i)) {
                            zzgfiVar.zzf(i2, zzgiy.zzl(t, zzD & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (zzO(t, i)) {
                            zzgfiVar.zze(i2, zzgiy.zzj(t, zzD & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (zzO(t, i)) {
                            zzgfiVar.zzc(i2, zzgiy.zzf(t, zzD & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (zzO(t, i)) {
                            zzgfiVar.zzh(i2, zzgiy.zzf(t, zzD & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (zzO(t, i)) {
                            zzgfiVar.zzi(i2, zzgiy.zzd(t, zzD & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (zzO(t, i)) {
                            zzgfiVar.zzj(i2, zzgiy.zzf(t, zzD & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (zzO(t, i)) {
                            zzgfiVar.zzk(i2, zzgiy.zzd(t, zzD & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (zzO(t, i)) {
                            zzgfiVar.zzl(i2, zzgiy.zzh(t, zzD & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (zzO(t, i)) {
                            zzX(i2, zzgiy.zzn(t, zzD & 1048575), zzgfiVar);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        if (zzO(t, i)) {
                            zzgfiVar.zzr(i2, zzgiy.zzn(t, zzD & 1048575), zzw(i));
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (zzO(t, i)) {
                            zzgfiVar.zzn(i2, (zzgex) zzgiy.zzn(t, zzD & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (zzO(t, i)) {
                            zzgfiVar.zzo(i2, zzgiy.zzd(t, zzD & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (zzO(t, i)) {
                            zzgfiVar.zzg(i2, zzgiy.zzd(t, zzD & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (zzO(t, i)) {
                            zzgfiVar.zzb(i2, zzgiy.zzd(t, zzD & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (zzO(t, i)) {
                            zzgfiVar.zzd(i2, zzgiy.zzf(t, zzD & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (zzO(t, i)) {
                            zzgfiVar.zzp(i2, zzgiy.zzd(t, zzD & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (zzO(t, i)) {
                            zzgfiVar.zzq(i2, zzgiy.zzf(t, zzD & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        if (zzO(t, i)) {
                            zzgfiVar.zzs(i2, zzgiy.zzn(t, zzD & 1048575), zzw(i));
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        zzgib.zzJ(this.zzc[i], (List) zzgiy.zzn(t, zzD & 1048575), zzgfiVar, false);
                        break;
                    case 19:
                        zzgib.zzK(this.zzc[i], (List) zzgiy.zzn(t, zzD & 1048575), zzgfiVar, false);
                        break;
                    case 20:
                        zzgib.zzL(this.zzc[i], (List) zzgiy.zzn(t, zzD & 1048575), zzgfiVar, false);
                        break;
                    case 21:
                        zzgib.zzM(this.zzc[i], (List) zzgiy.zzn(t, zzD & 1048575), zzgfiVar, false);
                        break;
                    case 22:
                        zzgib.zzQ(this.zzc[i], (List) zzgiy.zzn(t, zzD & 1048575), zzgfiVar, false);
                        break;
                    case 23:
                        zzgib.zzO(this.zzc[i], (List) zzgiy.zzn(t, zzD & 1048575), zzgfiVar, false);
                        break;
                    case 24:
                        zzgib.zzT(this.zzc[i], (List) zzgiy.zzn(t, zzD & 1048575), zzgfiVar, false);
                        break;
                    case 25:
                        zzgib.zzW(this.zzc[i], (List) zzgiy.zzn(t, zzD & 1048575), zzgfiVar, false);
                        break;
                    case 26:
                        zzgib.zzX(this.zzc[i], (List) zzgiy.zzn(t, zzD & 1048575), zzgfiVar);
                        break;
                    case 27:
                        zzgib.zzZ(this.zzc[i], (List) zzgiy.zzn(t, zzD & 1048575), zzgfiVar, zzw(i));
                        break;
                    case 28:
                        zzgib.zzY(this.zzc[i], (List) zzgiy.zzn(t, zzD & 1048575), zzgfiVar);
                        break;
                    case 29:
                        zzgib.zzR(this.zzc[i], (List) zzgiy.zzn(t, zzD & 1048575), zzgfiVar, false);
                        break;
                    case 30:
                        zzgib.zzV(this.zzc[i], (List) zzgiy.zzn(t, zzD & 1048575), zzgfiVar, false);
                        break;
                    case 31:
                        zzgib.zzU(this.zzc[i], (List) zzgiy.zzn(t, zzD & 1048575), zzgfiVar, false);
                        break;
                    case 32:
                        zzgib.zzP(this.zzc[i], (List) zzgiy.zzn(t, zzD & 1048575), zzgfiVar, false);
                        break;
                    case 33:
                        zzgib.zzS(this.zzc[i], (List) zzgiy.zzn(t, zzD & 1048575), zzgfiVar, false);
                        break;
                    case 34:
                        zzgib.zzN(this.zzc[i], (List) zzgiy.zzn(t, zzD & 1048575), zzgfiVar, false);
                        break;
                    case 35:
                        zzgib.zzJ(this.zzc[i], (List) zzgiy.zzn(t, zzD & 1048575), zzgfiVar, true);
                        break;
                    case 36:
                        zzgib.zzK(this.zzc[i], (List) zzgiy.zzn(t, zzD & 1048575), zzgfiVar, true);
                        break;
                    case 37:
                        zzgib.zzL(this.zzc[i], (List) zzgiy.zzn(t, zzD & 1048575), zzgfiVar, true);
                        break;
                    case 38:
                        zzgib.zzM(this.zzc[i], (List) zzgiy.zzn(t, zzD & 1048575), zzgfiVar, true);
                        break;
                    case 39:
                        zzgib.zzQ(this.zzc[i], (List) zzgiy.zzn(t, zzD & 1048575), zzgfiVar, true);
                        break;
                    case 40:
                        zzgib.zzO(this.zzc[i], (List) zzgiy.zzn(t, zzD & 1048575), zzgfiVar, true);
                        break;
                    case 41:
                        zzgib.zzT(this.zzc[i], (List) zzgiy.zzn(t, zzD & 1048575), zzgfiVar, true);
                        break;
                    case 42:
                        zzgib.zzW(this.zzc[i], (List) zzgiy.zzn(t, zzD & 1048575), zzgfiVar, true);
                        break;
                    case 43:
                        zzgib.zzR(this.zzc[i], (List) zzgiy.zzn(t, zzD & 1048575), zzgfiVar, true);
                        break;
                    case 44:
                        zzgib.zzV(this.zzc[i], (List) zzgiy.zzn(t, zzD & 1048575), zzgfiVar, true);
                        break;
                    case 45:
                        zzgib.zzU(this.zzc[i], (List) zzgiy.zzn(t, zzD & 1048575), zzgfiVar, true);
                        break;
                    case 46:
                        zzgib.zzP(this.zzc[i], (List) zzgiy.zzn(t, zzD & 1048575), zzgfiVar, true);
                        break;
                    case 47:
                        zzgib.zzS(this.zzc[i], (List) zzgiy.zzn(t, zzD & 1048575), zzgfiVar, true);
                        break;
                    case 48:
                        zzgib.zzN(this.zzc[i], (List) zzgiy.zzn(t, zzD & 1048575), zzgfiVar, true);
                        break;
                    case 49:
                        zzgib.zzaa(this.zzc[i], (List) zzgiy.zzn(t, zzD & 1048575), zzgfiVar, zzw(i));
                        break;
                    case 50:
                        zzW(zzgfiVar, i2, zzgiy.zzn(t, zzD & 1048575), i);
                        break;
                    case 51:
                        if (zzQ(t, i2, i)) {
                            zzgfiVar.zzf(i2, zzH(t, zzD & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 52:
                        if (zzQ(t, i2, i)) {
                            zzgfiVar.zze(i2, zzI(t, zzD & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 53:
                        if (zzQ(t, i2, i)) {
                            zzgfiVar.zzc(i2, zzK(t, zzD & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 54:
                        if (zzQ(t, i2, i)) {
                            zzgfiVar.zzh(i2, zzK(t, zzD & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 55:
                        if (zzQ(t, i2, i)) {
                            zzgfiVar.zzi(i2, zzJ(t, zzD & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 56:
                        if (zzQ(t, i2, i)) {
                            zzgfiVar.zzj(i2, zzK(t, zzD & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 57:
                        if (zzQ(t, i2, i)) {
                            zzgfiVar.zzk(i2, zzJ(t, zzD & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 58:
                        if (zzQ(t, i2, i)) {
                            zzgfiVar.zzl(i2, zzL(t, zzD & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 59:
                        if (zzQ(t, i2, i)) {
                            zzX(i2, zzgiy.zzn(t, zzD & 1048575), zzgfiVar);
                            break;
                        } else {
                            break;
                        }
                    case 60:
                        if (zzQ(t, i2, i)) {
                            zzgfiVar.zzr(i2, zzgiy.zzn(t, zzD & 1048575), zzw(i));
                            break;
                        } else {
                            break;
                        }
                    case 61:
                        if (zzQ(t, i2, i)) {
                            zzgfiVar.zzn(i2, (zzgex) zzgiy.zzn(t, zzD & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 62:
                        if (zzQ(t, i2, i)) {
                            zzgfiVar.zzo(i2, zzJ(t, zzD & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 63:
                        if (zzQ(t, i2, i)) {
                            zzgfiVar.zzg(i2, zzJ(t, zzD & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 64:
                        if (zzQ(t, i2, i)) {
                            zzgfiVar.zzb(i2, zzJ(t, zzD & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 65:
                        if (zzQ(t, i2, i)) {
                            zzgfiVar.zzd(i2, zzK(t, zzD & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 66:
                        if (zzQ(t, i2, i)) {
                            zzgfiVar.zzp(i2, zzJ(t, zzD & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 67:
                        if (zzQ(t, i2, i)) {
                            zzgfiVar.zzq(i2, zzK(t, zzD & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 68:
                        if (zzQ(t, i2, i)) {
                            zzgfiVar.zzs(i2, zzgiy.zzn(t, zzD & 1048575), zzw(i));
                            break;
                        } else {
                            break;
                        }
                }
            }
            zzgio<?, ?> zzgioVar = this.zzo;
            zzgioVar.zzr(zzgioVar.zzj(t), zzgfiVar);
        }
    }
}
