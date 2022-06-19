package com.bytedance.sdk.openadsdk;

import com.bytedance.sdk.openadsdk.p144a.AbstractC4269b;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTAdNative.class */
public interface TTAdNative {

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTAdNative$BannerAdListener.class */
    public interface BannerAdListener extends AbstractC4269b {
        void onBannerAdLoad(TTBannerAd tTBannerAd);

        @Override // com.bytedance.sdk.openadsdk.p144a.AbstractC4269b
        void onError(int i, String str);
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTAdNative$DrawFeedAdListener.class */
    public interface DrawFeedAdListener extends AbstractC4269b {
        void onDrawFeedAdLoad(List<TTDrawFeedAd> list);

        @Override // com.bytedance.sdk.openadsdk.p144a.AbstractC4269b
        void onError(int i, String str);
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTAdNative$FeedAdListener.class */
    public interface FeedAdListener extends AbstractC4269b {
        @Override // com.bytedance.sdk.openadsdk.p144a.AbstractC4269b
        void onError(int i, String str);

        void onFeedAdLoad(List<TTFeedAd> list);
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTAdNative$FullScreenVideoAdListener.class */
    public interface FullScreenVideoAdListener extends AbstractC4269b {
        @Override // com.bytedance.sdk.openadsdk.p144a.AbstractC4269b
        void onError(int i, String str);

        void onFullScreenVideoAdLoad(TTFullScreenVideoAd tTFullScreenVideoAd);

        void onFullScreenVideoCached();
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTAdNative$InteractionAdListener.class */
    public interface InteractionAdListener extends AbstractC4269b {
        @Override // com.bytedance.sdk.openadsdk.p144a.AbstractC4269b
        void onError(int i, String str);

        void onInteractionAdLoad(TTInteractionAd tTInteractionAd);
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTAdNative$NativeAdListener.class */
    public interface NativeAdListener extends AbstractC4269b {
        @Override // com.bytedance.sdk.openadsdk.p144a.AbstractC4269b
        void onError(int i, String str);

        void onNativeAdLoad(List<TTNativeAd> list);
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTAdNative$NativeExpressAdListener.class */
    public interface NativeExpressAdListener extends AbstractC4269b {
        @Override // com.bytedance.sdk.openadsdk.p144a.AbstractC4269b
        void onError(int i, String str);

        void onNativeExpressAdLoad(List<TTNativeExpressAd> list);
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTAdNative$RewardVideoAdListener.class */
    public interface RewardVideoAdListener extends AbstractC4269b {
        @Override // com.bytedance.sdk.openadsdk.p144a.AbstractC4269b
        void onError(int i, String str);

        void onRewardVideoAdLoad(TTRewardVideoAd tTRewardVideoAd);

        void onRewardVideoCached();
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/TTAdNative$SplashAdListener.class */
    public interface SplashAdListener extends AbstractC4269b {
        @Override // com.bytedance.sdk.openadsdk.p144a.AbstractC4269b
        void onError(int i, String str);

        void onSplashAdLoad(TTSplashAd tTSplashAd);

        void onTimeout();
    }

    void loadBannerAd(AdSlot adSlot, BannerAdListener bannerAdListener);

    void loadBannerExpressAd(AdSlot adSlot, NativeExpressAdListener nativeExpressAdListener);

    void loadDrawFeedAd(AdSlot adSlot, DrawFeedAdListener drawFeedAdListener);

    void loadExpressDrawFeedAd(AdSlot adSlot, NativeExpressAdListener nativeExpressAdListener);

    void loadFeedAd(AdSlot adSlot, FeedAdListener feedAdListener);

    void loadFullScreenVideoAd(AdSlot adSlot, FullScreenVideoAdListener fullScreenVideoAdListener);

    void loadInteractionAd(AdSlot adSlot, InteractionAdListener interactionAdListener);

    void loadInteractionExpressAd(AdSlot adSlot, NativeExpressAdListener nativeExpressAdListener);

    void loadNativeAd(AdSlot adSlot, NativeAdListener nativeAdListener);

    void loadNativeExpressAd(AdSlot adSlot, NativeExpressAdListener nativeExpressAdListener);

    void loadRewardVideoAd(AdSlot adSlot, RewardVideoAdListener rewardVideoAdListener);

    void loadSplashAd(AdSlot adSlot, SplashAdListener splashAdListener);

    void loadSplashAd(AdSlot adSlot, SplashAdListener splashAdListener, int i);
}
