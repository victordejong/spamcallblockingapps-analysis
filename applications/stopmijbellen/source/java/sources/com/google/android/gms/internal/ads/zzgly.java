package com.google.android.gms.internal.ads;

import android.support.p012v4.media.C0082b;
import java.io.IOException;
import java.lang.reflect.Field;
import java.util.Arrays;
import java.util.List;
import java.util.Objects;
import me.zhanghai.android.materialprogressbar.C3681R;
import p007a6.C0033h;
import sun.misc.Unsafe;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgly.class */
public final class zzgly<T> implements zzgmo<T> {
    private static final int[] zza = new int[0];
    private static final Unsafe zzb = zzgnp.zzi();
    private final int[] zzc;
    private final Object[] zzd;
    private final int zze;
    private final int zzf;
    private final zzglv zzg;
    private final boolean zzh;
    private final boolean zzi;
    private final boolean zzj;
    private final int[] zzk;
    private final int zzl;
    private final int zzm;
    private final zzglj zzn;
    private final zzgnf<?, ?> zzo;
    private final zzgjy<?> zzp;
    private final zzgma zzq;
    private final zzglq zzr;

    /* JADX WARN: Multi-variable type inference failed */
    private zzgly(int[] iArr, int[] iArr2, Object[] objArr, int i, int i2, zzglv zzglvVar, boolean z, boolean z2, int[] iArr3, int i3, int i4, zzgma zzgmaVar, zzglj zzgljVar, zzgnf<?, ?> zzgnfVar, zzgjy<?> zzgjyVar, zzglq zzglqVar) {
        this.zzc = iArr;
        this.zzd = iArr2;
        this.zze = objArr;
        this.zzf = i;
        this.zzi = i2 instanceof zzgkl;
        this.zzj = zzglvVar;
        boolean z3 = false;
        if (zzgnfVar != 0) {
            z3 = false;
            if (zzgnfVar.zzh(i2)) {
                z3 = true;
            }
        }
        this.zzh = z3;
        this.zzk = z2;
        this.zzl = iArr3;
        this.zzm = i3;
        this.zzq = i4;
        this.zzn = zzgmaVar;
        this.zzo = zzgljVar;
        this.zzp = zzgnfVar;
        this.zzg = i2;
        this.zzr = zzgjyVar;
    }

