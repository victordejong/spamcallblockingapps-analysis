package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzgip.class */
public final class zzgip {
    private static final zzgip zza = new zzgip(0, new int[0], new Object[0], false);
    private int zzb;
    private int[] zzc;
    private Object[] zzd;
    private int zze;
    private boolean zzf;

    private zzgip() {
        this(0, new int[8], new Object[8], true);
    }

    private zzgip(int i, int[] iArr, Object[] objArr, boolean z) {
        this.zze = -1;
        this.zzb = i;
        this.zzc = iArr;
        this.zzd = objArr;
        this.zzf = z;
    }

    public static zzgip zza() {
        return zza;
    }

    public static zzgip zzb() {
        return new zzgip(0, new int[8], new Object[8], true);
    }

    public static zzgip zzc(zzgip zzgipVar, zzgip zzgipVar2) {
        int i = zzgipVar.zzb + zzgipVar2.zzb;
        int[] copyOf = Arrays.copyOf(zzgipVar.zzc, i);
        System.arraycopy(zzgipVar2.zzc, 0, copyOf, zzgipVar.zzb, zzgipVar2.zzb);
        Object[] copyOf2 = Arrays.copyOf(zzgipVar.zzd, i);
        System.arraycopy(zzgipVar2.zzd, 0, copyOf2, zzgipVar.zzb, zzgipVar2.zzb);
        return new zzgip(i, copyOf, copyOf2, true);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzgip)) {
            return false;
        }
        zzgip zzgipVar = (zzgip) obj;
        int i = this.zzb;
        if (i != zzgipVar.zzb) {
            return false;
        }
        int[] iArr = this.zzc;
        int[] iArr2 = zzgipVar.zzc;
        for (int i2 = 0; i2 < i; i2++) {
            if (iArr[i2] != iArr2[i2]) {
                return false;
            }
        }
        Object[] objArr = this.zzd;
        Object[] objArr2 = zzgipVar.zzd;
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
        int i3 = 17;
        for (int i4 = 0; i4 < i; i4++) {
            i3 = (i3 * 31) + iArr[i4];
        }
        Object[] objArr = this.zzd;
        int i5 = this.zzb;
        for (int i6 = 0; i6 < i5; i6++) {
            i2 = (i2 * 31) + objArr[i6].hashCode();
        }
        return ((((i + 527) * 31) + i3) * 31) + i2;
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
                zzgex zzgexVar = (zzgex) this.zzd[i3];
                int zzx = zzgfh.zzx(8);
                int zzc = zzgexVar.zzc();
                int zzx2 = zzgfh.zzx(16);
                i2 += zzgfh.zzx(zzc) + zzc + zzgfh.zzx(24) + zzgfh.zzx(i4 >>> 3) + zzx2 + zzx + zzx;
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
                        i4 = zzgfh.zzx(i9 << 3) + 8;
                    } else if (i10 == 2) {
                        zzgex zzgexVar = (zzgex) this.zzd[i7];
                        int zzx = zzgfh.zzx(i9 << 3);
                        int zzc = zzgexVar.zzc();
                        i = zzgfh.zzx(zzc) + zzc + zzx;
                        i6 = i + i6;
                    } else if (i10 == 3) {
                        int zzv = zzgfh.zzv(i9);
                        i2 = zzv + zzv;
                        i3 = ((zzgip) this.zzd[i7]).zzf();
                    } else if (i10 != 5) {
                        throw new IllegalStateException(zzggm.zzi());
                    } else {
                        ((Integer) this.zzd[i7]).intValue();
                        i4 = zzgfh.zzx(i9 << 3) + 4;
                    }
                    i = i4;
                    i6 = i + i6;
                } else {
                    long longValue = ((Long) this.zzd[i7]).longValue();
                    i2 = zzgfh.zzx(i9 << 3);
                    i3 = zzgfh.zzy(longValue);
                }
                i = i3 + i2;
                i6 = i + i6;
            }
            this.zze = i6;
            return i6;
        }
        return i5;
    }

    public final void zzg(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.zzb; i2++) {
            zzghk.zzb(sb, i, String.valueOf(this.zzc[i2] >>> 3), this.zzd[i2]);
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

    public final void zzi(zzgfi zzgfiVar) throws IOException {
        if (this.zzb != 0) {
            for (int i = 0; i < this.zzb; i++) {
                int i2 = this.zzc[i];
                Object obj = this.zzd[i];
                int i3 = i2 >>> 3;
                int i4 = i2 & 7;
                if (i4 == 0) {
                    zzgfiVar.zzc(i3, ((Long) obj).longValue());
                } else if (i4 == 1) {
                    zzgfiVar.zzj(i3, ((Long) obj).longValue());
                } else if (i4 == 2) {
                    zzgfiVar.zzn(i3, (zzgex) obj);
                } else if (i4 == 3) {
                    zzgfiVar.zzt(i3);
                    ((zzgip) obj).zzi(zzgfiVar);
                    zzgfiVar.zzu(i3);
                } else if (i4 != 5) {
                    throw new RuntimeException(zzggm.zzi());
                } else {
                    zzgfiVar.zzk(i3, ((Integer) obj).intValue());
                }
            }
        }
    }
}
