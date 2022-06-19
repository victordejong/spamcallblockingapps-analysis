package com.google.android.gms.ads.formats;

import android.view.View;
import com.google.android.gms.ads.VideoController;
import com.google.android.gms.ads.formats.NativeAd;
import java.util.List;
@Deprecated
/* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/formats/NativeCustomTemplateAd.class */
public interface NativeCustomTemplateAd {
    public static final String ASSET_NAME_VIDEO = "_videoMediaView";

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/formats/NativeCustomTemplateAd$DisplayOpenMeasurement.class */
    public interface DisplayOpenMeasurement {
        void setView(View view);

        boolean start();
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomClickListener.class */
    public interface OnCustomClickListener {
        void onCustomClick(NativeCustomTemplateAd nativeCustomTemplateAd, String str);
    }

    /* loaded from: classes3-dex2jar.jar:com/google/android/gms/ads/formats/NativeCustomTemplateAd$OnCustomTemplateAdLoadedListener.class */
    public interface OnCustomTemplateAdLoadedListener {
        void onCustomTemplateAdLoaded(NativeCustomTemplateAd nativeCustomTemplateAd);
    }

    void destroy();

    List<String> getAvailableAssetNames();

    String getCustomTemplateId();

    DisplayOpenMeasurement getDisplayOpenMeasurement();

    NativeAd.Image getImage(String str);

    CharSequence getText(String str);

    VideoController getVideoController();

    MediaView getVideoMediaView();

    void performClick(String str);

    void recordImpression();
}
