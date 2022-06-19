package com.google.android.gms.ads.mediation;

import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.formats.NativeAdOptions;
import java.util.Map;
@Deprecated
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/mediation/NativeMediationAdRequest.class */
public interface NativeMediationAdRequest extends MediationAdRequest {
    float getAdVolume();

    @RecentlyNonNull
    @Deprecated
    NativeAdOptions getNativeAdOptions();

    com.google.android.gms.ads.nativead.NativeAdOptions getNativeAdRequestOptions();

    boolean isAdMuted();

    boolean isUnifiedNativeAdRequested();

    boolean zza();

    @RecentlyNonNull
    Map<String, Boolean> zzb();
}
