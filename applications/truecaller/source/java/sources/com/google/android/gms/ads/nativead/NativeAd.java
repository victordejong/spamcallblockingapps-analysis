package com.google.android.gms.ads.nativead;

import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.MuteThisAdListener;
import com.google.android.gms.ads.MuteThisAdReason;
import com.google.android.gms.ads.OnPaidEventListener;
import com.google.android.gms.ads.ResponseInfo;
import com.google.android.gms.common.annotation.KeepForSdk;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/nativead/NativeAd.class */
public abstract class NativeAd {

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/nativead/NativeAd$AdChoicesInfo.class */
    public static abstract class AdChoicesInfo {
        @RecentlyNonNull
        public abstract List<Image> getImages();

        @RecentlyNonNull
        public abstract CharSequence getText();
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/nativead/NativeAd$Image.class */
    public static abstract class Image {
        @RecentlyNullable
        public abstract Drawable getDrawable();

        public abstract double getScale();

        @RecentlyNullable
        public abstract Uri getUri();
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/nativead/NativeAd$OnNativeAdLoadedListener.class */
    public interface OnNativeAdLoadedListener {
        void onNativeAdLoaded(@RecentlyNonNull NativeAd nativeAd);
    }

    /* loaded from: classes2-dex2jar.jar:com/google/android/gms/ads/nativead/NativeAd$UnconfirmedClickListener.class */
    public interface UnconfirmedClickListener {
        void onUnconfirmedClickCancelled();

        void onUnconfirmedClickReceived(@RecentlyNonNull String str);
    }

    public abstract void cancelUnconfirmedClick();

    public abstract void destroy();

    public abstract void enableCustomClickGesture();

    @RecentlyNullable
    public abstract AdChoicesInfo getAdChoicesInfo();

    @RecentlyNullable
    public abstract String getAdvertiser();

    @RecentlyNullable
    public abstract String getBody();

    @RecentlyNullable
    public abstract String getCallToAction();

    @RecentlyNonNull
    public abstract Bundle getExtras();

    @RecentlyNullable
    public abstract String getHeadline();

    @RecentlyNullable
    public abstract Image getIcon();

    @RecentlyNonNull
    public abstract List<Image> getImages();

    @RecentlyNullable
    public abstract MediaContent getMediaContent();

    @RecentlyNonNull
    public abstract List<MuteThisAdReason> getMuteThisAdReasons();

    @RecentlyNullable
    public abstract String getPrice();

    @RecentlyNullable
    public abstract ResponseInfo getResponseInfo();

    @RecentlyNullable
    public abstract Double getStarRating();

    @RecentlyNullable
    public abstract String getStore();

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

    @RecentlyNullable
    public abstract Object zza();
}
