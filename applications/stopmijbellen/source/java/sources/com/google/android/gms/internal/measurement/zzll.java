package com.google.android.gms.internal.measurement;

import android.support.p012v4.media.C0082b;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import me.zhanghai.android.materialprogressbar.C3681R;
import p007a6.C0033h;
import sun.misc.Unsafe;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzll.class */
public final class zzll<T> implements zzlt<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzmr.zzq();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzli zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final int[] zzj;
    private final int zzk;
    private final int zzl;
    private final zzkw zzm;
    private final zzmh<?, ?> zzn;
    private final zzjq<?> zzo;
    private final zzln zzp;
    private final zzld zzq;

    /* JADX WARN: Multi-variable type inference failed */
    private zzll(int[] iArr, int[] iArr2, Object[] objArr, int i, int i2, zzli zzliVar, boolean z, boolean z2, int[] iArr3, int i3, int i4, zzln zzlnVar, zzkw zzkwVar, zzmh<?, ?> zzmhVar, zzjq<?> zzjqVar, zzld zzldVar) {
        this.zzc = iArr;
        this.zzd = iArr2;
        this.zze = objArr;
        this.zzf = i;
        this.zzi = zzliVar;
        boolean z3 = false;
        if (zzmhVar != 0) {
            z3 = false;
            if (zzmhVar.zza(i2)) {
                z3 = true;
            }
        }
        this.zzh = z3;
        this.zzj = z2;
        this.zzk = iArr3;
        this.zzl = i3;
        this.zzp = i4;
        this.zzm = zzlnVar;
        this.zzn = zzkwVar;
        this.zzo = zzmhVar;
        this.zzg = i2;
        this.zzq = zzjqVar;
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
        return ((Double) zzmr.zzn(t, j)).doubleValue();
    }

    private static <T> float zzE(T t, long j) {
        return ((Float) zzmr.zzn(t, j)).floatValue();
    }

    private static <T> int zzF(T t, long j) {
        return ((Integer) zzmr.zzn(t, j)).intValue();
    }

    private static <T> long zzG(T t, long j) {
        return ((Long) zzmr.zzn(t, j)).longValue();
    }

    private static <T> boolean zzH(T t, long j) {
        return ((Boolean) zzmr.zzn(t, j)).booleanValue();
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
            return (zzmr.zzd(t, j) & (1 << (zzB >>> 20))) != 0;
        }
        int zzA = zzA(i);
        long j2 = zzA & 1048575;
        switch (zzC(zzA)) {
            case 0:
                return zzmr.zzl(t, j2) != 0.0d;
            case 1:
                return zzmr.zzj(t, j2) != 0.0f;
            case 2:
                return zzmr.zzf(t, j2) != 0;
            case 3:
                return zzmr.zzf(t, j2) != 0;
            case 4:
                return zzmr.zzd(t, j2) != 0;
            case 5:
                return zzmr.zzf(t, j2) != 0;
            case 6:
                return zzmr.zzd(t, j2) != 0;
            case 7:
                return zzmr.zzh(t, j2);
            case 8:
                Object zzn = zzmr.zzn(t, j2);
                if (zzn instanceof String) {
                    return !((String) zzn).isEmpty();
                } else if (!(zzn instanceof zzjd)) {
                    throw new IllegalArgumentException();
                } else {
                    return !zzjd.zzb.equals(zzn);
                }
            case 9:
                return zzmr.zzn(t, j2) != null;
            case 10:
                return !zzjd.zzb.equals(zzmr.zzn(t, j2));
            case 11:
                return zzmr.zzd(t, j2) != 0;
            case 12:
                return zzmr.zzd(t, j2) != 0;
            case 13:
                return zzmr.zzd(t, j2) != 0;
            case 14:
                return zzmr.zzf(t, j2) != 0;
            case 15:
                return zzmr.zzd(t, j2) != 0;
            case 16:
                return zzmr.zzf(t, j2) != 0;
            case 17:
                return zzmr.zzn(t, j2) != null;
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
        zzmr.zze(t, j, (1 << (zzB >>> 20)) | zzmr.zzd(t, j));
    }

    private final boolean zzM(T t, int i, int i2) {
        return zzmr.zzd(t, (long) (zzB(i2) & 1048575)) == i;
    }

    private final void zzN(T t, int i, int i2) {
        zzmr.zze(t, zzB(i2) & 1048575, i);
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

    private final void zzR(T t, zzjl zzjlVar) throws IOException {
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
                        zzjlVar.zzf(i6, zzmr.zzl(t, j));
                        break;
                    }
                case 1:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzjlVar.zze(i6, zzmr.zzj(t, j));
                        break;
                    }
                case 2:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzjlVar.zzc(i6, unsafe.getLong(t, j));
                        break;
                    }
                case 3:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzjlVar.zzh(i6, unsafe.getLong(t, j));
                        break;
                    }
                case 4:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzjlVar.zzi(i6, unsafe.getInt(t, j));
                        break;
                    }
                case 5:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzjlVar.zzj(i6, unsafe.getLong(t, j));
                        break;
                    }
                case 6:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzjlVar.zzk(i6, unsafe.getInt(t, j));
                        break;
                    }
                case 7:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzjlVar.zzl(i6, zzmr.zzh(t, j));
                        break;
                    }
                case 8:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzT(i6, unsafe.getObject(t, j), zzjlVar);
                        break;
                    }
                case 9:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzjlVar.zzr(i6, unsafe.getObject(t, j), zzv(i3));
                        break;
                    }
                case 10:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzjlVar.zzn(i6, (zzjd) unsafe.getObject(t, j));
                        break;
                    }
                case 11:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzjlVar.zzo(i6, unsafe.getInt(t, j));
                        break;
                    }
                case 12:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzjlVar.zzg(i6, unsafe.getInt(t, j));
                        break;
                    }
                case 13:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzjlVar.zzb(i6, unsafe.getInt(t, j));
                        break;
                    }
                case 14:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzjlVar.zzd(i6, unsafe.getLong(t, j));
                        break;
                    }
                case 15:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzjlVar.zzp(i6, unsafe.getInt(t, j));
                        break;
                    }
                case 16:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzjlVar.zzq(i6, unsafe.getLong(t, j));
                        break;
                    }
                case 17:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzjlVar.zzs(i6, unsafe.getObject(t, j), zzv(i3));
                        break;
                    }
                case 18:
                    zzlv.zzJ(this.zzc[i3], (List) unsafe.getObject(t, j), zzjlVar, false);
                    break;
                case 19:
                    zzlv.zzK(this.zzc[i3], (List) unsafe.getObject(t, j), zzjlVar, false);
                    break;
                case 20:
                    zzlv.zzL(this.zzc[i3], (List) unsafe.getObject(t, j), zzjlVar, false);
                    break;
                case 21:
                    zzlv.zzM(this.zzc[i3], (List) unsafe.getObject(t, j), zzjlVar, false);
                    break;
                case 22:
                    zzlv.zzQ(this.zzc[i3], (List) unsafe.getObject(t, j), zzjlVar, false);
                    break;
                case 23:
                    zzlv.zzO(this.zzc[i3], (List) unsafe.getObject(t, j), zzjlVar, false);
                    break;
                case 24:
                    zzlv.zzT(this.zzc[i3], (List) unsafe.getObject(t, j), zzjlVar, false);
                    break;
                case 25:
                    zzlv.zzW(this.zzc[i3], (List) unsafe.getObject(t, j), zzjlVar, false);
                    break;
                case 26:
                    zzlv.zzX(this.zzc[i3], (List) unsafe.getObject(t, j), zzjlVar);
                    break;
                case 27:
                    zzlv.zzZ(this.zzc[i3], (List) unsafe.getObject(t, j), zzjlVar, zzv(i3));
                    break;
                case 28:
                    zzlv.zzY(this.zzc[i3], (List) unsafe.getObject(t, j), zzjlVar);
                    break;
                case 29:
                    zzlv.zzR(this.zzc[i3], (List) unsafe.getObject(t, j), zzjlVar, false);
                    break;
                case C3681R.styleable.AppCompatTheme_actionModeTheme /* 30 */:
                    zzlv.zzV(this.zzc[i3], (List) unsafe.getObject(t, j), zzjlVar, false);
                    break;
                case C3681R.styleable.AppCompatTheme_actionModeWebSearchDrawable /* 31 */:
                    zzlv.zzU(this.zzc[i3], (List) unsafe.getObject(t, j), zzjlVar, false);
                    break;
                case C3681R.styleable.AppCompatTheme_actionOverflowButtonStyle /* 32 */:
                    zzlv.zzP(this.zzc[i3], (List) unsafe.getObject(t, j), zzjlVar, false);
                    break;
                case C3681R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                    zzlv.zzS(this.zzc[i3], (List) unsafe.getObject(t, j), zzjlVar, false);
                    break;
                case C3681R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                    zzlv.zzN(this.zzc[i3], (List) unsafe.getObject(t, j), zzjlVar, false);
                    break;
                case C3681R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                    zzlv.zzJ(this.zzc[i3], (List) unsafe.getObject(t, j), zzjlVar, true);
                    break;
                case C3681R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                    zzlv.zzK(this.zzc[i3], (List) unsafe.getObject(t, j), zzjlVar, true);
                    break;
                case C3681R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                    zzlv.zzL(this.zzc[i3], (List) unsafe.getObject(t, j), zzjlVar, true);
                    break;
                case C3681R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                    zzlv.zzM(this.zzc[i3], (List) unsafe.getObject(t, j), zzjlVar, true);
                    break;
                case C3681R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                    zzlv.zzQ(this.zzc[i3], (List) unsafe.getObject(t, j), zzjlVar, true);
                    break;
                case C3681R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                    zzlv.zzO(this.zzc[i3], (List) unsafe.getObject(t, j), zzjlVar, true);
                    break;
                case C3681R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                    zzlv.zzT(this.zzc[i3], (List) unsafe.getObject(t, j), zzjlVar, true);
                    break;
                case C3681R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                    zzlv.zzW(this.zzc[i3], (List) unsafe.getObject(t, j), zzjlVar, true);
                    break;
                case C3681R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                    zzlv.zzR(this.zzc[i3], (List) unsafe.getObject(t, j), zzjlVar, true);
                    break;
                case C3681R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                    zzlv.zzV(this.zzc[i3], (List) unsafe.getObject(t, j), zzjlVar, true);
                    break;
                case C3681R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                    zzlv.zzU(this.zzc[i3], (List) unsafe.getObject(t, j), zzjlVar, true);
                    break;
                case C3681R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                    zzlv.zzP(this.zzc[i3], (List) unsafe.getObject(t, j), zzjlVar, true);
                    break;
                case C3681R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                    zzlv.zzS(this.zzc[i3], (List) unsafe.getObject(t, j), zzjlVar, true);
                    break;
                case C3681R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                    zzlv.zzN(this.zzc[i3], (List) unsafe.getObject(t, j), zzjlVar, true);
                    break;
                case C3681R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                    zzlv.zzaa(this.zzc[i3], (List) unsafe.getObject(t, j), zzjlVar, zzv(i3));
                    break;
                case C3681R.styleable.AppCompatTheme_colorAccent /* 50 */:
                    zzS(zzjlVar, i6, unsafe.getObject(t, j), i3);
                    break;
                case 51:
                    if (!zzM(t, i6, i3)) {
                        break;
                    } else {
                        zzjlVar.zzf(i6, zzD(t, j));
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                    if (!zzM(t, i6, i3)) {
                        break;
                    } else {
                        zzjlVar.zze(i6, zzE(t, j));
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                    if (!zzM(t, i6, i3)) {
                        break;
                    } else {
                        zzjlVar.zzc(i6, zzG(t, j));
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                    if (!zzM(t, i6, i3)) {
                        break;
                    } else {
                        zzjlVar.zzh(i6, zzG(t, j));
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                    if (!zzM(t, i6, i3)) {
                        break;
                    } else {
                        zzjlVar.zzi(i6, zzF(t, j));
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorError /* 56 */:
                    if (!zzM(t, i6, i3)) {
                        break;
                    } else {
                        zzjlVar.zzj(i6, zzG(t, j));
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                    if (!zzM(t, i6, i3)) {
                        break;
                    } else {
                        zzjlVar.zzk(i6, zzF(t, j));
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                    if (!zzM(t, i6, i3)) {
                        break;
                    } else {
                        zzjlVar.zzl(i6, zzH(t, j));
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                    if (!zzM(t, i6, i3)) {
                        break;
                    } else {
                        zzT(i6, unsafe.getObject(t, j), zzjlVar);
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_controlBackground /* 60 */:
                    if (!zzM(t, i6, i3)) {
                        break;
                    } else {
                        zzjlVar.zzr(i6, unsafe.getObject(t, j), zzv(i3));
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                    if (!zzM(t, i6, i3)) {
                        break;
                    } else {
                        zzjlVar.zzn(i6, (zzjd) unsafe.getObject(t, j));
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                    if (!zzM(t, i6, i3)) {
                        break;
                    } else {
                        zzjlVar.zzo(i6, zzF(t, j));
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                    if (!zzM(t, i6, i3)) {
                        break;
                    } else {
                        zzjlVar.zzg(i6, zzF(t, j));
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dividerHorizontal /* 64 */:
                    if (!zzM(t, i6, i3)) {
                        break;
                    } else {
                        zzjlVar.zzb(i6, zzF(t, j));
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dividerVertical /* 65 */:
                    if (!zzM(t, i6, i3)) {
                        break;
                    } else {
                        zzjlVar.zzd(i6, zzG(t, j));
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                    if (!zzM(t, i6, i3)) {
                        break;
                    } else {
                        zzjlVar.zzp(i6, zzF(t, j));
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                    if (!zzM(t, i6, i3)) {
                        break;
                    } else {
                        zzjlVar.zzq(i6, zzG(t, j));
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                    if (!zzM(t, i6, i3)) {
                        break;
                    } else {
                        zzjlVar.zzs(i6, unsafe.getObject(t, j), zzv(i3));
                        break;
                    }
            }
            i3 += 3;
            i4 = i;
        }
        zzmh<?, ?> zzmhVar = this.zzn;
        zzmhVar.zzi(zzmhVar.zzd(t), zzjlVar);
    }

    private final <K, V> void zzS(zzjl zzjlVar, int i, Object obj, int i2) throws IOException {
        if (obj == null) {
            return;
        }
        zzlb zzlbVar = (zzlb) zzw(i2);
        throw null;
    }

    private static final void zzT(int i, Object obj, zzjl zzjlVar) throws IOException {
        if (obj instanceof String) {
            zzjlVar.zzm(i, (String) obj);
        } else {
            zzjlVar.zzn(i, (zzjd) obj);
        }
    }

    public static zzmi zzf(Object obj) {
        zzkd zzkdVar = (zzkd) obj;
        zzmi zzmiVar = zzkdVar.zzc;
        zzmi zzmiVar2 = zzmiVar;
        if (zzmiVar == zzmi.zza()) {
            zzmiVar2 = zzmi.zzb();
            zzkdVar.zzc = zzmiVar2;
        }
        return zzmiVar2;
    }

    public static <T> zzll<T> zzk(Class<T> cls, zzlf zzlfVar, zzln zzlnVar, zzkw zzkwVar, zzmh<?, ?> zzmhVar, zzjq<?> zzjqVar, zzld zzldVar) {
        if (zzlfVar instanceof zzls) {
            return zzl((zzls) zzlfVar, zzlnVar, zzkwVar, zzmhVar, zzjqVar, zzldVar);
        }
        zzme zzmeVar = (zzme) zzlfVar;
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:124:0x06c9  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x06d3  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x0702  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x070c  */
    /* JADX WARN: Removed duplicated region for block: B:177:0x0949  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> com.google.android.gms.internal.measurement.zzll<T> zzl(com.google.android.gms.internal.measurement.zzls r19, com.google.android.gms.internal.measurement.zzln r20, com.google.android.gms.internal.measurement.zzkw r21, com.google.android.gms.internal.measurement.zzmh<?, ?> r22, com.google.android.gms.internal.measurement.zzjq<?> r23, com.google.android.gms.internal.measurement.zzld r24) {
        /*
            Method dump skipped, instructions count: 2578
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzll.zzl(com.google.android.gms.internal.measurement.zzls, com.google.android.gms.internal.measurement.zzln, com.google.android.gms.internal.measurement.zzkw, com.google.android.gms.internal.measurement.zzmh, com.google.android.gms.internal.measurement.zzjq, com.google.android.gms.internal.measurement.zzld):com.google.android.gms.internal.measurement.zzll");
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
            StringBuilder sb = new StringBuilder(C0033h.m8890g(String.valueOf(str).length(), 40, name.length(), String.valueOf(arrays).length()));
            C0082b.m8749m(sb, "Field ", str, " for ", name);
            throw new RuntimeException(C0082b.m8754h(sb, " not found. Known fields are ", arrays));
        }
    }

    private final void zzo(T t, T t2, int i) {
        long zzA = zzA(i) & 1048575;
        if (!zzK(t2, i)) {
            return;
        }
        Object zzn = zzmr.zzn(t, zzA);
        Object zzn2 = zzmr.zzn(t2, zzA);
        if (zzn != null && zzn2 != null) {
            zzmr.zzo(t, zzA, zzkl.zzi(zzn, zzn2));
            zzL(t, i);
        } else if (zzn2 == null) {
        } else {
            zzmr.zzo(t, zzA, zzn2);
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
        Object zzn = zzM(t, i2, i) ? zzmr.zzn(t, j) : null;
        Object zzn2 = zzmr.zzn(t2, j);
        if (zzn != null && zzn2 != null) {
            zzmr.zzo(t, j, zzkl.zzi(zzn, zzn2));
            zzN(t, i2, i);
        } else if (zzn2 == null) {
        } else {
            zzmr.zzo(t, j, zzn2);
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
        int i13;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        Unsafe unsafe = zzb;
        int i19 = 0;
        int i20 = 0;
        int i21 = 0;
        int i22 = 1048575;
        while (true) {
            int i23 = i22;
            if (i19 >= this.zzc.length) {
                zzmh<?, ?> zzmhVar = this.zzn;
                int zzh = zzmhVar.zzh(zzmhVar.zzd(t));
                if (!this.zzh) {
                    return i20 + zzh;
                }
                this.zzo.zzb(t);
                throw null;
            }
            int zzA = zzA(i19);
            int i24 = this.zzc[i19];
            int zzC = zzC(zzA);
            if (zzC <= 17) {
                int i25 = this.zzc[i19 + 2];
                int i26 = i25 & 1048575;
                int i27 = 1 << (i25 >>> 20);
                i = i23;
                i2 = i27;
                if (i26 != i23) {
                    i21 = unsafe.getInt(t, i26);
                    i = i26;
                    i2 = i27;
                }
            } else {
                i2 = 0;
                i = i23;
            }
            long j = zzA & 1048575;
            switch (zzC) {
                case 0:
                    i3 = i20;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        i4 = zzjk.zzw(i24 << 3);
                        i5 = i4 + 8;
                        i3 = i20 + i5;
                        break;
                    }
                case 1:
                    i3 = i20;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        i6 = zzjk.zzw(i24 << 3);
                        i5 = i6 + 4;
                        i3 = i20 + i5;
                        break;
                    }
                case 2:
                    i3 = i20;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        long j2 = unsafe.getLong(t, j);
                        i8 = zzjk.zzw(i24 << 3);
                        i7 = zzjk.zzx(j2);
                        i3 = i7 + i8 + i20;
                        break;
                    }
                case 3:
                    i3 = i20;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        long j3 = unsafe.getLong(t, j);
                        i8 = zzjk.zzw(i24 << 3);
                        i7 = zzjk.zzx(j3);
                        i3 = i7 + i8 + i20;
                        break;
                    }
                case 4:
                    i3 = i20;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        int i28 = unsafe.getInt(t, j);
                        i9 = zzjk.zzw(i24 << 3);
                        i10 = zzjk.zzv(i28);
                        i5 = i10 + i9;
                        i3 = i20 + i5;
                        break;
                    }
                case 5:
                    i3 = i20;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        i4 = zzjk.zzw(i24 << 3);
                        i5 = i4 + 8;
                        i3 = i20 + i5;
                        break;
                    }
                case 6:
                    i3 = i20;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        i6 = zzjk.zzw(i24 << 3);
                        i5 = i6 + 4;
                        i3 = i20 + i5;
                        break;
                    }
                case 7:
                    i3 = i20;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        i11 = zzjk.zzw(i24 << 3);
                        i5 = i11 + 1;
                        i3 = i20 + i5;
                        break;
                    }
                case 8:
                    i3 = i20;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        Object object = unsafe.getObject(t, j);
                        if (!(object instanceof zzjd)) {
                            i9 = zzjk.zzw(i24 << 3);
                            i10 = zzjk.zzy((String) object);
                            i5 = i10 + i9;
                            i3 = i20 + i5;
                            break;
                        } else {
                            i14 = zzjk.zzw(i24 << 3);
                            i15 = ((zzjd) object).zzc();
                            i13 = zzjk.zzw(i15);
                            i12 = i13 + i15 + i14;
                            i3 = i20 + i12;
                            break;
                        }
                    }
                case 9:
                    i3 = i20;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        i5 = zzlv.zzw(i24, unsafe.getObject(t, j), zzv(i19));
                        i3 = i20 + i5;
                        break;
                    }
                case 10:
                    i3 = i20;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        zzjd zzjdVar = (zzjd) unsafe.getObject(t, j);
                        i14 = zzjk.zzw(i24 << 3);
                        i15 = zzjdVar.zzc();
                        i13 = zzjk.zzw(i15);
                        i12 = i13 + i15 + i14;
                        i3 = i20 + i12;
                        break;
                    }
                case 11:
                    i3 = i20;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        int i29 = unsafe.getInt(t, j);
                        i9 = zzjk.zzw(i24 << 3);
                        i10 = zzjk.zzw(i29);
                        i5 = i10 + i9;
                        i3 = i20 + i5;
                        break;
                    }
                case 12:
                    i3 = i20;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        int i30 = unsafe.getInt(t, j);
                        i9 = zzjk.zzw(i24 << 3);
                        i10 = zzjk.zzv(i30);
                        i5 = i10 + i9;
                        i3 = i20 + i5;
                        break;
                    }
                case 13:
                    i3 = i20;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        i6 = zzjk.zzw(i24 << 3);
                        i5 = i6 + 4;
                        i3 = i20 + i5;
                        break;
                    }
                case 14:
                    i3 = i20;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        i4 = zzjk.zzw(i24 << 3);
                        i5 = i4 + 8;
                        i3 = i20 + i5;
                        break;
                    }
                case 15:
                    i3 = i20;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        int i31 = unsafe.getInt(t, j);
                        i9 = zzjk.zzw(i24 << 3);
                        i10 = zzjk.zzw((i31 >> 31) ^ (i31 + i31));
                        i5 = i10 + i9;
                        i3 = i20 + i5;
                        break;
                    }
                case 16:
                    i3 = i20;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        long j4 = unsafe.getLong(t, j);
                        i9 = zzjk.zzw(i24 << 3);
                        i10 = zzjk.zzx((j4 >> 63) ^ (j4 + j4));
                        i5 = i10 + i9;
                        i3 = i20 + i5;
                        break;
                    }
                case 17:
                    i3 = i20;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        i5 = zzjk.zzE(i24, (zzli) unsafe.getObject(t, j), zzv(i19));
                        i3 = i20 + i5;
                        break;
                    }
                case 18:
                    i5 = zzlv.zzs(i24, (List) unsafe.getObject(t, j), false);
                    i3 = i20 + i5;
                    break;
                case 19:
                    i5 = zzlv.zzq(i24, (List) unsafe.getObject(t, j), false);
                    i3 = i20 + i5;
                    break;
                case 20:
                    i5 = zzlv.zzc(i24, (List) unsafe.getObject(t, j), false);
                    i3 = i20 + i5;
                    break;
                case 21:
                    i5 = zzlv.zze(i24, (List) unsafe.getObject(t, j), false);
                    i3 = i20 + i5;
                    break;
                case 22:
                    i5 = zzlv.zzk(i24, (List) unsafe.getObject(t, j), false);
                    i3 = i20 + i5;
                    break;
                case 23:
                    i5 = zzlv.zzs(i24, (List) unsafe.getObject(t, j), false);
                    i3 = i20 + i5;
                    break;
                case 24:
                    i5 = zzlv.zzq(i24, (List) unsafe.getObject(t, j), false);
                    i3 = i20 + i5;
                    break;
                case 25:
                    i5 = zzlv.zzu(i24, (List) unsafe.getObject(t, j), false);
                    i3 = i20 + i5;
                    break;
                case 26:
                    i5 = zzlv.zzv(i24, (List) unsafe.getObject(t, j));
                    i3 = i20 + i5;
                    break;
                case 27:
                    i5 = zzlv.zzx(i24, (List) unsafe.getObject(t, j), zzv(i19));
                    i3 = i20 + i5;
                    break;
                case 28:
                    i5 = zzlv.zzy(i24, (List) unsafe.getObject(t, j));
                    i3 = i20 + i5;
                    break;
                case 29:
                    i5 = zzlv.zzm(i24, (List) unsafe.getObject(t, j), false);
                    i3 = i20 + i5;
                    break;
                case C3681R.styleable.AppCompatTheme_actionModeTheme /* 30 */:
                    i5 = zzlv.zzi(i24, (List) unsafe.getObject(t, j), false);
                    i3 = i20 + i5;
                    break;
                case C3681R.styleable.AppCompatTheme_actionModeWebSearchDrawable /* 31 */:
                    i5 = zzlv.zzq(i24, (List) unsafe.getObject(t, j), false);
                    i3 = i20 + i5;
                    break;
                case C3681R.styleable.AppCompatTheme_actionOverflowButtonStyle /* 32 */:
                    i5 = zzlv.zzs(i24, (List) unsafe.getObject(t, j), false);
                    i3 = i20 + i5;
                    break;
                case C3681R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                    i5 = zzlv.zzo(i24, (List) unsafe.getObject(t, j), false);
                    i3 = i20 + i5;
                    break;
                case C3681R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                    i5 = zzlv.zzg(i24, (List) unsafe.getObject(t, j), false);
                    i3 = i20 + i5;
                    break;
                case C3681R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                    int zzr = zzlv.zzr((List) unsafe.getObject(t, j));
                    i3 = i20;
                    if (zzr <= 0) {
                        break;
                    } else {
                        i17 = zzjk.zzu(i24);
                        i16 = zzjk.zzw(zzr);
                        i18 = zzr;
                        i12 = i16 + i17 + i18;
                        i3 = i20 + i12;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                    int zzp = zzlv.zzp((List) unsafe.getObject(t, j));
                    i3 = i20;
                    if (zzp <= 0) {
                        break;
                    } else {
                        int zzu = zzjk.zzu(i24);
                        i16 = zzjk.zzw(zzp);
                        i18 = zzp;
                        i17 = zzu;
                        i12 = i16 + i17 + i18;
                        i3 = i20 + i12;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                    int zzb2 = zzlv.zzb((List) unsafe.getObject(t, j));
                    i3 = i20;
                    if (zzb2 <= 0) {
                        break;
                    } else {
                        int zzu2 = zzjk.zzu(i24);
                        i16 = zzjk.zzw(zzb2);
                        i18 = zzb2;
                        i17 = zzu2;
                        i12 = i16 + i17 + i18;
                        i3 = i20 + i12;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                    int zzd = zzlv.zzd((List) unsafe.getObject(t, j));
                    i3 = i20;
                    if (zzd <= 0) {
                        break;
                    } else {
                        int zzu3 = zzjk.zzu(i24);
                        i16 = zzjk.zzw(zzd);
                        i18 = zzd;
                        i17 = zzu3;
                        i12 = i16 + i17 + i18;
                        i3 = i20 + i12;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                    int zzj = zzlv.zzj((List) unsafe.getObject(t, j));
                    i3 = i20;
                    if (zzj <= 0) {
                        break;
                    } else {
                        int zzu4 = zzjk.zzu(i24);
                        i16 = zzjk.zzw(zzj);
                        i18 = zzj;
                        i17 = zzu4;
                        i12 = i16 + i17 + i18;
                        i3 = i20 + i12;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                    int zzr2 = zzlv.zzr((List) unsafe.getObject(t, j));
                    i3 = i20;
                    if (zzr2 <= 0) {
                        break;
                    } else {
                        int zzu5 = zzjk.zzu(i24);
                        i16 = zzjk.zzw(zzr2);
                        i18 = zzr2;
                        i17 = zzu5;
                        i12 = i16 + i17 + i18;
                        i3 = i20 + i12;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                    int zzp2 = zzlv.zzp((List) unsafe.getObject(t, j));
                    i3 = i20;
                    if (zzp2 <= 0) {
                        break;
                    } else {
                        int zzu6 = zzjk.zzu(i24);
                        i16 = zzjk.zzw(zzp2);
                        i18 = zzp2;
                        i17 = zzu6;
                        i12 = i16 + i17 + i18;
                        i3 = i20 + i12;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                    int zzt = zzlv.zzt((List) unsafe.getObject(t, j));
                    i3 = i20;
                    if (zzt <= 0) {
                        break;
                    } else {
                        int zzu7 = zzjk.zzu(i24);
                        i16 = zzjk.zzw(zzt);
                        i18 = zzt;
                        i17 = zzu7;
                        i12 = i16 + i17 + i18;
                        i3 = i20 + i12;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                    int zzl = zzlv.zzl((List) unsafe.getObject(t, j));
                    i3 = i20;
                    if (zzl <= 0) {
                        break;
                    } else {
                        int zzu8 = zzjk.zzu(i24);
                        i16 = zzjk.zzw(zzl);
                        i18 = zzl;
                        i17 = zzu8;
                        i12 = i16 + i17 + i18;
                        i3 = i20 + i12;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                    int zzh2 = zzlv.zzh((List) unsafe.getObject(t, j));
                    i3 = i20;
                    if (zzh2 <= 0) {
                        break;
                    } else {
                        int zzu9 = zzjk.zzu(i24);
                        i16 = zzjk.zzw(zzh2);
                        i18 = zzh2;
                        i17 = zzu9;
                        i12 = i16 + i17 + i18;
                        i3 = i20 + i12;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                    int zzp3 = zzlv.zzp((List) unsafe.getObject(t, j));
                    i3 = i20;
                    if (zzp3 <= 0) {
                        break;
                    } else {
                        int zzu10 = zzjk.zzu(i24);
                        i16 = zzjk.zzw(zzp3);
                        i18 = zzp3;
                        i17 = zzu10;
                        i12 = i16 + i17 + i18;
                        i3 = i20 + i12;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                    int zzr3 = zzlv.zzr((List) unsafe.getObject(t, j));
                    i3 = i20;
                    if (zzr3 <= 0) {
                        break;
                    } else {
                        int zzu11 = zzjk.zzu(i24);
                        i16 = zzjk.zzw(zzr3);
                        i18 = zzr3;
                        i17 = zzu11;
                        i12 = i16 + i17 + i18;
                        i3 = i20 + i12;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                    int zzn = zzlv.zzn((List) unsafe.getObject(t, j));
                    i3 = i20;
                    if (zzn <= 0) {
                        break;
                    } else {
                        int zzu12 = zzjk.zzu(i24);
                        i16 = zzjk.zzw(zzn);
                        i18 = zzn;
                        i17 = zzu12;
                        i12 = i16 + i17 + i18;
                        i3 = i20 + i12;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                    int zzf = zzlv.zzf((List) unsafe.getObject(t, j));
                    i3 = i20;
                    if (zzf <= 0) {
                        break;
                    } else {
                        int zzu13 = zzjk.zzu(i24);
                        i16 = zzjk.zzw(zzf);
                        i18 = zzf;
                        i17 = zzu13;
                        i12 = i16 + i17 + i18;
                        i3 = i20 + i12;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                    i5 = zzlv.zzz(i24, (List) unsafe.getObject(t, j), zzv(i19));
                    i3 = i20 + i5;
                    break;
                case C3681R.styleable.AppCompatTheme_colorAccent /* 50 */:
                    zzld.zza(i24, unsafe.getObject(t, j), zzw(i19));
                    i3 = i20;
                    break;
                case 51:
                    i3 = i20;
                    if (!zzM(t, i24, i19)) {
                        break;
                    } else {
                        i4 = zzjk.zzw(i24 << 3);
                        i5 = i4 + 8;
                        i3 = i20 + i5;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                    i3 = i20;
                    if (!zzM(t, i24, i19)) {
                        break;
                    } else {
                        i6 = zzjk.zzw(i24 << 3);
                        i5 = i6 + 4;
                        i3 = i20 + i5;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                    i3 = i20;
                    if (!zzM(t, i24, i19)) {
                        break;
                    } else {
                        long zzG = zzG(t, j);
                        i8 = zzjk.zzw(i24 << 3);
                        i7 = zzjk.zzx(zzG);
                        i3 = i7 + i8 + i20;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                    i3 = i20;
                    if (!zzM(t, i24, i19)) {
                        break;
                    } else {
                        long zzG2 = zzG(t, j);
                        i8 = zzjk.zzw(i24 << 3);
                        i7 = zzjk.zzx(zzG2);
                        i3 = i7 + i8 + i20;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                    i3 = i20;
                    if (!zzM(t, i24, i19)) {
                        break;
                    } else {
                        int zzF = zzF(t, j);
                        i9 = zzjk.zzw(i24 << 3);
                        i10 = zzjk.zzv(zzF);
                        i5 = i10 + i9;
                        i3 = i20 + i5;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorError /* 56 */:
                    i3 = i20;
                    if (!zzM(t, i24, i19)) {
                        break;
                    } else {
                        i4 = zzjk.zzw(i24 << 3);
                        i5 = i4 + 8;
                        i3 = i20 + i5;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                    i3 = i20;
                    if (!zzM(t, i24, i19)) {
                        break;
                    } else {
                        i6 = zzjk.zzw(i24 << 3);
                        i5 = i6 + 4;
                        i3 = i20 + i5;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                    i3 = i20;
                    if (!zzM(t, i24, i19)) {
                        break;
                    } else {
                        i11 = zzjk.zzw(i24 << 3);
                        i5 = i11 + 1;
                        i3 = i20 + i5;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                    i3 = i20;
                    if (!zzM(t, i24, i19)) {
                        break;
                    } else {
                        Object object2 = unsafe.getObject(t, j);
                        if (!(object2 instanceof zzjd)) {
                            i9 = zzjk.zzw(i24 << 3);
                            i10 = zzjk.zzy((String) object2);
                            i5 = i10 + i9;
                            i3 = i20 + i5;
                            break;
                        } else {
                            i14 = zzjk.zzw(i24 << 3);
                            i15 = ((zzjd) object2).zzc();
                            i13 = zzjk.zzw(i15);
                            i12 = i13 + i15 + i14;
                            i3 = i20 + i12;
                            break;
                        }
                    }
                case C3681R.styleable.AppCompatTheme_controlBackground /* 60 */:
                    i3 = i20;
                    if (!zzM(t, i24, i19)) {
                        break;
                    } else {
                        i5 = zzlv.zzw(i24, unsafe.getObject(t, j), zzv(i19));
                        i3 = i20 + i5;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                    i3 = i20;
                    if (!zzM(t, i24, i19)) {
                        break;
                    } else {
                        zzjd zzjdVar2 = (zzjd) unsafe.getObject(t, j);
                        i14 = zzjk.zzw(i24 << 3);
                        i15 = zzjdVar2.zzc();
                        i13 = zzjk.zzw(i15);
                        i12 = i13 + i15 + i14;
                        i3 = i20 + i12;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                    i3 = i20;
                    if (!zzM(t, i24, i19)) {
                        break;
                    } else {
                        int zzF2 = zzF(t, j);
                        i9 = zzjk.zzw(i24 << 3);
                        i10 = zzjk.zzw(zzF2);
                        i5 = i10 + i9;
                        i3 = i20 + i5;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                    i3 = i20;
                    if (!zzM(t, i24, i19)) {
                        break;
                    } else {
                        int zzF3 = zzF(t, j);
                        i9 = zzjk.zzw(i24 << 3);
                        i10 = zzjk.zzv(zzF3);
                        i5 = i10 + i9;
                        i3 = i20 + i5;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dividerHorizontal /* 64 */:
                    i3 = i20;
                    if (!zzM(t, i24, i19)) {
                        break;
                    } else {
                        i6 = zzjk.zzw(i24 << 3);
                        i5 = i6 + 4;
                        i3 = i20 + i5;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dividerVertical /* 65 */:
                    i3 = i20;
                    if (!zzM(t, i24, i19)) {
                        break;
                    } else {
                        i4 = zzjk.zzw(i24 << 3);
                        i5 = i4 + 8;
                        i3 = i20 + i5;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                    i3 = i20;
                    if (!zzM(t, i24, i19)) {
                        break;
                    } else {
                        int zzF4 = zzF(t, j);
                        i9 = zzjk.zzw(i24 << 3);
                        i10 = zzjk.zzw((zzF4 >> 31) ^ (zzF4 + zzF4));
                        i5 = i10 + i9;
                        i3 = i20 + i5;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                    i3 = i20;
                    if (!zzM(t, i24, i19)) {
                        break;
                    } else {
                        long zzG3 = zzG(t, j);
                        i9 = zzjk.zzw(i24 << 3);
                        i10 = zzjk.zzx((zzG3 >> 63) ^ (zzG3 + zzG3));
                        i5 = i10 + i9;
                        i3 = i20 + i5;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                    i3 = i20;
                    if (!zzM(t, i24, i19)) {
                        break;
                    } else {
                        i5 = zzjk.zzE(i24, (zzli) unsafe.getObject(t, j), zzv(i19));
                        i3 = i20 + i5;
                        break;
                    }
                default:
                    i3 = i20;
                    break;
            }
            i19 += 3;
            i20 = i3;
            i22 = i;
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
        Unsafe unsafe = zzb;
        int i17 = 0;
        int i18 = 0;
        while (true) {
            int i19 = i18;
            if (i17 >= this.zzc.length) {
                zzmh<?, ?> zzmhVar = this.zzn;
                return i19 + zzmhVar.zzh(zzmhVar.zzd(t));
            }
            int zzA = zzA(i17);
            int zzC = zzC(zzA);
            int i20 = this.zzc[i17];
            long j = zzA & 1048575;
            if (zzC >= zzjv.DOUBLE_LIST_PACKED.zza() && zzC <= zzjv.SINT64_LIST_PACKED.zza()) {
                int i21 = this.zzc[i17 + 2];
            }
            switch (zzC) {
                case 0:
                    i = i19;
                    if (zzK(t, i17)) {
                        i2 = zzjk.zzw(i20 << 3);
                        i3 = i2 + 8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 1:
                    i = i19;
                    if (zzK(t, i17)) {
                        i4 = zzjk.zzw(i20 << 3);
                        i3 = i4 + 4;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 2:
                    i = i19;
                    if (zzK(t, i17)) {
                        long zzf = zzmr.zzf(t, j);
                        i6 = zzjk.zzw(i20 << 3);
                        i5 = zzjk.zzx(zzf);
                        i3 = i5 + i6;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 3:
                    i = i19;
                    if (zzK(t, i17)) {
                        long zzf2 = zzmr.zzf(t, j);
                        i6 = zzjk.zzw(i20 << 3);
                        i5 = zzjk.zzx(zzf2);
                        i3 = i5 + i6;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 4:
                    i = i19;
                    if (zzK(t, i17)) {
                        int zzd = zzmr.zzd(t, j);
                        i8 = zzjk.zzw(i20 << 3);
                        i7 = zzjk.zzv(zzd);
                        i3 = i7 + i8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 5:
                    i = i19;
                    if (zzK(t, i17)) {
                        i2 = zzjk.zzw(i20 << 3);
                        i3 = i2 + 8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 6:
                    i = i19;
                    if (zzK(t, i17)) {
                        i4 = zzjk.zzw(i20 << 3);
                        i3 = i4 + 4;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 7:
                    i = i19;
                    if (zzK(t, i17)) {
                        i9 = zzjk.zzw(i20 << 3);
                        i3 = i9 + 1;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 8:
                    i = i19;
                    if (zzK(t, i17)) {
                        Object zzn = zzmr.zzn(t, j);
                        if (!(zzn instanceof zzjd)) {
                            i8 = zzjk.zzw(i20 << 3);
                            i7 = zzjk.zzy((String) zzn);
                            i3 = i7 + i8;
                            break;
                        } else {
                            i13 = zzjk.zzw(i20 << 3);
                            i12 = ((zzjd) zzn).zzc();
                            i11 = zzjk.zzw(i12);
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
                    if (zzK(t, i17)) {
                        i3 = zzlv.zzw(i20, zzmr.zzn(t, j), zzv(i17));
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 10:
                    i = i19;
                    if (zzK(t, i17)) {
                        zzjd zzjdVar = (zzjd) zzmr.zzn(t, j);
                        i13 = zzjk.zzw(i20 << 3);
                        i12 = zzjdVar.zzc();
                        i11 = zzjk.zzw(i12);
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
                    if (zzK(t, i17)) {
                        int zzd2 = zzmr.zzd(t, j);
                        i8 = zzjk.zzw(i20 << 3);
                        i7 = zzjk.zzw(zzd2);
                        i3 = i7 + i8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 12:
                    i = i19;
                    if (zzK(t, i17)) {
                        int zzd3 = zzmr.zzd(t, j);
                        i8 = zzjk.zzw(i20 << 3);
                        i7 = zzjk.zzv(zzd3);
                        i3 = i7 + i8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 13:
                    i = i19;
                    if (zzK(t, i17)) {
                        i4 = zzjk.zzw(i20 << 3);
                        i3 = i4 + 4;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 14:
                    i = i19;
                    if (zzK(t, i17)) {
                        i2 = zzjk.zzw(i20 << 3);
                        i3 = i2 + 8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 15:
                    i = i19;
                    if (zzK(t, i17)) {
                        int zzd4 = zzmr.zzd(t, j);
                        i8 = zzjk.zzw(i20 << 3);
                        i7 = zzjk.zzw((zzd4 >> 31) ^ (zzd4 + zzd4));
                        i3 = i7 + i8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 16:
                    i = i19;
                    if (zzK(t, i17)) {
                        long zzf3 = zzmr.zzf(t, j);
                        i8 = zzjk.zzw(i20 << 3);
                        i7 = zzjk.zzx((zzf3 >> 63) ^ (zzf3 + zzf3));
                        i3 = i7 + i8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 17:
                    i = i19;
                    if (zzK(t, i17)) {
                        i3 = zzjk.zzE(i20, (zzli) zzmr.zzn(t, j), zzv(i17));
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 18:
                    i3 = zzlv.zzs(i20, (List) zzmr.zzn(t, j), false);
                    break;
                case 19:
                    i3 = zzlv.zzq(i20, (List) zzmr.zzn(t, j), false);
                    break;
                case 20:
                    i3 = zzlv.zzc(i20, (List) zzmr.zzn(t, j), false);
                    break;
                case 21:
                    i3 = zzlv.zze(i20, (List) zzmr.zzn(t, j), false);
                    break;
                case 22:
                    i3 = zzlv.zzk(i20, (List) zzmr.zzn(t, j), false);
                    break;
                case 23:
                    i3 = zzlv.zzs(i20, (List) zzmr.zzn(t, j), false);
                    break;
                case 24:
                    i3 = zzlv.zzq(i20, (List) zzmr.zzn(t, j), false);
                    break;
                case 25:
                    i3 = zzlv.zzu(i20, (List) zzmr.zzn(t, j), false);
                    break;
                case 26:
                    i3 = zzlv.zzv(i20, (List) zzmr.zzn(t, j));
                    break;
                case 27:
                    i3 = zzlv.zzx(i20, (List) zzmr.zzn(t, j), zzv(i17));
                    break;
                case 28:
                    i3 = zzlv.zzy(i20, (List) zzmr.zzn(t, j));
                    break;
                case 29:
                    i3 = zzlv.zzm(i20, (List) zzmr.zzn(t, j), false);
                    break;
                case C3681R.styleable.AppCompatTheme_actionModeTheme /* 30 */:
                    i3 = zzlv.zzi(i20, (List) zzmr.zzn(t, j), false);
                    break;
                case C3681R.styleable.AppCompatTheme_actionModeWebSearchDrawable /* 31 */:
                    i3 = zzlv.zzq(i20, (List) zzmr.zzn(t, j), false);
                    break;
                case C3681R.styleable.AppCompatTheme_actionOverflowButtonStyle /* 32 */:
                    i3 = zzlv.zzs(i20, (List) zzmr.zzn(t, j), false);
                    break;
                case C3681R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                    i3 = zzlv.zzo(i20, (List) zzmr.zzn(t, j), false);
                    break;
                case C3681R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                    i3 = zzlv.zzg(i20, (List) zzmr.zzn(t, j), false);
                    break;
                case C3681R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                    int zzr = zzlv.zzr((List) unsafe.getObject(t, j));
                    i = i19;
                    if (zzr > 0) {
                        i16 = zzjk.zzu(i20);
                        i14 = zzjk.zzw(zzr);
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
                case C3681R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                    int zzp = zzlv.zzp((List) unsafe.getObject(t, j));
                    i = i19;
                    if (zzp > 0) {
                        int zzu = zzjk.zzu(i20);
                        i14 = zzjk.zzw(zzp);
                        i15 = zzp;
                        i16 = zzu;
                        i10 = i14 + i16 + i15;
                        i = i19 + i10;
                        i17 += 3;
                        i18 = i;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                    int zzb2 = zzlv.zzb((List) unsafe.getObject(t, j));
                    i = i19;
                    if (zzb2 > 0) {
                        int zzu2 = zzjk.zzu(i20);
                        i14 = zzjk.zzw(zzb2);
                        i15 = zzb2;
                        i16 = zzu2;
                        i10 = i14 + i16 + i15;
                        i = i19 + i10;
                        i17 += 3;
                        i18 = i;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                    int zzd5 = zzlv.zzd((List) unsafe.getObject(t, j));
                    i = i19;
                    if (zzd5 > 0) {
                        int zzu3 = zzjk.zzu(i20);
                        i14 = zzjk.zzw(zzd5);
                        i15 = zzd5;
                        i16 = zzu3;
                        i10 = i14 + i16 + i15;
                        i = i19 + i10;
                        i17 += 3;
                        i18 = i;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                    int zzj = zzlv.zzj((List) unsafe.getObject(t, j));
                    i = i19;
                    if (zzj > 0) {
                        int zzu4 = zzjk.zzu(i20);
                        i14 = zzjk.zzw(zzj);
                        i15 = zzj;
                        i16 = zzu4;
                        i10 = i14 + i16 + i15;
                        i = i19 + i10;
                        i17 += 3;
                        i18 = i;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                    int zzr2 = zzlv.zzr((List) unsafe.getObject(t, j));
                    i = i19;
                    if (zzr2 > 0) {
                        int zzu5 = zzjk.zzu(i20);
                        i14 = zzjk.zzw(zzr2);
                        i15 = zzr2;
                        i16 = zzu5;
                        i10 = i14 + i16 + i15;
                        i = i19 + i10;
                        i17 += 3;
                        i18 = i;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                    int zzp2 = zzlv.zzp((List) unsafe.getObject(t, j));
                    i = i19;
                    if (zzp2 > 0) {
                        int zzu6 = zzjk.zzu(i20);
                        i14 = zzjk.zzw(zzp2);
                        i15 = zzp2;
                        i16 = zzu6;
                        i10 = i14 + i16 + i15;
                        i = i19 + i10;
                        i17 += 3;
                        i18 = i;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                    int zzt = zzlv.zzt((List) unsafe.getObject(t, j));
                    i = i19;
                    if (zzt > 0) {
                        int zzu7 = zzjk.zzu(i20);
                        i14 = zzjk.zzw(zzt);
                        i15 = zzt;
                        i16 = zzu7;
                        i10 = i14 + i16 + i15;
                        i = i19 + i10;
                        i17 += 3;
                        i18 = i;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                    int zzl = zzlv.zzl((List) unsafe.getObject(t, j));
                    i = i19;
                    if (zzl > 0) {
                        int zzu8 = zzjk.zzu(i20);
                        i14 = zzjk.zzw(zzl);
                        i15 = zzl;
                        i16 = zzu8;
                        i10 = i14 + i16 + i15;
                        i = i19 + i10;
                        i17 += 3;
                        i18 = i;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                    int zzh = zzlv.zzh((List) unsafe.getObject(t, j));
                    i = i19;
                    if (zzh > 0) {
                        int zzu9 = zzjk.zzu(i20);
                        i14 = zzjk.zzw(zzh);
                        i15 = zzh;
                        i16 = zzu9;
                        i10 = i14 + i16 + i15;
                        i = i19 + i10;
                        i17 += 3;
                        i18 = i;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                    int zzp3 = zzlv.zzp((List) unsafe.getObject(t, j));
                    i = i19;
                    if (zzp3 > 0) {
                        int zzu10 = zzjk.zzu(i20);
                        i14 = zzjk.zzw(zzp3);
                        i15 = zzp3;
                        i16 = zzu10;
                        i10 = i14 + i16 + i15;
                        i = i19 + i10;
                        i17 += 3;
                        i18 = i;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                    int zzr3 = zzlv.zzr((List) unsafe.getObject(t, j));
                    i = i19;
                    if (zzr3 > 0) {
                        int zzu11 = zzjk.zzu(i20);
                        i14 = zzjk.zzw(zzr3);
                        i15 = zzr3;
                        i16 = zzu11;
                        i10 = i14 + i16 + i15;
                        i = i19 + i10;
                        i17 += 3;
                        i18 = i;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                    int zzn2 = zzlv.zzn((List) unsafe.getObject(t, j));
                    i = i19;
                    if (zzn2 > 0) {
                        int zzu12 = zzjk.zzu(i20);
                        i14 = zzjk.zzw(zzn2);
                        i15 = zzn2;
                        i16 = zzu12;
                        i10 = i14 + i16 + i15;
                        i = i19 + i10;
                        i17 += 3;
                        i18 = i;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                    int zzf4 = zzlv.zzf((List) unsafe.getObject(t, j));
                    i = i19;
                    if (zzf4 > 0) {
                        int zzu13 = zzjk.zzu(i20);
                        i14 = zzjk.zzw(zzf4);
                        i15 = zzf4;
                        i16 = zzu13;
                        i10 = i14 + i16 + i15;
                        i = i19 + i10;
                        i17 += 3;
                        i18 = i;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                    i3 = zzlv.zzz(i20, (List) zzmr.zzn(t, j), zzv(i17));
                    break;
                case C3681R.styleable.AppCompatTheme_colorAccent /* 50 */:
                    zzld.zza(i20, zzmr.zzn(t, j), zzw(i17));
                    i = i19;
                    continue;
                    i17 += 3;
                    i18 = i;
                case 51:
                    i = i19;
                    if (zzM(t, i20, i17)) {
                        i2 = zzjk.zzw(i20 << 3);
                        i3 = i2 + 8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                    i = i19;
                    if (zzM(t, i20, i17)) {
                        i4 = zzjk.zzw(i20 << 3);
                        i3 = i4 + 4;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                    i = i19;
                    if (zzM(t, i20, i17)) {
                        long zzG = zzG(t, j);
                        i6 = zzjk.zzw(i20 << 3);
                        i5 = zzjk.zzx(zzG);
                        i3 = i5 + i6;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                    i = i19;
                    if (zzM(t, i20, i17)) {
                        long zzG2 = zzG(t, j);
                        i6 = zzjk.zzw(i20 << 3);
                        i5 = zzjk.zzx(zzG2);
                        i3 = i5 + i6;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                    i = i19;
                    if (zzM(t, i20, i17)) {
                        int zzF = zzF(t, j);
                        i8 = zzjk.zzw(i20 << 3);
                        i7 = zzjk.zzv(zzF);
                        i3 = i7 + i8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_colorError /* 56 */:
                    i = i19;
                    if (zzM(t, i20, i17)) {
                        i2 = zzjk.zzw(i20 << 3);
                        i3 = i2 + 8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                    i = i19;
                    if (zzM(t, i20, i17)) {
                        i4 = zzjk.zzw(i20 << 3);
                        i3 = i4 + 4;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                    i = i19;
                    if (zzM(t, i20, i17)) {
                        i9 = zzjk.zzw(i20 << 3);
                        i3 = i9 + 1;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                    i = i19;
                    if (zzM(t, i20, i17)) {
                        Object zzn3 = zzmr.zzn(t, j);
                        if (!(zzn3 instanceof zzjd)) {
                            i8 = zzjk.zzw(i20 << 3);
                            i7 = zzjk.zzy((String) zzn3);
                            i3 = i7 + i8;
                            break;
                        } else {
                            i13 = zzjk.zzw(i20 << 3);
                            i12 = ((zzjd) zzn3).zzc();
                            i11 = zzjk.zzw(i12);
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
                case C3681R.styleable.AppCompatTheme_controlBackground /* 60 */:
                    i = i19;
                    if (zzM(t, i20, i17)) {
                        i3 = zzlv.zzw(i20, zzmr.zzn(t, j), zzv(i17));
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                    i = i19;
                    if (zzM(t, i20, i17)) {
                        zzjd zzjdVar2 = (zzjd) zzmr.zzn(t, j);
                        i13 = zzjk.zzw(i20 << 3);
                        i12 = zzjdVar2.zzc();
                        i11 = zzjk.zzw(i12);
                        i10 = i11 + i12 + i13;
                        i = i19 + i10;
                        i17 += 3;
                        i18 = i;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                    i = i19;
                    if (zzM(t, i20, i17)) {
                        int zzF2 = zzF(t, j);
                        i8 = zzjk.zzw(i20 << 3);
                        i7 = zzjk.zzw(zzF2);
                        i3 = i7 + i8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                    i = i19;
                    if (zzM(t, i20, i17)) {
                        int zzF3 = zzF(t, j);
                        i8 = zzjk.zzw(i20 << 3);
                        i7 = zzjk.zzv(zzF3);
                        i3 = i7 + i8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_dividerHorizontal /* 64 */:
                    i = i19;
                    if (zzM(t, i20, i17)) {
                        i4 = zzjk.zzw(i20 << 3);
                        i3 = i4 + 4;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_dividerVertical /* 65 */:
                    i = i19;
                    if (zzM(t, i20, i17)) {
                        i2 = zzjk.zzw(i20 << 3);
                        i3 = i2 + 8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                    i = i19;
                    if (zzM(t, i20, i17)) {
                        int zzF4 = zzF(t, j);
                        i8 = zzjk.zzw(i20 << 3);
                        i7 = zzjk.zzw((zzF4 >> 31) ^ (zzF4 + zzF4));
                        i3 = i7 + i8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                    i = i19;
                    if (zzM(t, i20, i17)) {
                        long zzG3 = zzG(t, j);
                        i8 = zzjk.zzw(i20 << 3);
                        i7 = zzjk.zzx((zzG3 >> 63) ^ (zzG3 + zzG3));
                        i3 = i7 + i8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                    i = i19;
                    if (zzM(t, i20, i17)) {
                        i3 = zzjk.zzE(i20, (zzli) zzmr.zzn(t, j), zzv(i17));
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
            i = i19 + i3;
            i17 += 3;
            i18 = i;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x0404  */
    /* JADX WARN: Removed duplicated region for block: B:321:0x093f A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0317  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:115:0x03f6 -> B:116:0x03fb). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:77:0x030c -> B:78:0x0311). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zzs(T r9, byte[] r10, int r11, int r12, int r13, int r14, int r15, int r16, long r17, int r19, long r20, com.google.android.gms.internal.measurement.zzir r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2372
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzll.zzs(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, com.google.android.gms.internal.measurement.zzir):int");
    }

    private final <K, V> int zzt(T t, byte[] bArr, int i, int i2, int i3, long j, zzir zzirVar) throws IOException {
        Unsafe unsafe = zzb;
        Object zzw = zzw(i3);
        Object object = unsafe.getObject(t, j);
        if (!((zzlc) object).zze()) {
            zzlc<K, V> zzc = zzlc.zza().zzc();
            zzld.zzb(zzc, object);
            unsafe.putObject(t, j, zzc);
        }
        zzlb zzlbVar = (zzlb) zzw;
        throw null;
    }

    private final int zzu(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, zzir zzirVar) throws IOException {
        Unsafe unsafe = zzb;
        long j2 = this.zzc[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Double.valueOf(Double.longBitsToDouble(zzis.zze(bArr, i))));
                    unsafe.putInt(t, j2, i4);
                    return i + 8;
                }
                break;
            case C3681R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Float.valueOf(Float.intBitsToFloat(zzis.zzd(bArr, i))));
                    unsafe.putInt(t, j2, i4);
                    return i + 4;
                }
                break;
            case C3681R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
            case C3681R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                if (i5 == 0) {
                    int zzc = zzis.zzc(bArr, i, zzirVar);
                    unsafe.putObject(t, j, Long.valueOf(zzirVar.zzb));
                    unsafe.putInt(t, j2, i4);
                    return zzc;
                }
                break;
            case C3681R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
            case C3681R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                if (i5 == 0) {
                    int zza2 = zzis.zza(bArr, i, zzirVar);
                    unsafe.putObject(t, j, Integer.valueOf(zzirVar.zza));
                    unsafe.putInt(t, j2, i4);
                    return zza2;
                }
                break;
            case C3681R.styleable.AppCompatTheme_colorError /* 56 */:
            case C3681R.styleable.AppCompatTheme_dividerVertical /* 65 */:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Long.valueOf(zzis.zze(bArr, i)));
                    unsafe.putInt(t, j2, i4);
                    return i + 8;
                }
                break;
            case C3681R.styleable.AppCompatTheme_colorPrimary /* 57 */:
            case C3681R.styleable.AppCompatTheme_dividerHorizontal /* 64 */:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Integer.valueOf(zzis.zzd(bArr, i)));
                    unsafe.putInt(t, j2, i4);
                    return i + 4;
                }
                break;
            case C3681R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                if (i5 == 0) {
                    int zzc2 = zzis.zzc(bArr, i, zzirVar);
                    unsafe.putObject(t, j, Boolean.valueOf(zzirVar.zzb != 0));
                    unsafe.putInt(t, j2, i4);
                    return zzc2;
                }
                break;
            case C3681R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                if (i5 == 2) {
                    i = zzis.zza(bArr, i, zzirVar);
                    int i9 = zzirVar.zza;
                    if (i9 == 0) {
                        unsafe.putObject(t, j, "");
                    } else if ((i6 & 536870912) != 0 && !zzmw.zzb(bArr, i, i + i9)) {
                        throw zzkn.zzf();
                    } else {
                        unsafe.putObject(t, j, new String(bArr, i, i9, zzkl.zza));
                        i += i9;
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case C3681R.styleable.AppCompatTheme_controlBackground /* 60 */:
                if (i5 == 2) {
                    i = zzis.zzi(zzv(i8), bArr, i, i2, zzirVar);
                    Object object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object == null) {
                        unsafe.putObject(t, j, zzirVar.zzc);
                    } else {
                        unsafe.putObject(t, j, zzkl.zzi(object, zzirVar.zzc));
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case C3681R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                if (i5 == 2) {
                    int zzh = zzis.zzh(bArr, i, zzirVar);
                    unsafe.putObject(t, j, zzirVar.zzc);
                    unsafe.putInt(t, j2, i4);
                    return zzh;
                }
                break;
            case C3681R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                if (i5 == 0) {
                    i = zzis.zza(bArr, i, zzirVar);
                    int i10 = zzirVar.zza;
                    zzkh zzx = zzx(i8);
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
            case C3681R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                if (i5 == 0) {
                    int zza3 = zzis.zza(bArr, i, zzirVar);
                    unsafe.putObject(t, j, Integer.valueOf(zzjg.zzb(zzirVar.zza)));
                    unsafe.putInt(t, j2, i4);
                    return zza3;
                }
                break;
            case C3681R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                if (i5 == 0) {
                    int zzc3 = zzis.zzc(bArr, i, zzirVar);
                    unsafe.putObject(t, j, Long.valueOf(zzjg.zzc(zzirVar.zzb)));
                    unsafe.putInt(t, j2, i4);
                    return zzc3;
                }
                break;
            case C3681R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                if (i5 == 3) {
                    i = zzis.zzj(zzv(i8), bArr, i, i2, (i3 & (-8)) | 4, zzirVar);
                    Object object2 = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object2 == null) {
                        unsafe.putObject(t, j, zzirVar.zzc);
                    } else {
                        unsafe.putObject(t, j, zzkl.zzi(object2, zzirVar.zzc));
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
        }
        return i;
    }

    private final zzlt zzv(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        zzlt zzltVar = (zzlt) this.zzd[i3];
        if (zzltVar != null) {
            return zzltVar;
        }
        zzlt<T> zzb2 = zzlq.zza().zzb((Class) this.zzd[i3 + 1]);
        this.zzd[i3] = zzb2;
        return zzb2;
    }

    private final Object zzw(int i) {
        int i2 = i / 3;
        return this.zzd[i2 + i2];
    }

    private final zzkh zzx(int i) {
        int i2 = i / 3;
        return (zzkh) this.zzd[i2 + i2 + 1];
    }

    /* JADX WARN: Code restructure failed: missing block: B:108:0x04ba, code lost:
        if (r24 != r0) goto L101;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x04f3, code lost:
        if (r24 != r0) goto L101;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v209, types: [int] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zzy(T r17, byte[] r18, int r19, int r20, com.google.android.gms.internal.measurement.zzir r21) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1341
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzll.zzy(java.lang.Object, byte[], int, int, com.google.android.gms.internal.measurement.zzir):int");
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean zzz(Object obj, int i, zzlt zzltVar) {
        return zzltVar.zzj(zzmr.zzn(obj, i & 1048575));
    }

    @Override // com.google.android.gms.internal.measurement.zzlt
    public final T zza() {
        return (T) ((zzkd) this.zzg).zzl(4, null, null);
    }

    @Override // com.google.android.gms.internal.measurement.zzlt
    public final boolean zzb(T t, T t2) {
        boolean z;
        int length = this.zzc.length;
        for (int i = 0; i < length; i += 3) {
            int zzA = zzA(i);
            long j = zzA & 1048575;
            switch (zzC(zzA)) {
                case 0:
                    if (!zzI(t, t2, i) || Double.doubleToLongBits(zzmr.zzl(t, j)) != Double.doubleToLongBits(zzmr.zzl(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 1:
                    if (!zzI(t, t2, i) || Float.floatToIntBits(zzmr.zzj(t, j)) != Float.floatToIntBits(zzmr.zzj(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 2:
                    if (!zzI(t, t2, i) || zzmr.zzf(t, j) != zzmr.zzf(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 3:
                    if (!zzI(t, t2, i) || zzmr.zzf(t, j) != zzmr.zzf(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 4:
                    if (!zzI(t, t2, i) || zzmr.zzd(t, j) != zzmr.zzd(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 5:
                    if (!zzI(t, t2, i) || zzmr.zzf(t, j) != zzmr.zzf(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 6:
                    if (!zzI(t, t2, i) || zzmr.zzd(t, j) != zzmr.zzd(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 7:
                    if (!zzI(t, t2, i) || zzmr.zzh(t, j) != zzmr.zzh(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 8:
                    if (!zzI(t, t2, i) || !zzlv.zzD(zzmr.zzn(t, j), zzmr.zzn(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 9:
                    if (!zzI(t, t2, i) || !zzlv.zzD(zzmr.zzn(t, j), zzmr.zzn(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 10:
                    if (!zzI(t, t2, i) || !zzlv.zzD(zzmr.zzn(t, j), zzmr.zzn(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 11:
                    if (!zzI(t, t2, i) || zzmr.zzd(t, j) != zzmr.zzd(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 12:
                    if (!zzI(t, t2, i) || zzmr.zzd(t, j) != zzmr.zzd(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 13:
                    if (!zzI(t, t2, i) || zzmr.zzd(t, j) != zzmr.zzd(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 14:
                    if (!zzI(t, t2, i) || zzmr.zzf(t, j) != zzmr.zzf(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 15:
                    if (!zzI(t, t2, i) || zzmr.zzd(t, j) != zzmr.zzd(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 16:
                    if (!zzI(t, t2, i) || zzmr.zzf(t, j) != zzmr.zzf(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 17:
                    if (!zzI(t, t2, i) || !zzlv.zzD(zzmr.zzn(t, j), zzmr.zzn(t2, j))) {
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
                case C3681R.styleable.AppCompatTheme_actionModeTheme /* 30 */:
                case C3681R.styleable.AppCompatTheme_actionModeWebSearchDrawable /* 31 */:
                case C3681R.styleable.AppCompatTheme_actionOverflowButtonStyle /* 32 */:
                case C3681R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                case C3681R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                case C3681R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                case C3681R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                case C3681R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                case C3681R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                case C3681R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                case C3681R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                case C3681R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                case C3681R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                case C3681R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                case C3681R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                case C3681R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                case C3681R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                case C3681R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                case C3681R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                case C3681R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                    z = zzlv.zzD(zzmr.zzn(t, j), zzmr.zzn(t2, j));
                    break;
                case C3681R.styleable.AppCompatTheme_colorAccent /* 50 */:
                    z = zzlv.zzD(zzmr.zzn(t, j), zzmr.zzn(t2, j));
                    break;
                case 51:
                case C3681R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                case C3681R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                case C3681R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                case C3681R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                case C3681R.styleable.AppCompatTheme_colorError /* 56 */:
                case C3681R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                case C3681R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                case C3681R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                case C3681R.styleable.AppCompatTheme_controlBackground /* 60 */:
                case C3681R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                case C3681R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                case C3681R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                case C3681R.styleable.AppCompatTheme_dividerHorizontal /* 64 */:
                case C3681R.styleable.AppCompatTheme_dividerVertical /* 65 */:
                case C3681R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                case C3681R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                case C3681R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                    long zzB = zzB(i) & 1048575;
                    if (zzmr.zzd(t, zzB) != zzmr.zzd(t2, zzB) || !zzlv.zzD(zzmr.zzn(t, j), zzmr.zzn(t2, j))) {
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

    @Override // com.google.android.gms.internal.measurement.zzlt
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
                int hashCode = this.zzn.zzd(t).hashCode();
                if (!this.zzh) {
                    return hashCode + (i8 * 53);
                }
                this.zzo.zzb(t);
                throw null;
            }
            int zzA = zzA(i6);
            int i9 = this.zzc[i6];
            long j = 1048575 & zzA;
            int i10 = 37;
            switch (zzC(zzA)) {
                case 0:
                    i2 = i8 * 53;
                    i3 = zzkl.zze(Double.doubleToLongBits(zzmr.zzl(t, j)));
                    i = i3 + i2;
                    break;
                case 1:
                    i2 = i8 * 53;
                    i3 = Float.floatToIntBits(zzmr.zzj(t, j));
                    i = i3 + i2;
                    break;
                case 2:
                    i2 = i8 * 53;
                    i3 = zzkl.zze(zzmr.zzf(t, j));
                    i = i3 + i2;
                    break;
                case 3:
                    i2 = i8 * 53;
                    i3 = zzkl.zze(zzmr.zzf(t, j));
                    i = i3 + i2;
                    break;
                case 4:
                    i4 = i8 * 53;
                    i5 = zzmr.zzd(t, j);
                    i = i4 + i5;
                    break;
                case 5:
                    i2 = i8 * 53;
                    i3 = zzkl.zze(zzmr.zzf(t, j));
                    i = i3 + i2;
                    break;
                case 6:
                    i4 = i8 * 53;
                    i5 = zzmr.zzd(t, j);
                    i = i4 + i5;
                    break;
                case 7:
                    i2 = i8 * 53;
                    i3 = zzkl.zzf(zzmr.zzh(t, j));
                    i = i3 + i2;
                    break;
                case 8:
                    i2 = i8 * 53;
                    i3 = ((String) zzmr.zzn(t, j)).hashCode();
                    i = i3 + i2;
                    break;
                case 9:
                    Object zzn = zzmr.zzn(t, j);
                    if (zzn != null) {
                        i10 = zzn.hashCode();
                    }
                    i = (i8 * 53) + i10;
                    break;
                case 10:
                    i2 = i8 * 53;
                    i3 = zzmr.zzn(t, j).hashCode();
                    i = i3 + i2;
                    break;
                case 11:
                    i4 = i8 * 53;
                    i5 = zzmr.zzd(t, j);
                    i = i4 + i5;
                    break;
                case 12:
                    i4 = i8 * 53;
                    i5 = zzmr.zzd(t, j);
                    i = i4 + i5;
                    break;
                case 13:
                    i4 = i8 * 53;
                    i5 = zzmr.zzd(t, j);
                    i = i4 + i5;
                    break;
                case 14:
                    i2 = i8 * 53;
                    i3 = zzkl.zze(zzmr.zzf(t, j));
                    i = i3 + i2;
                    break;
                case 15:
                    i4 = i8 * 53;
                    i5 = zzmr.zzd(t, j);
                    i = i4 + i5;
                    break;
                case 16:
                    i2 = i8 * 53;
                    i3 = zzkl.zze(zzmr.zzf(t, j));
                    i = i3 + i2;
                    break;
                case 17:
                    Object zzn2 = zzmr.zzn(t, j);
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
                case C3681R.styleable.AppCompatTheme_actionModeTheme /* 30 */:
                case C3681R.styleable.AppCompatTheme_actionModeWebSearchDrawable /* 31 */:
                case C3681R.styleable.AppCompatTheme_actionOverflowButtonStyle /* 32 */:
                case C3681R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                case C3681R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                case C3681R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                case C3681R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                case C3681R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                case C3681R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                case C3681R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                case C3681R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                case C3681R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                case C3681R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                case C3681R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                case C3681R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                case C3681R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                case C3681R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                case C3681R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                case C3681R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                case C3681R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                    i2 = i8 * 53;
                    i3 = zzmr.zzn(t, j).hashCode();
                    i = i3 + i2;
                    break;
                case C3681R.styleable.AppCompatTheme_colorAccent /* 50 */:
                    i2 = i8 * 53;
                    i3 = zzmr.zzn(t, j).hashCode();
                    i = i3 + i2;
                    break;
                case 51:
                    i = i8;
                    if (!zzM(t, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzkl.zze(Double.doubleToLongBits(zzD(t, j)));
                        i = i3 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                    i = i8;
                    if (!zzM(t, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = Float.floatToIntBits(zzE(t, j));
                        i = i3 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                    i = i8;
                    if (!zzM(t, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzkl.zze(zzG(t, j));
                        i = i3 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                    i = i8;
                    if (!zzM(t, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzkl.zze(zzG(t, j));
                        i = i3 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                    i = i8;
                    if (!zzM(t, i9, i6)) {
                        break;
                    } else {
                        i4 = i8 * 53;
                        i5 = zzF(t, j);
                        i = i4 + i5;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorError /* 56 */:
                    i = i8;
                    if (!zzM(t, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzkl.zze(zzG(t, j));
                        i = i3 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                    i = i8;
                    if (!zzM(t, i9, i6)) {
                        break;
                    } else {
                        i4 = i8 * 53;
                        i5 = zzF(t, j);
                        i = i4 + i5;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                    i = i8;
                    if (!zzM(t, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzkl.zzf(zzH(t, j));
                        i = i3 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                    i = i8;
                    if (!zzM(t, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = ((String) zzmr.zzn(t, j)).hashCode();
                        i = i3 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_controlBackground /* 60 */:
                    i = i8;
                    if (!zzM(t, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzmr.zzn(t, j).hashCode();
                        i = i3 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                    i = i8;
                    if (!zzM(t, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzmr.zzn(t, j).hashCode();
                        i = i3 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                    i = i8;
                    if (!zzM(t, i9, i6)) {
                        break;
                    } else {
                        i4 = i8 * 53;
                        i5 = zzF(t, j);
                        i = i4 + i5;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                    i = i8;
                    if (!zzM(t, i9, i6)) {
                        break;
                    } else {
                        i4 = i8 * 53;
                        i5 = zzF(t, j);
                        i = i4 + i5;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dividerHorizontal /* 64 */:
                    i = i8;
                    if (!zzM(t, i9, i6)) {
                        break;
                    } else {
                        i4 = i8 * 53;
                        i5 = zzF(t, j);
                        i = i4 + i5;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dividerVertical /* 65 */:
                    i = i8;
                    if (!zzM(t, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzkl.zze(zzG(t, j));
                        i = i3 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                    i = i8;
                    if (!zzM(t, i9, i6)) {
                        break;
                    } else {
                        i4 = i8 * 53;
                        i5 = zzF(t, j);
                        i = i4 + i5;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                    i = i8;
                    if (!zzM(t, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzkl.zze(zzG(t, j));
                        i = i3 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                    i = i8;
                    if (!zzM(t, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzmr.zzn(t, j).hashCode();
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

    @Override // com.google.android.gms.internal.measurement.zzlt
    public final void zzd(T t, T t2) {
        Objects.requireNonNull(t2);
        for (int i = 0; i < this.zzc.length; i += 3) {
            int zzA = zzA(i);
            long j = 1048575 & zzA;
            int i2 = this.zzc[i];
            switch (zzC(zzA)) {
                case 0:
                    if (zzK(t2, i)) {
                        zzmr.zzm(t, j, zzmr.zzl(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zzK(t2, i)) {
                        zzmr.zzk(t, j, zzmr.zzj(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zzK(t2, i)) {
                        zzmr.zzg(t, j, zzmr.zzf(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zzK(t2, i)) {
                        zzmr.zzg(t, j, zzmr.zzf(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zzK(t2, i)) {
                        zzmr.zze(t, j, zzmr.zzd(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zzK(t2, i)) {
                        zzmr.zzg(t, j, zzmr.zzf(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zzK(t2, i)) {
                        zzmr.zze(t, j, zzmr.zzd(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zzK(t2, i)) {
                        zzmr.zzi(t, j, zzmr.zzh(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (zzK(t2, i)) {
                        zzmr.zzo(t, j, zzmr.zzn(t2, j));
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
                        zzmr.zzo(t, j, zzmr.zzn(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zzK(t2, i)) {
                        zzmr.zze(t, j, zzmr.zzd(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zzK(t2, i)) {
                        zzmr.zze(t, j, zzmr.zzd(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zzK(t2, i)) {
                        zzmr.zze(t, j, zzmr.zzd(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zzK(t2, i)) {
                        zzmr.zzg(t, j, zzmr.zzf(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zzK(t2, i)) {
                        zzmr.zze(t, j, zzmr.zzd(t2, j));
                        zzL(t, i);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zzK(t2, i)) {
                        zzmr.zzg(t, j, zzmr.zzf(t2, j));
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
                case C3681R.styleable.AppCompatTheme_actionModeTheme /* 30 */:
                case C3681R.styleable.AppCompatTheme_actionModeWebSearchDrawable /* 31 */:
                case C3681R.styleable.AppCompatTheme_actionOverflowButtonStyle /* 32 */:
                case C3681R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                case C3681R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                case C3681R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                case C3681R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                case C3681R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                case C3681R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                case C3681R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                case C3681R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                case C3681R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                case C3681R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                case C3681R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                case C3681R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                case C3681R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                case C3681R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                case C3681R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                case C3681R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                case C3681R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                    this.zzm.zzb(t, t2, j);
                    break;
                case C3681R.styleable.AppCompatTheme_colorAccent /* 50 */:
                    zzlv.zzI(this.zzq, t, t2, j);
                    break;
                case 51:
                case C3681R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                case C3681R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                case C3681R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                case C3681R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                case C3681R.styleable.AppCompatTheme_colorError /* 56 */:
                case C3681R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                case C3681R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                case C3681R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                    if (zzM(t2, i2, i)) {
                        zzmr.zzo(t, j, zzmr.zzn(t2, j));
                        zzN(t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_controlBackground /* 60 */:
                    zzp(t, t2, i);
                    break;
                case C3681R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                case C3681R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                case C3681R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                case C3681R.styleable.AppCompatTheme_dividerHorizontal /* 64 */:
                case C3681R.styleable.AppCompatTheme_dividerVertical /* 65 */:
                case C3681R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                case C3681R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                    if (zzM(t2, i2, i)) {
                        zzmr.zzo(t, j, zzmr.zzn(t2, j));
                        zzN(t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                    zzp(t, t2, i);
                    break;
            }
        }
        zzlv.zzF(this.zzn, t, t2);
        if (this.zzh) {
            zzlv.zzE(this.zzo, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlt
    public final int zze(T t) {
        return this.zzi ? zzr(t) : zzq(t);
    }

    /* JADX WARN: Code restructure failed: missing block: B:139:0x064f, code lost:
        if (r32 == 1048575) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0652, code lost:
        r0.putInt(r18, r32, r35);
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x065d, code lost:
        r19 = r17.zzk;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0667, code lost:
        if (r19 >= r17.zzl) goto L213;
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x066a, code lost:
        r0 = r17.zzj[r19];
        r0 = r17.zzc[r0];
        r0 = com.google.android.gms.internal.measurement.zzmr.zzn(r18, r17.zzA(r0) & 1048575);
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x068d, code lost:
        if (r0 != null) goto L146;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x0699, code lost:
        if (r17.zzx(r0) != null) goto L214;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x069c, code lost:
        r19 = r19 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x06a2, code lost:
        r0 = (com.google.android.gms.internal.measurement.zzlc) r0;
        r0 = (com.google.android.gms.internal.measurement.zzlb) r17.zzw(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x06b3, code lost:
        throw null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:152:0x06b6, code lost:
        if (r21 != 0) goto L157;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x06bd, code lost:
        if (r28 != r20) goto L155;
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x06c6, code lost:
        throw com.google.android.gms.internal.measurement.zzkn.zze();
     */
    /* JADX WARN: Code restructure failed: missing block: B:158:0x06cb, code lost:
        if (r28 > r20) goto L163;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x06d2, code lost:
        if (r29 != r21) goto L163;
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x06d7, code lost:
        return r28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:164:0x06db, code lost:
        throw com.google.android.gms.internal.measurement.zzkn.zze();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzg(T r17, byte[] r18, int r19, int r20, int r21, com.google.android.gms.internal.measurement.zzir r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1756
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.zzll.zzg(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.measurement.zzir):int");
    }

    @Override // com.google.android.gms.internal.measurement.zzlt
    public final void zzh(T t, byte[] bArr, int i, int i2, zzir zzirVar) throws IOException {
        if (this.zzi) {
            zzy(t, bArr, i, i2, zzirVar);
        } else {
            zzg(t, bArr, i, i2, 0, zzirVar);
        }
    }

    @Override // com.google.android.gms.internal.measurement.zzlt
    public final void zzi(T t) {
        int i;
        int i2 = this.zzk;
        while (true) {
            i = this.zzl;
            if (i2 >= i) {
                break;
            }
            long zzA = zzA(this.zzj[i2]) & 1048575;
            Object zzn = zzmr.zzn(t, zzA);
            if (zzn != null) {
                ((zzlc) zzn).zzd();
                zzmr.zzo(t, zzA, zzn);
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
    @Override // com.google.android.gms.internal.measurement.zzlt
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
                        if (zzC == 50 && !((zzlc) zzmr.zzn(t, zzA & 1048575)).isEmpty()) {
                            zzlb zzlbVar = (zzlb) zzw(i4);
                            throw null;
                        }
                    }
                }
                List list = (List) zzmr.zzn(t, zzA & 1048575);
                if (!list.isEmpty()) {
                    zzlt zzv = zzv(i4);
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

    @Override // com.google.android.gms.internal.measurement.zzlt
    public final void zzm(T t, zzjl zzjlVar) throws IOException {
        if (!this.zzi) {
            zzR(t, zzjlVar);
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
                            zzjlVar.zzf(i2, zzmr.zzl(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (zzK(t, i)) {
                            zzjlVar.zze(i2, zzmr.zzj(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (zzK(t, i)) {
                            zzjlVar.zzc(i2, zzmr.zzf(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (zzK(t, i)) {
                            zzjlVar.zzh(i2, zzmr.zzf(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (zzK(t, i)) {
                            zzjlVar.zzi(i2, zzmr.zzd(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (zzK(t, i)) {
                            zzjlVar.zzj(i2, zzmr.zzf(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (zzK(t, i)) {
                            zzjlVar.zzk(i2, zzmr.zzd(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (zzK(t, i)) {
                            zzjlVar.zzl(i2, zzmr.zzh(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (zzK(t, i)) {
                            zzT(i2, zzmr.zzn(t, zzA & 1048575), zzjlVar);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        if (zzK(t, i)) {
                            zzjlVar.zzr(i2, zzmr.zzn(t, zzA & 1048575), zzv(i));
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (zzK(t, i)) {
                            zzjlVar.zzn(i2, (zzjd) zzmr.zzn(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (zzK(t, i)) {
                            zzjlVar.zzo(i2, zzmr.zzd(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (zzK(t, i)) {
                            zzjlVar.zzg(i2, zzmr.zzd(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (zzK(t, i)) {
                            zzjlVar.zzb(i2, zzmr.zzd(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (zzK(t, i)) {
                            zzjlVar.zzd(i2, zzmr.zzf(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (zzK(t, i)) {
                            zzjlVar.zzp(i2, zzmr.zzd(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (zzK(t, i)) {
                            zzjlVar.zzq(i2, zzmr.zzf(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        if (zzK(t, i)) {
                            zzjlVar.zzs(i2, zzmr.zzn(t, zzA & 1048575), zzv(i));
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        zzlv.zzJ(this.zzc[i], (List) zzmr.zzn(t, zzA & 1048575), zzjlVar, false);
                        break;
                    case 19:
                        zzlv.zzK(this.zzc[i], (List) zzmr.zzn(t, zzA & 1048575), zzjlVar, false);
                        break;
                    case 20:
                        zzlv.zzL(this.zzc[i], (List) zzmr.zzn(t, zzA & 1048575), zzjlVar, false);
                        break;
                    case 21:
                        zzlv.zzM(this.zzc[i], (List) zzmr.zzn(t, zzA & 1048575), zzjlVar, false);
                        break;
                    case 22:
                        zzlv.zzQ(this.zzc[i], (List) zzmr.zzn(t, zzA & 1048575), zzjlVar, false);
                        break;
                    case 23:
                        zzlv.zzO(this.zzc[i], (List) zzmr.zzn(t, zzA & 1048575), zzjlVar, false);
                        break;
                    case 24:
                        zzlv.zzT(this.zzc[i], (List) zzmr.zzn(t, zzA & 1048575), zzjlVar, false);
                        break;
                    case 25:
                        zzlv.zzW(this.zzc[i], (List) zzmr.zzn(t, zzA & 1048575), zzjlVar, false);
                        break;
                    case 26:
                        zzlv.zzX(this.zzc[i], (List) zzmr.zzn(t, zzA & 1048575), zzjlVar);
                        break;
                    case 27:
                        zzlv.zzZ(this.zzc[i], (List) zzmr.zzn(t, zzA & 1048575), zzjlVar, zzv(i));
                        break;
                    case 28:
                        zzlv.zzY(this.zzc[i], (List) zzmr.zzn(t, zzA & 1048575), zzjlVar);
                        break;
                    case 29:
                        zzlv.zzR(this.zzc[i], (List) zzmr.zzn(t, zzA & 1048575), zzjlVar, false);
                        break;
                    case C3681R.styleable.AppCompatTheme_actionModeTheme /* 30 */:
                        zzlv.zzV(this.zzc[i], (List) zzmr.zzn(t, zzA & 1048575), zzjlVar, false);
                        break;
                    case C3681R.styleable.AppCompatTheme_actionModeWebSearchDrawable /* 31 */:
                        zzlv.zzU(this.zzc[i], (List) zzmr.zzn(t, zzA & 1048575), zzjlVar, false);
                        break;
                    case C3681R.styleable.AppCompatTheme_actionOverflowButtonStyle /* 32 */:
                        zzlv.zzP(this.zzc[i], (List) zzmr.zzn(t, zzA & 1048575), zzjlVar, false);
                        break;
                    case C3681R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                        zzlv.zzS(this.zzc[i], (List) zzmr.zzn(t, zzA & 1048575), zzjlVar, false);
                        break;
                    case C3681R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                        zzlv.zzN(this.zzc[i], (List) zzmr.zzn(t, zzA & 1048575), zzjlVar, false);
                        break;
                    case C3681R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                        zzlv.zzJ(this.zzc[i], (List) zzmr.zzn(t, zzA & 1048575), zzjlVar, true);
                        break;
                    case C3681R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                        zzlv.zzK(this.zzc[i], (List) zzmr.zzn(t, zzA & 1048575), zzjlVar, true);
                        break;
                    case C3681R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                        zzlv.zzL(this.zzc[i], (List) zzmr.zzn(t, zzA & 1048575), zzjlVar, true);
                        break;
                    case C3681R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                        zzlv.zzM(this.zzc[i], (List) zzmr.zzn(t, zzA & 1048575), zzjlVar, true);
                        break;
                    case C3681R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                        zzlv.zzQ(this.zzc[i], (List) zzmr.zzn(t, zzA & 1048575), zzjlVar, true);
                        break;
                    case C3681R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                        zzlv.zzO(this.zzc[i], (List) zzmr.zzn(t, zzA & 1048575), zzjlVar, true);
                        break;
                    case C3681R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                        zzlv.zzT(this.zzc[i], (List) zzmr.zzn(t, zzA & 1048575), zzjlVar, true);
                        break;
                    case C3681R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                        zzlv.zzW(this.zzc[i], (List) zzmr.zzn(t, zzA & 1048575), zzjlVar, true);
                        break;
                    case C3681R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                        zzlv.zzR(this.zzc[i], (List) zzmr.zzn(t, zzA & 1048575), zzjlVar, true);
                        break;
                    case C3681R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                        zzlv.zzV(this.zzc[i], (List) zzmr.zzn(t, zzA & 1048575), zzjlVar, true);
                        break;
                    case C3681R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                        zzlv.zzU(this.zzc[i], (List) zzmr.zzn(t, zzA & 1048575), zzjlVar, true);
                        break;
                    case C3681R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                        zzlv.zzP(this.zzc[i], (List) zzmr.zzn(t, zzA & 1048575), zzjlVar, true);
                        break;
                    case C3681R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                        zzlv.zzS(this.zzc[i], (List) zzmr.zzn(t, zzA & 1048575), zzjlVar, true);
                        break;
                    case C3681R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                        zzlv.zzN(this.zzc[i], (List) zzmr.zzn(t, zzA & 1048575), zzjlVar, true);
                        break;
                    case C3681R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                        zzlv.zzaa(this.zzc[i], (List) zzmr.zzn(t, zzA & 1048575), zzjlVar, zzv(i));
                        break;
                    case C3681R.styleable.AppCompatTheme_colorAccent /* 50 */:
                        zzS(zzjlVar, i2, zzmr.zzn(t, zzA & 1048575), i);
                        break;
                    case 51:
                        if (zzM(t, i2, i)) {
                            zzjlVar.zzf(i2, zzD(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case C3681R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                        if (zzM(t, i2, i)) {
                            zzjlVar.zze(i2, zzE(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case C3681R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                        if (zzM(t, i2, i)) {
                            zzjlVar.zzc(i2, zzG(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case C3681R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                        if (zzM(t, i2, i)) {
                            zzjlVar.zzh(i2, zzG(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case C3681R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                        if (zzM(t, i2, i)) {
                            zzjlVar.zzi(i2, zzF(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case C3681R.styleable.AppCompatTheme_colorError /* 56 */:
                        if (zzM(t, i2, i)) {
                            zzjlVar.zzj(i2, zzG(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case C3681R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                        if (zzM(t, i2, i)) {
                            zzjlVar.zzk(i2, zzF(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case C3681R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                        if (zzM(t, i2, i)) {
                            zzjlVar.zzl(i2, zzH(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case C3681R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                        if (zzM(t, i2, i)) {
                            zzT(i2, zzmr.zzn(t, zzA & 1048575), zzjlVar);
                            break;
                        } else {
                            break;
                        }
                    case C3681R.styleable.AppCompatTheme_controlBackground /* 60 */:
                        if (zzM(t, i2, i)) {
                            zzjlVar.zzr(i2, zzmr.zzn(t, zzA & 1048575), zzv(i));
                            break;
                        } else {
                            break;
                        }
                    case C3681R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                        if (zzM(t, i2, i)) {
                            zzjlVar.zzn(i2, (zzjd) zzmr.zzn(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case C3681R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                        if (zzM(t, i2, i)) {
                            zzjlVar.zzo(i2, zzF(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case C3681R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                        if (zzM(t, i2, i)) {
                            zzjlVar.zzg(i2, zzF(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case C3681R.styleable.AppCompatTheme_dividerHorizontal /* 64 */:
                        if (zzM(t, i2, i)) {
                            zzjlVar.zzb(i2, zzF(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case C3681R.styleable.AppCompatTheme_dividerVertical /* 65 */:
                        if (zzM(t, i2, i)) {
                            zzjlVar.zzd(i2, zzG(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case C3681R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                        if (zzM(t, i2, i)) {
                            zzjlVar.zzp(i2, zzF(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case C3681R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                        if (zzM(t, i2, i)) {
                            zzjlVar.zzq(i2, zzG(t, zzA & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case C3681R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                        if (zzM(t, i2, i)) {
                            zzjlVar.zzs(i2, zzmr.zzn(t, zzA & 1048575), zzv(i));
                            break;
                        } else {
                            break;
                        }
                }
            }
            zzmh<?, ?> zzmhVar = this.zzn;
            zzmhVar.zzi(zzmhVar.zzd(t), zzjlVar);
        }
    }
}
