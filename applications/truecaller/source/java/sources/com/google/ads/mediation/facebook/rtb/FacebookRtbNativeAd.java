package com.google.ads.mediation.facebook.rtb;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ImageView;
import com.facebook.ads.AbstractC0929Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.AdListener;
import com.facebook.ads.AdOptionsView;
import com.facebook.ads.ExtraHints;
import com.facebook.ads.MediaView;
import com.facebook.ads.MediaViewListener;
import com.facebook.ads.NativeAdBase;
import com.facebook.ads.NativeAdListener;
import com.facebook.ads.NativeBannerAd;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.ads.mediation.facebook.FacebookMediationAdapter;
import com.google.android.gms.ads.formats.NativeAd;
import com.google.android.gms.ads.mediation.MediationAdLoadCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdCallback;
import com.google.android.gms.ads.mediation.MediationNativeAdConfiguration;
import com.google.android.gms.ads.mediation.UnifiedNativeAdMapper;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Map;
/* loaded from: classes2-dex2jar.jar:com/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd.class */
public class FacebookRtbNativeAd extends UnifiedNativeAdMapper {
    private MediationNativeAdConfiguration adConfiguration;
    private MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> callback;
    private MediaView mMediaView;
    private NativeAdBase mNativeAdBase;
    private MediationNativeAdCallback mNativeAdCallback;

    /* loaded from: classes2-dex2jar.jar:com/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$FacebookAdapterNativeAdImage.class */
    public class FacebookAdapterNativeAdImage extends NativeAd.Image {
        private Drawable mDrawable;
        private Uri mUri;

        public FacebookAdapterNativeAdImage(FacebookRtbNativeAd facebookRtbNativeAd) {
        }

        public FacebookAdapterNativeAdImage(FacebookRtbNativeAd facebookRtbNativeAd, Drawable drawable) {
            this.mDrawable = drawable;
        }

        public FacebookAdapterNativeAdImage(FacebookRtbNativeAd facebookRtbNativeAd, Uri uri) {
            this.mUri = uri;
        }

        @Override // com.google.android.gms.ads.formats.NativeAd.Image
        public Drawable getDrawable() {
            return this.mDrawable;
        }

        @Override // com.google.android.gms.ads.formats.NativeAd.Image
        public double getScale() {
            return 1.0d;
        }

        @Override // com.google.android.gms.ads.formats.NativeAd.Image
        public Uri getUri() {
            return this.mUri;
        }

