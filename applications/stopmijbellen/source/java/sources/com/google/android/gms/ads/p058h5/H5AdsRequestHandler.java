package com.google.android.gms.ads.p058h5;

import android.content.Context;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.internal.ads.zzbsv;
/* renamed from: com.google.android.gms.ads.h5.H5AdsRequestHandler */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/h5/H5AdsRequestHandler.class */
public final class H5AdsRequestHandler {
    private final zzbsv zza;

    public H5AdsRequestHandler(@RecentlyNonNull Context context, @RecentlyNonNull OnH5AdsEventListener onH5AdsEventListener) {
        this.zza = new zzbsv(context, onH5AdsEventListener);
    }

    public void clearAdObjects() {
        this.zza.zza();
    }

    public boolean handleH5AdsRequest(@RecentlyNonNull String str) {
        return this.zza.zzb(str);
    }

    public boolean shouldInterceptRequest(@RecentlyNonNull String str) {
        return zzbsv.zzc(str);
    }
}
