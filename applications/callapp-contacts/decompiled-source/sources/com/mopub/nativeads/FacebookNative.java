package com.mopub.nativeads;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.callapp.contacts.manager.CallAppAdsAnalyticsManager;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.framework.util.CollectionUtils;
import com.facebook.ads.Ad;
import com.facebook.ads.AdError;
import com.facebook.ads.MediaView;
import com.facebook.ads.NativeAd;
import com.facebook.ads.NativeAdBase;
import com.facebook.ads.NativeAdListener;
import com.facebook.ads.NativeBannerAd;
import com.mopub.common.MoPub;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.FacebookAdapterConfiguration;
import com.mopub.nativeads.CustomEventNative;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/FacebookNative.class */
public class FacebookNative extends CustomEventNative {
    public static final String PLACEMENT_ID_KEY = "placement_id";

    /* renamed from: a  reason: collision with root package name */
    private static final String f34501a = "FacebookNative";

    /* renamed from: b  reason: collision with root package name */
    private Boolean f34502b;

    /* renamed from: c  reason: collision with root package name */
    private FacebookAdapterConfiguration f34503c = new FacebookAdapterConfiguration();

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/FacebookNative$a.class */
    public static final class a extends BaseNativeAd implements NativeAdListener {

        /* renamed from: a  reason: collision with root package name */
        final NativeAdBase f34504a;

        /* renamed from: b  reason: collision with root package name */
        List<MediaView> f34505b;

        /* renamed from: d  reason: collision with root package name */
        private final CustomEventNative.CustomEventNativeListener f34507d;
        private final String f;
        private final double g;
        private final String h;

        /* renamed from: c  reason: collision with root package name */
        private AtomicBoolean f34506c = new AtomicBoolean(false);
        private final Map<String, Object> e = new HashMap();

        a(NativeAdBase nativeAdBase, CustomEventNative.CustomEventNativeListener customEventNativeListener, String str, double d2, String str2) {
            this.f34504a = nativeAdBase;
            this.f34507d = customEventNativeListener;
            this.f = str;
            this.g = d2;
            this.h = str2;
        }

        final void a() {
            NativeAdBase.NativeAdLoadConfigBuilder withAdListener = this.f34504a.buildLoadAdConfig().withAdListener(this);
            if (!TextUtils.isEmpty(this.f)) {
                this.f34504a.loadAd(withAdListener.withBid(this.f).build());
                MoPubLog.log(this.f, MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, FacebookNative.f34501a);
                return;
            }
            this.f34504a.loadAd(withAdListener.build());
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, FacebookNative.f34501a);
        }

        public final void addExtra(String str, Object obj) {
            if (Preconditions.NoThrow.checkNotNull(str, "addExtra key is not allowed to be null")) {
                this.e.put(str, obj);
            }
        }

        @Override // com.mopub.nativeads.BaseNativeAd
        public final void clear(View view) {
            this.f34504a.unregisterView();
        }

        @Override // com.mopub.nativeads.BaseNativeAd
        public final void destroy() {
            if (CollectionUtils.b(this.f34505b)) {
                for (MediaView mediaView : this.f34505b) {
                    mediaView.destroy();
                }
                this.f34505b.clear();
            }
            this.f34504a.destroy();
        }

        public final String getAdvertiserName() {
            return this.f34504a.getAdvertiserName();
        }

        public final String getCallToAction() {
            return this.f34504a.getAdCallToAction();
        }

        public final Object getExtra(String str) {
            if (!Preconditions.NoThrow.checkNotNull(str, "getExtra key is not allowed to be null")) {
                return null;
            }
            return this.e.get(str);
        }

        public final Map<String, Object> getExtras() {
            return new HashMap(this.e);
        }

        public final String getPrivacyInformationIconClickThroughUrl() {
            return this.f34504a.getAdChoicesLinkUrl();
        }

        public final String getSponsoredName() {
            NativeAdBase nativeAdBase = this.f34504a;
            if (nativeAdBase instanceof NativeBannerAd) {
                return nativeAdBase.getSponsoredTranslation();
            }
            return null;
        }

        public final String getText() {
            return this.f34504a.getAdBodyText();
        }

        public final String getTitle() {
            return this.f34504a.getAdHeadline();
        }

        @Override // com.facebook.ads.AdListener
        public final void onAdClicked(Ad ad) {
            notifyAdClicked();
            MoPubLog.log(MoPubLog.AdapterLogEvent.CLICKED, FacebookNative.f34501a);
            if (!this.f34506c.getAndSet(true)) {
                CallAppAdsAnalyticsManager.c("facebook", ad.getPlacementId(), MoPub.AD_TYPE_AND_SIZE.NATIVE);
            }
        }

