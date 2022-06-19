package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzmi.class */
public final class zzmi {
    private static final zzmi zza = new zzmi(0, new int[0], new Object[0], false);
    private int zzb;
    private int[] zzc;
    private Object[] zzd;
    private int zze;
    private boolean zzf;

    private zzmi() {
        this(0, new int[8], new Object[8], true);
    }

    private zzmi(int i, int[] iArr, Object[] objArr, boolean z) {
        this.zze = -1;
        this.zzb = i;
        this.zzc = iArr;
        this.zzd = objArr;
        this.zzf = z;
    }

    public static zzmi zza() {
        return zza;
    }

    public static zzmi zzb() {
        return new zzmi(0, new int[8], new Object[8], true);
    }

    public static zzmi zzc(zzmi zzmiVar, zzmi zzmiVar2) {
        int i = zzmiVar.zzb + zzmiVar2.zzb;
        int[] copyOf = Arrays.copyOf(zzmiVar.zzc, i);
        System.arraycopy(zzmiVar2.zzc, 0, copyOf, zzmiVar.zzb, zzmiVar2.zzb);
        Object[] copyOf2 = Arrays.copyOf(zzmiVar.zzd, i);
        System.arraycopy(zzmiVar2.zzd, 0, copyOf2, zzmiVar.zzb, zzmiVar2.zzb);
        return new zzmi(i, copyOf, copyOf2, true);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzmi)) {
            return false;
        }
        zzmi zzmiVar = (zzmi) obj;
        int i = this.zzb;
        if (i != zzmiVar.zzb) {
            return false;
        }
        int[] iArr = this.zzc;
        int[] iArr2 = zzmiVar.zzc;
        for (int i2 = 0; i2 < i; i2++) {
            if (iArr[i2] != iArr2[i2]) {
                return false;
            }
        }
        Object[] objArr = this.zzd;
        Object[] objArr2 = zzmiVar.zzd;
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

    public final void zzd() {
        this.zzf = false;
    }

    public final int zze() {
        int i = this.zze;
        if (i == -1) {
            int i2 = 0;
            for (int i3 = 0; i3 < this.zzb; i3++) {
                int i4 = this.zzc[i3];
                zzjd zzjdVar = (zzjd) this.zzd[i3];
                int zzw = zzjk.zzw(8);
                int zzc = zzjdVar.zzc();
                int zzw2 = zzjk.zzw(16);
                i2 += zzjk.zzw(zzc) + zzc + zzjk.zzw(24) + zzjk.zzw(i4 >>> 3) + zzw2 + zzw + zzw;
            }
            this.zze = i2;
            return i2;
        }
        return i;
    }

    public final int zzf() {
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
                        i4 = zzjk.zzw(i9 << 3) + 8;
                    } else if (i10 == 2) {
                        zzjd zzjdVar = (zzjd) this.zzd[i7];
                        int zzw = zzjk.zzw(i9 << 3);
                        int zzc = zzjdVar.zzc();
                        i = zzjk.zzw(zzc) + zzc + zzw;
                        i6 = i + i6;
                    } else if (i10 == 3) {
                        int zzu = zzjk.zzu(i9);
                        i3 = zzu + zzu;
                        i2 = ((zzmi) this.zzd[i7]).zzf();
                    } else if (i10 != 5) {
                        throw new IllegalStateException(zzkn.zzd());
                    } else {
                        ((Integer) this.zzd[i7]).intValue();
                        i4 = zzjk.zzw(i9 << 3) + 4;
                    }
                    i = i4;
                    i6 = i + i6;
                } else {
                    long longValue = ((Long) this.zzd[i7]).longValue();
                    i3 = zzjk.zzw(i9 << 3);
                    i2 = zzjk.zzx(longValue);
                }
                i = i2 + i3;
                i6 = i + i6;
            }
            this.zze = i6;
            return i6;
        }
        return i5;
    }

    public final void zzg(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.zzb; i2++) {
            zzlk.zzb(sb, i, String.valueOf(this.zzc[i2] >>> 3), this.zzd[i2]);
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

    public final void zzi(zzjl zzjlVar) throws IOException {
        if (this.zzb != 0) {
            for (int i = 0; i < this.zzb; i++) {
                int i2 = this.zzc[i];
                Object obj = this.zzd[i];
                int i3 = i2 >>> 3;
                int i4 = i2 & 7;
                if (i4 == 0) {
                    zzjlVar.zzc(i3, ((Long) obj).longValue());
                } else if (i4 == 1) {
                    zzjlVar.zzj(i3, ((Long) obj).longValue());
                } else if (i4 == 2) {
                    zzjlVar.zzn(i3, (zzjd) obj);
                } else if (i4 == 3) {
                    zzjlVar.zzt(i3);
                    ((zzmi) obj).zzi(zzjlVar);
                    zzjlVar.zzu(i3);
                } else if (i4 != 5) {
                    throw new RuntimeException(zzkn.zzd());
                } else {
                    zzjlVar.zzk(i3, ((Integer) obj).intValue());
                }
            }
        }
    }
}
