package com.google.android.gms.ads.nativead;

import android.view.View;
import androidx.annotation.RecentlyNonNull;
import androidx.annotation.RecentlyNullable;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.nativead.NativeAd;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nativead/NativeCustomFormatAd.class */
public interface NativeCustomFormatAd {
    @RecentlyNonNull
    public static final String ASSET_NAME_VIDEO = "_videoMediaView";

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nativead/NativeCustomFormatAd$DisplayOpenMeasurement.class */
    public interface DisplayOpenMeasurement {
        void setView(@RecentlyNonNull View view);

        boolean start();
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener.class */
    public interface OnCustomClickListener {
        void onCustomClick(@RecentlyNonNull NativeCustomFormatAd nativeCustomFormatAd, @RecentlyNonNull String str);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener.class */
    public interface OnCustomFormatAdLoadedListener {
        void onCustomFormatAdLoaded(@RecentlyNonNull NativeCustomFormatAd nativeCustomFormatAd);
    }

    void destroy();

    @RecentlyNullable
    List<String> getAvailableAssetNames();

    @RecentlyNullable
    String getCustomFormatId();

    @RecentlyNonNull
    DisplayOpenMeasurement getDisplayOpenMeasurement();

    @RecentlyNullable
    NativeAd.Image getImage(@RecentlyNonNull String str);

    @RecentlyNullable
    CharSequence getText(@RecentlyNonNull String str);

    @RecentlyNonNull
    VideoController getVideoController();

    @RecentlyNullable
    MediaView getVideoMediaView();

    void performClick(@RecentlyNonNull String str);

    void recordImpression();
}
