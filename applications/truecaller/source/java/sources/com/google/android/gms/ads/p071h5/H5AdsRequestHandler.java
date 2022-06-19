package com.google.android.gms.ads.p071h5;

import android.content.Context;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.internal.ads.zzbqt;
/* renamed from: com.google.android.gms.ads.h5.H5AdsRequestHandler */
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/h5/H5AdsRequestHandler.class */
public final class H5AdsRequestHandler {
    private final zzbqt zza;

    public H5AdsRequestHandler(@RecentlyNonNull Context context, @RecentlyNonNull OnH5AdsEventListener onH5AdsEventListener) {
        this.zza = new zzbqt(context, onH5AdsEventListener);
    }

    public void clearAdObjects() {
        this.zza.zzb();
    }

    public boolean handleH5AdsRequest(@RecentlyNonNull String str) {
        return this.zza.zza(str);
    }

    public boolean shouldInterceptRequest(@RecentlyNonNull String str) {
        return zzbqt.zzc(str);
    }
}
