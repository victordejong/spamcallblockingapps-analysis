package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zznv.class */
public class zznv implements zzog {
    private final int length;
    private int zzahx;
    private final zzht[] zzbfr;
    private final zznr zzbgx;
    private final int[] zzbgy;
    private final long[] zzbgz;

    public zznv(zznr zznrVar, int... iArr) {
        zzpg.checkState(iArr.length > 0);
        this.zzbgx = (zznr) zzpg.checkNotNull(zznrVar);
        int length = iArr.length;
        this.length = length;
        this.zzbfr = new zzht[length];
        for (int i = 0; i < iArr.length; i++) {
            this.zzbfr[i] = zznrVar.zzbb(iArr[i]);
        }
        Arrays.sort(this.zzbfr, new zznx());
        this.zzbgy = new int[this.length];
        int i2 = 0;
        while (true) {
            int i3 = this.length;
            if (i2 >= i3) {
                this.zzbgz = new long[i3];
                return;
            } else {
                this.zzbgy[i2] = zznrVar.zzh(this.zzbfr[i2]);
                i2++;
            }
        }
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zznv zznvVar = (zznv) obj;
        return this.zzbgx == zznvVar.zzbgx && Arrays.equals(this.zzbgy, zznvVar.zzbgy);
    }

    public int hashCode() {
        if (this.zzahx == 0) {
            this.zzahx = (System.identityHashCode(this.zzbgx) * 31) + Arrays.hashCode(this.zzbgy);
        }
        return this.zzahx;
    }

    @Override // com.google.android.gms.internal.ads.zzog
    public final int length() {
        return this.zzbgy.length;
    }

    @Override // com.google.android.gms.internal.ads.zzog
    public final zzht zzbb(int i) {
        return this.zzbfr[i];
    }

    @Override // com.google.android.gms.internal.ads.zzog
    public final int zzbd(int i) {
        return this.zzbgy[0];
    }

    @Override // com.google.android.gms.internal.ads.zzog
    public final zznr zzil() {
        return this.zzbgx;
    }
}
