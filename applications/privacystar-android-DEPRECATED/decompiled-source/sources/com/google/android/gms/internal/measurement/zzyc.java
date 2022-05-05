package com.google.android.gms.internal.measurement;

import com.google.android.gms.internal.measurement.zzvm;
import java.io.IOException;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzyc.class */
public final class zzyc {
    private static final zzyc zzcco = new zzyc(0, new int[0], new Object[0], false);
    private int count;
    private boolean zzbtu;
    private int zzbyn;
    private Object[] zzcba;
    private int[] zzccp;

    private zzyc() {
        this(0, new int[8], new Object[8], true);
    }

    private zzyc(int i, int[] iArr, Object[] objArr, boolean z) {
        this.zzbyn = -1;
        this.count = i;
        this.zzccp = iArr;
        this.zzcba = objArr;
        this.zzbtu = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzyc zza(zzyc zzycVar, zzyc zzycVar2) {
        int i = zzycVar.count + zzycVar2.count;
        int[] copyOf = Arrays.copyOf(zzycVar.zzccp, i);
        System.arraycopy(zzycVar2.zzccp, 0, copyOf, zzycVar.count, zzycVar2.count);
        Object[] copyOf2 = Arrays.copyOf(zzycVar.zzcba, i);
        System.arraycopy(zzycVar2.zzcba, 0, copyOf2, zzycVar.count, zzycVar2.count);
        return new zzyc(i, copyOf, copyOf2, true);
    }

    private static void zzb(int i, Object obj, zzyw zzywVar) throws IOException {
        int i2 = i >>> 3;
        int i3 = i & 7;
        if (i3 != 5) {
            switch (i3) {
                case 0:
                    zzywVar.zzi(i2, ((Long) obj).longValue());
                    return;
                case 1:
                    zzywVar.zzc(i2, ((Long) obj).longValue());
                    return;
                case 2:
                    zzywVar.zza(i2, (zzud) obj);
                    return;
                case 3:
                    if (zzywVar.zzvj() == zzvm.zze.zzbze) {
                        zzywVar.zzbk(i2);
                        ((zzyc) obj).zzb(zzywVar);
                        zzywVar.zzbl(i2);
                        return;
                    }
                    zzywVar.zzbl(i2);
                    ((zzyc) obj).zzb(zzywVar);
                    zzywVar.zzbk(i2);
                    return;
                default:
                    throw new RuntimeException(zzvt.zzwo());
            }
        } else {
            zzywVar.zzg(i2, ((Integer) obj).intValue());
        }
    }

    public static zzyc zzyf() {
        return zzcco;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static zzyc zzyg() {
        return new zzyc();
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (obj == null || !(obj instanceof zzyc)) {
            return false;
        }
        zzyc zzycVar = (zzyc) obj;
        if (this.count != zzycVar.count) {
            return false;
        }
        int[] iArr = this.zzccp;
        int[] iArr2 = zzycVar.zzccp;
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
        Object[] objArr = this.zzcba;
        Object[] objArr2 = zzycVar.zzcba;
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
        int[] iArr = this.zzccp;
        int i2 = this.count;
        int i3 = 17;
        int i4 = 17;
        for (int i5 = 0; i5 < i2; i5++) {
            i4 = (i4 * 31) + iArr[i5];
        }
        Object[] objArr = this.zzcba;
        int i6 = this.count;
        for (int i7 = 0; i7 < i6; i7++) {
            i3 = (i3 * 31) + objArr[i7].hashCode();
        }
        return ((((i + 527) * 31) + i4) * 31) + i3;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(zzyw zzywVar) throws IOException {
        if (zzywVar.zzvj() == zzvm.zze.zzbzf) {
            for (int i = this.count - 1; i >= 0; i--) {
                zzywVar.zza(this.zzccp[i] >>> 3, this.zzcba[i]);
            }
            return;
        }
        for (int i2 = 0; i2 < this.count; i2++) {
            zzywVar.zza(this.zzccp[i2] >>> 3, this.zzcba[i2]);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzb(int i, Object obj) {
        if (!this.zzbtu) {
            throw new UnsupportedOperationException();
        }
        if (this.count == this.zzccp.length) {
            int i2 = this.count + (this.count < 4 ? 8 : this.count >> 1);
            this.zzccp = Arrays.copyOf(this.zzccp, i2);
            this.zzcba = Arrays.copyOf(this.zzcba, i2);
        }
        this.zzccp[this.count] = i;
        this.zzcba[this.count] = obj;
        this.count++;
    }

    public final void zzb(zzyw zzywVar) throws IOException {
        if (this.count != 0) {
            if (zzywVar.zzvj() == zzvm.zze.zzbze) {
                for (int i = 0; i < this.count; i++) {
                    zzb(this.zzccp[i], this.zzcba[i], zzywVar);
                }
                return;
            }
            for (int i2 = this.count - 1; i2 >= 0; i2--) {
                zzb(this.zzccp[i2], this.zzcba[i2], zzywVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zzb(StringBuilder sb, int i) {
        for (int i2 = 0; i2 < this.count; i2++) {
            zzww.zzb(sb, i, String.valueOf(this.zzccp[i2] >>> 3), this.zzcba[i2]);
        }
    }

    public final void zzsm() {
        this.zzbtu = false;
    }

    public final int zzvu() {
        int i;
        int i2;
        int i3 = this.zzbyn;
        if (i3 != -1) {
            return i3;
        }
        int i4 = 0;
        for (int i5 = 0; i5 < this.count; i5++) {
            int i6 = this.zzccp[i5];
            int i7 = i6 >>> 3;
            int i8 = i6 & 7;
            if (i8 != 5) {
                switch (i8) {
                    case 0:
                        i2 = i4;
                        i = zzut.zze(i7, ((Long) this.zzcba[i5]).longValue());
                        continue;
                    case 1:
                        i2 = i4;
                        i = zzut.zzg(i7, ((Long) this.zzcba[i5]).longValue());
                        continue;
                    case 2:
                        i2 = i4;
                        i = zzut.zzc(i7, (zzud) this.zzcba[i5]);
                        continue;
                    case 3:
                        i2 = i4;
                        i = (zzut.zzbb(i7) << 1) + ((zzyc) this.zzcba[i5]).zzvu();
                        continue;
                    default:
                        throw new IllegalStateException(zzvt.zzwo());
                }
            } else {
                i2 = i4;
                i = zzut.zzk(i7, ((Integer) this.zzcba[i5]).intValue());
            }
            i4 = i2 + i;
        }
        this.zzbyn = i4;
        return i4;
    }

    public final int zzyh() {
        int i = this.zzbyn;
        if (i != -1) {
            return i;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < this.count; i3++) {
            i2 += zzut.zzd(this.zzccp[i3] >>> 3, (zzud) this.zzcba[i3]);
        }
        this.zzbyn = i2;
        return i2;
    }
}
