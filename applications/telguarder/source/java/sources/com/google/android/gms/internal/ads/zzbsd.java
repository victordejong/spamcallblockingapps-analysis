package com.google.android.gms.internal.ads;

import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbsd.class */
public final class zzbsd extends zzbwf<zzbse> {
    private boolean zzfzj = false;

    public zzbsd(Set<zzbya<zzbse>> set) {
        super(set);
    }

    public final void onAdImpression() {
        synchronized (this) {
            if (!this.zzfzj) {
                zza(zzbsc.zzfzg);
                this.zzfzj = true;
            }
        }
    }
}
