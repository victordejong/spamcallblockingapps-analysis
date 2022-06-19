package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzmc.class */
public final class zzmc {
    private static final zzmc zza = new zzmc(0, new int[0], new Object[0], false);
    private int zzb;
    private int[] zzc;
    private Object[] zzd;
    private int zze;
    private boolean zzf;

    private zzmc() {
        this(0, new int[8], new Object[8], true);
    }

    private zzmc(int i, int[] iArr, Object[] objArr, boolean z) {
        this.zze = -1;
        this.zzb = i;
        this.zzc = iArr;
        this.zzd = objArr;
        this.zzf = z;
    }

    public static zzmc zzc() {
        return zza;
    }

    public static zzmc zzd(zzmc zzmcVar, zzmc zzmcVar2) {
        int i = zzmcVar.zzb + zzmcVar2.zzb;
        int[] copyOf = Arrays.copyOf(zzmcVar.zzc, i);
        System.arraycopy(zzmcVar2.zzc, 0, copyOf, zzmcVar.zzb, zzmcVar2.zzb);
        Object[] copyOf2 = Arrays.copyOf(zzmcVar.zzd, i);
        System.arraycopy(zzmcVar2.zzd, 0, copyOf2, zzmcVar.zzb, zzmcVar2.zzb);
        return new zzmc(i, copyOf, copyOf2, true);
    }

    public static zzmc zze() {
        return new zzmc(0, new int[8], new Object[8], true);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzmc)) {
            return false;
        }
        zzmc zzmcVar = (zzmc) obj;
        int i = this.zzb;
        if (i != zzmcVar.zzb) {
            return false;
        }
        int[] iArr = this.zzc;
        int[] iArr2 = zzmcVar.zzc;
        for (int i2 = 0; i2 < i; i2++) {
            if (iArr[i2] != iArr2[i2]) {
                return false;
            }
        }
        Object[] objArr = this.zzd;
        Object[] objArr2 = zzmcVar.zzd;
        int i3 = this.zzb;
        for (int i4 = 0; i4 < i3; i4++) {
            if (!objArr[i4].equals(objArr2[i4])) {
                return false;
            }
        }
        return true;
    }

    public final int hashCode() {
        int i = this.zzb;
        int[] iArr = this.zzc;
        int i2 = 17;
        for (int i3 = 0; i3 < i; i3++) {
            i2 = (i2 * 31) + iArr[i3];
        }
        Object[] objArr = this.zzd;
        int i4 = this.zzb;
        int i5 = 17;
        for (int i6 = 0; i6 < i4; i6++) {
            i5 = (i5 * 31) + objArr[i6].hashCode();
        }
        return ((((i + 527) * 31) + i2) * 31) + i5;
    }

    public final int zza() {
        int i;
        int i2;
        int i3;
        int i4;
        int i5 = this.zze;
        if (i5 == -1) {
            int i6 = 0;
            for (int i7 = 0; i7 < this.zzb; i7++) {
                int i8 = this.zzc[i7];
                int i9 = i8 >>> 3;
                int i10 = i8 & 7;
                if (i10 != 0) {
                    if (i10 == 1) {
                        ((Long) this.zzd[i7]).longValue();
                        i4 = zzje.zzA(i9 << 3) + 8;
                    } else if (i10 == 2) {
                        zzix zzixVar = (zzix) this.zzd[i7];
                        int zzA = zzje.zzA(i9 << 3);
                        int zzd = zzixVar.zzd();
                        i = zzje.zzA(zzd) + zzd + zzA;
                        i6 = i + i6;
                    } else if (i10 == 3) {
                        int zzz = zzje.zzz(i9);
                        i2 = zzz + zzz;
                        i3 = ((zzmc) this.zzd[i7]).zza();
                    } else if (i10 != 5) {
                        throw new IllegalStateException(zzkh.zza());
                    } else {
                        ((Integer) this.zzd[i7]).intValue();
                        i4 = zzje.zzA(i9 << 3) + 4;
                    }
                    i = i4;
                    i6 = i + i6;
                } else {
                    long longValue = ((Long) this.zzd[i7]).longValue();
                    i2 = zzje.zzA(i9 << 3);
                    i3 = zzje.zzB(longValue);
                }
                i = i3 + i2;
                i6 = i + i6;
            }
            this.zze = i6;
            return i6;
        }
        return i5;
    }

    public final int zzb() {
        int i = this.zze;
        if (i == -1) {
            int i2 = 0;
            for (int i3 = 0; i3 < this.zzb; i3++) {
                int i4 = this.zzc[i3];
                zzix zzixVar = (zzix) this.zzd[i3];
                int zzA = zzje.zzA(8);
                int zzd = zzixVar.zzd();
                int zzA2 = zzje.zzA(16);
                i2 += zzje.zzA(zzd) + zzd + zzje.zzA(24) + zzje.zzA(i4 >>> 3) + zzA2 + zzA + zzA;
            }
            this.zze = i2;
            return i2;
        }
        return i;
    }

    public final void zzf() {
        this.zzf = false;
    }

    public final void zzg(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.zzb; i2++) {
            zzle.zzb(sb, i, String.valueOf(this.zzc[i2] >>> 3), this.zzd[i2]);
        }
    }

    public final void zzh(int i, Object obj) {
        if (this.zzf) {
            int i2 = this.zzb;
            int[] iArr = this.zzc;
            if (i2 == iArr.length) {
                int i3 = i2 + (i2 < 4 ? 8 : i2 >> 1);
                this.zzc = Arrays.copyOf(iArr, i3);
                this.zzd = Arrays.copyOf(this.zzd, i3);
            }
            int[] iArr2 = this.zzc;
            int i4 = this.zzb;
            iArr2[i4] = i;
            this.zzd[i4] = obj;
            this.zzb = i4 + 1;
            return;
        }
        throw new UnsupportedOperationException();
    }

    public final void zzi(zzjf zzjfVar) throws IOException {
        if (this.zzb != 0) {
            for (int i = 0; i < this.zzb; i++) {
                int i2 = this.zzc[i];
                Object obj = this.zzd[i];
                int i3 = i2 >>> 3;
                int i4 = i2 & 7;
                if (i4 == 0) {
                    zzjfVar.zzt(i3, ((Long) obj).longValue());
                } else if (i4 == 1) {
                    zzjfVar.zzm(i3, ((Long) obj).longValue());
                } else if (i4 == 2) {
                    zzjfVar.zzd(i3, (zzix) obj);
                } else if (i4 == 3) {
                    zzjfVar.zzE(i3);
                    ((zzmc) obj).zzi(zzjfVar);
                    zzjfVar.zzh(i3);
                } else if (i4 != 5) {
                    throw new RuntimeException(zzkh.zza());
                } else {
                    zzjfVar.zzk(i3, ((Integer) obj).intValue());
                }
            }
        }
    }
}
