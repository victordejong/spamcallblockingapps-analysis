package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;
import java.util.Set;
import javax.annotation.concurrent.GuardedBy;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdmt.class */
public final class zzdmt extends zzdkb<VideoController.VideoLifecycleCallbacks> {
    @GuardedBy("this")
    private boolean zzb;

    public zzdmt(Set<zzdlw<VideoController.VideoLifecycleCallbacks>> set) {
        super(set);
    }

    public final void zza() {
        zzo(zzdmp.zza);
    }

    public final void zzb() {
        zzo(zzdmq.zza);
    }

    public final void zzc() {
        synchronized (this) {
            if (!this.zzb) {
                zzo(zzdms.zza);
                this.zzb = true;
            }
            zzo(zzdmr.zza);
        }
    }

    public final void zzd() {
        synchronized (this) {
            zzo(zzdms.zza);
            this.zzb = true;
        }
    }
}
