package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzdjf.class */
public final class zzdjf extends zzdgm<VideoController.VideoLifecycleCallbacks> {
    private boolean zzb;

    public zzdjf(Set<zzdih<VideoController.VideoLifecycleCallbacks>> set) {
        super(set);
    }

    public final void zza() {
        zzk(zzdja.zza);
    }

    public final void zzb() {
        zzk(zzdjb.zza);
    }

    public final void zzc() {
        synchronized (this) {
            zzk(zzdjc.zza);
            this.zzb = true;
        }
    }

    public final void zzd() {
        synchronized (this) {
            if (!this.zzb) {
                zzk(zzdjd.zza);
                this.zzb = true;
            }
            zzk(zzdje.zza);
        }
    }
}
