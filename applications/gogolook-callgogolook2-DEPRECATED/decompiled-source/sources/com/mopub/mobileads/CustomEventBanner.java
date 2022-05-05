package com.mopub.mobileads;

import android.content.Context;
import android.view.View;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/CustomEventBanner.class */
public abstract class CustomEventBanner {
    public boolean mAutomaticImpressionAndClickTracking = true;

    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/CustomEventBanner$CustomEventBannerListener.class */
    public interface CustomEventBannerListener {
        void onBannerClicked();

        void onBannerCollapsed();

        void onBannerExpanded();

        void onBannerFailed(MoPubErrorCode moPubErrorCode);

        void onBannerImpression();

        void onBannerLoaded(View view);

        void onLeaveApplication();
    }

    public boolean isAutomaticImpressionAndClickTrackingEnabled() {
        return this.mAutomaticImpressionAndClickTracking;
    }

    public abstract void loadBanner(Context context, CustomEventBannerListener customEventBannerListener, Map<String, Object> map, Map<String, String> map2);

    public abstract void onInvalidate();

    public void setAutomaticImpressionAndClickTracking(boolean z) {
        this.mAutomaticImpressionAndClickTracking = z;
    }

    public void trackMpxAndThirdPartyImpressions() {
    }
}
