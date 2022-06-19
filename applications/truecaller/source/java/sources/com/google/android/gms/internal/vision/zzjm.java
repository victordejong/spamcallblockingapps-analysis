package com.google.android.gms.internal.vision;

import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/internal/vision/zzjm.class */
public final class zzjm {
    private static final zzjm zzaaj = new zzjm(0, new int[0], new Object[0], false);
    private int count;
    private int[] zzaak;
    private boolean zzrj;
    private int zzwe;
    private Object[] zzyv;

    private zzjm() {
        this(0, new int[8], new Object[8], true);
    }

    private zzjm(int i, int[] iArr, Object[] objArr, boolean z) {
        this.zzwe = -1;
        this.count = i;
        this.zzaak = iArr;
        this.zzyv = objArr;
        this.zzrj = z;
    }

    public static zzjm zza(zzjm zzjmVar, zzjm zzjmVar2) {
        int i = zzjmVar.count + zzjmVar2.count;
        int[] copyOf = Arrays.copyOf(zzjmVar.zzaak, i);
        System.arraycopy(zzjmVar2.zzaak, 0, copyOf, zzjmVar.count, zzjmVar2.count);
        Object[] copyOf2 = Arrays.copyOf(zzjmVar.zzyv, i);
        System.arraycopy(zzjmVar2.zzyv, 0, copyOf2, zzjmVar.count, zzjmVar2.count);
        return new zzjm(i, copyOf, copyOf2, true);
    }

    private static void zzb(int i, Object obj, zzkg zzkgVar) throws IOException {
        int i2 = i >>> 3;
        int i3 = i & 7;
        if (i3 == 0) {
            zzkgVar.zzi(i2, ((Long) obj).longValue());
        } else if (i3 == 1) {
            zzkgVar.zzc(i2, ((Long) obj).longValue());
        } else if (i3 == 2) {
            zzkgVar.zza(i2, (zzfh) obj);
        } else if (i3 != 3) {
            if (i3 != 5) {
                throw new RuntimeException((Throwable) zzhc.zzgr());
            }
            zzkgVar.zzk(i2, ((Integer) obj).intValue());
        } else if (zzkgVar.zzfj() == zzgs$zzf.zzww) {
            zzkgVar.zzbj(i2);
            ((zzjm) obj).zzb(zzkgVar);
            zzkgVar.zzbk(i2);
        } else {
            zzkgVar.zzbk(i2);
            ((zzjm) obj).zzb(zzkgVar);
            zzkgVar.zzbj(i2);
        }
    }

    public static zzjm zzig() {
        return zzaaj;
    }

    public static zzjm zzih() {
        return new zzjm();
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzjm)) {
            return false;
        }
        zzjm zzjmVar = (zzjm) obj;
        int i = this.count;
        if (i != zzjmVar.count) {
            return false;
        }
        int[] iArr = this.zzaak;
        int[] iArr2 = zzjmVar.zzaak;
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
        Object[] objArr = this.zzyv;
        Object[] objArr2 = zzjmVar.zzyv;
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
        int[] iArr = this.zzaak;
        int i2 = 17;
        for (int i3 = 0; i3 < i; i3++) {
            i2 = (i2 * 31) + iArr[i3];
        }
        Object[] objArr = this.zzyv;
        int i4 = this.count;
        int i5 = 17;
        for (int i6 = 0; i6 < i4; i6++) {
            i5 = (i5 * 31) + objArr[i6].hashCode();
        }
        return ((((i + 527) * 31) + i2) * 31) + i5;
    }

    public final void zza(zzkg zzkgVar) throws IOException {
        if (zzkgVar.zzfj() == zzgs$zzf.zzwx) {
            for (int i = this.count - 1; i >= 0; i--) {
                zzkgVar.zza(this.zzaak[i] >>> 3, this.zzyv[i]);
            }
            return;
        }
        for (int i2 = 0; i2 < this.count; i2++) {
            zzkgVar.zza(this.zzaak[i2] >>> 3, this.zzyv[i2]);
        }
    }

    public final void zza(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.count; i2++) {
            zzid.zza(sb, i, String.valueOf(this.zzaak[i2] >>> 3), this.zzyv[i2]);
        }
    }

    public final void zzb(int i, Object obj) {
        if (this.zzrj) {
            int i2 = this.count;
            int[] iArr = this.zzaak;
            if (i2 == iArr.length) {
                int i3 = i2 + (i2 < 4 ? 8 : i2 >> 1);
                this.zzaak = Arrays.copyOf(iArr, i3);
                this.zzyv = Arrays.copyOf(this.zzyv, i3);
            }
            int[] iArr2 = this.zzaak;
            int i4 = this.count;
            iArr2[i4] = i;
            this.zzyv[i4] = obj;
            this.count = i4 + 1;
            return;
        }
        throw new UnsupportedOperationException();
    }

    public final void zzb(zzkg zzkgVar) throws IOException {
        if (this.count == 0) {
            return;
        }
        if (zzkgVar.zzfj() == zzgs$zzf.zzww) {
            for (int i = 0; i < this.count; i++) {
                zzb(this.zzaak[i], this.zzyv[i], zzkgVar);
            }
            return;
        }
        for (int i2 = this.count - 1; i2 >= 0; i2--) {
            zzb(this.zzaak[i2], this.zzyv[i2], zzkgVar);
        }
    }

    public final void zzdp() {
        this.zzrj = false;
    }

    public final int zzgf() {
        int i;
        int i2;
        int i3 = this.zzwe;
        if (i3 != -1) {
            return i3;
        }
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int i6 = i5;
            if (i4 >= this.count) {
                this.zzwe = i6;
                return i6;
            }
            int i7 = this.zzaak[i4];
            int i8 = i7 >>> 3;
            int i9 = i7 & 7;
            if (i9 == 0) {
                i2 = zzga.zze(i8, ((Long) this.zzyv[i4]).longValue());
            } else if (i9 == 1) {
                i2 = zzga.zzg(i8, ((Long) this.zzyv[i4]).longValue());
            } else if (i9 == 2) {
                i2 = zzga.zzc(i8, (zzfh) this.zzyv[i4]);
            } else if (i9 == 3) {
                i = ((zzjm) this.zzyv[i4]).zzgf() + (zzga.zzba(i8) << 1);
                i4++;
                i5 = i + i6;
            } else if (i9 != 5) {
                throw new IllegalStateException((Throwable) zzhc.zzgr());
            } else {
                i2 = zzga.zzo(i8, ((Integer) this.zzyv[i4]).intValue());
            }
            i = i2;
            i4++;
            i5 = i + i6;
        }
    }

    public final int zzii() {
        int i = this.zzwe;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.count; i3++) {
            i2 += zzga.zzd(this.zzaak[i3] >>> 3, (zzfh) this.zzyv[i3]);
        }
        this.zzwe = i2;
        return i2;
    }
}
