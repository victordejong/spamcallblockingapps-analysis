package com.google.android.libraries.places.internal;

import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/libraries/places/internal/zzuz.class */
public final class zzuz {
    private static final zzuz zza = new zzuz(0, new int[0], new Object[0], false);
    private int zzb;
    private int[] zzc;
    private Object[] zzd;
    private int zze;
    private boolean zzf;

    private zzuz() {
        this(0, new int[8], new Object[8], true);
    }

    private zzuz(int i, int[] iArr, Object[] objArr, boolean z) {
        this.zze = -1;
        this.zzb = i;
        this.zzc = iArr;
        this.zzd = objArr;
        this.zzf = z;
    }

    public static zzuz zza() {
        return zza;
    }

    public static zzuz zza(zzuz zzuzVar, zzuz zzuzVar2) {
        int i = zzuzVar.zzb + zzuzVar2.zzb;
        int[] copyOf = Arrays.copyOf(zzuzVar.zzc, i);
        System.arraycopy(zzuzVar2.zzc, 0, copyOf, zzuzVar.zzb, zzuzVar2.zzb);
        Object[] copyOf2 = Arrays.copyOf(zzuzVar.zzd, i);
        System.arraycopy(zzuzVar2.zzd, 0, copyOf2, zzuzVar.zzb, zzuzVar2.zzb);
        return new zzuz(i, copyOf, copyOf2, true);
    }

    private static void zza(int i, Object obj, zzvq zzvqVar) throws IOException {
        int i2 = i >>> 3;
        int i3 = i & 7;
        if (i3 == 0) {
            zzvqVar.zza(i2, ((Long) obj).longValue());
        } else if (i3 == 1) {
            zzvqVar.zzd(i2, ((Long) obj).longValue());
        } else if (i3 == 2) {
            zzvqVar.zza(i2, (zzrb) obj);
        } else if (i3 != 3) {
            if (i3 != 5) {
                throw new RuntimeException((Throwable) zzso.zza());
            }
            zzvqVar.zzd(i2, ((Integer) obj).intValue());
        } else if (zzvqVar.zza() == zzvt.zza) {
            zzvqVar.zza(i2);
            ((zzuz) obj).zzb(zzvqVar);
            zzvqVar.zzb(i2);
        } else {
            zzvqVar.zzb(i2);
            ((zzuz) obj).zzb(zzvqVar);
            zzvqVar.zza(i2);
        }
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzuz)) {
            return false;
        }
        zzuz zzuzVar = (zzuz) obj;
        int i = this.zzb;
        if (i != zzuzVar.zzb) {
            return false;
        }
        int[] iArr = this.zzc;
        int[] iArr2 = zzuzVar.zzc;
        int i2 = 0;
        while (true) {
            if (i2 >= i) {
                z = true;
                break;
            } else if (iArr[i2] != iArr2[i2]) {
                z = false;
                break;
            } else {
                i2++;
            }
        }
        if (!z) {
            return false;
        }
        Object[] objArr = this.zzd;
        Object[] objArr2 = zzuzVar.zzd;
        int i3 = this.zzb;
        int i4 = 0;
        while (true) {
            if (i4 >= i3) {
                z2 = true;
                break;
            } else if (!objArr[i4].equals(objArr2[i4])) {
                z2 = false;
                break;
            } else {
                i4++;
            }
        }
        return z2;
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

    public final void zza(zzvq zzvqVar) throws IOException {
        if (zzvqVar.zza() == zzvt.zzb) {
            for (int i = this.zzb - 1; i >= 0; i--) {
                zzvqVar.zza(this.zzc[i] >>> 3, this.zzd[i]);
            }
            return;
        }
        for (int i2 = 0; i2 < this.zzb; i2++) {
            zzvqVar.zza(this.zzc[i2] >>> 3, this.zzd[i2]);
        }
    }

    public final void zza(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.zzb; i2++) {
            zztt.zza(sb, i, String.valueOf(this.zzc[i2] >>> 3), this.zzd[i2]);
        }
    }

    public final void zzb() {
        this.zzf = false;
    }

    public final void zzb(zzvq zzvqVar) throws IOException {
        if (this.zzb == 0) {
            return;
        }
        if (zzvqVar.zza() == zzvt.zza) {
            for (int i = 0; i < this.zzb; i++) {
                zza(this.zzc[i], this.zzd[i], zzvqVar);
            }
            return;
        }
        for (int i2 = this.zzb - 1; i2 >= 0; i2--) {
            zza(this.zzc[i2], this.zzd[i2], zzvqVar);
        }
    }

    public final int zzc() {
        int i = this.zze;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.zzb; i3++) {
            i2 += zzrs.zzd(this.zzc[i3] >>> 3, (zzrb) this.zzd[i3]);
        }
        this.zze = i2;
        return i2;
    }

    public final int zzd() {
        int i;
        int i2;
        int i3 = this.zze;
        if (i3 != -1) {
            return i3;
        }
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int i6 = i5;
            if (i4 >= this.zzb) {
                this.zze = i6;
                return i6;
            }
            int i7 = this.zzc[i4];
            int i8 = i7 >>> 3;
            int i9 = i7 & 7;
            if (i9 == 0) {
                i2 = zzrs.zze(i8, ((Long) this.zzd[i4]).longValue());
            } else if (i9 == 1) {
                i2 = zzrs.zzg(i8, ((Long) this.zzd[i4]).longValue());
            } else if (i9 == 2) {
                i2 = zzrs.zzc(i8, (zzrb) this.zzd[i4]);
            } else if (i9 == 3) {
                i = ((zzuz) this.zzd[i4]).zzd() + (zzrs.zze(i8) << 1);
                i4++;
                i5 = i + i6;
            } else if (i9 != 5) {
                throw new IllegalStateException((Throwable) zzso.zza());
            } else {
                i2 = zzrs.zzi(i8, ((Integer) this.zzd[i4]).intValue());
            }
            i = i2;
            i4++;
            i5 = i + i6;
        }
    }
}
