package com.mopub.mobileads;

import android.graphics.Point;
import android.location.Location;
import android.view.View;
import com.mopub.common.AdFormat;
import com.mopub.common.MoPubReward;
import com.mopub.mobileads.AdLifecycleListener;
import java.util.Map;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubAd.class */
public interface MoPubAd extends AdLifecycleListener.LoadListener, AdLifecycleListener.InteractionListener {
    AdFormat getAdFormat();

    int getAdHeight();

    String getAdUnitId();

    AdViewController getAdViewController();

    int getAdWidth();

    String getKeywords();

    Map<String, Object> getLocalExtras();

    Location getLocation();

    String getUserDataKeywords();

    void loadAd();

    boolean loadFailUrl(MoPubErrorCode moPubErrorCode);

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
    /* synthetic */ void onAdClicked();

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener, com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    /* bridge */ /* synthetic */ void onAdCollapsed();

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener, com.mopub.mobileads.AdLifecycleListener.FullscreenInteractionListener
    /* bridge */ /* synthetic */ void onAdComplete(MoPubReward moPubReward);

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener, com.mopub.mobileads.AdLifecycleListener.FullscreenInteractionListener
    /* bridge */ /* synthetic */ void onAdDismissed();

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener, com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    /* bridge */ /* synthetic */ void onAdExpanded();

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
    /* synthetic */ void onAdFailed(MoPubErrorCode moPubErrorCode);

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
    /* synthetic */ void onAdImpression();

    @Override // com.mopub.mobileads.AdLifecycleListener.LoadListener
    /* synthetic */ void onAdLoadFailed(MoPubErrorCode moPubErrorCode);

    @Override // com.mopub.mobileads.AdLifecycleListener.LoadListener
    /* synthetic */ void onAdLoaded();

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener, com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    /* bridge */ /* synthetic */ void onAdPauseAutoRefresh();

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener, com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
    /* bridge */ /* synthetic */ void onAdResumeAutoRefresh();

    @Override // com.mopub.mobileads.AdLifecycleListener.InteractionListener
    /* synthetic */ void onAdShown();

    void pauseAutoRefresh();

    Point resolveAdSize();

    void resumeAutoRefresh();

    void setAdContentView(View view);

    void setAdUnitId(String str);

    void setAdViewController(AdViewController adViewController);

    void setKeywords(String str);

    void setLocalExtras(Map<String, ? extends Object> map);

    void setUserDataKeywords(String str);
}
