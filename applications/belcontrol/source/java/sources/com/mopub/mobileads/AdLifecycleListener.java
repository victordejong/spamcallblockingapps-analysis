package com.mopub.mobileads;

import com.mopub.common.MoPubReward;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/AdLifecycleListener.class */
public interface AdLifecycleListener {

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/AdLifecycleListener$FullscreenInteractionListener.class */
    public interface FullscreenInteractionListener {
        void onAdComplete(MoPubReward moPubReward);

        void onAdDismissed();
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/AdLifecycleListener$InlineInteractionListener.class */
    public interface InlineInteractionListener {
        void onAdCollapsed();

        void onAdExpanded();

        void onAdPauseAutoRefresh();

        void onAdResumeAutoRefresh();
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/AdLifecycleListener$InteractionListener.class */
    public interface InteractionListener extends InlineInteractionListener, FullscreenInteractionListener {
        void onAdClicked();

        @Override // com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
        /* bridge */ /* synthetic */ void onAdCollapsed();

        /* bridge */ /* synthetic */ void onAdComplete(MoPubReward moPubReward);

        /* bridge */ /* synthetic */ void onAdDismissed();

        @Override // com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
        /* bridge */ /* synthetic */ void onAdExpanded();

        void onAdFailed(MoPubErrorCode moPubErrorCode);

        void onAdImpression();

        @Override // com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
        /* bridge */ /* synthetic */ void onAdPauseAutoRefresh();

        @Override // com.mopub.mobileads.AdLifecycleListener.InlineInteractionListener
        /* bridge */ /* synthetic */ void onAdResumeAutoRefresh();

        void onAdShown();
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/AdLifecycleListener$LoadListener.class */
    public interface LoadListener {
        void onAdLoadFailed(MoPubErrorCode moPubErrorCode);

        void onAdLoaded();
    }
}
