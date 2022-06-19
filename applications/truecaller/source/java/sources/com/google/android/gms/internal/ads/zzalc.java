package com.google.android.gms.internal.ads;

import android.util.SparseBooleanArray;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzalc.class */
public final class zzalc {
    private final SparseBooleanArray zza = new SparseBooleanArray();
    private boolean zzb;

    public final zzalc zza(int i) {
        zzakt.zzd(!this.zzb);
        this.zza.append(i, true);
        return this;
    }

    public final zzale zzb() {
        zzakt.zzd(!this.zzb);
        this.zzb = true;
        return new zzale(this.zza, null);
    }
}
