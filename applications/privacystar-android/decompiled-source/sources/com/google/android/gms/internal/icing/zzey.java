package com.google.android.gms.internal.icing;

import com.google.android.gms.internal.icing.zzck;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzey.class */
public final class zzey {
    private static final zzey zzln = new zzey(0, new int[0], new Object[0], false);
    private int count;
    private boolean zzdl;
    private int zzhn;
    private Object[] zzjz;
    private int[] zzlo;

    private zzey() {
        this(0, new int[8], new Object[8], true);
    }

    private zzey(int i, int[] iArr, Object[] objArr, boolean z) {
        this.zzhn = -1;
        this.count = i;
        this.zzlo = iArr;
        this.zzjz = objArr;
        this.zzdl = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzey zza(zzey zzeyVar, zzey zzeyVar2) {
        int i = zzeyVar.count + zzeyVar2.count;
        int[] copyOf = Arrays.copyOf(zzeyVar.zzlo, i);
        System.arraycopy(zzeyVar2.zzlo, 0, copyOf, zzeyVar.count, zzeyVar2.count);
        Object[] copyOf2 = Arrays.copyOf(zzeyVar.zzjz, i);
        System.arraycopy(zzeyVar2.zzjz, 0, copyOf2, zzeyVar.count, zzeyVar2.count);
        return new zzey(i, copyOf, copyOf2, true);
    }

    private static void zzb(int i, Object obj, zzfr zzfrVar) throws IOException {
        int i2 = i >>> 3;
        int i3 = i & 7;
        if (i3 != 5) {
            switch (i3) {
                case 0:
                    zzfrVar.zzi(i2, ((Long) obj).longValue());
                    return;
                case 1:
                    zzfrVar.zzc(i2, ((Long) obj).longValue());
                    return;
                case 2:
                    zzfrVar.zza(i2, (zzbi) obj);
                    return;
                case 3:
                    if (zzfrVar.zzad() == zzck.zzd.zzie) {
                        zzfrVar.zzy(i2);
                        ((zzey) obj).zzb(zzfrVar);
                        zzfrVar.zzz(i2);
                        return;
                    }
                    zzfrVar.zzz(i2);
                    ((zzey) obj).zzb(zzfrVar);
                    zzfrVar.zzy(i2);
                    return;
                default:
                    throw new RuntimeException(zzcs.zzbd());
            }
        } else {
            zzfrVar.zzf(i2, ((Integer) obj).intValue());
        }
    }

    public static zzey zzcq() {
        return zzln;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzey)) {
            return false;
        }
        zzey zzeyVar = (zzey) obj;
        if (this.count != zzeyVar.count) {
            return false;
        }
        int[] iArr = this.zzlo;
        int[] iArr2 = zzeyVar.zzlo;
        int i = this.count;
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
        Object[] objArr = this.zzjz;
        Object[] objArr2 = zzeyVar.zzjz;
        int i3 = this.count;
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
        int i = this.count;
        int[] iArr = this.zzlo;
        int i2 = this.count;
        int i3 = 17;
        int i4 = 17;
        for (int i5 = 0; i5 < i2; i5++) {
            i4 = (i4 * 31) + iArr[i5];
        }
        Object[] objArr = this.zzjz;
        int i6 = this.count;
        for (int i7 = 0; i7 < i6; i7++) {
            i3 = (i3 * 31) + objArr[i7].hashCode();
        }
        return ((((i + 527) * 31) + i4) * 31) + i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(zzfr zzfrVar) throws IOException {
        if (zzfrVar.zzad() == zzck.zzd.zzif) {
            for (int i = this.count - 1; i >= 0; i--) {
                zzfrVar.zza(this.zzlo[i] >>> 3, this.zzjz[i]);
            }
            return;
        }
        for (int i2 = 0; i2 < this.count; i2++) {
            zzfrVar.zza(this.zzlo[i2] >>> 3, this.zzjz[i2]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.count; i2++) {
            zzdu.zza(sb, i, String.valueOf(this.zzlo[i2] >>> 3), this.zzjz[i2]);
        }
    }

    public final int zzan() {
        int zzj;
        int i = this.zzhn;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.count; i3++) {
            int i4 = this.zzlo[i3];
            int i5 = i4 >>> 3;
            int i6 = i4 & 7;
            if (i6 != 5) {
                switch (i6) {
                    case 0:
                        zzj = zzbu.zze(i5, ((Long) this.zzjz[i3]).longValue());
                        break;
                    case 1:
                        zzj = zzbu.zzg(i5, ((Long) this.zzjz[i3]).longValue());
                        break;
                    case 2:
                        zzj = zzbu.zzc(i5, (zzbi) this.zzjz[i3]);
                        break;
                    case 3:
                        zzj = (zzbu.zzp(i5) << 1) + ((zzey) this.zzjz[i3]).zzan();
                        break;
                    default:
                        throw new IllegalStateException(zzcs.zzbd());
                }
            } else {
                zzj = zzbu.zzj(i5, ((Integer) this.zzjz[i3]).intValue());
            }
            i2 += zzj;
        }
        this.zzhn = i2;
        return i2;
    }

    public final void zzb(zzfr zzfrVar) throws IOException {
        if (this.count != 0) {
            if (zzfrVar.zzad() == zzck.zzd.zzie) {
                for (int i = 0; i < this.count; i++) {
                    zzb(this.zzlo[i], this.zzjz[i], zzfrVar);
                }
                return;
            }
            for (int i2 = this.count - 1; i2 >= 0; i2--) {
                zzb(this.zzlo[i2], this.zzjz[i2], zzfrVar);
            }
        }
    }

    public final int zzcr() {
        int i = this.zzhn;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.count; i3++) {
            i2 += zzbu.zzd(this.zzlo[i3] >>> 3, (zzbi) this.zzjz[i3]);
        }
        this.zzhn = i2;
        return i2;
    }

    public final void zzp() {
        this.zzdl = false;
    }
}
