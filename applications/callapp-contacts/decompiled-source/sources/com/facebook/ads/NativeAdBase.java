package com.facebook.ads;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.view.View;
import com.facebook.ads.Ad;
import com.facebook.ads.internal.api.NativeAdBaseApi;
import com.facebook.ads.internal.api.NativeAdImageApi;
import com.facebook.ads.internal.api.NativeAdRatingApi;
import com.facebook.ads.internal.dynamicloading.DynamicLoaderFactory;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/facebook/ads/NativeAdBase.class */
public abstract class NativeAdBase implements Ad {
    final NativeAdBaseApi mNativeAdBaseApi;

    /* loaded from: classes3-dex2jar.jar:com/facebook/ads/NativeAdBase$Image.class */
    public static class Image {
        private final NativeAdImageApi mNativeAdImageApi;

        Image(NativeAdImageApi nativeAdImageApi) {
            this.mNativeAdImageApi = nativeAdImageApi;
        }

        public static Image fromJSONObject(JSONObject jSONObject) {
            NativeAdImageApi createNativeAdImageApi = DynamicLoaderFactory.makeLoaderUnsafe().createNativeAdImageApi(jSONObject);
            if (createNativeAdImageApi == null) {
                return null;
            }
            return new Image(createNativeAdImageApi);
        }

        public int getHeight() {
            return this.mNativeAdImageApi.getHeight();
        }

        public String getUrl() {
            return this.mNativeAdImageApi.getUrl();
        }

