package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.VideoController;
import java.util.Set;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/internal/ads/zzbyp.class */
public final class zzbyp extends zzbwf<VideoController.VideoLifecycleCallbacks> {
    private boolean zzeua;

    public zzbyp(Set<zzbya<VideoController.VideoLifecycleCallbacks>> set) {
        super(set);
    }

    public final void onVideoEnd() {
        zza(zzbyr.zzfzg);
    }

    public final void onVideoPause() {
        zza(zzbys.zzfzg);
    }

    public final void onVideoPlay() {
        synchronized (this) {
            if (!this.zzeua) {
                zza(zzbyt.zzfzg);
                this.zzeua = true;
            }
            zza(zzbyw.zzfzg);
        }
    }

    public final void onVideoStart() {
        synchronized (this) {
            zza(zzbyu.zzfzg);
            this.zzeua = true;
        }
    }
}
