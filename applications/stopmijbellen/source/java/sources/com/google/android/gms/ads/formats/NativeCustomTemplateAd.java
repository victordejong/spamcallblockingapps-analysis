package com.google.android.gms.ads.formats;

import android.view.View;
import androidx.annotation.RecentlyNonNull;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import java.util.List;
@Deprecated
/* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/NativeCustomTemplateAd.class */
public interface NativeCustomTemplateAd {
    @RecentlyNonNull
    public static final String ASSET_NAME_VIDEO = "_videoMediaView";

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/NativeCustomTemplateAd$DisplayOpenMeasurement.class */
    public interface DisplayOpenMeasurement {
        void setView(@RecentlyNonNull View view);

        boolean start();
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener.class */
    public interface OnCustomClickListener {
        void onCustomClick(@RecentlyNonNull NativeCustomTemplateAd nativeCustomTemplateAd, @RecentlyNonNull String str);
    }

    /* loaded from: classes-dex2jar.jar:com/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener.class */
    public interface OnCustomTemplateAdLoadedListener {
        void onCustomTemplateAdLoaded(@RecentlyNonNull NativeCustomTemplateAd nativeCustomTemplateAd);
    }

    void destroy();

    @RecentlyNonNull
    List<String> getAvailableAssetNames();

    @RecentlyNonNull
    String getCustomTemplateId();

    @RecentlyNonNull
    DisplayOpenMeasurement getDisplayOpenMeasurement();

    @RecentlyNonNull
    NativeAd.Image getImage(@RecentlyNonNull String str);

    @RecentlyNonNull
    CharSequence getText(@RecentlyNonNull String str);

    @RecentlyNonNull
    VideoController getVideoController();

    @RecentlyNonNull
    MediaView getVideoMediaView();

    void performClick(@RecentlyNonNull String str);

    void recordImpression();
}
