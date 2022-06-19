package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zznu.class */
public final class zznu {
    public static final zznu zzbgv = new zznu(new zznr[0]);
    public final int length;
    private int zzahx;
    private final zznr[] zzbgw;

    public zznu(zznr... zznrVarArr) {
        this.zzbgw = zznrVarArr;
        this.length = zznrVarArr.length;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zznu zznuVar = (zznu) obj;
        return this.length == zznuVar.length && Arrays.equals(this.zzbgw, zznuVar.zzbgw);
    }

    public final int hashCode() {
        if (this.zzahx == 0) {
            this.zzahx = Arrays.hashCode(this.zzbgw);
        }
        return this.zzahx;
    }

    public final int zza(zznr zznrVar) {
        for (int i = 0; i < this.length; i++) {
            if (this.zzbgw[i] == zznrVar) {
                return i;
            }
        }
        return -1;
    }

    public final zznr zzbc(int i) {
        return this.zzbgw[i];
    }
}