        public int getWidth() {
            return this.mNativeAdImageApi.getWidth();
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/ads/NativeAdBase$MediaCacheFlag.class */
    public enum MediaCacheFlag {
        NONE,
        ALL
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/ads/NativeAdBase$NativeAdLoadConfigBuilder.class */
    public interface NativeAdLoadConfigBuilder extends Ad.LoadConfigBuilder {
        public static final int UNKNOWN_IMAGE_SIZE = -1;

        @Override // com.facebook.ads.Ad.LoadConfigBuilder
        NativeLoadAdConfig build();

        NativeAdLoadConfigBuilder withAdListener(NativeAdListener nativeAdListener);

        @Override // com.facebook.ads.Ad.LoadConfigBuilder
        NativeAdLoadConfigBuilder withBid(String str);

        NativeAdLoadConfigBuilder withMediaCacheFlag(MediaCacheFlag mediaCacheFlag);

        NativeAdLoadConfigBuilder withPreloadedIconView(int i, int i2);
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/ads/NativeAdBase$NativeComponentTag.class */
    public enum NativeComponentTag {
        AD_ICON,
        AD_TITLE,
        AD_COVER_IMAGE,
        AD_SUBTITLE,
        AD_BODY,
        AD_CALL_TO_ACTION,
        AD_SOCIAL_CONTEXT,
        AD_CHOICES_ICON,
        AD_OPTIONS_VIEW,
        AD_MEDIA;

        public static void tagView(View view, NativeComponentTag nativeComponentTag) {
            DynamicLoaderFactory.makeLoader(view.getContext()).createNativeComponentTagApi().tagView(view, nativeComponentTag);
        }
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/ads/NativeAdBase$NativeLoadAdConfig.class */
    public interface NativeLoadAdConfig extends Ad.LoadAdConfig {
    }

    /* loaded from: classes3-dex2jar.jar:com/facebook/ads/NativeAdBase$Rating.class */
    public static class Rating {
        private final NativeAdRatingApi mNativeAdRatingApi;

        Rating(NativeAdRatingApi nativeAdRatingApi) {
            this.mNativeAdRatingApi = nativeAdRatingApi;
        }

        public static Rating fromJSONObject(JSONObject jSONObject) {
            NativeAdRatingApi createNativeAdRatingApi = DynamicLoaderFactory.makeLoaderUnsafe().createNativeAdRatingApi(jSONObject);
            if (createNativeAdRatingApi == null) {
                return null;
            }
            return new Rating(createNativeAdRatingApi);
        }

        public double getScale() {
            return this.mNativeAdRatingApi.getScale();
        }

        public double getValue() {
            return this.mNativeAdRatingApi.getValue();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NativeAdBase(Context context, NativeAdBase nativeAdBase) {
        this.mNativeAdBaseApi = DynamicLoaderFactory.makeLoader(context).createNativeAdBaseApi(nativeAdBase.mNativeAdBaseApi);
    }

    public NativeAdBase(Context context, String str) {
        this.mNativeAdBaseApi = DynamicLoaderFactory.makeLoader(context).createNativeAdBaseApi(context, str);
    }

    public NativeAdBase(NativeAdBaseApi nativeAdBaseApi) {
        this.mNativeAdBaseApi = nativeAdBaseApi;
    }

    public static NativeAdBase fromBidPayload(Context context, String str, String str2) throws Exception {
        return DynamicLoaderFactory.makeLoader(context).createNativeAdBaseFromBidPayload(context, str, str2);
    }

    public NativeAdLoadConfigBuilder buildLoadAdConfig() {
        return this.mNativeAdBaseApi.buildLoadAdConfig(this);
    }

    @Override // com.facebook.ads.Ad
    public void destroy() {
        this.mNativeAdBaseApi.destroy();
    }

    public void downloadMedia() {
        this.mNativeAdBaseApi.downloadMedia();
    }

    public String getAdBodyText() {
        return this.mNativeAdBaseApi.getAdBodyText();
    }

    public String getAdCallToAction() {
        return this.mNativeAdBaseApi.getAdCallToAction();
    }

    public Image getAdChoicesIcon() {
        if (this.mNativeAdBaseApi.getAdChoicesIcon() == null) {
            return null;
        }
        return new Image(this.mNativeAdBaseApi.getAdChoicesIcon());
    }

    public String getAdChoicesImageUrl() {
        return this.mNativeAdBaseApi.getAdChoicesImageUrl();
    }

    public String getAdChoicesLinkUrl() {
        return this.mNativeAdBaseApi.getAdChoicesLinkUrl();
    }

    public String getAdChoicesText() {
        return this.mNativeAdBaseApi.getAdChoicesText();
    }

    public Image getAdCoverImage() {
        if (this.mNativeAdBaseApi.getAdCoverImage() == null) {
            return null;
        }
        return new Image(this.mNativeAdBaseApi.getAdCoverImage());
    }

    public String getAdHeadline() {
        return this.mNativeAdBaseApi.getAdHeadline();
    }

    public Image getAdIcon() {
        if (this.mNativeAdBaseApi.getAdIcon() == null) {
            return null;
        }
        return new Image(this.mNativeAdBaseApi.getAdIcon());
    }

    public String getAdLinkDescription() {
        return this.mNativeAdBaseApi.getAdLinkDescription();
    }

    public String getAdSocialContext() {
        return this.mNativeAdBaseApi.getAdSocialContext();
    }

    @Deprecated
    public Rating getAdStarRating() {
        if (this.mNativeAdBaseApi.getAdStarRating() == null) {
            return null;
        }
        return new Rating(this.mNativeAdBaseApi.getAdStarRating());
    }

    public String getAdTranslation() {
        return this.mNativeAdBaseApi.getAdTranslation();
    }

    public String getAdUntrimmedBodyText() {
        return this.mNativeAdBaseApi.getAdUntrimmedBodyText();
    }

    @Deprecated
    public NativeAdViewAttributes getAdViewAttributes() {
        return new NativeAdViewAttributes();
    }

    public String getAdvertiserName() {
        return this.mNativeAdBaseApi.getAdvertiserName();
    }

    public float getAspectRatio() {
        return this.mNativeAdBaseApi.getAspectRatio();
    }

    public String getId() {
        return this.mNativeAdBaseApi.getId();
    }

    public NativeAdBaseApi getInternalNativeAd() {
        return this.mNativeAdBaseApi;
    }

    @Override // com.facebook.ads.Ad
    public String getPlacementId() {
        return this.mNativeAdBaseApi.getPlacementId();
    }

    public Drawable getPreloadedIconViewDrawable() {
        return this.mNativeAdBaseApi.getPreloadedIconViewDrawable();
    }

    public String getPromotedTranslation() {
        return this.mNativeAdBaseApi.getPromotedTranslation();
    }

    public String getSponsoredTranslation() {
        return this.mNativeAdBaseApi.getSponsoredTranslation();
    }

    public boolean hasCallToAction() {
        return this.mNativeAdBaseApi.hasCallToAction();
    }

    @Override // com.facebook.ads.Ad
    public boolean isAdInvalidated() {
        return this.mNativeAdBaseApi.isAdInvalidated();
    }

    public boolean isAdLoaded() {
        return this.mNativeAdBaseApi.isAdLoaded();
    }

    @Deprecated
    public boolean isNativeConfigEnabled() {
        return false;
    }

    @Override // com.facebook.ads.Ad
    public void loadAd() {
        this.mNativeAdBaseApi.loadAd();
    }

    public void loadAd(NativeLoadAdConfig nativeLoadAdConfig) {
        this.mNativeAdBaseApi.loadAd(nativeLoadAdConfig);
    }

    public void onCtaBroadcast() {
        this.mNativeAdBaseApi.onCtaBroadcast();
    }

    @Override // com.facebook.ads.Ad
    @Deprecated
    public void setExtraHints(ExtraHints extraHints) {
        this.mNativeAdBaseApi.setExtraHints(extraHints);
    }

    public void setOnTouchListener(View.OnTouchListener onTouchListener) {
        this.mNativeAdBaseApi.setOnTouchListener(onTouchListener);
    }

    public void unregisterView() {
        this.mNativeAdBaseApi.unregisterView();
    }
}
