package com.google.android.gms.internal.measurement;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/zzzc.class */
public final class zzzc implements Cloneable {
    private static final zzzd zzcff = new zzzd();
    private int mSize;
    private boolean zzcfg;
    private int[] zzcfh;
    private zzzd[] zzcfi;

    /* JADX INFO: Access modifiers changed from: package-private */
    public zzzc() {
        this(10);
    }

    private zzzc(int i) {
        this.zzcfg = false;
        int idealIntArraySize = idealIntArraySize(i);
        this.zzcfh = new int[idealIntArraySize];
        this.zzcfi = new zzzd[idealIntArraySize];
        this.mSize = 0;
    }

    private static int idealIntArraySize(int i) {
        int i2;
        int i3 = i << 2;
        int i4 = 4;
        while (true) {
            i2 = i3;
            if (i4 >= 32) {
                break;
            }
            i2 = (1 << i4) - 12;
            if (i3 <= i2) {
                break;
            }
            i4++;
        }
        return i2 / 4;
    }

    private final int zzcd(int i) {
        int i2 = this.mSize - 1;
        int i3 = 0;
        while (i3 <= i2) {
            int i4 = (i3 + i2) >>> 1;
            int i5 = this.zzcfh[i4];
            if (i5 < i) {
                i3 = i4 + 1;
            } else if (i5 <= i) {
                return i4;
            } else {
                i2 = i4 - 1;
            }
        }
        return i3 ^ (-1);
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        int i = this.mSize;
        zzzc zzzcVar = new zzzc(i);
        System.arraycopy(this.zzcfh, 0, zzzcVar.zzcfh, 0, i);
        for (int i2 = 0; i2 < i; i2++) {
            if (this.zzcfi[i2] != null) {
                zzzcVar.zzcfi[i2] = (zzzd) this.zzcfi[i2].clone();
            }
        }
        zzzcVar.mSize = i;
        return zzzcVar;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzzc)) {
            return false;
        }
        zzzc zzzcVar = (zzzc) obj;
        if (this.mSize != zzzcVar.mSize) {
            return false;
        }
        int[] iArr = this.zzcfh;
        int[] iArr2 = zzzcVar.zzcfh;
        int i = this.mSize;
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
        zzzd[] zzzdVarArr = this.zzcfi;
        zzzd[] zzzdVarArr2 = zzzcVar.zzcfi;
        int i3 = this.mSize;
        int i4 = 0;
        while (true) {
            if (i4 >= i3) {
                z2 = true;
                break;
            } else if (!zzzdVarArr[i4].equals(zzzdVarArr2[i4])) {
                z2 = false;
                break;
            } else {
                i4++;
            }
        }
        return z2;
    }

    public final int hashCode() {
        int i = 17;
        for (int i2 = 0; i2 < this.mSize; i2++) {
            i = (((i * 31) + this.zzcfh[i2]) * 31) + this.zzcfi[i2].hashCode();
        }
        return i;
    }

    public final boolean isEmpty() {
        return this.mSize == 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final int size() {
        return this.mSize;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void zza(int i, zzzd zzzdVar) {
        int zzcd = zzcd(i);
        if (zzcd >= 0) {
            this.zzcfi[zzcd] = zzzdVar;
            return;
        }
        int i2 = zzcd ^ (-1);
        if (i2 >= this.mSize || this.zzcfi[i2] != zzcff) {
            if (this.mSize >= this.zzcfh.length) {
                int idealIntArraySize = idealIntArraySize(this.mSize + 1);
                int[] iArr = new int[idealIntArraySize];
                zzzd[] zzzdVarArr = new zzzd[idealIntArraySize];
                System.arraycopy(this.zzcfh, 0, iArr, 0, this.zzcfh.length);
                System.arraycopy(this.zzcfi, 0, zzzdVarArr, 0, this.zzcfi.length);
                this.zzcfh = iArr;
                this.zzcfi = zzzdVarArr;
            }
            if (this.mSize - i2 != 0) {
                int i3 = i2 + 1;
                System.arraycopy(this.zzcfh, i2, this.zzcfh, i3, this.mSize - i2);
                System.arraycopy(this.zzcfi, i2, this.zzcfi, i3, this.mSize - i2);
            }
            this.zzcfh[i2] = i;
            this.zzcfi[i2] = zzzdVar;
            this.mSize++;
            return;
        }
        this.zzcfh[i2] = i;
        this.zzcfi[i2] = zzzdVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzzd zzcb(int i) {
        int zzcd = zzcd(i);
        if (zzcd < 0 || this.zzcfi[zzcd] == zzcff) {
            return null;
        }
        return this.zzcfi[zzcd];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final zzzd zzcc(int i) {
        return this.zzcfi[i];
    }
}
