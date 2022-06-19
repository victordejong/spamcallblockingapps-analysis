package com.google.android.gms.internal.clearcut;

import com.google.android.gms.internal.clearcut.zzcg;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/clearcut/zzey.class */
public final class zzey {
    private static final zzey zzoz = new zzey(0, new int[0], new Object[0], false);
    private int count;
    private boolean zzfa;
    private int zzjq;
    private Object[] zzmj;
    private int[] zzpa;

    private zzey() {
        this(0, new int[8], new Object[8], true);
    }

    private zzey(int i, int[] iArr, Object[] objArr, boolean z) {
        this.zzjq = -1;
        this.count = i;
        this.zzpa = iArr;
        this.zzmj = objArr;
        this.zzfa = z;
    }

    public static zzey zza(zzey zzeyVar, zzey zzeyVar2) {
        int i = zzeyVar.count + zzeyVar2.count;
        int[] copyOf = Arrays.copyOf(zzeyVar.zzpa, i);
        System.arraycopy(zzeyVar2.zzpa, 0, copyOf, zzeyVar.count, zzeyVar2.count);
        Object[] copyOf2 = Arrays.copyOf(zzeyVar.zzmj, i);
        System.arraycopy(zzeyVar2.zzmj, 0, copyOf2, zzeyVar.count, zzeyVar2.count);
        return new zzey(i, copyOf, copyOf2, true);
    }

    private static void zzb(int i, Object obj, zzfr zzfrVar) throws IOException {
        int i2 = i >>> 3;
        int i3 = i & 7;
        if (i3 == 0) {
            zzfrVar.zzi(i2, ((Long) obj).longValue());
        } else if (i3 == 1) {
            zzfrVar.zzc(i2, ((Long) obj).longValue());
        } else if (i3 == 2) {
            zzfrVar.zza(i2, (zzbb) obj);
        } else if (i3 != 3) {
            if (i3 != 5) {
                throw new RuntimeException(zzco.zzbn());
            }
            zzfrVar.zzf(i2, ((Integer) obj).intValue());
        } else if (zzfrVar.zzaj() == zzcg.zzg.zzko) {
            zzfrVar.zzaa(i2);
            ((zzey) obj).zzb(zzfrVar);
            zzfrVar.zzab(i2);
        } else {
            zzfrVar.zzab(i2);
            ((zzey) obj).zzb(zzfrVar);
            zzfrVar.zzaa(i2);
        }
    }

    public static zzey zzea() {
        return zzoz;
    }

    public static zzey zzeb() {
        return new zzey();
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
        int i = this.count;
        if (i != zzeyVar.count) {
            return false;
        }
        int[] iArr = this.zzpa;
        int[] iArr2 = zzeyVar.zzpa;
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
        Object[] objArr = this.zzmj;
        Object[] objArr2 = zzeyVar.zzmj;
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
        int[] iArr = this.zzpa;
        int i2 = 17;
        int i3 = 17;
        for (int i4 = 0; i4 < i; i4++) {
            i3 = (i3 * 31) + iArr[i4];
        }
        Object[] objArr = this.zzmj;
        int i5 = this.count;
        for (int i6 = 0; i6 < i5; i6++) {
            i2 = (i2 * 31) + objArr[i6].hashCode();
        }
        return ((((i + 527) * 31) + i3) * 31) + i2;
    }

    public final void zza(zzfr zzfrVar) throws IOException {
        if (zzfrVar.zzaj() == zzcg.zzg.zzkp) {
            for (int i = this.count - 1; i >= 0; i--) {
                zzfrVar.zza(this.zzpa[i] >>> 3, this.zzmj[i]);
            }
            return;
        }
        for (int i2 = 0; i2 < this.count; i2++) {
            zzfrVar.zza(this.zzpa[i2] >>> 3, this.zzmj[i2]);
        }
    }

    public final void zza(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.count; i2++) {
            zzdr.zza(sb, i, String.valueOf(this.zzpa[i2] >>> 3), this.zzmj[i2]);
        }
    }

    public final int zzas() {
        int i;
        int i2;
        int i3 = this.zzjq;
        if (i3 != -1) {
            return i3;
        }
        int i4 = 0;
        int i5 = 0;
        while (true) {
            int i6 = i5;
            if (i4 >= this.count) {
                this.zzjq = i6;
                return i6;
            }
            int i7 = this.zzpa[i4];
            int i8 = i7 >>> 3;
            int i9 = i7 & 7;
            if (i9 == 0) {
                i2 = zzbn.zze(i8, ((Long) this.zzmj[i4]).longValue());
            } else if (i9 == 1) {
                i2 = zzbn.zzg(i8, ((Long) this.zzmj[i4]).longValue());
            } else if (i9 == 2) {
                i2 = zzbn.zzc(i8, (zzbb) this.zzmj[i4]);
            } else if (i9 == 3) {
                i = ((zzey) this.zzmj[i4]).zzas() + (zzbn.zzr(i8) << 1);
                i4++;
                i5 = i + i6;
            } else if (i9 != 5) {
                throw new IllegalStateException(zzco.zzbn());
            } else {
                i2 = zzbn.zzj(i8, ((Integer) this.zzmj[i4]).intValue());
            }
            i = i2;
            i4++;
            i5 = i + i6;
        }
    }

    public final void zzb(int i, Object obj) {
        if (this.zzfa) {
            int i2 = this.count;
            int[] iArr = this.zzpa;
            if (i2 == iArr.length) {
                int i3 = i2 + (i2 < 4 ? 8 : i2 >> 1);
                this.zzpa = Arrays.copyOf(iArr, i3);
                this.zzmj = Arrays.copyOf(this.zzmj, i3);
            }
            int[] iArr2 = this.zzpa;
            int i4 = this.count;
            iArr2[i4] = i;
            this.zzmj[i4] = obj;
            this.count = i4 + 1;
            return;
        }
        throw new UnsupportedOperationException();
    }

    public final void zzb(zzfr zzfrVar) throws IOException {
        if (this.count == 0) {
            return;
        }
        if (zzfrVar.zzaj() == zzcg.zzg.zzko) {
            for (int i = 0; i < this.count; i++) {
                zzb(this.zzpa[i], this.zzmj[i], zzfrVar);
            }
            return;
        }
        for (int i2 = this.count - 1; i2 >= 0; i2--) {
            zzb(this.zzpa[i2], this.zzmj[i2], zzfrVar);
        }
    }

    public final int zzec() {
        int i = this.zzjq;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.count; i3++) {
            i2 += zzbn.zzd(this.zzpa[i3] >>> 3, (zzbb) this.zzmj[i3]);
        }
        this.zzjq = i2;
        return i2;
    }

    public final void zzv() {
        this.zzfa = false;
    }
}