    private final int zzA(int i, int i2) {
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

    private static int zzB(int i) {
        return (i >>> 20) & 255;
    }

    private final int zzC(int i) {
        return this.zzc[i + 1];
    }

    private static <T> long zzD(T t, long j) {
        return ((Long) zzgnp.zzh(t, j)).longValue();
    }

    private final zzgkp zzE(int i) {
        int i2 = i / 3;
        return (zzgkp) this.zzd[i2 + i2 + 1];
    }

    private final zzgmo zzF(int i) {
        int i2 = i / 3;
        int i3 = i2 + i2;
        zzgmo zzgmoVar = (zzgmo) this.zzd[i3];
        if (zzgmoVar != null) {
            return zzgmoVar;
        }
        zzgmo<T> zzb2 = zzgmd.zza().zzb((Class) this.zzd[i3 + 1]);
        this.zzd[i3] = zzb2;
        return zzb2;
    }

    private final <UT, UB> UB zzG(Object obj, int i, UB ub, zzgnf<UT, UB> zzgnfVar) {
        int i2 = this.zzc[i];
        Object zzh = zzgnp.zzh(obj, zzC(i) & 1048575);
        if (zzh != null && zzE(i) != null) {
            zzglp zzglpVar = (zzglp) zzh;
            zzglo zzgloVar = (zzglo) zzH(i);
            throw null;
        }
        return ub;
    }

    private final Object zzH(int i) {
        int i2 = i / 3;
        return this.zzd[i2 + i2];
    }

    private static Field zzI(Class<?> cls, String str) {
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

    private final void zzJ(T t, T t2, int i) {
        long zzC = zzC(i) & 1048575;
        if (!zzQ(t2, i)) {
            return;
        }
        Object zzh = zzgnp.zzh(t, zzC);
        Object zzh2 = zzgnp.zzh(t2, zzC);
        if (zzh != null && zzh2 != null) {
            zzgnp.zzv(t, zzC, zzgkv.zzg(zzh, zzh2));
            zzM(t, i);
        } else if (zzh2 == null) {
        } else {
            zzgnp.zzv(t, zzC, zzh2);
            zzM(t, i);
        }
    }

    private final void zzK(T t, T t2, int i) {
        int zzC = zzC(i);
        int i2 = this.zzc[i];
        long j = zzC & 1048575;
        if (!zzT(t2, i2, i)) {
            return;
        }
        Object zzh = zzT(t, i2, i) ? zzgnp.zzh(t, j) : null;
        Object zzh2 = zzgnp.zzh(t2, j);
        if (zzh != null && zzh2 != null) {
            zzgnp.zzv(t, j, zzgkv.zzg(zzh, zzh2));
            zzN(t, i2, i);
        } else if (zzh2 == null) {
        } else {
            zzgnp.zzv(t, j, zzh2);
            zzN(t, i2, i);
        }
    }

    private final void zzL(Object obj, int i, zzgmg zzgmgVar) throws IOException {
        if (zzP(i)) {
            zzgnp.zzv(obj, i & 1048575, zzgmgVar.zzu());
        } else if (this.zzi) {
            zzgnp.zzv(obj, i & 1048575, zzgmgVar.zzt());
        } else {
            zzgnp.zzv(obj, i & 1048575, zzgmgVar.zzp());
        }
    }

    private final void zzM(T t, int i) {
        int zzz = zzz(i);
        long j = 1048575 & zzz;
        if (j == 1048575) {
            return;
        }
        zzgnp.zzt(t, j, (1 << (zzz >>> 20)) | zzgnp.zzd(t, j));
    }

    private final void zzN(T t, int i, int i2) {
        zzgnp.zzt(t, zzz(i2) & 1048575, i);
    }

    private final boolean zzO(T t, T t2, int i) {
        return zzQ(t, i) == zzQ(t2, i);
    }

    private static boolean zzP(int i) {
        return (i & 536870912) != 0;
    }

    private final boolean zzQ(T t, int i) {
        int zzz = zzz(i);
        long j = zzz & 1048575;
        if (j != 1048575) {
            return (zzgnp.zzd(t, j) & (1 << (zzz >>> 20))) != 0;
        }
        int zzC = zzC(i);
        long j2 = zzC & 1048575;
        switch (zzB(zzC)) {
            case 0:
                return Double.doubleToRawLongBits(zzgnp.zzb(t, j2)) != 0;
            case 1:
                return Float.floatToRawIntBits(zzgnp.zzc(t, j2)) != 0;
            case 2:
                return zzgnp.zzf(t, j2) != 0;
            case 3:
                return zzgnp.zzf(t, j2) != 0;
            case 4:
                return zzgnp.zzd(t, j2) != 0;
            case 5:
                return zzgnp.zzf(t, j2) != 0;
            case 6:
                return zzgnp.zzd(t, j2) != 0;
            case 7:
                return zzgnp.zzz(t, j2);
            case 8:
                Object zzh = zzgnp.zzh(t, j2);
                if (zzh instanceof String) {
                    return !((String) zzh).isEmpty();
                } else if (!(zzh instanceof zzgjf)) {
                    throw new IllegalArgumentException();
                } else {
                    return !zzgjf.zzb.equals(zzh);
                }
            case 9:
                return zzgnp.zzh(t, j2) != null;
            case 10:
                return !zzgjf.zzb.equals(zzgnp.zzh(t, j2));
            case 11:
                return zzgnp.zzd(t, j2) != 0;
            case 12:
                return zzgnp.zzd(t, j2) != 0;
            case 13:
                return zzgnp.zzd(t, j2) != 0;
            case 14:
                return zzgnp.zzf(t, j2) != 0;
            case 15:
                return zzgnp.zzd(t, j2) != 0;
            case 16:
                return zzgnp.zzf(t, j2) != 0;
            case 17:
                return zzgnp.zzh(t, j2) != null;
            default:
                throw new IllegalArgumentException();
        }
    }

    private final boolean zzR(T t, int i, int i2, int i3, int i4) {
        return i2 == 1048575 ? zzQ(t, i) : (i3 & i4) != 0;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static boolean zzS(Object obj, int i, zzgmo zzgmoVar) {
        return zzgmoVar.zzk(zzgnp.zzh(obj, i & 1048575));
    }

    private final boolean zzT(T t, int i, int i2) {
        return zzgnp.zzd(t, (long) (zzz(i2) & 1048575)) == i;
    }

    private static <T> boolean zzU(T t, long j) {
        return ((Boolean) zzgnp.zzh(t, j)).booleanValue();
    }

    private final void zzV(T t, zzgjt zzgjtVar) throws IOException {
        int i;
        int i2;
        if (this.zzh) {
            this.zzp.zza(t);
            throw null;
        }
        int length = this.zzc.length;
        Unsafe unsafe = zzb;
        int i3 = 0;
        int i4 = 0;
        int i5 = 1048575;
        while (i3 < length) {
            int zzC = zzC(i3);
            int i6 = this.zzc[i3];
            int zzB = zzB(zzC);
            if (zzB <= 17) {
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
            long j = zzC & 1048575;
            switch (zzB) {
                case 0:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzgjtVar.zzf(i6, zzgnp.zzb(t, j));
                        break;
                    }
                case 1:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzgjtVar.zzo(i6, zzgnp.zzc(t, j));
                        break;
                    }
                case 2:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzgjtVar.zzt(i6, unsafe.getLong(t, j));
                        break;
                    }
                case 3:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzgjtVar.zzJ(i6, unsafe.getLong(t, j));
                        break;
                    }
                case 4:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzgjtVar.zzr(i6, unsafe.getInt(t, j));
                        break;
                    }
                case 5:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzgjtVar.zzm(i6, unsafe.getLong(t, j));
                        break;
                    }
                case 6:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzgjtVar.zzk(i6, unsafe.getInt(t, j));
                        break;
                    }
                case 7:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzgjtVar.zzb(i6, zzgnp.zzz(t, j));
                        break;
                    }
                case 8:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzX(i6, unsafe.getObject(t, j), zzgjtVar);
                        break;
                    }
                case 9:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzgjtVar.zzv(i6, unsafe.getObject(t, j), zzF(i3));
                        break;
                    }
                case 10:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzgjtVar.zzd(i6, (zzgjf) unsafe.getObject(t, j));
                        break;
                    }
                case 11:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzgjtVar.zzH(i6, unsafe.getInt(t, j));
                        break;
                    }
                case 12:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzgjtVar.zzi(i6, unsafe.getInt(t, j));
                        break;
                    }
                case 13:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzgjtVar.zzw(i6, unsafe.getInt(t, j));
                        break;
                    }
                case 14:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzgjtVar.zzy(i6, unsafe.getLong(t, j));
                        break;
                    }
                case 15:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzgjtVar.zzA(i6, unsafe.getInt(t, j));
                        break;
                    }
                case 16:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzgjtVar.zzC(i6, unsafe.getLong(t, j));
                        break;
                    }
                case 17:
                    if ((i & i2) == 0) {
                        break;
                    } else {
                        zzgjtVar.zzq(i6, unsafe.getObject(t, j), zzF(i3));
                        break;
                    }
                case 18:
                    zzgmq.zzL(this.zzc[i3], (List) unsafe.getObject(t, j), zzgjtVar, false);
                    break;
                case 19:
                    zzgmq.zzP(this.zzc[i3], (List) unsafe.getObject(t, j), zzgjtVar, false);
                    break;
                case 20:
                    zzgmq.zzS(this.zzc[i3], (List) unsafe.getObject(t, j), zzgjtVar, false);
                    break;
                case 21:
                    zzgmq.zzaa(this.zzc[i3], (List) unsafe.getObject(t, j), zzgjtVar, false);
                    break;
                case 22:
                    zzgmq.zzR(this.zzc[i3], (List) unsafe.getObject(t, j), zzgjtVar, false);
                    break;
                case 23:
                    zzgmq.zzO(this.zzc[i3], (List) unsafe.getObject(t, j), zzgjtVar, false);
                    break;
                case 24:
                    zzgmq.zzN(this.zzc[i3], (List) unsafe.getObject(t, j), zzgjtVar, false);
                    break;
                case 25:
                    zzgmq.zzJ(this.zzc[i3], (List) unsafe.getObject(t, j), zzgjtVar, false);
                    break;
                case 26:
                    zzgmq.zzY(this.zzc[i3], (List) unsafe.getObject(t, j), zzgjtVar);
                    break;
                case 27:
                    zzgmq.zzT(this.zzc[i3], (List) unsafe.getObject(t, j), zzgjtVar, zzF(i3));
                    break;
                case 28:
                    zzgmq.zzK(this.zzc[i3], (List) unsafe.getObject(t, j), zzgjtVar);
                    break;
                case 29:
                    zzgmq.zzZ(this.zzc[i3], (List) unsafe.getObject(t, j), zzgjtVar, false);
                    break;
                case C3681R.styleable.AppCompatTheme_actionModeTheme /* 30 */:
                    zzgmq.zzM(this.zzc[i3], (List) unsafe.getObject(t, j), zzgjtVar, false);
                    break;
                case C3681R.styleable.AppCompatTheme_actionModeWebSearchDrawable /* 31 */:
                    zzgmq.zzU(this.zzc[i3], (List) unsafe.getObject(t, j), zzgjtVar, false);
                    break;
                case C3681R.styleable.AppCompatTheme_actionOverflowButtonStyle /* 32 */:
                    zzgmq.zzV(this.zzc[i3], (List) unsafe.getObject(t, j), zzgjtVar, false);
                    break;
                case C3681R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                    zzgmq.zzW(this.zzc[i3], (List) unsafe.getObject(t, j), zzgjtVar, false);
                    break;
                case C3681R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                    zzgmq.zzX(this.zzc[i3], (List) unsafe.getObject(t, j), zzgjtVar, false);
                    break;
                case C3681R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                    zzgmq.zzL(this.zzc[i3], (List) unsafe.getObject(t, j), zzgjtVar, true);
                    break;
                case C3681R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                    zzgmq.zzP(this.zzc[i3], (List) unsafe.getObject(t, j), zzgjtVar, true);
                    break;
                case C3681R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                    zzgmq.zzS(this.zzc[i3], (List) unsafe.getObject(t, j), zzgjtVar, true);
                    break;
                case C3681R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                    zzgmq.zzaa(this.zzc[i3], (List) unsafe.getObject(t, j), zzgjtVar, true);
                    break;
                case C3681R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                    zzgmq.zzR(this.zzc[i3], (List) unsafe.getObject(t, j), zzgjtVar, true);
                    break;
                case C3681R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                    zzgmq.zzO(this.zzc[i3], (List) unsafe.getObject(t, j), zzgjtVar, true);
                    break;
                case C3681R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                    zzgmq.zzN(this.zzc[i3], (List) unsafe.getObject(t, j), zzgjtVar, true);
                    break;
                case C3681R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                    zzgmq.zzJ(this.zzc[i3], (List) unsafe.getObject(t, j), zzgjtVar, true);
                    break;
                case C3681R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                    zzgmq.zzZ(this.zzc[i3], (List) unsafe.getObject(t, j), zzgjtVar, true);
                    break;
                case C3681R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                    zzgmq.zzM(this.zzc[i3], (List) unsafe.getObject(t, j), zzgjtVar, true);
                    break;
                case C3681R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                    zzgmq.zzU(this.zzc[i3], (List) unsafe.getObject(t, j), zzgjtVar, true);
                    break;
                case C3681R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                    zzgmq.zzV(this.zzc[i3], (List) unsafe.getObject(t, j), zzgjtVar, true);
                    break;
                case C3681R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                    zzgmq.zzW(this.zzc[i3], (List) unsafe.getObject(t, j), zzgjtVar, true);
                    break;
                case C3681R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                    zzgmq.zzX(this.zzc[i3], (List) unsafe.getObject(t, j), zzgjtVar, true);
                    break;
                case C3681R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                    zzgmq.zzQ(this.zzc[i3], (List) unsafe.getObject(t, j), zzgjtVar, zzF(i3));
                    break;
                case C3681R.styleable.AppCompatTheme_colorAccent /* 50 */:
                    zzW(zzgjtVar, i6, unsafe.getObject(t, j), i3);
                    break;
                case 51:
                    if (!zzT(t, i6, i3)) {
                        break;
                    } else {
                        zzgjtVar.zzf(i6, zzo(t, j));
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                    if (!zzT(t, i6, i3)) {
                        break;
                    } else {
                        zzgjtVar.zzo(i6, zzp(t, j));
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                    if (!zzT(t, i6, i3)) {
                        break;
                    } else {
                        zzgjtVar.zzt(i6, zzD(t, j));
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                    if (!zzT(t, i6, i3)) {
                        break;
                    } else {
                        zzgjtVar.zzJ(i6, zzD(t, j));
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                    if (!zzT(t, i6, i3)) {
                        break;
                    } else {
                        zzgjtVar.zzr(i6, zzs(t, j));
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorError /* 56 */:
                    if (!zzT(t, i6, i3)) {
                        break;
                    } else {
                        zzgjtVar.zzm(i6, zzD(t, j));
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                    if (!zzT(t, i6, i3)) {
                        break;
                    } else {
                        zzgjtVar.zzk(i6, zzs(t, j));
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                    if (!zzT(t, i6, i3)) {
                        break;
                    } else {
                        zzgjtVar.zzb(i6, zzU(t, j));
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                    if (!zzT(t, i6, i3)) {
                        break;
                    } else {
                        zzX(i6, unsafe.getObject(t, j), zzgjtVar);
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_controlBackground /* 60 */:
                    if (!zzT(t, i6, i3)) {
                        break;
                    } else {
                        zzgjtVar.zzv(i6, unsafe.getObject(t, j), zzF(i3));
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                    if (!zzT(t, i6, i3)) {
                        break;
                    } else {
                        zzgjtVar.zzd(i6, (zzgjf) unsafe.getObject(t, j));
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                    if (!zzT(t, i6, i3)) {
                        break;
                    } else {
                        zzgjtVar.zzH(i6, zzs(t, j));
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                    if (!zzT(t, i6, i3)) {
                        break;
                    } else {
                        zzgjtVar.zzi(i6, zzs(t, j));
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dividerHorizontal /* 64 */:
                    if (!zzT(t, i6, i3)) {
                        break;
                    } else {
                        zzgjtVar.zzw(i6, zzs(t, j));
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dividerVertical /* 65 */:
                    if (!zzT(t, i6, i3)) {
                        break;
                    } else {
                        zzgjtVar.zzy(i6, zzD(t, j));
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                    if (!zzT(t, i6, i3)) {
                        break;
                    } else {
                        zzgjtVar.zzA(i6, zzs(t, j));
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                    if (!zzT(t, i6, i3)) {
                        break;
                    } else {
                        zzgjtVar.zzC(i6, zzD(t, j));
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                    if (!zzT(t, i6, i3)) {
                        break;
                    } else {
                        zzgjtVar.zzq(i6, unsafe.getObject(t, j), zzF(i3));
                        break;
                    }
            }
            i3 += 3;
            i4 = i;
        }
        zzgnf<?, ?> zzgnfVar = this.zzo;
        zzgnfVar.zzr(zzgnfVar.zzd(t), zzgjtVar);
    }

    private final <K, V> void zzW(zzgjt zzgjtVar, int i, Object obj, int i2) throws IOException {
        if (obj == null) {
            return;
        }
        zzglo zzgloVar = (zzglo) zzH(i2);
        throw null;
    }

    private static final void zzX(int i, Object obj, zzgjt zzgjtVar) throws IOException {
        if (obj instanceof String) {
            zzgjtVar.zzF(i, (String) obj);
        } else {
            zzgjtVar.zzd(i, (zzgjf) obj);
        }
    }

    public static zzgng zzd(Object obj) {
        zzgkl zzgklVar = (zzgkl) obj;
        zzgng zzgngVar = zzgklVar.zzc;
        zzgng zzgngVar2 = zzgngVar;
        if (zzgngVar == zzgng.zzc()) {
            zzgngVar2 = zzgng.zze();
            zzgklVar.zzc = zzgngVar2;
        }
        return zzgngVar2;
    }

    public static <T> zzgly<T> zzl(Class<T> cls, zzgls zzglsVar, zzgma zzgmaVar, zzglj zzgljVar, zzgnf<?, ?> zzgnfVar, zzgjy<?> zzgjyVar, zzglq zzglqVar) {
        if (zzglsVar instanceof zzgmf) {
            return zzm((zzgmf) zzglsVar, zzgmaVar, zzgljVar, zzgnfVar, zzgjyVar, zzglqVar);
        }
        zzgnc zzgncVar = (zzgnc) zzglsVar;
        throw null;
    }

    /* JADX WARN: Removed duplicated region for block: B:124:0x06d5  */
    /* JADX WARN: Removed duplicated region for block: B:125:0x06df  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x070e  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0718  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x0955  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static <T> com.google.android.gms.internal.ads.zzgly<T> zzm(com.google.android.gms.internal.ads.zzgmf r19, com.google.android.gms.internal.ads.zzgma r20, com.google.android.gms.internal.ads.zzglj r21, com.google.android.gms.internal.ads.zzgnf<?, ?> r22, com.google.android.gms.internal.ads.zzgjy<?> r23, com.google.android.gms.internal.ads.zzglq r24) {
        /*
            Method dump skipped, instructions count: 2590
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgly.zzm(com.google.android.gms.internal.ads.zzgmf, com.google.android.gms.internal.ads.zzgma, com.google.android.gms.internal.ads.zzglj, com.google.android.gms.internal.ads.zzgnf, com.google.android.gms.internal.ads.zzgjy, com.google.android.gms.internal.ads.zzglq):com.google.android.gms.internal.ads.zzgly");
    }

    private static <T> double zzo(T t, long j) {
        return ((Double) zzgnp.zzh(t, j)).doubleValue();
    }

    private static <T> float zzp(T t, long j) {
        return ((Float) zzgnp.zzh(t, j)).floatValue();
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
                zzgnf<?, ?> zzgnfVar = this.zzo;
                int zza2 = zzgnfVar.zza(zzgnfVar.zzd(t));
                if (!this.zzh) {
                    return i20 + zza2;
                }
                this.zzp.zza(t);
                throw null;
            }
            int zzC = zzC(i19);
            int i24 = this.zzc[i19];
            int zzB = zzB(zzC);
            if (zzB <= 17) {
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
            long j = zzC & 1048575;
            switch (zzB) {
                case 0:
                    i3 = i20;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        i4 = zzgjs.zzA(i24 << 3);
                        i5 = i4 + 8;
                        i3 = i20 + i5;
                        break;
                    }
                case 1:
                    i3 = i20;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        i6 = zzgjs.zzA(i24 << 3);
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
                        i8 = zzgjs.zzA(i24 << 3);
                        i7 = zzgjs.zzB(j2);
                        i3 = i7 + i8 + i20;
                        break;
                    }
                case 3:
                    i3 = i20;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        long j3 = unsafe.getLong(t, j);
                        i8 = zzgjs.zzA(i24 << 3);
                        i7 = zzgjs.zzB(j3);
                        i3 = i7 + i8 + i20;
                        break;
                    }
                case 4:
                    i3 = i20;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        int i28 = unsafe.getInt(t, j);
                        i9 = zzgjs.zzA(i24 << 3);
                        i10 = zzgjs.zzv(i28);
                        i5 = i10 + i9;
                        i3 = i20 + i5;
                        break;
                    }
                case 5:
                    i3 = i20;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        i4 = zzgjs.zzA(i24 << 3);
                        i5 = i4 + 8;
                        i3 = i20 + i5;
                        break;
                    }
                case 6:
                    i3 = i20;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        i6 = zzgjs.zzA(i24 << 3);
                        i5 = i6 + 4;
                        i3 = i20 + i5;
                        break;
                    }
                case 7:
                    i3 = i20;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        i11 = zzgjs.zzA(i24 << 3);
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
                        if (!(object instanceof zzgjf)) {
                            i9 = zzgjs.zzA(i24 << 3);
                            i10 = zzgjs.zzy((String) object);
                            i5 = i10 + i9;
                            i3 = i20 + i5;
                            break;
                        } else {
                            i14 = zzgjs.zzA(i24 << 3);
                            i15 = ((zzgjf) object).zzd();
                            i13 = zzgjs.zzA(i15);
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
                        i5 = zzgmq.zzo(i24, unsafe.getObject(t, j), zzF(i19));
                        i3 = i20 + i5;
                        break;
                    }
                case 10:
                    i3 = i20;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        zzgjf zzgjfVar = (zzgjf) unsafe.getObject(t, j);
                        i14 = zzgjs.zzA(i24 << 3);
                        i15 = zzgjfVar.zzd();
                        i13 = zzgjs.zzA(i15);
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
                        i9 = zzgjs.zzA(i24 << 3);
                        i10 = zzgjs.zzA(i29);
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
                        i9 = zzgjs.zzA(i24 << 3);
                        i10 = zzgjs.zzv(i30);
                        i5 = i10 + i9;
                        i3 = i20 + i5;
                        break;
                    }
                case 13:
                    i3 = i20;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        i6 = zzgjs.zzA(i24 << 3);
                        i5 = i6 + 4;
                        i3 = i20 + i5;
                        break;
                    }
                case 14:
                    i3 = i20;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        i4 = zzgjs.zzA(i24 << 3);
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
                        i9 = zzgjs.zzA(i24 << 3);
                        i10 = zzgjs.zzA((i31 >> 31) ^ (i31 + i31));
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
                        i9 = zzgjs.zzA(i24 << 3);
                        i10 = zzgjs.zzB((j4 >> 63) ^ (j4 + j4));
                        i5 = i10 + i9;
                        i3 = i20 + i5;
                        break;
                    }
                case 17:
                    i3 = i20;
                    if ((i21 & i2) == 0) {
                        break;
                    } else {
                        i5 = zzgjs.zzu(i24, (zzglv) unsafe.getObject(t, j), zzF(i19));
                        i3 = i20 + i5;
                        break;
                    }
                case 18:
                    i5 = zzgmq.zzh(i24, (List) unsafe.getObject(t, j), false);
                    i3 = i20 + i5;
                    break;
                case 19:
                    i5 = zzgmq.zzf(i24, (List) unsafe.getObject(t, j), false);
                    i3 = i20 + i5;
                    break;
                case 20:
                    i5 = zzgmq.zzm(i24, (List) unsafe.getObject(t, j), false);
                    i3 = i20 + i5;
                    break;
                case 21:
                    i5 = zzgmq.zzx(i24, (List) unsafe.getObject(t, j), false);
                    i3 = i20 + i5;
                    break;
                case 22:
                    i5 = zzgmq.zzk(i24, (List) unsafe.getObject(t, j), false);
                    i3 = i20 + i5;
                    break;
                case 23:
                    i5 = zzgmq.zzh(i24, (List) unsafe.getObject(t, j), false);
                    i3 = i20 + i5;
                    break;
                case 24:
                    i5 = zzgmq.zzf(i24, (List) unsafe.getObject(t, j), false);
                    i3 = i20 + i5;
                    break;
                case 25:
                    i5 = zzgmq.zza(i24, (List) unsafe.getObject(t, j), false);
                    i3 = i20 + i5;
                    break;
                case 26:
                    i5 = zzgmq.zzu(i24, (List) unsafe.getObject(t, j));
                    i3 = i20 + i5;
                    break;
                case 27:
                    i5 = zzgmq.zzp(i24, (List) unsafe.getObject(t, j), zzF(i19));
                    i3 = i20 + i5;
                    break;
                case 28:
                    i5 = zzgmq.zzc(i24, (List) unsafe.getObject(t, j));
                    i3 = i20 + i5;
                    break;
                case 29:
                    i5 = zzgmq.zzv(i24, (List) unsafe.getObject(t, j), false);
                    i3 = i20 + i5;
                    break;
                case C3681R.styleable.AppCompatTheme_actionModeTheme /* 30 */:
                    i5 = zzgmq.zzd(i24, (List) unsafe.getObject(t, j), false);
                    i3 = i20 + i5;
                    break;
                case C3681R.styleable.AppCompatTheme_actionModeWebSearchDrawable /* 31 */:
                    i5 = zzgmq.zzf(i24, (List) unsafe.getObject(t, j), false);
                    i3 = i20 + i5;
                    break;
                case C3681R.styleable.AppCompatTheme_actionOverflowButtonStyle /* 32 */:
                    i5 = zzgmq.zzh(i24, (List) unsafe.getObject(t, j), false);
                    i3 = i20 + i5;
                    break;
                case C3681R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                    i5 = zzgmq.zzq(i24, (List) unsafe.getObject(t, j), false);
                    i3 = i20 + i5;
                    break;
                case C3681R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                    i5 = zzgmq.zzs(i24, (List) unsafe.getObject(t, j), false);
                    i3 = i20 + i5;
                    break;
                case C3681R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                    int zzi = zzgmq.zzi((List) unsafe.getObject(t, j));
                    i3 = i20;
                    if (zzi <= 0) {
                        break;
                    } else {
                        i17 = zzgjs.zzz(i24);
                        i16 = zzgjs.zzA(zzi);
                        i18 = zzi;
                        i12 = i16 + i17 + i18;
                        i3 = i20 + i12;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                    int zzg = zzgmq.zzg((List) unsafe.getObject(t, j));
                    i3 = i20;
                    if (zzg <= 0) {
                        break;
                    } else {
                        int zzz = zzgjs.zzz(i24);
                        i16 = zzgjs.zzA(zzg);
                        i18 = zzg;
                        i17 = zzz;
                        i12 = i16 + i17 + i18;
                        i3 = i20 + i12;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                    int zzn = zzgmq.zzn((List) unsafe.getObject(t, j));
                    i3 = i20;
                    if (zzn <= 0) {
                        break;
                    } else {
                        int zzz2 = zzgjs.zzz(i24);
                        i16 = zzgjs.zzA(zzn);
                        i18 = zzn;
                        i17 = zzz2;
                        i12 = i16 + i17 + i18;
                        i3 = i20 + i12;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                    int zzy = zzgmq.zzy((List) unsafe.getObject(t, j));
                    i3 = i20;
                    if (zzy <= 0) {
                        break;
                    } else {
                        int zzz3 = zzgjs.zzz(i24);
                        i16 = zzgjs.zzA(zzy);
                        i18 = zzy;
                        i17 = zzz3;
                        i12 = i16 + i17 + i18;
                        i3 = i20 + i12;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                    int zzl = zzgmq.zzl((List) unsafe.getObject(t, j));
                    i3 = i20;
                    if (zzl <= 0) {
                        break;
                    } else {
                        int zzz4 = zzgjs.zzz(i24);
                        i16 = zzgjs.zzA(zzl);
                        i18 = zzl;
                        i17 = zzz4;
                        i12 = i16 + i17 + i18;
                        i3 = i20 + i12;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                    int zzi2 = zzgmq.zzi((List) unsafe.getObject(t, j));
                    i3 = i20;
                    if (zzi2 <= 0) {
                        break;
                    } else {
                        int zzz5 = zzgjs.zzz(i24);
                        i16 = zzgjs.zzA(zzi2);
                        i18 = zzi2;
                        i17 = zzz5;
                        i12 = i16 + i17 + i18;
                        i3 = i20 + i12;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                    int zzg2 = zzgmq.zzg((List) unsafe.getObject(t, j));
                    i3 = i20;
                    if (zzg2 <= 0) {
                        break;
                    } else {
                        int zzz6 = zzgjs.zzz(i24);
                        i16 = zzgjs.zzA(zzg2);
                        i18 = zzg2;
                        i17 = zzz6;
                        i12 = i16 + i17 + i18;
                        i3 = i20 + i12;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                    int zzb2 = zzgmq.zzb((List) unsafe.getObject(t, j));
                    i3 = i20;
                    if (zzb2 <= 0) {
                        break;
                    } else {
                        int zzz7 = zzgjs.zzz(i24);
                        i16 = zzgjs.zzA(zzb2);
                        i18 = zzb2;
                        i17 = zzz7;
                        i12 = i16 + i17 + i18;
                        i3 = i20 + i12;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                    int zzw = zzgmq.zzw((List) unsafe.getObject(t, j));
                    i3 = i20;
                    if (zzw <= 0) {
                        break;
                    } else {
                        int zzz8 = zzgjs.zzz(i24);
                        i16 = zzgjs.zzA(zzw);
                        i18 = zzw;
                        i17 = zzz8;
                        i12 = i16 + i17 + i18;
                        i3 = i20 + i12;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                    int zze = zzgmq.zze((List) unsafe.getObject(t, j));
                    i3 = i20;
                    if (zze <= 0) {
                        break;
                    } else {
                        int zzz9 = zzgjs.zzz(i24);
                        i16 = zzgjs.zzA(zze);
                        i18 = zze;
                        i17 = zzz9;
                        i12 = i16 + i17 + i18;
                        i3 = i20 + i12;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                    int zzg3 = zzgmq.zzg((List) unsafe.getObject(t, j));
                    i3 = i20;
                    if (zzg3 <= 0) {
                        break;
                    } else {
                        int zzz10 = zzgjs.zzz(i24);
                        i16 = zzgjs.zzA(zzg3);
                        i18 = zzg3;
                        i17 = zzz10;
                        i12 = i16 + i17 + i18;
                        i3 = i20 + i12;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                    int zzi3 = zzgmq.zzi((List) unsafe.getObject(t, j));
                    i3 = i20;
                    if (zzi3 <= 0) {
                        break;
                    } else {
                        int zzz11 = zzgjs.zzz(i24);
                        i16 = zzgjs.zzA(zzi3);
                        i18 = zzi3;
                        i17 = zzz11;
                        i12 = i16 + i17 + i18;
                        i3 = i20 + i12;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                    int zzr = zzgmq.zzr((List) unsafe.getObject(t, j));
                    i3 = i20;
                    if (zzr <= 0) {
                        break;
                    } else {
                        int zzz12 = zzgjs.zzz(i24);
                        i16 = zzgjs.zzA(zzr);
                        i18 = zzr;
                        i17 = zzz12;
                        i12 = i16 + i17 + i18;
                        i3 = i20 + i12;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                    int zzt = zzgmq.zzt((List) unsafe.getObject(t, j));
                    i3 = i20;
                    if (zzt <= 0) {
                        break;
                    } else {
                        int zzz13 = zzgjs.zzz(i24);
                        i16 = zzgjs.zzA(zzt);
                        i18 = zzt;
                        i17 = zzz13;
                        i12 = i16 + i17 + i18;
                        i3 = i20 + i12;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                    i5 = zzgmq.zzj(i24, (List) unsafe.getObject(t, j), zzF(i19));
                    i3 = i20 + i5;
                    break;
                case C3681R.styleable.AppCompatTheme_colorAccent /* 50 */:
                    zzglq.zza(i24, unsafe.getObject(t, j), zzH(i19));
                    i3 = i20;
                    break;
                case 51:
                    i3 = i20;
                    if (!zzT(t, i24, i19)) {
                        break;
                    } else {
                        i4 = zzgjs.zzA(i24 << 3);
                        i5 = i4 + 8;
                        i3 = i20 + i5;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                    i3 = i20;
                    if (!zzT(t, i24, i19)) {
                        break;
                    } else {
                        i6 = zzgjs.zzA(i24 << 3);
                        i5 = i6 + 4;
                        i3 = i20 + i5;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                    i3 = i20;
                    if (!zzT(t, i24, i19)) {
                        break;
                    } else {
                        long zzD = zzD(t, j);
                        i8 = zzgjs.zzA(i24 << 3);
                        i7 = zzgjs.zzB(zzD);
                        i3 = i7 + i8 + i20;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                    i3 = i20;
                    if (!zzT(t, i24, i19)) {
                        break;
                    } else {
                        long zzD2 = zzD(t, j);
                        i8 = zzgjs.zzA(i24 << 3);
                        i7 = zzgjs.zzB(zzD2);
                        i3 = i7 + i8 + i20;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                    i3 = i20;
                    if (!zzT(t, i24, i19)) {
                        break;
                    } else {
                        int zzs = zzs(t, j);
                        i9 = zzgjs.zzA(i24 << 3);
                        i10 = zzgjs.zzv(zzs);
                        i5 = i10 + i9;
                        i3 = i20 + i5;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorError /* 56 */:
                    i3 = i20;
                    if (!zzT(t, i24, i19)) {
                        break;
                    } else {
                        i4 = zzgjs.zzA(i24 << 3);
                        i5 = i4 + 8;
                        i3 = i20 + i5;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                    i3 = i20;
                    if (!zzT(t, i24, i19)) {
                        break;
                    } else {
                        i6 = zzgjs.zzA(i24 << 3);
                        i5 = i6 + 4;
                        i3 = i20 + i5;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                    i3 = i20;
                    if (!zzT(t, i24, i19)) {
                        break;
                    } else {
                        i11 = zzgjs.zzA(i24 << 3);
                        i5 = i11 + 1;
                        i3 = i20 + i5;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                    i3 = i20;
                    if (!zzT(t, i24, i19)) {
                        break;
                    } else {
                        Object object2 = unsafe.getObject(t, j);
                        if (!(object2 instanceof zzgjf)) {
                            i9 = zzgjs.zzA(i24 << 3);
                            i10 = zzgjs.zzy((String) object2);
                            i5 = i10 + i9;
                            i3 = i20 + i5;
                            break;
                        } else {
                            i14 = zzgjs.zzA(i24 << 3);
                            i15 = ((zzgjf) object2).zzd();
                            i13 = zzgjs.zzA(i15);
                            i12 = i13 + i15 + i14;
                            i3 = i20 + i12;
                            break;
                        }
                    }
                case C3681R.styleable.AppCompatTheme_controlBackground /* 60 */:
                    i3 = i20;
                    if (!zzT(t, i24, i19)) {
                        break;
                    } else {
                        i5 = zzgmq.zzo(i24, unsafe.getObject(t, j), zzF(i19));
                        i3 = i20 + i5;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                    i3 = i20;
                    if (!zzT(t, i24, i19)) {
                        break;
                    } else {
                        zzgjf zzgjfVar2 = (zzgjf) unsafe.getObject(t, j);
                        i14 = zzgjs.zzA(i24 << 3);
                        i15 = zzgjfVar2.zzd();
                        i13 = zzgjs.zzA(i15);
                        i12 = i13 + i15 + i14;
                        i3 = i20 + i12;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                    i3 = i20;
                    if (!zzT(t, i24, i19)) {
                        break;
                    } else {
                        int zzs2 = zzs(t, j);
                        i9 = zzgjs.zzA(i24 << 3);
                        i10 = zzgjs.zzA(zzs2);
                        i5 = i10 + i9;
                        i3 = i20 + i5;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                    i3 = i20;
                    if (!zzT(t, i24, i19)) {
                        break;
                    } else {
                        int zzs3 = zzs(t, j);
                        i9 = zzgjs.zzA(i24 << 3);
                        i10 = zzgjs.zzv(zzs3);
                        i5 = i10 + i9;
                        i3 = i20 + i5;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dividerHorizontal /* 64 */:
                    i3 = i20;
                    if (!zzT(t, i24, i19)) {
                        break;
                    } else {
                        i6 = zzgjs.zzA(i24 << 3);
                        i5 = i6 + 4;
                        i3 = i20 + i5;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dividerVertical /* 65 */:
                    i3 = i20;
                    if (!zzT(t, i24, i19)) {
                        break;
                    } else {
                        i4 = zzgjs.zzA(i24 << 3);
                        i5 = i4 + 8;
                        i3 = i20 + i5;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                    i3 = i20;
                    if (!zzT(t, i24, i19)) {
                        break;
                    } else {
                        int zzs4 = zzs(t, j);
                        i9 = zzgjs.zzA(i24 << 3);
                        i10 = zzgjs.zzA((zzs4 >> 31) ^ (zzs4 + zzs4));
                        i5 = i10 + i9;
                        i3 = i20 + i5;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                    i3 = i20;
                    if (!zzT(t, i24, i19)) {
                        break;
                    } else {
                        long zzD3 = zzD(t, j);
                        i9 = zzgjs.zzA(i24 << 3);
                        i10 = zzgjs.zzB((zzD3 >> 63) ^ (zzD3 + zzD3));
                        i5 = i10 + i9;
                        i3 = i20 + i5;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                    i3 = i20;
                    if (!zzT(t, i24, i19)) {
                        break;
                    } else {
                        i5 = zzgjs.zzu(i24, (zzglv) unsafe.getObject(t, j), zzF(i19));
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
                zzgnf<?, ?> zzgnfVar = this.zzo;
                return i19 + zzgnfVar.zza(zzgnfVar.zzd(t));
            }
            int zzC = zzC(i17);
            int zzB = zzB(zzC);
            int i20 = this.zzc[i17];
            long j = zzC & 1048575;
            if (zzB >= zzgkd.DOUBLE_LIST_PACKED.zza() && zzB <= zzgkd.SINT64_LIST_PACKED.zza()) {
                int i21 = this.zzc[i17 + 2];
            }
            switch (zzB) {
                case 0:
                    i = i19;
                    if (zzQ(t, i17)) {
                        i2 = zzgjs.zzA(i20 << 3);
                        i3 = i2 + 8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 1:
                    i = i19;
                    if (zzQ(t, i17)) {
                        i4 = zzgjs.zzA(i20 << 3);
                        i3 = i4 + 4;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 2:
                    i = i19;
                    if (zzQ(t, i17)) {
                        long zzf = zzgnp.zzf(t, j);
                        i6 = zzgjs.zzA(i20 << 3);
                        i5 = zzgjs.zzB(zzf);
                        i3 = i5 + i6;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 3:
                    i = i19;
                    if (zzQ(t, i17)) {
                        long zzf2 = zzgnp.zzf(t, j);
                        i6 = zzgjs.zzA(i20 << 3);
                        i5 = zzgjs.zzB(zzf2);
                        i3 = i5 + i6;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 4:
                    i = i19;
                    if (zzQ(t, i17)) {
                        int zzd = zzgnp.zzd(t, j);
                        i8 = zzgjs.zzA(i20 << 3);
                        i7 = zzgjs.zzv(zzd);
                        i3 = i7 + i8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 5:
                    i = i19;
                    if (zzQ(t, i17)) {
                        i2 = zzgjs.zzA(i20 << 3);
                        i3 = i2 + 8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 6:
                    i = i19;
                    if (zzQ(t, i17)) {
                        i4 = zzgjs.zzA(i20 << 3);
                        i3 = i4 + 4;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 7:
                    i = i19;
                    if (zzQ(t, i17)) {
                        i9 = zzgjs.zzA(i20 << 3);
                        i3 = i9 + 1;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 8:
                    i = i19;
                    if (zzQ(t, i17)) {
                        Object zzh = zzgnp.zzh(t, j);
                        if (!(zzh instanceof zzgjf)) {
                            i8 = zzgjs.zzA(i20 << 3);
                            i7 = zzgjs.zzy((String) zzh);
                            i3 = i7 + i8;
                            break;
                        } else {
                            i13 = zzgjs.zzA(i20 << 3);
                            i12 = ((zzgjf) zzh).zzd();
                            i11 = zzgjs.zzA(i12);
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
                    if (zzQ(t, i17)) {
                        i3 = zzgmq.zzo(i20, zzgnp.zzh(t, j), zzF(i17));
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 10:
                    i = i19;
                    if (zzQ(t, i17)) {
                        zzgjf zzgjfVar = (zzgjf) zzgnp.zzh(t, j);
                        i13 = zzgjs.zzA(i20 << 3);
                        i12 = zzgjfVar.zzd();
                        i11 = zzgjs.zzA(i12);
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
                    if (zzQ(t, i17)) {
                        int zzd2 = zzgnp.zzd(t, j);
                        i8 = zzgjs.zzA(i20 << 3);
                        i7 = zzgjs.zzA(zzd2);
                        i3 = i7 + i8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 12:
                    i = i19;
                    if (zzQ(t, i17)) {
                        int zzd3 = zzgnp.zzd(t, j);
                        i8 = zzgjs.zzA(i20 << 3);
                        i7 = zzgjs.zzv(zzd3);
                        i3 = i7 + i8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 13:
                    i = i19;
                    if (zzQ(t, i17)) {
                        i4 = zzgjs.zzA(i20 << 3);
                        i3 = i4 + 4;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 14:
                    i = i19;
                    if (zzQ(t, i17)) {
                        i2 = zzgjs.zzA(i20 << 3);
                        i3 = i2 + 8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 15:
                    i = i19;
                    if (zzQ(t, i17)) {
                        int zzd4 = zzgnp.zzd(t, j);
                        i8 = zzgjs.zzA(i20 << 3);
                        i7 = zzgjs.zzA((zzd4 >> 31) ^ (zzd4 + zzd4));
                        i3 = i7 + i8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 16:
                    i = i19;
                    if (zzQ(t, i17)) {
                        long zzf3 = zzgnp.zzf(t, j);
                        i8 = zzgjs.zzA(i20 << 3);
                        i7 = zzgjs.zzB((zzf3 >> 63) ^ (zzf3 + zzf3));
                        i3 = i7 + i8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 17:
                    i = i19;
                    if (zzQ(t, i17)) {
                        i3 = zzgjs.zzu(i20, (zzglv) zzgnp.zzh(t, j), zzF(i17));
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case 18:
                    i3 = zzgmq.zzh(i20, (List) zzgnp.zzh(t, j), false);
                    break;
                case 19:
                    i3 = zzgmq.zzf(i20, (List) zzgnp.zzh(t, j), false);
                    break;
                case 20:
                    i3 = zzgmq.zzm(i20, (List) zzgnp.zzh(t, j), false);
                    break;
                case 21:
                    i3 = zzgmq.zzx(i20, (List) zzgnp.zzh(t, j), false);
                    break;
                case 22:
                    i3 = zzgmq.zzk(i20, (List) zzgnp.zzh(t, j), false);
                    break;
                case 23:
                    i3 = zzgmq.zzh(i20, (List) zzgnp.zzh(t, j), false);
                    break;
                case 24:
                    i3 = zzgmq.zzf(i20, (List) zzgnp.zzh(t, j), false);
                    break;
                case 25:
                    i3 = zzgmq.zza(i20, (List) zzgnp.zzh(t, j), false);
                    break;
                case 26:
                    i3 = zzgmq.zzu(i20, (List) zzgnp.zzh(t, j));
                    break;
                case 27:
                    i3 = zzgmq.zzp(i20, (List) zzgnp.zzh(t, j), zzF(i17));
                    break;
                case 28:
                    i3 = zzgmq.zzc(i20, (List) zzgnp.zzh(t, j));
                    break;
                case 29:
                    i3 = zzgmq.zzv(i20, (List) zzgnp.zzh(t, j), false);
                    break;
                case C3681R.styleable.AppCompatTheme_actionModeTheme /* 30 */:
                    i3 = zzgmq.zzd(i20, (List) zzgnp.zzh(t, j), false);
                    break;
                case C3681R.styleable.AppCompatTheme_actionModeWebSearchDrawable /* 31 */:
                    i3 = zzgmq.zzf(i20, (List) zzgnp.zzh(t, j), false);
                    break;
                case C3681R.styleable.AppCompatTheme_actionOverflowButtonStyle /* 32 */:
                    i3 = zzgmq.zzh(i20, (List) zzgnp.zzh(t, j), false);
                    break;
                case C3681R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                    i3 = zzgmq.zzq(i20, (List) zzgnp.zzh(t, j), false);
                    break;
                case C3681R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                    i3 = zzgmq.zzs(i20, (List) zzgnp.zzh(t, j), false);
                    break;
                case C3681R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                    int zzi = zzgmq.zzi((List) unsafe.getObject(t, j));
                    i = i19;
                    if (zzi > 0) {
                        i16 = zzgjs.zzz(i20);
                        i14 = zzgjs.zzA(zzi);
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
                case C3681R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                    int zzg = zzgmq.zzg((List) unsafe.getObject(t, j));
                    i = i19;
                    if (zzg > 0) {
                        int zzz = zzgjs.zzz(i20);
                        i14 = zzgjs.zzA(zzg);
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
                case C3681R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                    int zzn = zzgmq.zzn((List) unsafe.getObject(t, j));
                    i = i19;
                    if (zzn > 0) {
                        int zzz2 = zzgjs.zzz(i20);
                        i14 = zzgjs.zzA(zzn);
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
                case C3681R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                    int zzy = zzgmq.zzy((List) unsafe.getObject(t, j));
                    i = i19;
                    if (zzy > 0) {
                        int zzz3 = zzgjs.zzz(i20);
                        i14 = zzgjs.zzA(zzy);
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
                case C3681R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                    int zzl = zzgmq.zzl((List) unsafe.getObject(t, j));
                    i = i19;
                    if (zzl > 0) {
                        int zzz4 = zzgjs.zzz(i20);
                        i14 = zzgjs.zzA(zzl);
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
                case C3681R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                    int zzi2 = zzgmq.zzi((List) unsafe.getObject(t, j));
                    i = i19;
                    if (zzi2 > 0) {
                        int zzz5 = zzgjs.zzz(i20);
                        i14 = zzgjs.zzA(zzi2);
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
                case C3681R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                    int zzg2 = zzgmq.zzg((List) unsafe.getObject(t, j));
                    i = i19;
                    if (zzg2 > 0) {
                        int zzz6 = zzgjs.zzz(i20);
                        i14 = zzgjs.zzA(zzg2);
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
                case C3681R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                    int zzb2 = zzgmq.zzb((List) unsafe.getObject(t, j));
                    i = i19;
                    if (zzb2 > 0) {
                        int zzz7 = zzgjs.zzz(i20);
                        i14 = zzgjs.zzA(zzb2);
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
                case C3681R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                    int zzw = zzgmq.zzw((List) unsafe.getObject(t, j));
                    i = i19;
                    if (zzw > 0) {
                        int zzz8 = zzgjs.zzz(i20);
                        i14 = zzgjs.zzA(zzw);
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
                case C3681R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                    int zze = zzgmq.zze((List) unsafe.getObject(t, j));
                    i = i19;
                    if (zze > 0) {
                        int zzz9 = zzgjs.zzz(i20);
                        i14 = zzgjs.zzA(zze);
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
                case C3681R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                    int zzg3 = zzgmq.zzg((List) unsafe.getObject(t, j));
                    i = i19;
                    if (zzg3 > 0) {
                        int zzz10 = zzgjs.zzz(i20);
                        i14 = zzgjs.zzA(zzg3);
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
                case C3681R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                    int zzi3 = zzgmq.zzi((List) unsafe.getObject(t, j));
                    i = i19;
                    if (zzi3 > 0) {
                        int zzz11 = zzgjs.zzz(i20);
                        i14 = zzgjs.zzA(zzi3);
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
                case C3681R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                    int zzr = zzgmq.zzr((List) unsafe.getObject(t, j));
                    i = i19;
                    if (zzr > 0) {
                        int zzz12 = zzgjs.zzz(i20);
                        i14 = zzgjs.zzA(zzr);
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
                case C3681R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                    int zzt = zzgmq.zzt((List) unsafe.getObject(t, j));
                    i = i19;
                    if (zzt > 0) {
                        int zzz13 = zzgjs.zzz(i20);
                        i14 = zzgjs.zzA(zzt);
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
                case C3681R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                    i3 = zzgmq.zzj(i20, (List) zzgnp.zzh(t, j), zzF(i17));
                    break;
                case C3681R.styleable.AppCompatTheme_colorAccent /* 50 */:
                    zzglq.zza(i20, zzgnp.zzh(t, j), zzH(i17));
                    i = i19;
                    continue;
                    i17 += 3;
                    i18 = i;
                case 51:
                    i = i19;
                    if (zzT(t, i20, i17)) {
                        i2 = zzgjs.zzA(i20 << 3);
                        i3 = i2 + 8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                    i = i19;
                    if (zzT(t, i20, i17)) {
                        i4 = zzgjs.zzA(i20 << 3);
                        i3 = i4 + 4;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                    i = i19;
                    if (zzT(t, i20, i17)) {
                        long zzD = zzD(t, j);
                        i6 = zzgjs.zzA(i20 << 3);
                        i5 = zzgjs.zzB(zzD);
                        i3 = i5 + i6;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                    i = i19;
                    if (zzT(t, i20, i17)) {
                        long zzD2 = zzD(t, j);
                        i6 = zzgjs.zzA(i20 << 3);
                        i5 = zzgjs.zzB(zzD2);
                        i3 = i5 + i6;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                    i = i19;
                    if (zzT(t, i20, i17)) {
                        int zzs = zzs(t, j);
                        i8 = zzgjs.zzA(i20 << 3);
                        i7 = zzgjs.zzv(zzs);
                        i3 = i7 + i8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_colorError /* 56 */:
                    i = i19;
                    if (zzT(t, i20, i17)) {
                        i2 = zzgjs.zzA(i20 << 3);
                        i3 = i2 + 8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                    i = i19;
                    if (zzT(t, i20, i17)) {
                        i4 = zzgjs.zzA(i20 << 3);
                        i3 = i4 + 4;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                    i = i19;
                    if (zzT(t, i20, i17)) {
                        i9 = zzgjs.zzA(i20 << 3);
                        i3 = i9 + 1;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                    i = i19;
                    if (zzT(t, i20, i17)) {
                        Object zzh2 = zzgnp.zzh(t, j);
                        if (!(zzh2 instanceof zzgjf)) {
                            i8 = zzgjs.zzA(i20 << 3);
                            i7 = zzgjs.zzy((String) zzh2);
                            i3 = i7 + i8;
                            break;
                        } else {
                            i13 = zzgjs.zzA(i20 << 3);
                            i12 = ((zzgjf) zzh2).zzd();
                            i11 = zzgjs.zzA(i12);
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
                    if (zzT(t, i20, i17)) {
                        i3 = zzgmq.zzo(i20, zzgnp.zzh(t, j), zzF(i17));
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                    i = i19;
                    if (zzT(t, i20, i17)) {
                        zzgjf zzgjfVar2 = (zzgjf) zzgnp.zzh(t, j);
                        i13 = zzgjs.zzA(i20 << 3);
                        i12 = zzgjfVar2.zzd();
                        i11 = zzgjs.zzA(i12);
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
                    if (zzT(t, i20, i17)) {
                        int zzs2 = zzs(t, j);
                        i8 = zzgjs.zzA(i20 << 3);
                        i7 = zzgjs.zzA(zzs2);
                        i3 = i7 + i8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                    i = i19;
                    if (zzT(t, i20, i17)) {
                        int zzs3 = zzs(t, j);
                        i8 = zzgjs.zzA(i20 << 3);
                        i7 = zzgjs.zzv(zzs3);
                        i3 = i7 + i8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_dividerHorizontal /* 64 */:
                    i = i19;
                    if (zzT(t, i20, i17)) {
                        i4 = zzgjs.zzA(i20 << 3);
                        i3 = i4 + 4;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_dividerVertical /* 65 */:
                    i = i19;
                    if (zzT(t, i20, i17)) {
                        i2 = zzgjs.zzA(i20 << 3);
                        i3 = i2 + 8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                    i = i19;
                    if (zzT(t, i20, i17)) {
                        int zzs4 = zzs(t, j);
                        i8 = zzgjs.zzA(i20 << 3);
                        i7 = zzgjs.zzA((zzs4 >> 31) ^ (zzs4 + zzs4));
                        i3 = i7 + i8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                    i = i19;
                    if (zzT(t, i20, i17)) {
                        long zzD3 = zzD(t, j);
                        i8 = zzgjs.zzA(i20 << 3);
                        i7 = zzgjs.zzB((zzD3 >> 63) ^ (zzD3 + zzD3));
                        i3 = i7 + i8;
                        break;
                    } else {
                        continue;
                        i17 += 3;
                        i18 = i;
                    }
                case C3681R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                    i = i19;
                    if (zzT(t, i20, i17)) {
                        i3 = zzgjs.zzu(i20, (zzglv) zzgnp.zzh(t, j), zzF(i17));
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

    private static <T> int zzs(T t, long j) {
        return ((Integer) zzgnp.zzh(t, j)).intValue();
    }

    private final <K, V> int zzt(T t, byte[] bArr, int i, int i2, int i3, long j, zzgiq zzgiqVar) throws IOException {
        Unsafe unsafe = zzb;
        Object zzH = zzH(i3);
        Object object = unsafe.getObject(t, j);
        if (zzglq.zzb(object)) {
            zzglp<K, V> zzb2 = zzglp.zza().zzb();
            zzglq.zzc(zzb2, object);
            unsafe.putObject(t, j, zzb2);
        }
        zzglo zzgloVar = (zzglo) zzH;
        throw null;
    }

    private final int zzu(T t, byte[] bArr, int i, int i2, int i3, int i4, int i5, int i6, int i7, long j, int i8, zzgiq zzgiqVar) throws IOException {
        Unsafe unsafe = zzb;
        long j2 = this.zzc[i8 + 2] & 1048575;
        switch (i7) {
            case 51:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Double.valueOf(Double.longBitsToDouble(zzgir.zzn(bArr, i))));
                    unsafe.putInt(t, j2, i4);
                    return i + 8;
                }
                break;
            case C3681R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Float.valueOf(Float.intBitsToFloat(zzgir.zzb(bArr, i))));
                    unsafe.putInt(t, j2, i4);
                    return i + 4;
                }
                break;
            case C3681R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
            case C3681R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                if (i5 == 0) {
                    int zzm = zzgir.zzm(bArr, i, zzgiqVar);
                    unsafe.putObject(t, j, Long.valueOf(zzgiqVar.zzb));
                    unsafe.putInt(t, j2, i4);
                    return zzm;
                }
                break;
            case C3681R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
            case C3681R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                if (i5 == 0) {
                    int zzj = zzgir.zzj(bArr, i, zzgiqVar);
                    unsafe.putObject(t, j, Integer.valueOf(zzgiqVar.zza));
                    unsafe.putInt(t, j2, i4);
                    return zzj;
                }
                break;
            case C3681R.styleable.AppCompatTheme_colorError /* 56 */:
            case C3681R.styleable.AppCompatTheme_dividerVertical /* 65 */:
                if (i5 == 1) {
                    unsafe.putObject(t, j, Long.valueOf(zzgir.zzn(bArr, i)));
                    unsafe.putInt(t, j2, i4);
                    return i + 8;
                }
                break;
            case C3681R.styleable.AppCompatTheme_colorPrimary /* 57 */:
            case C3681R.styleable.AppCompatTheme_dividerHorizontal /* 64 */:
                if (i5 == 5) {
                    unsafe.putObject(t, j, Integer.valueOf(zzgir.zzb(bArr, i)));
                    unsafe.putInt(t, j2, i4);
                    return i + 4;
                }
                break;
            case C3681R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                if (i5 == 0) {
                    int zzm2 = zzgir.zzm(bArr, i, zzgiqVar);
                    unsafe.putObject(t, j, Boolean.valueOf(zzgiqVar.zzb != 0));
                    unsafe.putInt(t, j2, i4);
                    return zzm2;
                }
                break;
            case C3681R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                if (i5 == 2) {
                    i = zzgir.zzj(bArr, i, zzgiqVar);
                    int i9 = zzgiqVar.zza;
                    if (i9 == 0) {
                        unsafe.putObject(t, j, "");
                    } else if ((i6 & 536870912) != 0 && !zzgnu.zzj(bArr, i, i + i9)) {
                        throw zzgkx.zzd();
                    } else {
                        unsafe.putObject(t, j, new String(bArr, i, i9, zzgkv.zzb));
                        i += i9;
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case C3681R.styleable.AppCompatTheme_controlBackground /* 60 */:
                if (i5 == 2) {
                    i = zzgir.zzd(zzF(i8), bArr, i, i2, zzgiqVar);
                    Object object = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object == null) {
                        unsafe.putObject(t, j, zzgiqVar.zzc);
                    } else {
                        unsafe.putObject(t, j, zzgkv.zzg(object, zzgiqVar.zzc));
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
            case C3681R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                if (i5 == 2) {
                    int zza2 = zzgir.zza(bArr, i, zzgiqVar);
                    unsafe.putObject(t, j, zzgiqVar.zzc);
                    unsafe.putInt(t, j2, i4);
                    return zza2;
                }
                break;
            case C3681R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                if (i5 == 0) {
                    i = zzgir.zzj(bArr, i, zzgiqVar);
                    int i10 = zzgiqVar.zza;
                    zzgkp zzE = zzE(i8);
                    if (zzE != null && !zzE.zza(i10)) {
                        zzd(t).zzh(i3, Long.valueOf(i10));
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
                    int zzj2 = zzgir.zzj(bArr, i, zzgiqVar);
                    unsafe.putObject(t, j, Integer.valueOf(zzgjn.zzF(zzgiqVar.zza)));
                    unsafe.putInt(t, j2, i4);
                    return zzj2;
                }
                break;
            case C3681R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                if (i5 == 0) {
                    int zzm3 = zzgir.zzm(bArr, i, zzgiqVar);
                    unsafe.putObject(t, j, Long.valueOf(zzgjn.zzG(zzgiqVar.zzb)));
                    unsafe.putInt(t, j2, i4);
                    return zzm3;
                }
                break;
            case C3681R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                if (i5 == 3) {
                    i = zzgir.zzc(zzF(i8), bArr, i, i2, (i3 & (-8)) | 4, zzgiqVar);
                    Object object2 = unsafe.getInt(t, j2) == i4 ? unsafe.getObject(t, j) : null;
                    if (object2 == null) {
                        unsafe.putObject(t, j, zzgiqVar.zzc);
                    } else {
                        unsafe.putObject(t, j, zzgkv.zzg(object2, zzgiqVar.zzc));
                    }
                    unsafe.putInt(t, j2, i4);
                    break;
                }
                break;
        }
        return i;
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
    private final int zzv(T r17, byte[] r18, int r19, int r20, com.google.android.gms.internal.ads.zzgiq r21) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1337
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgly.zzv(java.lang.Object, byte[], int, int, com.google.android.gms.internal.ads.zzgiq):int");
    }

    /* JADX WARN: Removed duplicated region for block: B:118:0x040b  */
    /* JADX WARN: Removed duplicated region for block: B:322:0x0944 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0318  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:115:0x03fd -> B:116:0x0402). Please submit an issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:77:0x030d -> B:78:0x0312). Please submit an issue!!! */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    private final int zzw(T r9, byte[] r10, int r11, int r12, int r13, int r14, int r15, int r16, long r17, int r19, long r20, com.google.android.gms.internal.ads.zzgiq r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 2377
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgly.zzw(java.lang.Object, byte[], int, int, int, int, int, int, long, int, long, com.google.android.gms.internal.ads.zzgiq):int");
    }

    private final int zzx(int i) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzA(i, 0);
    }

    private final int zzy(int i, int i2) {
        if (i < this.zze || i > this.zzf) {
            return -1;
        }
        return zzA(i, i2);
    }

    private final int zzz(int i) {
        return this.zzc[i + 2];
    }

    @Override // com.google.android.gms.internal.ads.zzgmo
    public final int zza(T t) {
        return this.zzj ? zzr(t) : zzq(t);
    }

    @Override // com.google.android.gms.internal.ads.zzgmo
    public final int zzb(T t) {
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
                int hashCode = this.zzo.zzd(t).hashCode();
                if (!this.zzh) {
                    return hashCode + (i8 * 53);
                }
                this.zzp.zza(t);
                throw null;
            }
            int zzC = zzC(i6);
            int i9 = this.zzc[i6];
            long j = 1048575 & zzC;
            int i10 = 37;
            switch (zzB(zzC)) {
                case 0:
                    i2 = i8 * 53;
                    i3 = zzgkv.zzc(Double.doubleToLongBits(zzgnp.zzb(t, j)));
                    i = i3 + i2;
                    break;
                case 1:
                    i2 = i8 * 53;
                    i3 = Float.floatToIntBits(zzgnp.zzc(t, j));
                    i = i3 + i2;
                    break;
                case 2:
                    i2 = i8 * 53;
                    i3 = zzgkv.zzc(zzgnp.zzf(t, j));
                    i = i3 + i2;
                    break;
                case 3:
                    i2 = i8 * 53;
                    i3 = zzgkv.zzc(zzgnp.zzf(t, j));
                    i = i3 + i2;
                    break;
                case 4:
                    i4 = i8 * 53;
                    i5 = zzgnp.zzd(t, j);
                    i = i4 + i5;
                    break;
                case 5:
                    i2 = i8 * 53;
                    i3 = zzgkv.zzc(zzgnp.zzf(t, j));
                    i = i3 + i2;
                    break;
                case 6:
                    i4 = i8 * 53;
                    i5 = zzgnp.zzd(t, j);
                    i = i4 + i5;
                    break;
                case 7:
                    i2 = i8 * 53;
                    i3 = zzgkv.zza(zzgnp.zzz(t, j));
                    i = i3 + i2;
                    break;
                case 8:
                    i2 = i8 * 53;
                    i3 = ((String) zzgnp.zzh(t, j)).hashCode();
                    i = i3 + i2;
                    break;
                case 9:
                    Object zzh = zzgnp.zzh(t, j);
                    if (zzh != null) {
                        i10 = zzh.hashCode();
                    }
                    i = (i8 * 53) + i10;
                    break;
                case 10:
                    i2 = i8 * 53;
                    i3 = zzgnp.zzh(t, j).hashCode();
                    i = i3 + i2;
                    break;
                case 11:
                    i4 = i8 * 53;
                    i5 = zzgnp.zzd(t, j);
                    i = i4 + i5;
                    break;
                case 12:
                    i4 = i8 * 53;
                    i5 = zzgnp.zzd(t, j);
                    i = i4 + i5;
                    break;
                case 13:
                    i4 = i8 * 53;
                    i5 = zzgnp.zzd(t, j);
                    i = i4 + i5;
                    break;
                case 14:
                    i2 = i8 * 53;
                    i3 = zzgkv.zzc(zzgnp.zzf(t, j));
                    i = i3 + i2;
                    break;
                case 15:
                    i4 = i8 * 53;
                    i5 = zzgnp.zzd(t, j);
                    i = i4 + i5;
                    break;
                case 16:
                    i2 = i8 * 53;
                    i3 = zzgkv.zzc(zzgnp.zzf(t, j));
                    i = i3 + i2;
                    break;
                case 17:
                    Object zzh2 = zzgnp.zzh(t, j);
                    if (zzh2 != null) {
                        i10 = zzh2.hashCode();
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
                    i3 = zzgnp.zzh(t, j).hashCode();
                    i = i3 + i2;
                    break;
                case C3681R.styleable.AppCompatTheme_colorAccent /* 50 */:
                    i2 = i8 * 53;
                    i3 = zzgnp.zzh(t, j).hashCode();
                    i = i3 + i2;
                    break;
                case 51:
                    i = i8;
                    if (!zzT(t, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzgkv.zzc(Double.doubleToLongBits(zzo(t, j)));
                        i = i3 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                    i = i8;
                    if (!zzT(t, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = Float.floatToIntBits(zzp(t, j));
                        i = i3 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                    i = i8;
                    if (!zzT(t, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzgkv.zzc(zzD(t, j));
                        i = i3 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                    i = i8;
                    if (!zzT(t, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzgkv.zzc(zzD(t, j));
                        i = i3 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                    i = i8;
                    if (!zzT(t, i9, i6)) {
                        break;
                    } else {
                        i4 = i8 * 53;
                        i5 = zzs(t, j);
                        i = i4 + i5;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorError /* 56 */:
                    i = i8;
                    if (!zzT(t, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzgkv.zzc(zzD(t, j));
                        i = i3 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                    i = i8;
                    if (!zzT(t, i9, i6)) {
                        break;
                    } else {
                        i4 = i8 * 53;
                        i5 = zzs(t, j);
                        i = i4 + i5;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                    i = i8;
                    if (!zzT(t, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzgkv.zza(zzU(t, j));
                        i = i3 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                    i = i8;
                    if (!zzT(t, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = ((String) zzgnp.zzh(t, j)).hashCode();
                        i = i3 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_controlBackground /* 60 */:
                    i = i8;
                    if (!zzT(t, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzgnp.zzh(t, j).hashCode();
                        i = i3 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                    i = i8;
                    if (!zzT(t, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzgnp.zzh(t, j).hashCode();
                        i = i3 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                    i = i8;
                    if (!zzT(t, i9, i6)) {
                        break;
                    } else {
                        i4 = i8 * 53;
                        i5 = zzs(t, j);
                        i = i4 + i5;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                    i = i8;
                    if (!zzT(t, i9, i6)) {
                        break;
                    } else {
                        i4 = i8 * 53;
                        i5 = zzs(t, j);
                        i = i4 + i5;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dividerHorizontal /* 64 */:
                    i = i8;
                    if (!zzT(t, i9, i6)) {
                        break;
                    } else {
                        i4 = i8 * 53;
                        i5 = zzs(t, j);
                        i = i4 + i5;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dividerVertical /* 65 */:
                    i = i8;
                    if (!zzT(t, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzgkv.zzc(zzD(t, j));
                        i = i3 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                    i = i8;
                    if (!zzT(t, i9, i6)) {
                        break;
                    } else {
                        i4 = i8 * 53;
                        i5 = zzs(t, j);
                        i = i4 + i5;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                    i = i8;
                    if (!zzT(t, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzgkv.zzc(zzD(t, j));
                        i = i3 + i2;
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                    i = i8;
                    if (!zzT(t, i9, i6)) {
                        break;
                    } else {
                        i2 = i8 * 53;
                        i3 = zzgnp.zzh(t, j).hashCode();
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

    /* JADX WARN: Code restructure failed: missing block: B:138:0x0636, code lost:
        if (r33 == 1048575) goto L140;
     */
    /* JADX WARN: Code restructure failed: missing block: B:139:0x0639, code lost:
        r0.putInt(r17, r33, r32);
     */
    /* JADX WARN: Code restructure failed: missing block: B:140:0x0644, code lost:
        r19 = r18.zzl;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x064e, code lost:
        if (r19 >= r18.zzm) goto L206;
     */
    /* JADX WARN: Code restructure failed: missing block: B:143:0x0651, code lost:
        r18.zzG(r17, r18.zzk[r19], null, r18.zzo);
        r19 = r19 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x066a, code lost:
        if (r30 != 0) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x0671, code lost:
        if (r21 != r20) goto L148;
     */
    /* JADX WARN: Code restructure failed: missing block: B:149:0x067a, code lost:
        throw com.google.android.gms.internal.ads.zzgkx.zzg();
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x067f, code lost:
        if (r21 > r20) goto L156;
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x0686, code lost:
        if (r29 != r30) goto L156;
     */
    /* JADX WARN: Code restructure failed: missing block: B:155:0x068b, code lost:
        return r21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x068f, code lost:
        throw com.google.android.gms.internal.ads.zzgkx.zzg();
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final int zzc(T r17, byte[] r18, int r19, int r20, int r21, com.google.android.gms.internal.ads.zzgiq r22) throws java.io.IOException {
        /*
            Method dump skipped, instructions count: 1680
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzgly.zzc(java.lang.Object, byte[], int, int, int, com.google.android.gms.internal.ads.zzgiq):int");
    }

    @Override // com.google.android.gms.internal.ads.zzgmo
    public final T zze() {
        return (T) ((zzgkl) this.zzg).zzb(4, null, null);
    }

    @Override // com.google.android.gms.internal.ads.zzgmo
    public final void zzf(T t) {
        int i;
        int i2 = this.zzl;
        while (true) {
            i = this.zzm;
            if (i2 >= i) {
                break;
            }
            long zzC = zzC(this.zzk[i2]) & 1048575;
            Object zzh = zzgnp.zzh(t, zzC);
            if (zzh != null) {
                ((zzglp) zzh).zzc();
                zzgnp.zzv(t, zzC, zzh);
            }
            i2++;
        }
        int length = this.zzk.length;
        for (int i3 = i; i3 < length; i3++) {
            this.zzn.zzb(t, this.zzk[i3]);
        }
        this.zzo.zzm(t);
        if (this.zzh) {
            this.zzp.zze(t);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgmo
    public final void zzg(T t, T t2) {
        Objects.requireNonNull(t2);
        for (int i = 0; i < this.zzc.length; i += 3) {
            int zzC = zzC(i);
            long j = 1048575 & zzC;
            int i2 = this.zzc[i];
            switch (zzB(zzC)) {
                case 0:
                    if (zzQ(t2, i)) {
                        zzgnp.zzr(t, j, zzgnp.zzb(t2, j));
                        zzM(t, i);
                        break;
                    } else {
                        break;
                    }
                case 1:
                    if (zzQ(t2, i)) {
                        zzgnp.zzs(t, j, zzgnp.zzc(t2, j));
                        zzM(t, i);
                        break;
                    } else {
                        break;
                    }
                case 2:
                    if (zzQ(t2, i)) {
                        zzgnp.zzu(t, j, zzgnp.zzf(t2, j));
                        zzM(t, i);
                        break;
                    } else {
                        break;
                    }
                case 3:
                    if (zzQ(t2, i)) {
                        zzgnp.zzu(t, j, zzgnp.zzf(t2, j));
                        zzM(t, i);
                        break;
                    } else {
                        break;
                    }
                case 4:
                    if (zzQ(t2, i)) {
                        zzgnp.zzt(t, j, zzgnp.zzd(t2, j));
                        zzM(t, i);
                        break;
                    } else {
                        break;
                    }
                case 5:
                    if (zzQ(t2, i)) {
                        zzgnp.zzu(t, j, zzgnp.zzf(t2, j));
                        zzM(t, i);
                        break;
                    } else {
                        break;
                    }
                case 6:
                    if (zzQ(t2, i)) {
                        zzgnp.zzt(t, j, zzgnp.zzd(t2, j));
                        zzM(t, i);
                        break;
                    } else {
                        break;
                    }
                case 7:
                    if (zzQ(t2, i)) {
                        zzgnp.zzp(t, j, zzgnp.zzz(t2, j));
                        zzM(t, i);
                        break;
                    } else {
                        break;
                    }
                case 8:
                    if (zzQ(t2, i)) {
                        zzgnp.zzv(t, j, zzgnp.zzh(t2, j));
                        zzM(t, i);
                        break;
                    } else {
                        break;
                    }
                case 9:
                    zzJ(t, t2, i);
                    break;
                case 10:
                    if (zzQ(t2, i)) {
                        zzgnp.zzv(t, j, zzgnp.zzh(t2, j));
                        zzM(t, i);
                        break;
                    } else {
                        break;
                    }
                case 11:
                    if (zzQ(t2, i)) {
                        zzgnp.zzt(t, j, zzgnp.zzd(t2, j));
                        zzM(t, i);
                        break;
                    } else {
                        break;
                    }
                case 12:
                    if (zzQ(t2, i)) {
                        zzgnp.zzt(t, j, zzgnp.zzd(t2, j));
                        zzM(t, i);
                        break;
                    } else {
                        break;
                    }
                case 13:
                    if (zzQ(t2, i)) {
                        zzgnp.zzt(t, j, zzgnp.zzd(t2, j));
                        zzM(t, i);
                        break;
                    } else {
                        break;
                    }
                case 14:
                    if (zzQ(t2, i)) {
                        zzgnp.zzu(t, j, zzgnp.zzf(t2, j));
                        zzM(t, i);
                        break;
                    } else {
                        break;
                    }
                case 15:
                    if (zzQ(t2, i)) {
                        zzgnp.zzt(t, j, zzgnp.zzd(t2, j));
                        zzM(t, i);
                        break;
                    } else {
                        break;
                    }
                case 16:
                    if (zzQ(t2, i)) {
                        zzgnp.zzu(t, j, zzgnp.zzf(t2, j));
                        zzM(t, i);
                        break;
                    } else {
                        break;
                    }
                case 17:
                    zzJ(t, t2, i);
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
                    this.zzn.zzc(t, t2, j);
                    break;
                case C3681R.styleable.AppCompatTheme_colorAccent /* 50 */:
                    zzgmq.zzI(this.zzr, t, t2, j);
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
                    if (zzT(t2, i2, i)) {
                        zzgnp.zzv(t, j, zzgnp.zzh(t2, j));
                        zzN(t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_controlBackground /* 60 */:
                    zzK(t, t2, i);
                    break;
                case C3681R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                case C3681R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                case C3681R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                case C3681R.styleable.AppCompatTheme_dividerHorizontal /* 64 */:
                case C3681R.styleable.AppCompatTheme_dividerVertical /* 65 */:
                case C3681R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                case C3681R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                    if (zzT(t2, i2, i)) {
                        zzgnp.zzv(t, j, zzgnp.zzh(t2, j));
                        zzN(t, i2, i);
                        break;
                    } else {
                        break;
                    }
                case C3681R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                    zzK(t, t2, i);
                    break;
            }
        }
        zzgmq.zzF(this.zzo, t, t2);
        if (this.zzh) {
            zzgmq.zzE(this.zzp, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgmo
    public final void zzh(T t, zzgmg zzgmgVar, zzgjx zzgjxVar) throws IOException {
        zzglp zzglpVar;
        Objects.requireNonNull(zzgjxVar);
        zzgnf zzgnfVar = this.zzo;
        zzgjy<?> zzgjyVar = this.zzp;
        zzgkc<?> zzgkcVar = null;
        Object obj = null;
        while (true) {
            Object obj2 = obj;
            try {
                int zzc = zzgmgVar.zzc();
                Object obj3 = obj;
                int zzx = zzx(zzc);
                if (zzx >= 0) {
                    int zzC = zzC(zzx);
                    obj2 = obj;
                    Object obj4 = obj;
                    try {
                        switch (zzB(zzC)) {
                            case 0:
                                zzgnp.zzr(t, zzC & 1048575, zzgmgVar.zza());
                                Object obj5 = obj;
                                zzM(t, zzx);
                                break;
                            case 1:
                                zzgnp.zzs(t, zzC & 1048575, zzgmgVar.zzb());
                                Object obj6 = obj;
                                zzM(t, zzx);
                                break;
                            case 2:
                                zzgnp.zzu(t, zzC & 1048575, zzgmgVar.zzl());
                                Object obj7 = obj;
                                zzM(t, zzx);
                                break;
                            case 3:
                                zzgnp.zzu(t, zzC & 1048575, zzgmgVar.zzo());
                                Object obj8 = obj;
                                zzM(t, zzx);
                                break;
                            case 4:
                                zzgnp.zzt(t, zzC & 1048575, zzgmgVar.zzg());
                                Object obj9 = obj;
                                zzM(t, zzx);
                                break;
                            case 5:
                                zzgnp.zzu(t, zzC & 1048575, zzgmgVar.zzk());
                                Object obj10 = obj;
                                zzM(t, zzx);
                                break;
                            case 6:
                                zzgnp.zzt(t, zzC & 1048575, zzgmgVar.zzf());
                                Object obj11 = obj;
                                zzM(t, zzx);
                                break;
                            case 7:
                                zzgnp.zzp(t, zzC & 1048575, zzgmgVar.zzN());
                                Object obj12 = obj;
                                zzM(t, zzx);
                                break;
                            case 8:
                                zzL(t, zzC, zzgmgVar);
                                Object obj13 = obj;
                                zzM(t, zzx);
                                break;
                            case 9:
                                if (zzQ(t, zzx)) {
                                    long j = zzC & 1048575;
                                    zzgnp.zzv(t, j, zzgkv.zzg(zzgnp.zzh(t, j), zzgmgVar.zzs(zzF(zzx), zzgjxVar)));
                                    break;
                                } else {
                                    zzgnp.zzv(t, zzC & 1048575, zzgmgVar.zzs(zzF(zzx), zzgjxVar));
                                    Object obj14 = obj;
                                    zzM(t, zzx);
                                    break;
                                }
                            case 10:
                                zzgnp.zzv(t, zzC & 1048575, zzgmgVar.zzp());
                                Object obj15 = obj;
                                zzM(t, zzx);
                                break;
                            case 11:
                                zzgnp.zzt(t, zzC & 1048575, zzgmgVar.zzj());
                                Object obj16 = obj;
                                zzM(t, zzx);
                                break;
                            case 12:
                                int zze = zzgmgVar.zze();
                                Object obj17 = obj;
                                zzgkp zzE = zzE(zzx);
                                if (zzE != null && !zzE.zza(zze)) {
                                    obj = zzgmq.zzD(zzc, zze, obj, zzgnfVar);
                                    break;
                                }
                                zzgnp.zzt(t, zzC & 1048575, zze);
                                Object obj18 = obj;
                                zzM(t, zzx);
                                break;
                            case 13:
                                zzgnp.zzt(t, zzC & 1048575, zzgmgVar.zzh());
                                Object obj19 = obj;
                                zzM(t, zzx);
                                break;
                            case 14:
                                zzgnp.zzu(t, zzC & 1048575, zzgmgVar.zzm());
                                Object obj20 = obj;
                                zzM(t, zzx);
                                break;
                            case 15:
                                zzgnp.zzt(t, zzC & 1048575, zzgmgVar.zzi());
                                Object obj21 = obj;
                                zzM(t, zzx);
                                break;
                            case 16:
                                zzgnp.zzu(t, zzC & 1048575, zzgmgVar.zzn());
                                Object obj22 = obj;
                                zzM(t, zzx);
                                break;
                            case 17:
                                if (zzQ(t, zzx)) {
                                    long j2 = zzC & 1048575;
                                    zzgnp.zzv(t, j2, zzgkv.zzg(zzgnp.zzh(t, j2), zzgmgVar.zzr(zzF(zzx), zzgjxVar)));
                                    break;
                                } else {
                                    zzgnp.zzv(t, zzC & 1048575, zzgmgVar.zzr(zzF(zzx), zzgjxVar));
                                    Object obj23 = obj;
                                    zzM(t, zzx);
                                    break;
                                }
                            case 18:
                                zzgmgVar.zzx(this.zzn.zza(t, zzC & 1048575));
                                break;
                            case 19:
                                zzgmgVar.zzB(this.zzn.zza(t, zzC & 1048575));
                                break;
                            case 20:
                                zzgmgVar.zzE(this.zzn.zza(t, zzC & 1048575));
                                break;
                            case 21:
                                zzgmgVar.zzM(this.zzn.zza(t, zzC & 1048575));
                                break;
                            case 22:
                                zzgmgVar.zzD(this.zzn.zza(t, zzC & 1048575));
                                break;
                            case 23:
                                zzgmgVar.zzA(this.zzn.zza(t, zzC & 1048575));
                                break;
                            case 24:
                                zzgmgVar.zzz(this.zzn.zza(t, zzC & 1048575));
                                break;
                            case 25:
                                zzgmgVar.zzv(this.zzn.zza(t, zzC & 1048575));
                                break;
                            case 26:
                                if (zzP(zzC)) {
                                    Object obj24 = obj;
                                    List<String> zza2 = this.zzn.zza(t, zzC & 1048575);
                                    Object obj25 = obj;
                                    ((zzgjo) zzgmgVar).zzK(zza2, true);
                                    break;
                                } else {
                                    List<String> zza3 = this.zzn.zza(t, zzC & 1048575);
                                    Object obj26 = obj;
                                    ((zzgjo) zzgmgVar).zzK(zza3, false);
                                    break;
                                }
                            case 27:
                                zzgmgVar.zzF(this.zzn.zza(t, zzC & 1048575), zzF(zzx), zzgjxVar);
                                break;
                            case 28:
                                zzgmgVar.zzw(this.zzn.zza(t, zzC & 1048575));
                                break;
                            case 29:
                                zzgmgVar.zzL(this.zzn.zza(t, zzC & 1048575));
                                break;
                            case C3681R.styleable.AppCompatTheme_actionModeTheme /* 30 */:
                                List<Integer> zza4 = this.zzn.zza(t, zzC & 1048575);
                                Object obj27 = obj;
                                zzgmgVar.zzy(zza4);
                                Object obj28 = obj;
                                obj = zzgmq.zzC(zzc, zza4, zzE(zzx), obj, zzgnfVar);
                                break;
                            case C3681R.styleable.AppCompatTheme_actionModeWebSearchDrawable /* 31 */:
                                zzgmgVar.zzG(this.zzn.zza(t, zzC & 1048575));
                                break;
                            case C3681R.styleable.AppCompatTheme_actionOverflowButtonStyle /* 32 */:
                                zzgmgVar.zzH(this.zzn.zza(t, zzC & 1048575));
                                break;
                            case C3681R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                                zzgmgVar.zzI(this.zzn.zza(t, zzC & 1048575));
                                break;
                            case C3681R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                                zzgmgVar.zzJ(this.zzn.zza(t, zzC & 1048575));
                                break;
                            case C3681R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                                zzgmgVar.zzx(this.zzn.zza(t, zzC & 1048575));
                                break;
                            case C3681R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                                zzgmgVar.zzB(this.zzn.zza(t, zzC & 1048575));
                                break;
                            case C3681R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                                zzgmgVar.zzE(this.zzn.zza(t, zzC & 1048575));
                                break;
                            case C3681R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                                zzgmgVar.zzM(this.zzn.zza(t, zzC & 1048575));
                                break;
                            case C3681R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                                zzgmgVar.zzD(this.zzn.zza(t, zzC & 1048575));
                                break;
                            case C3681R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                                zzgmgVar.zzA(this.zzn.zza(t, zzC & 1048575));
                                break;
                            case C3681R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                                zzgmgVar.zzz(this.zzn.zza(t, zzC & 1048575));
                                break;
                            case C3681R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                                zzgmgVar.zzv(this.zzn.zza(t, zzC & 1048575));
                                break;
                            case C3681R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                                zzgmgVar.zzL(this.zzn.zza(t, zzC & 1048575));
                                break;
                            case C3681R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                                List<Integer> zza5 = this.zzn.zza(t, zzC & 1048575);
                                Object obj29 = obj;
                                zzgmgVar.zzy(zza5);
                                Object obj30 = obj;
                                obj = zzgmq.zzC(zzc, zza5, zzE(zzx), obj, zzgnfVar);
                                break;
                            case C3681R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                                zzgmgVar.zzG(this.zzn.zza(t, zzC & 1048575));
                                break;
                            case C3681R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                                zzgmgVar.zzH(this.zzn.zza(t, zzC & 1048575));
                                break;
                            case C3681R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                                zzgmgVar.zzI(this.zzn.zza(t, zzC & 1048575));
                                break;
                            case C3681R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                                zzgmgVar.zzJ(this.zzn.zza(t, zzC & 1048575));
                                break;
                            case C3681R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                                long j3 = zzC & 1048575;
                                zzgmo<T> zzF = zzF(zzx);
                                Object obj31 = obj;
                                zzgmgVar.zzC(this.zzn.zza(t, j3), zzF, zzgjxVar);
                                break;
                            case C3681R.styleable.AppCompatTheme_colorAccent /* 50 */:
                                Object zzH = zzH(zzx);
                                Object obj32 = obj;
                                long zzC2 = zzC(zzx) & 1048575;
                                Object obj33 = obj;
                                Object zzh = zzgnp.zzh(t, zzC2);
                                if (zzh != null) {
                                    zzglpVar = zzh;
                                    if (zzglq.zzb(zzh)) {
                                        Object obj34 = obj;
                                        zzglp zzb2 = zzglp.zza().zzb();
                                        Object obj35 = obj;
                                        zzglq.zzc(zzb2, zzh);
                                        Object obj36 = obj;
                                        zzgnp.zzv(t, zzC2, zzb2);
                                        zzglpVar = zzb2;
                                    }
                                } else {
                                    zzglp zzb3 = zzglp.zza().zzb();
                                    Object obj37 = obj;
                                    zzgnp.zzv(t, zzC2, zzb3);
                                    zzglpVar = zzb3;
                                }
                                Object obj38 = obj;
                                zzglp zzglpVar2 = zzglpVar;
                                Object obj39 = obj;
                                zzglo zzgloVar = (zzglo) zzH;
                                obj2 = obj;
                                obj4 = obj;
                                throw null;
                                break;
                            case 51:
                                zzgnp.zzv(t, zzC & 1048575, Double.valueOf(zzgmgVar.zza()));
                                Object obj40 = obj;
                                zzN(t, zzc, zzx);
                                break;
                            case C3681R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                                zzgnp.zzv(t, zzC & 1048575, Float.valueOf(zzgmgVar.zzb()));
                                Object obj41 = obj;
                                zzN(t, zzc, zzx);
                                break;
                            case C3681R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                                zzgnp.zzv(t, zzC & 1048575, Long.valueOf(zzgmgVar.zzl()));
                                Object obj42 = obj;
                                zzN(t, zzc, zzx);
                                break;
                            case C3681R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                                zzgnp.zzv(t, zzC & 1048575, Long.valueOf(zzgmgVar.zzo()));
                                Object obj43 = obj;
                                zzN(t, zzc, zzx);
                                break;
                            case C3681R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                                zzgnp.zzv(t, zzC & 1048575, Integer.valueOf(zzgmgVar.zzg()));
                                Object obj44 = obj;
                                zzN(t, zzc, zzx);
                                break;
                            case C3681R.styleable.AppCompatTheme_colorError /* 56 */:
                                zzgnp.zzv(t, zzC & 1048575, Long.valueOf(zzgmgVar.zzk()));
                                Object obj45 = obj;
                                zzN(t, zzc, zzx);
                                break;
                            case C3681R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                                zzgnp.zzv(t, zzC & 1048575, Integer.valueOf(zzgmgVar.zzf()));
                                Object obj46 = obj;
                                zzN(t, zzc, zzx);
                                break;
                            case C3681R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                                zzgnp.zzv(t, zzC & 1048575, Boolean.valueOf(zzgmgVar.zzN()));
                                Object obj47 = obj;
                                zzN(t, zzc, zzx);
                                break;
                            case C3681R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                                zzL(t, zzC, zzgmgVar);
                                Object obj48 = obj;
                                zzN(t, zzc, zzx);
                                break;
                            case C3681R.styleable.AppCompatTheme_controlBackground /* 60 */:
                                if (zzT(t, zzc, zzx)) {
                                    long j4 = zzC & 1048575;
                                    zzgnp.zzv(t, j4, zzgkv.zzg(zzgnp.zzh(t, j4), zzgmgVar.zzs(zzF(zzx), zzgjxVar)));
                                } else {
                                    zzgnp.zzv(t, zzC & 1048575, zzgmgVar.zzs(zzF(zzx), zzgjxVar));
                                    Object obj49 = obj;
                                    zzM(t, zzx);
                                }
                                Object obj50 = obj;
                                zzN(t, zzc, zzx);
                                break;
                            case C3681R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                                zzgnp.zzv(t, zzC & 1048575, zzgmgVar.zzp());
                                Object obj51 = obj;
                                zzN(t, zzc, zzx);
                                break;
                            case C3681R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                                zzgnp.zzv(t, zzC & 1048575, Integer.valueOf(zzgmgVar.zzj()));
                                Object obj52 = obj;
                                zzN(t, zzc, zzx);
                                break;
                            case C3681R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                                int zze2 = zzgmgVar.zze();
                                Object obj53 = obj;
                                zzgkp zzE2 = zzE(zzx);
                                if (zzE2 != null && !zzE2.zza(zze2)) {
                                    obj = zzgmq.zzD(zzc, zze2, obj, zzgnfVar);
                                    break;
                                }
                                zzgnp.zzv(t, zzC & 1048575, Integer.valueOf(zze2));
                                Object obj54 = obj;
                                zzN(t, zzc, zzx);
                                break;
                            case C3681R.styleable.AppCompatTheme_dividerHorizontal /* 64 */:
                                zzgnp.zzv(t, zzC & 1048575, Integer.valueOf(zzgmgVar.zzh()));
                                Object obj55 = obj;
                                zzN(t, zzc, zzx);
                                break;
                            case C3681R.styleable.AppCompatTheme_dividerVertical /* 65 */:
                                zzgnp.zzv(t, zzC & 1048575, Long.valueOf(zzgmgVar.zzm()));
                                Object obj56 = obj;
                                zzN(t, zzc, zzx);
                                break;
                            case C3681R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                                zzgnp.zzv(t, zzC & 1048575, Integer.valueOf(zzgmgVar.zzi()));
                                Object obj57 = obj;
                                zzN(t, zzc, zzx);
                                break;
                            case C3681R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                                zzgnp.zzv(t, zzC & 1048575, Long.valueOf(zzgmgVar.zzn()));
                                Object obj58 = obj;
                                zzN(t, zzc, zzx);
                                break;
                            case C3681R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                                zzgnp.zzv(t, zzC & 1048575, zzgmgVar.zzr(zzF(zzx), zzgjxVar));
                                Object obj59 = obj;
                                zzN(t, zzc, zzx);
                                break;
                            default:
                                Object obj60 = obj;
                                if (obj == null) {
                                    obj60 = zzgnfVar.zzf();
                                }
                                obj = obj60;
                                if (!zzgnfVar.zzp(obj60, zzgmgVar)) {
                                    for (int i = this.zzl; i < this.zzm; i++) {
                                        obj60 = zzG(t, this.zzk[i], obj60, zzgnfVar);
                                    }
                                    if (obj60 == null) {
                                        return;
                                    }
                                    zzgnfVar.zzn(t, obj60);
                                    return;
                                }
                                break;
                        }
                    } catch (zzgkw e) {
                        zzgnfVar.zzq(zzgmgVar);
                        Object obj61 = obj4;
                        if (obj4 == null) {
                            obj61 = zzgnfVar.zzc(t);
                        }
                        Object obj62 = obj61;
                        obj = obj61;
                        if (!zzgnfVar.zzp(obj61, zzgmgVar)) {
                            for (int i2 = this.zzl; i2 < this.zzm; i2++) {
                                obj61 = zzG(t, this.zzk[i2], obj61, zzgnfVar);
                            }
                            if (obj61 == null) {
                                return;
                            }
                            zzgnfVar.zzn(t, obj61);
                            return;
                        }
                    }
                } else if (zzc == Integer.MAX_VALUE) {
                    for (int i3 = this.zzl; i3 < this.zzm; i3++) {
                        obj = zzG(t, this.zzk[i3], obj, zzgnfVar);
                    }
                    if (obj == null) {
                        return;
                    }
                    zzgnfVar.zzn(t, obj);
                    return;
                } else {
                    Object zzc2 = !this.zzh ? null : zzgjyVar.zzc(zzgjxVar, this.zzg, zzc);
                    if (zzc2 != null) {
                        zzgkc<?> zzgkcVar2 = zzgkcVar;
                        if (zzgkcVar == null) {
                            zzgkcVar2 = zzgjyVar.zzb(t);
                        }
                        Object obj63 = obj;
                        obj = zzgjyVar.zzd(zzgmgVar, zzc2, zzgjxVar, zzgkcVar2, obj, zzgnfVar);
                        zzgkcVar = zzgkcVar2;
                    } else {
                        zzgnfVar.zzq(zzgmgVar);
                        Object obj64 = obj;
                        if (obj == null) {
                            obj64 = zzgnfVar.zzc(t);
                        }
                        Object obj65 = obj64;
                        obj = obj64;
                        if (!zzgnfVar.zzp(obj64, zzgmgVar)) {
                            for (int i4 = this.zzl; i4 < this.zzm; i4++) {
                                obj64 = zzG(t, this.zzk[i4], obj64, zzgnfVar);
                            }
                            if (obj64 == null) {
                                return;
                            }
                            zzgnfVar.zzn(t, obj64);
                            return;
                        }
                    }
                }
            } catch (Throwable th) {
                for (int i5 = this.zzl; i5 < this.zzm; i5++) {
                    obj2 = zzG(t, this.zzk[i5], obj2, zzgnfVar);
                }
                if (obj2 != null) {
                    zzgnfVar.zzn(t, obj2);
                }
                throw th;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgmo
    public final void zzi(T t, byte[] bArr, int i, int i2, zzgiq zzgiqVar) throws IOException {
        if (this.zzj) {
            zzv(t, bArr, i, i2, zzgiqVar);
        } else {
            zzc(t, bArr, i, i2, 0, zzgiqVar);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgmo
    public final boolean zzj(T t, T t2) {
        boolean z;
        int length = this.zzc.length;
        for (int i = 0; i < length; i += 3) {
            int zzC = zzC(i);
            long j = zzC & 1048575;
            switch (zzB(zzC)) {
                case 0:
                    if (!zzO(t, t2, i) || Double.doubleToLongBits(zzgnp.zzb(t, j)) != Double.doubleToLongBits(zzgnp.zzb(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 1:
                    if (!zzO(t, t2, i) || Float.floatToIntBits(zzgnp.zzc(t, j)) != Float.floatToIntBits(zzgnp.zzc(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 2:
                    if (!zzO(t, t2, i) || zzgnp.zzf(t, j) != zzgnp.zzf(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 3:
                    if (!zzO(t, t2, i) || zzgnp.zzf(t, j) != zzgnp.zzf(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 4:
                    if (!zzO(t, t2, i) || zzgnp.zzd(t, j) != zzgnp.zzd(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 5:
                    if (!zzO(t, t2, i) || zzgnp.zzf(t, j) != zzgnp.zzf(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 6:
                    if (!zzO(t, t2, i) || zzgnp.zzd(t, j) != zzgnp.zzd(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 7:
                    if (!zzO(t, t2, i) || zzgnp.zzz(t, j) != zzgnp.zzz(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 8:
                    if (!zzO(t, t2, i) || !zzgmq.zzH(zzgnp.zzh(t, j), zzgnp.zzh(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 9:
                    if (!zzO(t, t2, i) || !zzgmq.zzH(zzgnp.zzh(t, j), zzgnp.zzh(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 10:
                    if (!zzO(t, t2, i) || !zzgmq.zzH(zzgnp.zzh(t, j), zzgnp.zzh(t2, j))) {
                        return false;
                    }
                    continue;
                    break;
                case 11:
                    if (!zzO(t, t2, i) || zzgnp.zzd(t, j) != zzgnp.zzd(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 12:
                    if (!zzO(t, t2, i) || zzgnp.zzd(t, j) != zzgnp.zzd(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 13:
                    if (!zzO(t, t2, i) || zzgnp.zzd(t, j) != zzgnp.zzd(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 14:
                    if (!zzO(t, t2, i) || zzgnp.zzf(t, j) != zzgnp.zzf(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 15:
                    if (!zzO(t, t2, i) || zzgnp.zzd(t, j) != zzgnp.zzd(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 16:
                    if (!zzO(t, t2, i) || zzgnp.zzf(t, j) != zzgnp.zzf(t2, j)) {
                        return false;
                    }
                    continue;
                    break;
                case 17:
                    if (!zzO(t, t2, i) || !zzgmq.zzH(zzgnp.zzh(t, j), zzgnp.zzh(t2, j))) {
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
                    z = zzgmq.zzH(zzgnp.zzh(t, j), zzgnp.zzh(t2, j));
                    break;
                case C3681R.styleable.AppCompatTheme_colorAccent /* 50 */:
                    z = zzgmq.zzH(zzgnp.zzh(t, j), zzgnp.zzh(t2, j));
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
                    long zzz = zzz(i) & 1048575;
                    if (zzgnp.zzd(t, zzz) != zzgnp.zzd(t2, zzz) || !zzgmq.zzH(zzgnp.zzh(t, j), zzgnp.zzh(t2, j))) {
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
        if (!this.zzo.zzd(t).equals(this.zzo.zzd(t2))) {
            return false;
        }
        if (!this.zzh) {
            return true;
        }
        this.zzp.zza(t);
        this.zzp.zza(t2);
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.internal.ads.zzgmo
    public final boolean zzk(T t) {
        int i = 1048575;
        int i2 = 0;
        for (int i3 = 0; i3 < this.zzl; i3++) {
            int i4 = this.zzk[i3];
            int i5 = this.zzc[i4];
            int zzC = zzC(i4);
            int i6 = this.zzc[i4 + 2];
            int i7 = i6 & 1048575;
            int i8 = 1 << (i6 >>> 20);
            if (i7 != i) {
                if (i7 != 1048575) {
                    i2 = zzb.getInt(t, i7);
                }
                i = i7;
            }
            if ((268435456 & zzC) != 0 && !zzR(t, i4, i, i2, i8)) {
                return false;
            }
            int zzB = zzB(zzC);
            if (zzB != 9 && zzB != 17) {
                if (zzB != 27) {
                    if (zzB == 60 || zzB == 68) {
                        if (zzT(t, i5, i4) && !zzS(t, zzC, zzF(i4))) {
                            return false;
                        }
                    } else if (zzB != 49) {
                        if (zzB == 50 && !((zzglp) zzgnp.zzh(t, zzC & 1048575)).isEmpty()) {
                            zzglo zzgloVar = (zzglo) zzH(i4);
                            throw null;
                        }
                    }
                }
                List list = (List) zzgnp.zzh(t, zzC & 1048575);
                if (!list.isEmpty()) {
                    zzgmo zzF = zzF(i4);
                    for (int i9 = 0; i9 < list.size(); i9++) {
                        if (!zzF.zzk(list.get(i9))) {
                            return false;
                        }
                    }
                    continue;
                } else {
                    continue;
                }
            } else if (zzR(t, i4, i, i2, i8) && !zzS(t, zzC, zzF(i4))) {
                return false;
            }
        }
        if (!this.zzh) {
            return true;
        }
        this.zzp.zza(t);
        throw null;
    }

    @Override // com.google.android.gms.internal.ads.zzgmo
    public final void zzn(T t, zzgjt zzgjtVar) throws IOException {
        if (!this.zzj) {
            zzV(t, zzgjtVar);
        } else if (this.zzh) {
            this.zzp.zza(t);
            throw null;
        } else {
            int length = this.zzc.length;
            for (int i = 0; i < length; i += 3) {
                int zzC = zzC(i);
                int i2 = this.zzc[i];
                switch (zzB(zzC)) {
                    case 0:
                        if (zzQ(t, i)) {
                            zzgjtVar.zzf(i2, zzgnp.zzb(t, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 1:
                        if (zzQ(t, i)) {
                            zzgjtVar.zzo(i2, zzgnp.zzc(t, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 2:
                        if (zzQ(t, i)) {
                            zzgjtVar.zzt(i2, zzgnp.zzf(t, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 3:
                        if (zzQ(t, i)) {
                            zzgjtVar.zzJ(i2, zzgnp.zzf(t, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 4:
                        if (zzQ(t, i)) {
                            zzgjtVar.zzr(i2, zzgnp.zzd(t, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 5:
                        if (zzQ(t, i)) {
                            zzgjtVar.zzm(i2, zzgnp.zzf(t, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 6:
                        if (zzQ(t, i)) {
                            zzgjtVar.zzk(i2, zzgnp.zzd(t, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 7:
                        if (zzQ(t, i)) {
                            zzgjtVar.zzb(i2, zzgnp.zzz(t, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 8:
                        if (zzQ(t, i)) {
                            zzX(i2, zzgnp.zzh(t, zzC & 1048575), zzgjtVar);
                            break;
                        } else {
                            break;
                        }
                    case 9:
                        if (zzQ(t, i)) {
                            zzgjtVar.zzv(i2, zzgnp.zzh(t, zzC & 1048575), zzF(i));
                            break;
                        } else {
                            break;
                        }
                    case 10:
                        if (zzQ(t, i)) {
                            zzgjtVar.zzd(i2, (zzgjf) zzgnp.zzh(t, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 11:
                        if (zzQ(t, i)) {
                            zzgjtVar.zzH(i2, zzgnp.zzd(t, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 12:
                        if (zzQ(t, i)) {
                            zzgjtVar.zzi(i2, zzgnp.zzd(t, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 13:
                        if (zzQ(t, i)) {
                            zzgjtVar.zzw(i2, zzgnp.zzd(t, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 14:
                        if (zzQ(t, i)) {
                            zzgjtVar.zzy(i2, zzgnp.zzf(t, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 15:
                        if (zzQ(t, i)) {
                            zzgjtVar.zzA(i2, zzgnp.zzd(t, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 16:
                        if (zzQ(t, i)) {
                            zzgjtVar.zzC(i2, zzgnp.zzf(t, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case 17:
                        if (zzQ(t, i)) {
                            zzgjtVar.zzq(i2, zzgnp.zzh(t, zzC & 1048575), zzF(i));
                            break;
                        } else {
                            break;
                        }
                    case 18:
                        zzgmq.zzL(this.zzc[i], (List) zzgnp.zzh(t, zzC & 1048575), zzgjtVar, false);
                        break;
                    case 19:
                        zzgmq.zzP(this.zzc[i], (List) zzgnp.zzh(t, zzC & 1048575), zzgjtVar, false);
                        break;
                    case 20:
                        zzgmq.zzS(this.zzc[i], (List) zzgnp.zzh(t, zzC & 1048575), zzgjtVar, false);
                        break;
                    case 21:
                        zzgmq.zzaa(this.zzc[i], (List) zzgnp.zzh(t, zzC & 1048575), zzgjtVar, false);
                        break;
                    case 22:
                        zzgmq.zzR(this.zzc[i], (List) zzgnp.zzh(t, zzC & 1048575), zzgjtVar, false);
                        break;
                    case 23:
                        zzgmq.zzO(this.zzc[i], (List) zzgnp.zzh(t, zzC & 1048575), zzgjtVar, false);
                        break;
                    case 24:
                        zzgmq.zzN(this.zzc[i], (List) zzgnp.zzh(t, zzC & 1048575), zzgjtVar, false);
                        break;
                    case 25:
                        zzgmq.zzJ(this.zzc[i], (List) zzgnp.zzh(t, zzC & 1048575), zzgjtVar, false);
                        break;
                    case 26:
                        zzgmq.zzY(this.zzc[i], (List) zzgnp.zzh(t, zzC & 1048575), zzgjtVar);
                        break;
                    case 27:
                        zzgmq.zzT(this.zzc[i], (List) zzgnp.zzh(t, zzC & 1048575), zzgjtVar, zzF(i));
                        break;
                    case 28:
                        zzgmq.zzK(this.zzc[i], (List) zzgnp.zzh(t, zzC & 1048575), zzgjtVar);
                        break;
                    case 29:
                        zzgmq.zzZ(this.zzc[i], (List) zzgnp.zzh(t, zzC & 1048575), zzgjtVar, false);
                        break;
                    case C3681R.styleable.AppCompatTheme_actionModeTheme /* 30 */:
                        zzgmq.zzM(this.zzc[i], (List) zzgnp.zzh(t, zzC & 1048575), zzgjtVar, false);
                        break;
                    case C3681R.styleable.AppCompatTheme_actionModeWebSearchDrawable /* 31 */:
                        zzgmq.zzU(this.zzc[i], (List) zzgnp.zzh(t, zzC & 1048575), zzgjtVar, false);
                        break;
                    case C3681R.styleable.AppCompatTheme_actionOverflowButtonStyle /* 32 */:
                        zzgmq.zzV(this.zzc[i], (List) zzgnp.zzh(t, zzC & 1048575), zzgjtVar, false);
                        break;
                    case C3681R.styleable.AppCompatTheme_actionOverflowMenuStyle /* 33 */:
                        zzgmq.zzW(this.zzc[i], (List) zzgnp.zzh(t, zzC & 1048575), zzgjtVar, false);
                        break;
                    case C3681R.styleable.AppCompatTheme_activityChooserViewStyle /* 34 */:
                        zzgmq.zzX(this.zzc[i], (List) zzgnp.zzh(t, zzC & 1048575), zzgjtVar, false);
                        break;
                    case C3681R.styleable.AppCompatTheme_alertDialogButtonGroupStyle /* 35 */:
                        zzgmq.zzL(this.zzc[i], (List) zzgnp.zzh(t, zzC & 1048575), zzgjtVar, true);
                        break;
                    case C3681R.styleable.AppCompatTheme_alertDialogCenterButtons /* 36 */:
                        zzgmq.zzP(this.zzc[i], (List) zzgnp.zzh(t, zzC & 1048575), zzgjtVar, true);
                        break;
                    case C3681R.styleable.AppCompatTheme_alertDialogStyle /* 37 */:
                        zzgmq.zzS(this.zzc[i], (List) zzgnp.zzh(t, zzC & 1048575), zzgjtVar, true);
                        break;
                    case C3681R.styleable.AppCompatTheme_alertDialogTheme /* 38 */:
                        zzgmq.zzaa(this.zzc[i], (List) zzgnp.zzh(t, zzC & 1048575), zzgjtVar, true);
                        break;
                    case C3681R.styleable.AppCompatTheme_autoCompleteTextViewStyle /* 39 */:
                        zzgmq.zzR(this.zzc[i], (List) zzgnp.zzh(t, zzC & 1048575), zzgjtVar, true);
                        break;
                    case C3681R.styleable.AppCompatTheme_borderlessButtonStyle /* 40 */:
                        zzgmq.zzO(this.zzc[i], (List) zzgnp.zzh(t, zzC & 1048575), zzgjtVar, true);
                        break;
                    case C3681R.styleable.AppCompatTheme_buttonBarButtonStyle /* 41 */:
                        zzgmq.zzN(this.zzc[i], (List) zzgnp.zzh(t, zzC & 1048575), zzgjtVar, true);
                        break;
                    case C3681R.styleable.AppCompatTheme_buttonBarNegativeButtonStyle /* 42 */:
                        zzgmq.zzJ(this.zzc[i], (List) zzgnp.zzh(t, zzC & 1048575), zzgjtVar, true);
                        break;
                    case C3681R.styleable.AppCompatTheme_buttonBarNeutralButtonStyle /* 43 */:
                        zzgmq.zzZ(this.zzc[i], (List) zzgnp.zzh(t, zzC & 1048575), zzgjtVar, true);
                        break;
                    case C3681R.styleable.AppCompatTheme_buttonBarPositiveButtonStyle /* 44 */:
                        zzgmq.zzM(this.zzc[i], (List) zzgnp.zzh(t, zzC & 1048575), zzgjtVar, true);
                        break;
                    case C3681R.styleable.AppCompatTheme_buttonBarStyle /* 45 */:
                        zzgmq.zzU(this.zzc[i], (List) zzgnp.zzh(t, zzC & 1048575), zzgjtVar, true);
                        break;
                    case C3681R.styleable.AppCompatTheme_buttonStyle /* 46 */:
                        zzgmq.zzV(this.zzc[i], (List) zzgnp.zzh(t, zzC & 1048575), zzgjtVar, true);
                        break;
                    case C3681R.styleable.AppCompatTheme_buttonStyleSmall /* 47 */:
                        zzgmq.zzW(this.zzc[i], (List) zzgnp.zzh(t, zzC & 1048575), zzgjtVar, true);
                        break;
                    case C3681R.styleable.AppCompatTheme_checkboxStyle /* 48 */:
                        zzgmq.zzX(this.zzc[i], (List) zzgnp.zzh(t, zzC & 1048575), zzgjtVar, true);
                        break;
                    case C3681R.styleable.AppCompatTheme_checkedTextViewStyle /* 49 */:
                        zzgmq.zzQ(this.zzc[i], (List) zzgnp.zzh(t, zzC & 1048575), zzgjtVar, zzF(i));
                        break;
                    case C3681R.styleable.AppCompatTheme_colorAccent /* 50 */:
                        zzW(zzgjtVar, i2, zzgnp.zzh(t, zzC & 1048575), i);
                        break;
                    case 51:
                        if (zzT(t, i2, i)) {
                            zzgjtVar.zzf(i2, zzo(t, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case C3681R.styleable.AppCompatTheme_colorButtonNormal /* 52 */:
                        if (zzT(t, i2, i)) {
                            zzgjtVar.zzo(i2, zzp(t, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case C3681R.styleable.AppCompatTheme_colorControlActivated /* 53 */:
                        if (zzT(t, i2, i)) {
                            zzgjtVar.zzt(i2, zzD(t, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case C3681R.styleable.AppCompatTheme_colorControlHighlight /* 54 */:
                        if (zzT(t, i2, i)) {
                            zzgjtVar.zzJ(i2, zzD(t, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case C3681R.styleable.AppCompatTheme_colorControlNormal /* 55 */:
                        if (zzT(t, i2, i)) {
                            zzgjtVar.zzr(i2, zzs(t, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case C3681R.styleable.AppCompatTheme_colorError /* 56 */:
                        if (zzT(t, i2, i)) {
                            zzgjtVar.zzm(i2, zzD(t, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case C3681R.styleable.AppCompatTheme_colorPrimary /* 57 */:
                        if (zzT(t, i2, i)) {
                            zzgjtVar.zzk(i2, zzs(t, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case C3681R.styleable.AppCompatTheme_colorPrimaryDark /* 58 */:
                        if (zzT(t, i2, i)) {
                            zzgjtVar.zzb(i2, zzU(t, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case C3681R.styleable.AppCompatTheme_colorSwitchThumbNormal /* 59 */:
                        if (zzT(t, i2, i)) {
                            zzX(i2, zzgnp.zzh(t, zzC & 1048575), zzgjtVar);
                            break;
                        } else {
                            break;
                        }
                    case C3681R.styleable.AppCompatTheme_controlBackground /* 60 */:
                        if (zzT(t, i2, i)) {
                            zzgjtVar.zzv(i2, zzgnp.zzh(t, zzC & 1048575), zzF(i));
                            break;
                        } else {
                            break;
                        }
                    case C3681R.styleable.AppCompatTheme_dialogCornerRadius /* 61 */:
                        if (zzT(t, i2, i)) {
                            zzgjtVar.zzd(i2, (zzgjf) zzgnp.zzh(t, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case C3681R.styleable.AppCompatTheme_dialogPreferredPadding /* 62 */:
                        if (zzT(t, i2, i)) {
                            zzgjtVar.zzH(i2, zzs(t, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case C3681R.styleable.AppCompatTheme_dialogTheme /* 63 */:
                        if (zzT(t, i2, i)) {
                            zzgjtVar.zzi(i2, zzs(t, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case C3681R.styleable.AppCompatTheme_dividerHorizontal /* 64 */:
                        if (zzT(t, i2, i)) {
                            zzgjtVar.zzw(i2, zzs(t, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case C3681R.styleable.AppCompatTheme_dividerVertical /* 65 */:
                        if (zzT(t, i2, i)) {
                            zzgjtVar.zzy(i2, zzD(t, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case C3681R.styleable.AppCompatTheme_dropDownListViewStyle /* 66 */:
                        if (zzT(t, i2, i)) {
                            zzgjtVar.zzA(i2, zzs(t, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case C3681R.styleable.AppCompatTheme_dropdownListPreferredItemHeight /* 67 */:
                        if (zzT(t, i2, i)) {
                            zzgjtVar.zzC(i2, zzD(t, zzC & 1048575));
                            break;
                        } else {
                            break;
                        }
                    case C3681R.styleable.AppCompatTheme_editTextBackground /* 68 */:
                        if (zzT(t, i2, i)) {
                            zzgjtVar.zzq(i2, zzgnp.zzh(t, zzC & 1048575), zzF(i));
                            break;
                        } else {
                            break;
                        }
                }
            }
            zzgnf<?, ?> zzgnfVar = this.zzo;
            zzgnfVar.zzr(zzgnfVar.zzd(t), zzgjtVar);
        }
    }
}
