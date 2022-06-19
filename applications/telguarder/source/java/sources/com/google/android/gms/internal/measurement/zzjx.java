package com.google.android.gms.internal.measurement;

import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/measurement/zzjx.class */
public final class zzjx {
    private static final zzjx zza = new zzjx(0, new int[0], new Object[0], false);
    private int zzb;
    private int[] zzc;
    private Object[] zzd;
    private int zze;
    private boolean zzf;

    private zzjx() {
        this(0, new int[8], new Object[8], true);
    }

    private zzjx(int i, int[] iArr, Object[] objArr, boolean z) {
        this.zze = -1;
        this.zzb = i;
        this.zzc = iArr;
        this.zzd = objArr;
        this.zzf = z;
    }

    public static zzjx zza() {
        return zza;
    }

    public static zzjx zzb() {
        return new zzjx(0, new int[8], new Object[8], true);
    }

    public static zzjx zzc(zzjx zzjxVar, zzjx zzjxVar2) {
        int i = zzjxVar.zzb + zzjxVar2.zzb;
        int[] copyOf = Arrays.copyOf(zzjxVar.zzc, i);
        System.arraycopy(zzjxVar2.zzc, 0, copyOf, zzjxVar.zzb, zzjxVar2.zzb);
        Object[] copyOf2 = Arrays.copyOf(zzjxVar.zzd, i);
        System.arraycopy(zzjxVar2.zzd, 0, copyOf2, zzjxVar.zzb, zzjxVar2.zzb);
        return new zzjx(i, copyOf, copyOf2, true);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzjx)) {
            return false;
        }
        zzjx zzjxVar = (zzjx) obj;
        int i = this.zzb;
        if (i != zzjxVar.zzb) {
            return false;
        }
        int[] iArr = this.zzc;
        int[] iArr2 = zzjxVar.zzc;
        for (int i2 = 0; i2 < i; i2++) {
            if (iArr[i2] != iArr2[i2]) {
                return false;
            }
        }
        Object[] objArr = this.zzd;
        Object[] objArr2 = zzjxVar.zzd;
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
                zzgs zzgsVar = (zzgs) this.zzd[i3];
                int zzw = zzgz.zzw(8);
                int zzw2 = zzgz.zzw(16);
                int zzw3 = zzgz.zzw(i4 >>> 3);
                int zzw4 = zzgz.zzw(24);
                int zzc = zzgsVar.zzc();
                i2 += zzw + zzw + zzw2 + zzw3 + zzw4 + zzgz.zzw(zzc) + zzc;
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
        int i5;
        int i6 = this.zze;
        if (i6 == -1) {
            int i7 = 0;
            int i8 = 0;
            while (true) {
                int i9 = i8;
                if (i7 >= this.zzb) {
                    this.zze = i9;
                    return i9;
                }
                int i10 = this.zzc[i7];
                int i11 = i10 >>> 3;
                int i12 = i10 & 7;
                if (i12 != 0) {
                    if (i12 == 1) {
                        ((Long) this.zzd[i7]).longValue();
                        i3 = zzgz.zzw(i11 << 3) + 8;
                    } else if (i12 == 2) {
                        zzgs zzgsVar = (zzgs) this.zzd[i7];
                        int zzw = zzgz.zzw(i11 << 3);
                        int zzc = zzgsVar.zzc();
                        i2 = i9;
                        i = zzw + zzgz.zzw(zzc) + zzc;
                        i7++;
                        i8 = i2 + i;
                    } else if (i12 == 3) {
                        int zzu = zzgz.zzu(i11);
                        i4 = zzu + zzu;
                        i5 = ((zzjx) this.zzd[i7]).zzf();
                    } else if (i12 != 5) {
                        throw new IllegalStateException(zzic.zzd());
                    } else {
                        ((Integer) this.zzd[i7]).intValue();
                        i3 = zzgz.zzw(i11 << 3) + 4;
                    }
                    i2 = i9;
                    i = i3;
                    i7++;
                    i8 = i2 + i;
                } else {
                    long longValue = ((Long) this.zzd[i7]).longValue();
                    i4 = zzgz.zzw(i11 << 3);
                    i5 = zzgz.zzx(longValue);
                }
                i3 = i4 + i5;
                i2 = i9;
                i = i3;
                i7++;
                i8 = i2 + i;
            }
        } else {
            return i6;
        }
    }

    public final void zzg(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.zzb; i2++) {
            zziz.zzb(sb, i, String.valueOf(this.zzc[i2] >>> 3), this.zzd[i2]);
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

    public final void zzi(zzha zzhaVar) throws IOException {
        if (this.zzb != 0) {
            for (int i = 0; i < this.zzb; i++) {
                int i2 = this.zzc[i];
                Object obj = this.zzd[i];
                int i3 = i2 >>> 3;
                int i4 = i2 & 7;
                if (i4 == 0) {
                    zzhaVar.zzc(i3, ((Long) obj).longValue());
                } else if (i4 == 1) {
                    zzhaVar.zzj(i3, ((Long) obj).longValue());
                } else if (i4 == 2) {
                    zzhaVar.zzn(i3, (zzgs) obj);
                } else if (i4 == 3) {
                    zzhaVar.zzt(i3);
                    ((zzjx) obj).zzi(zzhaVar);
                    zzhaVar.zzu(i3);
                } else if (i4 != 5) {
                    throw new RuntimeException(zzic.zzd());
                } else {
                    zzhaVar.zzk(i3, ((Integer) obj).intValue());
                }
            }
        }
    }
}
