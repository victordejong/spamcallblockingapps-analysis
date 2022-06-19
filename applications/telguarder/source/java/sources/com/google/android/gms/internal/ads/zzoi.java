package com.google.android.gms.internal.ads;

import java.util.Arrays;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzoi.class */
public final class zzoi {
    public final int length;
    private int zzahx;
    private final zzog[] zzbhw;

    public zzoi(zzog... zzogVarArr) {
        this.zzbhw = zzogVarArr;
        this.length = zzogVarArr.length;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return Arrays.equals(this.zzbhw, ((zzoi) obj).zzbhw);
        }
        return false;
    }

    public final int hashCode() {
        if (this.zzahx == 0) {
            this.zzahx = Arrays.hashCode(this.zzbhw) + 527;
        }
        return this.zzahx;
    }

    public final zzog zzbe(int i) {
        return this.zzbhw[i];
    }

    public final zzog[] zzim() {
        return (zzog[]) this.zzbhw.clone();
    }
}
