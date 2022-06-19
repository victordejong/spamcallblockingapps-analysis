package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzeoe.class */
public final class zzeoe {
    private static final zzeoe zziva = new zzeoe(0, new int[0], new Object[0], false);
    private int count;
    private boolean zzilo;
    private int zziql;
    private Object[] zziss;
    private int[] zzivb;

    private zzeoe() {
        this(0, new int[8], new Object[8], true);
    }

    private zzeoe(int i, int[] iArr, Object[] objArr, boolean z) {
        this.zziql = -1;
        this.count = i;
        this.zzivb = iArr;
        this.zziss = objArr;
        this.zzilo = z;
    }

    public static zzeoe zza(zzeoe zzeoeVar, zzeoe zzeoeVar2) {
        int i = zzeoeVar.count + zzeoeVar2.count;
        int[] copyOf = Arrays.copyOf(zzeoeVar.zzivb, i);
        System.arraycopy(zzeoeVar2.zzivb, 0, copyOf, zzeoeVar.count, zzeoeVar2.count);
        Object[] copyOf2 = Arrays.copyOf(zzeoeVar.zziss, i);
        System.arraycopy(zzeoeVar2.zziss, 0, copyOf2, zzeoeVar.count, zzeoeVar2.count);
        return new zzeoe(i, copyOf, copyOf2, true);
    }

    private static void zzb(int i, Object obj, zzeoy zzeoyVar) throws IOException {
        int i2 = i >>> 3;
        int i3 = i & 7;
        if (i3 == 0) {
            zzeoyVar.zzq(i2, ((Long) obj).longValue());
        } else if (i3 == 1) {
            zzeoyVar.zzk(i2, ((Long) obj).longValue());
        } else if (i3 == 2) {
            zzeoyVar.zza(i2, (zzejr) obj);
        } else if (i3 != 3) {
            if (i3 != 5) {
                throw new RuntimeException(zzelo.zzbjf());
            }
            zzeoyVar.zzaf(i2, ((Integer) obj).intValue());
        } else if (zzeoyVar.zzbhv() == zzeox.zzixh) {
            zzeoyVar.zzhe(i2);
            ((zzeoe) obj).zzb(zzeoyVar);
            zzeoyVar.zzhf(i2);
        } else {
            zzeoyVar.zzhf(i2);
            ((zzeoe) obj).zzb(zzeoyVar);
            zzeoyVar.zzhe(i2);
        }
    }

    public static zzeoe zzbkz() {
        return zziva;
    }

    public static zzeoe zzbla() {
        return new zzeoe();
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzeoe)) {
            return false;
        }
        zzeoe zzeoeVar = (zzeoe) obj;
        int i = this.count;
        if (i != zzeoeVar.count) {
            return false;
        }
        int[] iArr = this.zzivb;
        int[] iArr2 = zzeoeVar.zzivb;
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
        Object[] objArr = this.zziss;
        Object[] objArr2 = zzeoeVar.zziss;
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
        int[] iArr = this.zzivb;
        int i2 = 17;
        for (int i3 = 0; i3 < i; i3++) {
            i2 = (i2 * 31) + iArr[i3];
        }
        Object[] objArr = this.zziss;
        int i4 = this.count;
        int i5 = 17;
        for (int i6 = 0; i6 < i4; i6++) {
            i5 = (i5 * 31) + objArr[i6].hashCode();
        }
        return ((((i + 527) * 31) + i2) * 31) + i5;
    }

    public final void zza(zzeoy zzeoyVar) throws IOException {
        if (zzeoyVar.zzbhv() == zzeox.zzixi) {
            for (int i = this.count - 1; i >= 0; i--) {
                zzeoyVar.zzc(this.zzivb[i] >>> 3, this.zziss[i]);
            }
            return;
        }
        for (int i2 = 0; i2 < this.count; i2++) {
            zzeoyVar.zzc(this.zzivb[i2] >>> 3, this.zziss[i2]);
        }
    }

    public final void zza(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.count; i2++) {
            zzemp.zza(sb, i, String.valueOf(this.zzivb[i2] >>> 3), this.zziss[i2]);
        }
    }

    public final void zzb(zzeoy zzeoyVar) throws IOException {
        if (this.count == 0) {
            return;
        }
        if (zzeoyVar.zzbhv() == zzeox.zzixh) {
            for (int i = 0; i < this.count; i++) {
                zzb(this.zzivb[i], this.zziss[i], zzeoyVar);
            }
            return;
        }
        for (int i2 = this.count - 1; i2 >= 0; i2--) {
            zzb(this.zzivb[i2], this.zziss[i2], zzeoyVar);
        }
    }

    public final void zzbgf() {
        this.zzilo = false;
    }

    public final int zzbik() {
        int i;
        int i2 = this.zziql;
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.count; i4++) {
            int i5 = this.zzivb[i4];
            int i6 = i5 >>> 3;
            int i7 = i5 & 7;
            if (i7 == 0) {
                i = zzekl.zzm(i6, ((Long) this.zziss[i4]).longValue());
            } else if (i7 == 1) {
                i = zzekl.zzo(i6, ((Long) this.zziss[i4]).longValue());
            } else if (i7 == 2) {
                i = zzekl.zzc(i6, (zzejr) this.zziss[i4]);
            } else if (i7 == 3) {
                i = (zzekl.zzgv(i6) << 1) + ((zzeoe) this.zziss[i4]).zzbik();
            } else if (i7 != 5) {
                throw new IllegalStateException(zzelo.zzbjf());
            } else {
                i = zzekl.zzaj(i6, ((Integer) this.zziss[i4]).intValue());
            }
            i3 += i;
        }
        this.zziql = i3;
        return i3;
    }

    public final int zzblb() {
        int i = this.zziql;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.count; i3++) {
            i2 += zzekl.zzd(this.zzivb[i3] >>> 3, (zzejr) this.zziss[i3]);
        }
        this.zziql = i2;
        return i2;
    }

    public final void zzd(int i, Object obj) {
        if (this.zzilo) {
            int i2 = this.count;
            int[] iArr = this.zzivb;
            if (i2 == iArr.length) {
                int i3 = i2 + (i2 < 4 ? 8 : i2 >> 1);
                this.zzivb = Arrays.copyOf(iArr, i3);
                this.zziss = Arrays.copyOf(this.zziss, i3);
            }
            int[] iArr2 = this.zzivb;
            int i4 = this.count;
            iArr2[i4] = i;
            this.zziss[i4] = obj;
            this.count = i4 + 1;
            return;
        }
        throw new UnsupportedOperationException();
    }
}
