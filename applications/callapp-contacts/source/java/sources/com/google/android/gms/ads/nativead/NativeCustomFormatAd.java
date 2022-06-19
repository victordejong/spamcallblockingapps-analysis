package com.google.android.gms.ads.nativead;

import android.view.View;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.nativead.NativeAd;
import java.util.List;
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/nativead/NativeCustomFormatAd.class */
public interface NativeCustomFormatAd {
    public static final String ASSET_NAME_VIDEO = "_videoMediaView";

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/nativead/NativeCustomFormatAd$DisplayOpenMeasurement.class */
    public interface DisplayOpenMeasurement {
        void setView(View view);

        boolean start();
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomClickListener.class */
    public interface OnCustomClickListener {
        void onCustomClick(NativeCustomFormatAd nativeCustomFormatAd, String str);
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/nativead/NativeCustomFormatAd$OnCustomFormatAdLoadedListener.class */
    public interface OnCustomFormatAdLoadedListener {
        void onCustomFormatAdLoaded(NativeCustomFormatAd nativeCustomFormatAd);
    }

    void destroy();

    List<String> getAvailableAssetNames();

    String getCustomFormatId();

    DisplayOpenMeasurement getDisplayOpenMeasurement();

    NativeAd.Image getImage(String str);

    CharSequence getText(String str);

    VideoController getVideoController();

    MediaView getVideoMediaView();

    void performClick(String str);

    void recordImpression();
}
