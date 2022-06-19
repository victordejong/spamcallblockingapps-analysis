package com.google.android.gms.internal.firebase_remote_config;

import com.google.android.gms.internal.firebase_remote_config.zzhi;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/firebase_remote_config/zzka.class */
public final class zzka {
    private static final zzka zzxg = new zzka(0, new int[0], new Object[0], false);
    private int count;
    private boolean zzol;
    private int zztd;
    private Object[] zzvs;
    private int[] zzxh;

    private zzka() {
        this(0, new int[8], new Object[8], true);
    }

    private zzka(int i, int[] iArr, Object[] objArr, boolean z) {
        this.zztd = -1;
        this.count = i;
        this.zzxh = iArr;
        this.zzvs = objArr;
        this.zzol = z;
    }

    public static zzka zza(zzka zzkaVar, zzka zzkaVar2) {
        int i = zzkaVar.count + zzkaVar2.count;
        int[] copyOf = Arrays.copyOf(zzkaVar.zzxh, i);
        System.arraycopy(zzkaVar2.zzxh, 0, copyOf, zzkaVar.count, zzkaVar2.count);
        Object[] copyOf2 = Arrays.copyOf(zzkaVar.zzvs, i);
        System.arraycopy(zzkaVar2.zzvs, 0, copyOf2, zzkaVar.count, zzkaVar2.count);
        return new zzka(i, copyOf, copyOf2, true);
    }

    private static void zzb(int i, Object obj, zzku zzkuVar) {
        int i2 = i >>> 3;
        int i3 = i & 7;
        if (i3 == 0) {
            zzkuVar.zzi(i2, ((Long) obj).longValue());
        } else if (i3 == 1) {
            zzkuVar.zzc(i2, ((Long) obj).longValue());
        } else if (i3 == 2) {
            zzkuVar.zza(i2, (zzfx) obj);
        } else if (i3 != 3) {
            if (i3 != 5) {
                throw new RuntimeException(zzhq.zzhj());
            }
            zzkuVar.zzg(i2, ((Integer) obj).intValue());
        } else if (zzkuVar.zzgd() == zzhi.zze.zztx) {
            zzkuVar.zzaz(i2);
            ((zzka) obj).zzb(zzkuVar);
            zzkuVar.zzba(i2);
        } else {
            zzkuVar.zzba(i2);
            ((zzka) obj).zzb(zzkuVar);
            zzkuVar.zzaz(i2);
        }
    }

    public static zzka zzja() {
        return zzxg;
    }

    public static zzka zzjb() {
        return new zzka();
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzka)) {
            return false;
        }
        zzka zzkaVar = (zzka) obj;
        int i = this.count;
        if (i != zzkaVar.count) {
            return false;
        }
        int[] iArr = this.zzxh;
        int[] iArr2 = zzkaVar.zzxh;
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
        Object[] objArr = this.zzvs;
        Object[] objArr2 = zzkaVar.zzvs;
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
        int[] iArr = this.zzxh;
        int i2 = 17;
        for (int i3 = 0; i3 < i; i3++) {
            i2 = (i2 * 31) + iArr[i3];
        }
        Object[] objArr = this.zzvs;
        int i4 = this.count;
        int i5 = 17;
        for (int i6 = 0; i6 < i4; i6++) {
            i5 = (i5 * 31) + objArr[i6].hashCode();
        }
        return ((((i + 527) * 31) + i2) * 31) + i5;
    }

    public final void zza(zzku zzkuVar) {
        if (zzkuVar.zzgd() == zzhi.zze.zzty) {
            for (int i = this.count - 1; i >= 0; i--) {
                zzkuVar.zza(this.zzxh[i] >>> 3, this.zzvs[i]);
            }
            return;
        }
        for (int i2 = 0; i2 < this.count; i2++) {
            zzkuVar.zza(this.zzxh[i2] >>> 3, this.zzvs[i2]);
        }
    }

    public final void zzb(int i, Object obj) {
        if (this.zzol) {
            int i2 = this.count;
            if (i2 == this.zzxh.length) {
                int i3 = this.count + (i2 < 4 ? 8 : i2 >> 1);
                this.zzxh = Arrays.copyOf(this.zzxh, i3);
                this.zzvs = Arrays.copyOf(this.zzvs, i3);
            }
            int[] iArr = this.zzxh;
            int i4 = this.count;
            iArr[i4] = i;
            this.zzvs[i4] = obj;
            this.count = i4 + 1;
            return;
        }
        throw new UnsupportedOperationException();
    }

    public final void zzb(zzku zzkuVar) {
        if (this.count == 0) {
            return;
        }
        if (zzkuVar.zzgd() == zzhi.zze.zztx) {
            for (int i = 0; i < this.count; i++) {
                zzb(this.zzxh[i], this.zzvs[i], zzkuVar);
            }
            return;
        }
        for (int i2 = this.count - 1; i2 >= 0; i2--) {
            zzb(this.zzxh[i2], this.zzvs[i2], zzkuVar);
        }
    }

    public final void zzb(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.count; i2++) {
            zzir.zza(sb, i, String.valueOf(this.zzxh[i2] >>> 3), this.zzvs[i2]);
        }
    }

    public final void zzes() {
        this.zzol = false;
    }

    public final int zzgs() {
        int i;
        int i2 = this.zztd;
        if (i2 != -1) {
            return i2;
        }
        int i3 = 0;
        for (int i4 = 0; i4 < this.count; i4++) {
            int i5 = this.zzxh[i4];
            int i6 = i5 >>> 3;
            int i7 = i5 & 7;
            if (i7 == 0) {
                i = zzgs.zze(i6, ((Long) this.zzvs[i4]).longValue());
            } else if (i7 == 1) {
                i = zzgs.zzg(i6, ((Long) this.zzvs[i4]).longValue());
            } else if (i7 == 2) {
                i = zzgs.zzc(i6, (zzfx) this.zzvs[i4]);
            } else if (i7 == 3) {
                i = (zzgs.zzaq(i6) << 1) + ((zzka) this.zzvs[i4]).zzgs();
            } else if (i7 != 5) {
                throw new IllegalStateException(zzhq.zzhj());
            } else {
                i = zzgs.zzk(i6, ((Integer) this.zzvs[i4]).intValue());
            }
            i3 += i;
        }
        this.zztd = i3;
        return i3;
    }

    public final int zzjc() {
        int i = this.zztd;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.count; i3++) {
            i2 += zzgs.zzd(this.zzxh[i3] >>> 3, (zzfx) this.zzvs[i3]);
        }
        this.zztd = i2;
        return i2;
    }
}
