package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zznr.class */
public final class zznr {
    public final int length;
    private int zzahx;
    private final zzht[] zzbfr;

    public zznr(zzht... zzhtVarArr) {
        zzpg.checkState(zzhtVarArr.length > 0);
        this.zzbfr = zzhtVarArr;
        this.length = zzhtVarArr.length;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        zznr zznrVar = (zznr) obj;
        return this.length == zznrVar.length && Arrays.equals(this.zzbfr, zznrVar.zzbfr);
    }

    public final int hashCode() {
        if (this.zzahx == 0) {
            this.zzahx = Arrays.hashCode(this.zzbfr) + 527;
        }
        return this.zzahx;
    }

    public final zzht zzbb(int i) {
        return this.zzbfr[i];
    }

    public final int zzh(zzht zzhtVar) {
        int i = 0;
        while (true) {
            zzht[] zzhtVarArr = this.zzbfr;
            if (i < zzhtVarArr.length) {
                if (zzhtVar == zzhtVarArr[i]) {
                    return i;
                }
                i++;
            } else {
                return -1;
            }
        }
    }
}
