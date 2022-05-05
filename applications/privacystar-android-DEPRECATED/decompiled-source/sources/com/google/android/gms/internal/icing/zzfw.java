package com.google.android.gms.internal.icing;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/icing/zzfw.class */
public final class zzfw implements Cloneable {
    private static final zzfx zznx = new zzfx();
    private int mSize;
    private boolean zzny;
    private int[] zznz;
    private zzfx[] zzoa;

    zzfw() {
        this(10);
    }

    private zzfw(int i) {
        int i2;
        this.zzny = false;
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
        int i5 = i2 / 4;
        this.zznz = new int[i5];
        this.zzoa = new zzfx[i5];
        this.mSize = 0;
    }

    public final /* synthetic */ Object clone() throws CloneNotSupportedException {
        int i = this.mSize;
        zzfw zzfwVar = new zzfw(i);
        System.arraycopy(this.zznz, 0, zzfwVar.zznz, 0, i);
        for (int i2 = 0; i2 < i; i2++) {
            if (this.zzoa[i2] != null) {
                zzfwVar.zzoa[i2] = (zzfx) this.zzoa[i2].clone();
            }
        }
        zzfwVar.mSize = i;
        return zzfwVar;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzfw)) {
            return false;
        }
        zzfw zzfwVar = (zzfw) obj;
        if (this.mSize != zzfwVar.mSize) {
            return false;
        }
        int[] iArr = this.zznz;
        int[] iArr2 = zzfwVar.zznz;
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
        zzfx[] zzfxVarArr = this.zzoa;
        zzfx[] zzfxVarArr2 = zzfwVar.zzoa;
        int i3 = this.mSize;
        int i4 = 0;
        while (true) {
            if (i4 >= i3) {
                z2 = true;
                break;
            } else if (!zzfxVarArr[i4].equals(zzfxVarArr2[i4])) {
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
            i = (((i * 31) + this.zznz[i2]) * 31) + this.zzoa[i2].hashCode();
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
    public final zzfx zzal(int i) {
        return this.zzoa[i];
    }
}
