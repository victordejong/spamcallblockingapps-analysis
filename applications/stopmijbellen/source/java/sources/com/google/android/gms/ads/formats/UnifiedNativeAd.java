package com.google.android.gms.ads.formats;

import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.MuteThisAdListener;
import com.google.android.gms.ads.MuteThisAdReason;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.List;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/UnifiedNativeAd.class */
public abstract class UnifiedNativeAd {

    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/UnifiedNativeAd$OnUnifiedNativeAdLoadedListener.class */
    public interface OnUnifiedNativeAdLoadedListener {
        void onUnifiedNativeAdLoaded(@RecentlyNonNull UnifiedNativeAd unifiedNativeAd);
    }

    @Deprecated
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/UnifiedNativeAd$UnconfirmedClickListener.class */
    public interface UnconfirmedClickListener {
        void onUnconfirmedClickCancelled();

        void onUnconfirmedClickReceived(@RecentlyNonNull String str);
    }

    public abstract void cancelUnconfirmedClick();

    public abstract void destroy();

    public abstract void enableCustomClickGesture();

    @RecentlyNonNull
    public abstract NativeAd.AdChoicesInfo getAdChoicesInfo();

    @RecentlyNonNull
    public abstract String getAdvertiser();

    @RecentlyNonNull
    public abstract String getBody();

    @RecentlyNonNull
    public abstract String getCallToAction();

    @RecentlyNonNull
    public abstract Bundle getExtras();

    @RecentlyNonNull
    public abstract String getHeadline();

    @RecentlyNonNull
    public abstract NativeAd.Image getIcon();

    @RecentlyNonNull
    public abstract List<NativeAd.Image> getImages();

    @RecentlyNonNull
    public abstract MediaContent getMediaContent();

    @RecentlyNonNull
    @Deprecated
    public abstract String getMediationAdapterClassName();

    @RecentlyNonNull
    public abstract List<MuteThisAdReason> getMuteThisAdReasons();

    @RecentlyNonNull
    public abstract String getPrice();

    @RecentlyNullable
    public abstract ResponseInfo getResponseInfo();

    @RecentlyNonNull
    public abstract Double getStarRating();

    @RecentlyNonNull
    public abstract String getStore();

    @RecentlyNonNull
    @Deprecated
    public abstract VideoController getVideoController();

    public abstract boolean isCustomClickGestureEnabled();

    public abstract boolean isCustomMuteThisAdEnabled();

    public abstract void muteThisAd(@RecentlyNonNull MuteThisAdReason muteThisAdReason);

    @KeepForSdk
    public abstract void performClick(@RecentlyNonNull Bundle bundle);

    public abstract void recordCustomClickGesture();

    @KeepForSdk
    public abstract boolean recordImpression(@RecentlyNonNull Bundle bundle);

    @KeepForSdk
    public abstract void reportTouchEvent(@RecentlyNonNull Bundle bundle);

    public abstract void setMuteThisAdListener(@RecentlyNonNull MuteThisAdListener muteThisAdListener);

    public abstract void setOnPaidEventListener(OnPaidEventListener onPaidEventListener);

    public abstract void setUnconfirmedClickListener(@RecentlyNonNull UnconfirmedClickListener unconfirmedClickListener);

    @RecentlyNonNull
    public abstract Object zza();
}
