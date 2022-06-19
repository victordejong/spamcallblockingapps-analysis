package io.bidmachine;

import android.text.TextUtils;
import com.mopub.common.AdType;
import io.bidmachine.banner.BannerSize;
import io.bidmachine.unified.UnifiedAdRequestParams;
import io.bidmachine.unified.UnifiedBannerAdRequestParams;
import io.bidmachine.unified.UnifiedFullscreenAdRequestParams;
import io.bidmachine.unified.UnifiedNativeAdRequestParams;
import net.pubnative.lite.sdk.analytics.Reporting;
/* loaded from: classes5-dex2jar.jar:io/bidmachine/AdsFormat.class */
public enum AdsFormat {
    Banner("banner", new AbstractC17769a<UnifiedBannerAdRequestParams>(AdsType.Banner) { // from class: io.bidmachine.AdsFormat.1
        public final boolean isMatch(UnifiedBannerAdRequestParams unifiedBannerAdRequestParams, AdContentType adContentType) {
            return true;
        }
    }),
    Banner_320x50("banner_320x50", new AbstractC17769a<UnifiedBannerAdRequestParams>(AdsType.Banner) { // from class: io.bidmachine.AdsFormat.4
        public final boolean isMatch(UnifiedBannerAdRequestParams unifiedBannerAdRequestParams, AdContentType adContentType) {
            return unifiedBannerAdRequestParams.getBannerSize() == BannerSize.Size_320x50;
        }
    }),
    Banner_300x250("banner_300x250", new AbstractC17769a<UnifiedBannerAdRequestParams>(AdsType.Banner) { // from class: io.bidmachine.AdsFormat.5
        public final boolean isMatch(UnifiedBannerAdRequestParams unifiedBannerAdRequestParams, AdContentType adContentType) {
            return unifiedBannerAdRequestParams.getBannerSize() == BannerSize.Size_300x250;
        }
    }),
    Banner_728x90("banner_728x90", new AbstractC17769a<UnifiedBannerAdRequestParams>(AdsType.Banner) { // from class: io.bidmachine.AdsFormat.6
        public final boolean isMatch(UnifiedBannerAdRequestParams unifiedBannerAdRequestParams, AdContentType adContentType) {
            return unifiedBannerAdRequestParams.getBannerSize() == BannerSize.Size_728x90;
        }
    }),
    Interstitial(AdType.INTERSTITIAL, new AbstractC17769a<UnifiedFullscreenAdRequestParams>(AdsType.Interstitial) { // from class: io.bidmachine.AdsFormat.7
        public final boolean isMatch(UnifiedFullscreenAdRequestParams unifiedFullscreenAdRequestParams, AdContentType adContentType) {
            return true;
        }
    }),
    InterstitialVideo("interstitial_video", new AbstractC17769a<UnifiedFullscreenAdRequestParams>(AdsType.Interstitial) { // from class: io.bidmachine.AdsFormat.8
        public final boolean isMatch(UnifiedFullscreenAdRequestParams unifiedFullscreenAdRequestParams, AdContentType adContentType) {
            return adContentType == AdContentType.Video;
        }
    }),
    InterstitialStatic("interstitial_static", new AbstractC17769a<UnifiedFullscreenAdRequestParams>(AdsType.Interstitial) { // from class: io.bidmachine.AdsFormat.9
        public final boolean isMatch(UnifiedFullscreenAdRequestParams unifiedFullscreenAdRequestParams, AdContentType adContentType) {
            return adContentType == AdContentType.Static;
        }
    }),
    Rewarded(Reporting.AdFormat.REWARDED, new AbstractC17769a<UnifiedFullscreenAdRequestParams>(AdsType.Rewarded) { // from class: io.bidmachine.AdsFormat.10
        public final boolean isMatch(UnifiedFullscreenAdRequestParams unifiedFullscreenAdRequestParams, AdContentType adContentType) {
            return true;
        }
    }),
    RewardedVideo(AdType.REWARDED_VIDEO, new AbstractC17769a<UnifiedFullscreenAdRequestParams>(AdsType.Rewarded) { // from class: io.bidmachine.AdsFormat.11
        public final boolean isMatch(UnifiedFullscreenAdRequestParams unifiedFullscreenAdRequestParams, AdContentType adContentType) {
            return adContentType == AdContentType.Video;
        }
    }),
    RewardedStatic("rewarded_static", new AbstractC17769a<UnifiedFullscreenAdRequestParams>(AdsType.Rewarded) { // from class: io.bidmachine.AdsFormat.2
        public final boolean isMatch(UnifiedFullscreenAdRequestParams unifiedFullscreenAdRequestParams, AdContentType adContentType) {
            return adContentType == AdContentType.Static;
        }
    }),
    Native("native", new AbstractC17769a<UnifiedNativeAdRequestParams>(AdsType.Native) { // from class: io.bidmachine.AdsFormat.3
        public final boolean isMatch(UnifiedNativeAdRequestParams unifiedNativeAdRequestParams, AdContentType adContentType) {
            return true;
        }
    });
    
    private AbstractC17769a matcher;
    private String remoteName;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: io.bidmachine.AdsFormat$a */
    /* loaded from: classes5-dex2jar.jar:io/bidmachine/AdsFormat$a.class */
    public static abstract class AbstractC17769a<T extends UnifiedAdRequestParams> {
        private AdsType adsType;

        AbstractC17769a(AdsType adsType) {
            this.adsType = adsType;
        }

        final boolean isMatch(AdsType adsType, T t, AdContentType adContentType) {
            return adsType == this.adsType && isMatch(t, adContentType);
        }

        abstract boolean isMatch(T t, AdContentType adContentType);
    }

    AdsFormat(String str, AbstractC17769a abstractC17769a) {
        this.remoteName = str;
        this.matcher = abstractC17769a;
    }

    public static AdsFormat byRemoteName(String str) {
        AdsFormat[] values;
        if (!TextUtils.isEmpty(str)) {
            for (AdsFormat adsFormat : values()) {
                if (adsFormat.remoteName.equals(str)) {
                    return adsFormat;
                }
            }
            return null;
        }
        return null;
    }

    public final <T extends UnifiedAdRequestParams> boolean isMatch(AdsType adsType, T t, AdContentType adContentType) {
        return this.matcher.isMatch(adsType, t, adContentType);
    }
}
