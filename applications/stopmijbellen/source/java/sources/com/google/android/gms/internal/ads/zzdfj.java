package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdfj.class */
public final class zzdfj extends zzdkb<zzdfl> {
    private boolean zzb = false;

    public zzdfj(Set<zzdlw<zzdfl>> set) {
        super(set);
    }

    public final void zza() {
        synchronized (this) {
            if (!this.zzb) {
                zzo(zzdfi.zza);
                this.zzb = true;
            }
        }
    }
}