        @Override // com.facebook.ads.AdListener
        public final void onAdLoaded(Ad ad) {
            if (!this.f34504a.equals(ad) || !this.f34504a.isAdLoaded()) {
                this.f34507d.onNativeAdFailed(NativeErrorCode.NETWORK_NO_FILL);
                MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, FacebookNative.f34501a, Integer.valueOf(NativeErrorCode.NETWORK_NO_FILL.getIntCode()), NativeErrorCode.NETWORK_NO_FILL);
                return;
            }
            addExtra("socialContextForAd", this.f34504a.getAdSocialContext());
            this.f34507d.onNativeAdLoaded(this);
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_SUCCESS, FacebookNative.f34501a);
        }

        @Override // com.facebook.ads.AdListener
        public final void onError(Ad ad, AdError adError) {
            if (adError != null) {
                if (adError.getErrorCode() == AdError.NO_FILL.getErrorCode()) {
                    this.f34507d.onNativeAdFailed(NativeErrorCode.NETWORK_NO_FILL);
                    MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, FacebookNative.f34501a, Integer.valueOf(NativeErrorCode.NETWORK_NO_FILL.getIntCode()), NativeErrorCode.NETWORK_NO_FILL);
                    return;
                } else if (adError.getErrorCode() == AdError.INTERNAL_ERROR.getErrorCode()) {
                    this.f34507d.onNativeAdFailed(NativeErrorCode.NETWORK_INVALID_STATE);
                    MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, FacebookNative.f34501a, Integer.valueOf(NativeErrorCode.NETWORK_INVALID_STATE.getIntCode()), NativeErrorCode.NETWORK_INVALID_STATE);
                    return;
                }
            }
            this.f34507d.onNativeAdFailed(NativeErrorCode.UNSPECIFIED);
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, FacebookNative.f34501a, Integer.valueOf(NativeErrorCode.UNSPECIFIED.getIntCode()), NativeErrorCode.UNSPECIFIED);
        }

        @Override // com.facebook.ads.AdListener
        public final void onLoggingImpression(Ad ad) {
            notifyAdImpressed();
            MoPubLog.log(MoPubLog.AdapterLogEvent.SHOW_SUCCESS, FacebookNative.f34501a);
            CallAppAdsAnalyticsManager.a("facebook", ad.getPlacementId(), this.g, MoPub.AD_TYPE_AND_SIZE.NATIVE, this.h);
        }

        @Override // com.facebook.ads.NativeAdListener
        public final void onMediaDownloaded(Ad ad) {
        }

        @Override // com.mopub.nativeads.BaseNativeAd
        public final void prepare(View view) {
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* synthetic */ void a(View view, NativeAdBase nativeAdBase, MediaView mediaView, MediaView mediaView2) {
        if (nativeAdBase != null) {
            ArrayList arrayList = new ArrayList();
            a(view, arrayList, 10);
            if ((nativeAdBase instanceof NativeAd) && mediaView != null) {
                NativeAd nativeAd = (NativeAd) nativeAdBase;
                if (arrayList.size() == 1) {
                    nativeAd.registerViewForInteraction(view, mediaView, mediaView2);
                } else {
                    nativeAd.registerViewForInteraction(view, mediaView, mediaView2, arrayList);
                }
            } else if (nativeAdBase instanceof NativeBannerAd) {
                NativeBannerAd nativeBannerAd = (NativeBannerAd) nativeAdBase;
                if (arrayList.size() == 1) {
                    nativeBannerAd.registerViewForInteraction(view, mediaView2);
                } else {
                    nativeBannerAd.registerViewForInteraction(view, mediaView2, arrayList);
                }
            }
        }
    }

    private static void a(View view, List<View> list, int i) {
        if (view == null) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM, "View given is null. Ignoring");
        } else if (i <= 0) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM, "Depth limit reached; adding this view regardless of its type.");
            list.add(view);
        } else {
            if (view instanceof ViewGroup) {
                ViewGroup viewGroup = (ViewGroup) view;
                if (viewGroup.getChildCount() > 0) {
                    for (int i2 = 0; i2 < viewGroup.getChildCount(); i2++) {
                        a(viewGroup.getChildAt(i2), list, i - 1);
                    }
                    return;
                }
            }
            list.add(view);
        }
    }

    @Override // com.mopub.nativeads.CustomEventNative
    public void loadNativeAd(Context context, CustomEventNative.CustomEventNativeListener customEventNativeListener, Map<String, Object> map, Map<String, String> map2) {
        this.f34503c.initializeNetwork(context, map2);
        boolean z = true;
        if (!TextUtils.isEmpty(map2.get(PLACEMENT_ID_KEY))) {
            String str = map2.get(PLACEMENT_ID_KEY);
            this.f34503c.setCachedInitializationParameters(context, map2);
            double a2 = AdUtils.a(map2);
            String str2 = map2.get("app_bidder_request_id");
            String str3 = map2.get("adm");
            boolean z2 = CollectionUtils.b(map) && map.get(MoPubNative.HAS_MAIN_IMAGE) != null;
            if (!map.isEmpty()) {
                Object obj = map.get("native_banner");
                if (obj instanceof Boolean) {
                    this.f34502b = (Boolean) obj;
                }
            }
            Context applicationContext = context.getApplicationContext();
            Boolean bool = this.f34502b;
            if (bool != null) {
                z = bool.booleanValue();
            } else if (z2) {
                z = false;
            }
            Boolean valueOf = Boolean.valueOf(z);
            this.f34502b = valueOf;
            if (valueOf == null || !valueOf.booleanValue()) {
                new a(new NativeAd(applicationContext, str), customEventNativeListener, str3, a2, str2).a();
            } else {
                new a(new NativeBannerAd(applicationContext, str), customEventNativeListener, str3, a2, str2).a();
            }
        } else {
            customEventNativeListener.onNativeAdFailed(NativeErrorCode.NETWORK_NO_FILL);
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, f34501a, Integer.valueOf(NativeErrorCode.NETWORK_NO_FILL.getIntCode()), NativeErrorCode.NETWORK_NO_FILL);
        }
    }
}
