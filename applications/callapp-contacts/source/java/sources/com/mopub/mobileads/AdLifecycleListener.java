package com.mopub.mobileads;

import com.mopub.common.MoPubReward;
import kotlin.Metadata;
@Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\f\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0005\bf\u0018��2\u00020\u0001:\u0004\u0002\u0003\u0004\u0005\u0082\u0002\u0007\n\u0005\b\u0091(0\u0001¨\u0006\u0006"}, m4298d2 = {"Lcom/mopub/mobileads/AdLifecycleListener;", "", "FullscreenInteractionListener", "InlineInteractionListener", "InteractionListener", "LoadListener", "mopub-sdk-base_release"}, m4297k = 1, m4296mv = {1, 1, 16})
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/AdLifecycleListener.class */
public interface AdLifecycleListener {

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018��2\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0017J\b\u0010\u0006\u001a\u00020\u0003H\u0017ø\u0001��\u0082\u0002\u0007\n\u0005\b\u0091(0\u0001¨\u0006\u0007"}, m4298d2 = {"Lcom/mopub/mobileads/AdLifecycleListener$FullscreenInteractionListener;", "", "onAdComplete", "", "moPubReward", "Lcom/mopub/common/MoPubReward;", "onAdDismissed", "mopub-sdk-base_release"}, m4297k = 1, m4296mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/AdLifecycleListener$FullscreenInteractionListener.class */
    public interface FullscreenInteractionListener {

        /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/AdLifecycleListener$FullscreenInteractionListener$_CC.class */
        public final /* synthetic */ class _CC {
            public static void $default$onAdComplete(FullscreenInteractionListener fullscreenInteractionListener, MoPubReward moPubReward) {
            }

            public static void $default$onAdDismissed(FullscreenInteractionListener fullscreenInteractionListener) {
            }
        }

        void onAdComplete(MoPubReward moPubReward);

        void onAdDismissed();
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0012\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n\u0002\b\u0004\bf\u0018��2\u00020\u0001J\b\u0010\u0002\u001a\u00020\u0003H\u0017J\b\u0010\u0004\u001a\u00020\u0003H\u0017J\b\u0010\u0005\u001a\u00020\u0003H\u0017J\b\u0010\u0006\u001a\u00020\u0003H\u0017ø\u0001��\u0082\u0002\u0007\n\u0005\b\u0091(0\u0001¨\u0006\u0007"}, m4298d2 = {"Lcom/mopub/mobileads/AdLifecycleListener$InlineInteractionListener;", "", "onAdCollapsed", "", "onAdExpanded", "onAdPauseAutoRefresh", "onAdResumeAutoRefresh", "mopub-sdk-base_release"}, m4297k = 1, m4296mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/AdLifecycleListener$InlineInteractionListener.class */
    public interface InlineInteractionListener {

        /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/AdLifecycleListener$InlineInteractionListener$_CC.class */
        public final /* synthetic */ class _CC {
            public static void $default$onAdCollapsed(InlineInteractionListener inlineInteractionListener) {
            }

            public static void $default$onAdExpanded(InlineInteractionListener inlineInteractionListener) {
            }

            public static void $default$onAdPauseAutoRefresh(InlineInteractionListener inlineInteractionListener) {
            }

            public static void $default$onAdResumeAutoRefresh(InlineInteractionListener inlineInteractionListener) {
            }
        }

        void onAdCollapsed();

        void onAdExpanded();

        void onAdPauseAutoRefresh();

        void onAdResumeAutoRefresh();
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\bf\u0018��2\u00020\u00012\u00020\u0002J\b\u0010\u0003\u001a\u00020\u0004H&J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u0007H&J\b\u0010\b\u001a\u00020\u0004H&J\b\u0010\t\u001a\u00020\u0004H&ø\u0001��\u0082\u0002\u0007\n\u0005\b\u0091(0\u0001¨\u0006\n"}, m4298d2 = {"Lcom/mopub/mobileads/AdLifecycleListener$InteractionListener;", "Lcom/mopub/mobileads/AdLifecycleListener$InlineInteractionListener;", "Lcom/mopub/mobileads/AdLifecycleListener$FullscreenInteractionListener;", "onAdClicked", "", "onAdFailed", "errorCode", "Lcom/mopub/mobileads/MoPubErrorCode;", "onAdImpression", "onAdShown", "mopub-sdk-base_release"}, m4297k = 1, m4296mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/AdLifecycleListener$InteractionListener.class */
    public interface InteractionListener extends FullscreenInteractionListener, InlineInteractionListener {
        void onAdClicked();

        void onAdFailed(MoPubErrorCode moPubErrorCode);

        void onAdImpression();

        void onAdShown();
    }

    @Metadata(m4300bv = {1, 0, 3}, m4299d1 = {"��\u0018\n\u0002\u0018\u0002\n\u0002\u0010��\n��\n\u0002\u0010\u0002\n��\n\u0002\u0018\u0002\n\u0002\b\u0002\bf\u0018��2\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H&J\b\u0010\u0006\u001a\u00020\u0003H&¨\u0006\u0007"}, m4298d2 = {"Lcom/mopub/mobileads/AdLifecycleListener$LoadListener;", "", "onAdLoadFailed", "", "errorCode", "Lcom/mopub/mobileads/MoPubErrorCode;", "onAdLoaded", "mopub-sdk-base_release"}, m4297k = 1, m4296mv = {1, 1, 16})
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/AdLifecycleListener$LoadListener.class */
    public interface LoadListener {
        void onAdLoadFailed(MoPubErrorCode moPubErrorCode);

        void onAdLoaded();
    }
}
