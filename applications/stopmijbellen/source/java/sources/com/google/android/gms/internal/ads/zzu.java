package com.google.android.gms.internal.ads;

import android.util.SparseBooleanArray;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzu.class */
public final class zzu {
    private final SparseBooleanArray zza = new SparseBooleanArray();
    private boolean zzb;

    public final zzu zza(int i) {
        zzdy.zzf(!this.zzb);
        this.zza.append(i, true);
        return this;
    }

    public final zzw zzb() {
        zzdy.zzf(!this.zzb);
        this.zzb = true;
        return new zzw(this.zza, null);
    }
}
