package com.mopub.nativeads;

import android.content.Context;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.callapp.contacts.manager.CallAppAdsAnalyticsManager;
import com.callapp.contacts.util.ads.AdUtils;
import com.callapp.framework.util.CollectionUtils;
import com.facebook.ads.AbstractC9941Ad;
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

    /* renamed from: a */
    private static final String f59869a = "FacebookNative";

    /* renamed from: b */
    private Boolean f59870b;

    /* renamed from: c */
    private FacebookAdapterConfiguration f59871c = new FacebookAdapterConfiguration();

    /* renamed from: com.mopub.nativeads.FacebookNative$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/FacebookNative$a.class */
    public static final class C16917a extends BaseNativeAd implements NativeAdListener {

        /* renamed from: a */
        final NativeAdBase f59872a;

        /* renamed from: b */
        List<MediaView> f59873b;

        /* renamed from: d */
        private final CustomEventNative.CustomEventNativeListener f59875d;

        /* renamed from: f */
        private final String f59877f;

        /* renamed from: g */
        private final double f59878g;

        /* renamed from: h */
        private final String f59879h;

        /* renamed from: c */
        private AtomicBoolean f59874c = new AtomicBoolean(false);

        /* renamed from: e */
        private final Map<String, Object> f59876e = new HashMap();

        C16917a(NativeAdBase nativeAdBase, CustomEventNative.CustomEventNativeListener customEventNativeListener, String str, double d, String str2) {
            this.f59872a = nativeAdBase;
            this.f59875d = customEventNativeListener;
            this.f59877f = str;
            this.f59878g = d;
            this.f59879h = str2;
        }

        /* renamed from: a */
        final void m6217a() {
            NativeAdBase.NativeAdLoadConfigBuilder withAdListener = this.f59872a.buildLoadAdConfig().withAdListener(this);
            if (!TextUtils.isEmpty(this.f59877f)) {
                this.f59872a.loadAd(withAdListener.withBid(this.f59877f).build());
                MoPubLog.log(this.f59877f, MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, FacebookNative.f59869a);
                return;
            }
            this.f59872a.loadAd(withAdListener.build());
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, FacebookNative.f59869a);
        }

        public final void addExtra(String str, Object obj) {
            if (!Preconditions.NoThrow.checkNotNull(str, "addExtra key is not allowed to be null")) {
                return;
            }
            this.f59876e.put(str, obj);
        }

        @Override // com.mopub.nativeads.BaseNativeAd
        public final void clear(View view) {
            this.f59872a.unregisterView();
        }

        @Override // com.mopub.nativeads.BaseNativeAd
        public final void destroy() {
            if (CollectionUtils.m26068b(this.f59873b)) {
                for (MediaView mediaView : this.f59873b) {
                    mediaView.destroy();
                }
                this.f59873b.clear();
            }
            this.f59872a.destroy();
        }

        public final String getAdvertiserName() {
            return this.f59872a.getAdvertiserName();
        }

        public final String getCallToAction() {
            return this.f59872a.getAdCallToAction();
        }

        public final Object getExtra(String str) {
            if (!Preconditions.NoThrow.checkNotNull(str, "getExtra key is not allowed to be null")) {
                return null;
            }
            return this.f59876e.get(str);
        }

        public final Map<String, Object> getExtras() {
            return new HashMap(this.f59876e);
        }

        public final String getPrivacyInformationIconClickThroughUrl() {
            return this.f59872a.getAdChoicesLinkUrl();
        }

        public final String getSponsoredName() {
            NativeAdBase nativeAdBase = this.f59872a;
            if (nativeAdBase instanceof NativeBannerAd) {
                return nativeAdBase.getSponsoredTranslation();
            }
            return null;
        }

        public final String getText() {
            return this.f59872a.getAdBodyText();
        }

        public final String getTitle() {
            return this.f59872a.getAdHeadline();
        }

        @Override // com.facebook.ads.AdListener
        public final void onAdClicked(AbstractC9941Ad abstractC9941Ad) {
            notifyAdClicked();
            MoPubLog.log(MoPubLog.AdapterLogEvent.CLICKED, FacebookNative.f59869a);
            if (!this.f59874c.getAndSet(true)) {
                CallAppAdsAnalyticsManager.m28737c("facebook", abstractC9941Ad.getPlacementId(), MoPub.AD_TYPE_AND_SIZE.NATIVE);
            }
        }

        @Override // com.facebook.ads.AdListener
        public final void onAdLoaded(AbstractC9941Ad abstractC9941Ad) {
            if (!this.f59872a.equals(abstractC9941Ad) || !this.f59872a.isAdLoaded()) {
                this.f59875d.onNativeAdFailed(NativeErrorCode.NETWORK_NO_FILL);
                MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, FacebookNative.f59869a, Integer.valueOf(NativeErrorCode.NETWORK_NO_FILL.getIntCode()), NativeErrorCode.NETWORK_NO_FILL);
                return;
            }
            addExtra("socialContextForAd", this.f59872a.getAdSocialContext());
            this.f59875d.onNativeAdLoaded(this);
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_SUCCESS, FacebookNative.f59869a);
        }

        @Override // com.facebook.ads.AdListener
        public final void onError(AbstractC9941Ad abstractC9941Ad, AdError adError) {
            if (adError != null) {
                if (adError.getErrorCode() == AdError.NO_FILL.getErrorCode()) {
                    this.f59875d.onNativeAdFailed(NativeErrorCode.NETWORK_NO_FILL);
                    MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, FacebookNative.f59869a, Integer.valueOf(NativeErrorCode.NETWORK_NO_FILL.getIntCode()), NativeErrorCode.NETWORK_NO_FILL);
                    return;
                } else if (adError.getErrorCode() == AdError.INTERNAL_ERROR.getErrorCode()) {
                    this.f59875d.onNativeAdFailed(NativeErrorCode.NETWORK_INVALID_STATE);
                    MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, FacebookNative.f59869a, Integer.valueOf(NativeErrorCode.NETWORK_INVALID_STATE.getIntCode()), NativeErrorCode.NETWORK_INVALID_STATE);
                    return;
                }
            }
            this.f59875d.onNativeAdFailed(NativeErrorCode.UNSPECIFIED);
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, FacebookNative.f59869a, Integer.valueOf(NativeErrorCode.UNSPECIFIED.getIntCode()), NativeErrorCode.UNSPECIFIED);
        }

        @Override // com.facebook.ads.AdListener
        public final void onLoggingImpression(AbstractC9941Ad abstractC9941Ad) {
            notifyAdImpressed();
            MoPubLog.log(MoPubLog.AdapterLogEvent.SHOW_SUCCESS, FacebookNative.f59869a);
            CallAppAdsAnalyticsManager.m28740a("facebook", abstractC9941Ad.getPlacementId(), this.f59878g, MoPub.AD_TYPE_AND_SIZE.NATIVE, this.f59879h);
        }

        @Override // com.facebook.ads.NativeAdListener
        public final void onMediaDownloaded(AbstractC9941Ad abstractC9941Ad) {
        }

        @Override // com.mopub.nativeads.BaseNativeAd
        public final void prepare(View view) {
        }
    }

    /* renamed from: a */
    public static /* synthetic */ void m6220a(View view, NativeAdBase nativeAdBase, MediaView mediaView, MediaView mediaView2) {
        if (nativeAdBase != null) {
            ArrayList arrayList = new ArrayList();
            m6219a(view, arrayList, 10);
            if ((nativeAdBase instanceof NativeAd) && mediaView != null) {
                NativeAd nativeAd = (NativeAd) nativeAdBase;
                if (arrayList.size() == 1) {
                    nativeAd.registerViewForInteraction(view, mediaView, mediaView2);
                } else {
                    nativeAd.registerViewForInteraction(view, mediaView, mediaView2, arrayList);
                }
            } else if (!(nativeAdBase instanceof NativeBannerAd)) {
            } else {
                NativeBannerAd nativeBannerAd = (NativeBannerAd) nativeAdBase;
                if (arrayList.size() == 1) {
                    nativeBannerAd.registerViewForInteraction(view, mediaView2);
                } else {
                    nativeBannerAd.registerViewForInteraction(view, mediaView2, arrayList);
                }
            }
        }
    }

    /* renamed from: a */
    private static void m6219a(View view, List<View> list, int i) {
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
                        m6219a(viewGroup.getChildAt(i2), list, i - 1);
                    }
                    return;
                }
            }
            list.add(view);
        }
    }

    @Override // com.mopub.nativeads.CustomEventNative
    public void loadNativeAd(Context context, CustomEventNative.CustomEventNativeListener customEventNativeListener, Map<String, Object> map, Map<String, String> map2) {
        this.f59871c.initializeNetwork(context, map2);
        boolean z = true;
        if (!(!TextUtils.isEmpty(map2.get(PLACEMENT_ID_KEY)))) {
            customEventNativeListener.onNativeAdFailed(NativeErrorCode.NETWORK_NO_FILL);
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, f59869a, Integer.valueOf(NativeErrorCode.NETWORK_NO_FILL.getIntCode()), NativeErrorCode.NETWORK_NO_FILL);
            return;
        }
        String str = map2.get(PLACEMENT_ID_KEY);
        this.f59871c.setCachedInitializationParameters(context, map2);
        double m27266a = AdUtils.m27266a(map2);
        String str2 = map2.get("app_bidder_request_id");
        String str3 = map2.get("adm");
        boolean z2 = CollectionUtils.m26067b(map) && map.get(MoPubNative.HAS_MAIN_IMAGE) != null;
        if (!map.isEmpty()) {
            Object obj = map.get("native_banner");
            if (obj instanceof Boolean) {
                this.f59870b = (Boolean) obj;
            }
        }
        Context applicationContext = context.getApplicationContext();
        Boolean bool = this.f59870b;
        if (bool != null) {
            z = bool.booleanValue();
        } else if (z2) {
            z = false;
        }
        Boolean valueOf = Boolean.valueOf(z);
        this.f59870b = valueOf;
        if (valueOf == null || !valueOf.booleanValue()) {
            new C16917a(new NativeAd(applicationContext, str), customEventNativeListener, str3, m27266a, str2).m6217a();
        } else {
            new C16917a(new NativeBannerAd(applicationContext, str), customEventNativeListener, str3, m27266a, str2).m6217a();
        }
    }
}