        public void setDrawable(Drawable drawable) {
            this.mDrawable = drawable;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$NativeAdMapperListener.class */
    public interface NativeAdMapperListener {
        void onMappingFailed(String str);

        void onMappingSuccess();
    }

    /* loaded from: classes2-dex2jar.jar:com/google/ads/mediation/facebook/rtb/FacebookRtbNativeAd$NativeListener.class */
    public class NativeListener implements AdListener, NativeAdListener {
        private WeakReference<Context> mContext;
        private NativeAdBase mNativeAd;

        public NativeListener(Context context, NativeAdBase nativeAdBase) {
            FacebookRtbNativeAd.this = r6;
            this.mNativeAd = nativeAdBase;
            this.mContext = new WeakReference<>(context);
        }

        @Override // com.facebook.ads.AdListener
        public void onAdClicked(AbstractC0929Ad abstractC0929Ad) {
            FacebookRtbNativeAd.this.mNativeAdCallback.onAdOpened();
            FacebookRtbNativeAd.this.mNativeAdCallback.onAdLeftApplication();
        }

        @Override // com.facebook.ads.AdListener
        public void onAdLoaded(AbstractC0929Ad abstractC0929Ad) {
            if (abstractC0929Ad != this.mNativeAd) {
                String createAdapterError = FacebookMediationAdapter.createAdapterError(106, "Ad Loaded is not a Native Ad.");
                String str = FacebookMediationAdapter.TAG;
                FacebookRtbNativeAd.this.callback.onFailure(createAdapterError);
                return;
            }
            Context context = this.mContext.get();
            if (context != null) {
                FacebookRtbNativeAd.this.mapNativeAd(context, new NativeAdMapperListener() { // from class: com.google.ads.mediation.facebook.rtb.FacebookRtbNativeAd.NativeListener.1
                    @Override // com.google.ads.mediation.facebook.rtb.FacebookRtbNativeAd.NativeAdMapperListener
                    public void onMappingFailed(String str2) {
                        String createAdapterError2 = FacebookMediationAdapter.createAdapterError(108, str2);
                        String str3 = FacebookMediationAdapter.TAG;
                        FacebookRtbNativeAd.this.callback.onFailure(createAdapterError2);
                    }

                    @Override // com.google.ads.mediation.facebook.rtb.FacebookRtbNativeAd.NativeAdMapperListener
                    public void onMappingSuccess() {
                        FacebookRtbNativeAd facebookRtbNativeAd = FacebookRtbNativeAd.this;
                        facebookRtbNativeAd.mNativeAdCallback = (MediationNativeAdCallback) facebookRtbNativeAd.callback.onSuccess(FacebookRtbNativeAd.this);
                    }
                });
                return;
            }
            String createAdapterError2 = FacebookMediationAdapter.createAdapterError(107, "Context is null.");
            String str2 = FacebookMediationAdapter.TAG;
            FacebookRtbNativeAd.this.callback.onFailure(createAdapterError2);
        }

        @Override // com.facebook.ads.AdListener
        public void onError(AbstractC0929Ad abstractC0929Ad, AdError adError) {
            String createSdkError = FacebookMediationAdapter.createSdkError(adError);
            String str = FacebookMediationAdapter.TAG;
            FacebookRtbNativeAd.this.callback.onFailure(createSdkError);
        }

        @Override // com.facebook.ads.AdListener
        public void onLoggingImpression(AbstractC0929Ad abstractC0929Ad) {
        }

        @Override // com.facebook.ads.NativeAdListener
        public void onMediaDownloaded(AbstractC0929Ad abstractC0929Ad) {
            String str = FacebookMediationAdapter.TAG;
        }
    }

    public FacebookRtbNativeAd(MediationNativeAdConfiguration mediationNativeAdConfiguration, MediationAdLoadCallback<UnifiedNativeAdMapper, MediationNativeAdCallback> mediationAdLoadCallback) {
        this.callback = mediationAdLoadCallback;
        this.adConfiguration = mediationNativeAdConfiguration;
    }

    private boolean containsRequiredFieldsForUnifiedNativeAd(NativeAdBase nativeAdBase) {
        boolean z = (nativeAdBase.getAdHeadline() == null || nativeAdBase.getAdBodyText() == null || nativeAdBase.getAdIcon() == null || nativeAdBase.getAdCallToAction() == null) ? false : true;
        if (nativeAdBase instanceof NativeBannerAd) {
            return z;
        }
        return (!z || nativeAdBase.getAdCoverImage() == null || this.mMediaView == null) ? false : true;
    }

    public void mapNativeAd(Context context, NativeAdMapperListener nativeAdMapperListener) {
        if (!containsRequiredFieldsForUnifiedNativeAd(this.mNativeAdBase)) {
            String str = FacebookMediationAdapter.TAG;
            nativeAdMapperListener.onMappingFailed("Ad from Facebook doesn't have all required assets.");
            return;
        }
        setHeadline(this.mNativeAdBase.getAdHeadline());
        if (this.mNativeAdBase.getAdCoverImage() != null) {
            ArrayList arrayList = new ArrayList();
            arrayList.add(new FacebookAdapterNativeAdImage(this, Uri.parse(this.mNativeAdBase.getAdCoverImage().getUrl())));
            setImages(arrayList);
        }
        setBody(this.mNativeAdBase.getAdBodyText());
        if (this.mNativeAdBase.getPreloadedIconViewDrawable() != null) {
            setIcon(new FacebookAdapterNativeAdImage(this, this.mNativeAdBase.getPreloadedIconViewDrawable()));
        } else if (this.mNativeAdBase.getAdIcon() == null) {
            setIcon(new FacebookAdapterNativeAdImage(this));
        } else {
            setIcon(new FacebookAdapterNativeAdImage(this, Uri.parse(this.mNativeAdBase.getAdIcon().getUrl())));
        }
        setCallToAction(this.mNativeAdBase.getAdCallToAction());
        setAdvertiser(this.mNativeAdBase.getAdvertiserName());
        this.mMediaView.setListener(new MediaViewListener() { // from class: com.google.ads.mediation.facebook.rtb.FacebookRtbNativeAd.1
            @Override // com.facebook.ads.MediaViewListener
            public void onComplete(MediaView mediaView) {
                if (FacebookRtbNativeAd.this.mNativeAdCallback != null) {
                    FacebookRtbNativeAd.this.mNativeAdCallback.onVideoComplete();
                }
            }

            @Override // com.facebook.ads.MediaViewListener
            public void onEnterFullscreen(MediaView mediaView) {
            }

            @Override // com.facebook.ads.MediaViewListener
            public void onExitFullscreen(MediaView mediaView) {
            }

            @Override // com.facebook.ads.MediaViewListener
            public void onFullscreenBackground(MediaView mediaView) {
            }

            @Override // com.facebook.ads.MediaViewListener
            public void onFullscreenForeground(MediaView mediaView) {
            }

            @Override // com.facebook.ads.MediaViewListener
            public void onPause(MediaView mediaView) {
            }

            @Override // com.facebook.ads.MediaViewListener
            public void onPlay(MediaView mediaView) {
            }

            @Override // com.facebook.ads.MediaViewListener
            public void onVolumeChange(MediaView mediaView, float f) {
            }
        });
        setHasVideoContent(true);
        setMediaView(this.mMediaView);
        setStarRating(null);
        Bundle bundle = new Bundle();
        bundle.putCharSequence("id", this.mNativeAdBase.getId());
        bundle.putCharSequence(FacebookAdapter.KEY_SOCIAL_CONTEXT_ASSET, this.mNativeAdBase.getAdSocialContext());
        setExtras(bundle);
        setAdChoicesContent(new AdOptionsView(context, this.mNativeAdBase, null));
        nativeAdMapperListener.onMappingSuccess();
    }

    public void render() {
        String placementID = FacebookMediationAdapter.getPlacementID(this.adConfiguration.getServerParameters());
        if (TextUtils.isEmpty(placementID)) {
            String createAdapterError = FacebookMediationAdapter.createAdapterError(101, "Failed to request ad, placementID is null or empty.");
            String str = FacebookMediationAdapter.TAG;
            this.callback.onFailure(createAdapterError);
            return;
        }
        FacebookMediationAdapter.setMixedAudience(this.adConfiguration);
        this.mMediaView = new MediaView(this.adConfiguration.getContext());
        try {
            this.mNativeAdBase = NativeAdBase.fromBidPayload(this.adConfiguration.getContext(), placementID, this.adConfiguration.getBidResponse());
            if (!TextUtils.isEmpty(this.adConfiguration.getWatermark())) {
                this.mNativeAdBase.setExtraHints(new ExtraHints.Builder().mediationData(this.adConfiguration.getWatermark()).build());
            }
            NativeAdBase nativeAdBase = this.mNativeAdBase;
            nativeAdBase.loadAd(nativeAdBase.buildLoadAdConfig().withAdListener(new NativeListener(this.adConfiguration.getContext(), this.mNativeAdBase)).withBid(this.adConfiguration.getBidResponse()).withMediaCacheFlag(NativeAdBase.MediaCacheFlag.ALL).withPreloadedIconView(-1, -1).build());
        } catch (Exception e) {
            String valueOf = String.valueOf(e.getMessage());
            String createAdapterError2 = FacebookMediationAdapter.createAdapterError(109, valueOf.length() != 0 ? "Failed to create native ad from bid payload: ".concat(valueOf) : new String("Failed to create native ad from bid payload: "));
            String str2 = FacebookMediationAdapter.TAG;
            this.callback.onFailure(createAdapterError2);
        }
    }

    @Override // com.google.android.gms.ads.mediation.UnifiedNativeAdMapper
    public void trackViews(View view, Map<String, View> map, Map<String, View> map2) {
        setOverrideClickHandling(true);
        ArrayList arrayList = new ArrayList(map.values());
        View view2 = map.get("3003");
        NativeAdBase nativeAdBase = this.mNativeAdBase;
        if (nativeAdBase instanceof NativeBannerAd) {
            if (view2 == null) {
                String str = FacebookMediationAdapter.TAG;
            } else if (view2 instanceof ImageView) {
                ((NativeBannerAd) nativeAdBase).registerViewForInteraction(view, (ImageView) view2, arrayList);
            } else {
                String.format("Native ad icon asset is rendered with an incompatible class type. Facebook impression recording might be impacted for this ad. Expected: ImageView, actual: %s.", view2.getClass());
                String str2 = FacebookMediationAdapter.TAG;
            }
        } else if (!(nativeAdBase instanceof com.facebook.ads.NativeAd)) {
            String str3 = FacebookMediationAdapter.TAG;
        } else {
            com.facebook.ads.NativeAd nativeAd = (com.facebook.ads.NativeAd) nativeAdBase;
            if (view2 instanceof ImageView) {
                nativeAd.registerViewForInteraction(view, this.mMediaView, (ImageView) view2, arrayList);
                return;
            }
            String str4 = FacebookMediationAdapter.TAG;
            nativeAd.registerViewForInteraction(view, this.mMediaView, arrayList);
        }
    }

    @Override // com.google.android.gms.ads.mediation.UnifiedNativeAdMapper
    public void untrackView(View view) {
        NativeAdBase nativeAdBase = this.mNativeAdBase;
        if (nativeAdBase != null) {
            nativeAdBase.unregisterView();
        }
        super.untrackView(view);
    }
}
