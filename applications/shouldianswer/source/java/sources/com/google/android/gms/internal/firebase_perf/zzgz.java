package com.google.android.gms.internal.firebase_perf;

import com.google.android.gms.internal.firebase-perf.zzdd;
import com.google.android.gms.internal.firebase-perf.zzhq;
import com.google.android.gms.internal.firebase_perf.zzeh;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_perf/zzgz.class */
public final class zzgz {
    private static final com.google.android.gms.internal.firebase-perf.zzgz zzud = new zzgz(0, new int[0], new Object[0], false);
    private int count;
    private boolean zzmd;
    private int zzqd;
    private Object[] zzst;
    private int[] zzue;

    private zzgz() {
        this(0, new int[8], new Object[8], true);
    }

    private zzgz(int i, int[] iArr, Object[] objArr, boolean z) {
        this.zzqd = -1;
        this.count = i;
        this.zzue = iArr;
        this.zzst = objArr;
        this.zzmd = z;
    }

    public static com.google.android.gms.internal.firebase-perf.zzgz zza(com.google.android.gms.internal.firebase-perf.zzgz zzgzVar, com.google.android.gms.internal.firebase-perf.zzgz zzgzVar2) {
        int i = ((zzgz) zzgzVar).count + ((zzgz) zzgzVar2).count;
        int[] copyOf = Arrays.copyOf(((zzgz) zzgzVar).zzue, i);
        System.arraycopy(((zzgz) zzgzVar2).zzue, 0, copyOf, ((zzgz) zzgzVar).count, ((zzgz) zzgzVar2).count);
        Object[] copyOf2 = Arrays.copyOf(((zzgz) zzgzVar).zzst, i);
        System.arraycopy(((zzgz) zzgzVar2).zzst, 0, copyOf2, ((zzgz) zzgzVar).count, ((zzgz) zzgzVar2).count);
        return new zzgz(i, copyOf, copyOf2, true);
    }

    private static void zzb(int i, Object obj, zzhq zzhqVar) {
        int i2 = i >>> 3;
        int i3 = i & 7;
        if (i3 == 0) {
            zzhqVar.zzi(i2, ((Long) obj).longValue());
        } else if (i3 == 1) {
            zzhqVar.zzc(i2, ((Long) obj).longValue());
        } else if (i3 == 2) {
            zzhqVar.zza(i2, (zzdd) obj);
        } else if (i3 != 3) {
            if (i3 != 5) {
                throw new RuntimeException((Throwable) zzer.zzgu());
            }
            zzhqVar.zzi(i2, ((Integer) obj).intValue());
        } else if (zzhqVar.zzfx() == zzeh.zzd.zzqr) {
            zzhqVar.zzai(i2);
            ((zzgz) obj).zzb(zzhqVar);
            zzhqVar.zzaj(i2);
        } else {
            zzhqVar.zzaj(i2);
            ((zzgz) obj).zzb(zzhqVar);
            zzhqVar.zzai(i2);
        }
    }

    public static com.google.android.gms.internal.firebase-perf.zzgz zzih() {
        return zzud;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzgz)) {
            return false;
        }
        zzgz zzgzVar = (zzgz) obj;
        int i = this.count;
        if (i != zzgzVar.count) {
            return false;
        }
        int[] iArr = this.zzue;
        int[] iArr2 = zzgzVar.zzue;
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
        Object[] objArr = this.zzst;
        Object[] objArr2 = zzgzVar.zzst;
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
        int[] iArr = this.zzue;
        int i2 = 17;
        for (int i3 = 0; i3 < i; i3++) {
            i2 = (i2 * 31) + iArr[i3];
        }
        Object[] objArr = this.zzst;
        int i4 = this.count;
        int i5 = 17;
        for (int i6 = 0; i6 < i4; i6++) {
            i5 = (i5 * 31) + objArr[i6].hashCode();
        }
        return ((((i + 527) * 31) + i2) * 31) + i5;
    }

    public final void zza(zzhq zzhqVar) {
        if (zzhqVar.zzfx() == zzeh.zzd.zzqs) {
            for (int i = this.count - 1; i >= 0; i--) {
                zzhqVar.zza(this.zzue[i] >>> 3, this.zzst[i]);
            }
            return;
        }
        for (int i2 = 0; i2 < this.count; i2++) {
            zzhqVar.zza(this.zzue[i2] >>> 3, this.zzst[i2]);
        }
    }

    public final void zza(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.count; i2++) {
            zzfs.zza(sb, i, String.valueOf(this.zzue[i2] >>> 3), this.zzst[i2]);
        }
    }

    public final void zzb(zzhq zzhqVar) {
        if (this.count == 0) {
            return;
        }
        if (zzhqVar.zzfx() == zzeh.zzd.zzqr) {
            for (int i = 0; i < this.count; i++) {
                zzb(this.zzue[i], this.zzst[i], zzhqVar);
            }
            return;
        }
        for (int i2 = this.count - 1; i2 >= 0; i2--) {
            zzb(this.zzue[i2], this.zzst[i2], zzhqVar);
        }
    }

    public final void zzfk() {
        this.zzmd = false;
    }

    public final int zzgp() {
        int i;
        int i2 = this.zzqd;
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.count; i4++) {
            int i5 = this.zzue[i4];
            int i6 = i5 >>> 3;
            int i7 = i5 & 7;
            if (i7 == 0) {
                i = zzdu.zze(i6, ((Long) this.zzst[i4]).longValue());
            } else if (i7 == 1) {
                i = zzdu.zzg(i6, ((Long) this.zzst[i4]).longValue());
            } else if (i7 == 2) {
                i = zzdu.zzc(i6, (zzdd) ((zzdd) this.zzst[i4]));
            } else if (i7 == 3) {
                i = (zzdu.zzy(i6) << 1) + ((zzgz) this.zzst[i4]).zzgp();
            } else if (i7 != 5) {
                throw new IllegalStateException((Throwable) zzer.zzgu());
            } else {
                i = zzdu.zzm(i6, ((Integer) this.zzst[i4]).intValue());
            }
            i3 += i;
        }
        this.zzqd = i3;
        return i3;
    }

    public final int zzii() {
        int i = this.zzqd;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.count; i3++) {
            i2 += zzdu.zzd(this.zzue[i3] >>> 3, (zzdd) ((zzdd) this.zzst[i3]));
        }
        this.zzqd = i2;
        return i2;
    }
}
