package com.mopub.mobileads;

import com.mopub.common.MoPubReward;
import kotlin.Metadata;
@Metadata(bv = {1, 0, 3}, d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0005\bf\u0018��2\u00020\u0001:\u0004\u0002\u0003\u0004\u0005¨\u0006\u0006"}, d2 = {"Lcom/mopub/mobileads/AdLifecycleListener;", "", "FullscreenInteractionListener", "InlineInteractionListener", "InteractionListener", "LoadListener", "mopub-sdk-base_release"}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/AdLifecycleListener.class */
public interface AdLifecycleListener {

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018��2\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0017¢\u0006\u0004\b\u0003\u0010\u0004J\u0019\u0010\u0007\u001a\u00020\u00022\b\u0010\u0006\u001a\u0004\u0018\u00010\u0005H\u0017¢\u0006\u0004\b\u0007\u0010\bø\u0001��\u0082\u0002\u0007\n\u0005\b\u0091(0\u0001¨\u0006\t"}, d2 = {"Lcom/mopub/mobileads/AdLifecycleListener$FullscreenInteractionListener;", "", "Ls1/s;", "onAdDismissed", "()V", "Lcom/mopub/common/MoPubReward;", "moPubReward", "onAdComplete", "(Lcom/mopub/common/MoPubReward;)V", "mopub-sdk-base_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/AdLifecycleListener$FullscreenInteractionListener.class */
    public interface FullscreenInteractionListener {
        void onAdComplete(MoPubReward moPubReward);

        void onAdDismissed();
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0010\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0006\bf\u0018��2\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H\u0017¢\u0006\u0004\b\u0003\u0010\u0004J\u000f\u0010\u0005\u001a\u00020\u0002H\u0017¢\u0006\u0004\b\u0005\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0002H\u0017¢\u0006\u0004\b\u0006\u0010\u0004J\u000f\u0010\u0007\u001a\u00020\u0002H\u0017¢\u0006\u0004\b\u0007\u0010\u0004ø\u0001��\u0082\u0002\u0007\n\u0005\b\u0091(0\u0001¨\u0006\b"}, d2 = {"Lcom/mopub/mobileads/AdLifecycleListener$InlineInteractionListener;", "", "Ls1/s;", "onAdResumeAutoRefresh", "()V", "onAdPauseAutoRefresh", "onAdExpanded", "onAdCollapsed", "mopub-sdk-base_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/AdLifecycleListener$InlineInteractionListener.class */
    public interface InlineInteractionListener {
        void onAdCollapsed();

        void onAdExpanded();

        void onAdPauseAutoRefresh();

        void onAdResumeAutoRefresh();
    }

    @Metadata(bv = {1, 0, 3}, d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\bf\u0018��2\u00020\u0001J\u000f\u0010\u0003\u001a\u00020\u0002H&¢\u0006\u0004\b\u0003\u0010\u0004J\u0017\u0010\u0007\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u0005H&¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;", "", "Ls1/s;", "onAdLoaded", "()V", "Lcom/mopub/mobileads/MoPubErrorCode;", "errorCode", "onAdLoadFailed", "(Lcom/mopub/mobileads/MoPubErrorCode;)V", "mopub-sdk-base_release"}, k = 1, mv = {1, 4, 0})
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/AdLifecycleListener$LoadListener.class */
    public interface LoadListener {
        void onAdLoadFailed(MoPubErrorCode moPubErrorCode);

        void onAdLoaded();
    }
}
