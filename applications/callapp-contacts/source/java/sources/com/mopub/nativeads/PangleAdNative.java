package com.mopub.nativeads;

import android.app.Activity;
import android.content.Context;
import android.graphics.Bitmap;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import com.bytedance.sdk.openadsdk.AdSlot;
import com.bytedance.sdk.openadsdk.FilterWord;
import com.bytedance.sdk.openadsdk.TTAdDislike;
import com.bytedance.sdk.openadsdk.TTAdManager;
import com.bytedance.sdk.openadsdk.TTAdNative;
import com.bytedance.sdk.openadsdk.TTDislikeDialogAbstract;
import com.bytedance.sdk.openadsdk.TTFeedAd;
import com.bytedance.sdk.openadsdk.TTImage;
import com.bytedance.sdk.openadsdk.TTNativeAd;
import com.callapp.contacts.manager.CallAppAdsAnalyticsManager;
import com.mopub.common.MoPub;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.PangleAdapterConfiguration;
import com.mopub.nativeads.CustomEventNative;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.atomic.AtomicBoolean;
/* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/PangleAdNative.class */
public class PangleAdNative extends CustomEventNative {

    /* renamed from: a */
    private static final String f60072a = "PangleAdNative";

    /* renamed from: c */
    private Context f60074c;

    /* renamed from: d */
    private CustomEventNative.CustomEventNativeListener f60075d;

    /* renamed from: b */
    private String f60073b = "";

    /* renamed from: e */
    private PangleAdapterConfiguration f60076e = new PangleAdapterConfiguration();

    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/PangleAdNative$PangleNativeAd.class */
    public class PangleNativeAd extends BaseNativeAd implements TTNativeAd.AdInteractionListener {

        /* renamed from: c */
        private final String f60081c;

        /* renamed from: e */
        private TTFeedAd f60083e;

        /* renamed from: b */
        private final Map<String, Object> f60080b = new HashMap();

        /* renamed from: d */
        private AtomicBoolean f60082d = new AtomicBoolean(false);

        PangleNativeAd(TTFeedAd tTFeedAd, String str) {
            PangleAdNative.this = r6;
            this.f60083e = tTFeedAd;
            this.f60081c = str;
        }

        public final void addExtra(String str, Object obj) {
            if (!Preconditions.NoThrow.checkNotNull(str, "addExtra key is not allowed to be null")) {
                return;
            }
            this.f60080b.put(str, obj);
        }

        @Override // com.mopub.nativeads.BaseNativeAd
        public void clear(View view) {
        }

        @Override // com.mopub.nativeads.BaseNativeAd
        public void destroy() {
        }

        public Bitmap getAdLogo() {
            TTFeedAd tTFeedAd = this.f60083e;
            if (tTFeedAd != null) {
                return tTFeedAd.getAdLogo();
            }
            return null;
        }

        public View getAdView() {
            TTFeedAd tTFeedAd = this.f60083e;
            if (tTFeedAd != null) {
                return tTFeedAd.getAdView();
            }
            return null;
        }

        public final String getAdvertiserName() {
            TTFeedAd tTFeedAd = this.f60083e;
            if (tTFeedAd != null) {
                return tTFeedAd.getSource();
            }
            return null;
        }

        public int getAppCommentNum() {
            TTFeedAd tTFeedAd = this.f60083e;
            if (tTFeedAd != null) {
                return tTFeedAd.getAppCommentNum();
            }
            return -1;
        }

        public int getAppScore() {
            TTFeedAd tTFeedAd = this.f60083e;
            if (tTFeedAd != null) {
                return tTFeedAd.getAppScore();
            }
            return -1;
        }

        public int getAppSize() {
            TTFeedAd tTFeedAd = this.f60083e;
            if (tTFeedAd != null) {
                return tTFeedAd.getAppSize();
            }
            return -1;
        }

        public final String getCallToAction() {
            TTFeedAd tTFeedAd = this.f60083e;
            if (tTFeedAd != null) {
                return tTFeedAd.getButtonText();
            }
            return null;
        }

        public final String getDescriptionText() {
            TTFeedAd tTFeedAd = this.f60083e;
            if (tTFeedAd != null) {
                return tTFeedAd.getDescription();
            }
            return null;
        }

        public TTAdDislike getDislikeDialog(Activity activity) {
            TTFeedAd tTFeedAd = this.f60083e;
            if (tTFeedAd != null) {
                return tTFeedAd.getDislikeDialog(activity);
            }
            return null;
        }

        public TTAdDislike getDislikeDialog(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
            TTFeedAd tTFeedAd = this.f60083e;
            if (tTFeedAd != null) {
                return tTFeedAd.getDislikeDialog(tTDislikeDialogAbstract);
            }
            return null;
        }

        public final Object getExtra(String str) {
            if (!Preconditions.NoThrow.checkNotNull(str, "getExtra key is not allowed to be null")) {
                return null;
            }
            return this.f60080b.get(str);
        }

        public final Map<String, Object> getExtras() {
            return new HashMap(this.f60080b);
        }

        public List<FilterWord> getFilterWords() {
            TTFeedAd tTFeedAd = this.f60083e;
            if (tTFeedAd != null) {
                return tTFeedAd.getFilterWords();
            }
            return null;
        }

        public TTImage getIcon() {
            TTFeedAd tTFeedAd = this.f60083e;
            if (tTFeedAd != null) {
                return tTFeedAd.getIcon();
            }
            return null;
        }

        public List<TTImage> getImageList() {
            TTFeedAd tTFeedAd = this.f60083e;
            if (tTFeedAd != null) {
                return tTFeedAd.getImageList();
            }
            return null;
        }

        public int getImageMode() {
            TTFeedAd tTFeedAd = this.f60083e;
            if (tTFeedAd != null) {
                return tTFeedAd.getImageMode();
            }
            return -1;
        }

        public int getInteractionType() {
            TTFeedAd tTFeedAd = this.f60083e;
            if (tTFeedAd != null) {
                return tTFeedAd.getInteractionType();
            }
            return -1;
        }

        public final String getTitle() {
            TTFeedAd tTFeedAd = this.f60083e;
            if (tTFeedAd != null) {
                return tTFeedAd.getTitle();
            }
            return null;
        }

        public TTImage getVideoCoverImage() {
            TTFeedAd tTFeedAd = this.f60083e;
            if (tTFeedAd != null) {
                return tTFeedAd.getVideoCoverImage();
            }
            return null;
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeAd.AdInteractionListener
        public void onAdClicked(View view, TTNativeAd tTNativeAd) {
            MoPubLog.log(PangleAdNative.this.f60073b, MoPubLog.AdapterLogEvent.CLICKED, PangleAdNative.f60072a);
            notifyAdClicked();
            if (!this.f60082d.getAndSet(true)) {
                CallAppAdsAnalyticsManager.m28737c("pangle", PangleAdNative.this.f60073b, MoPub.AD_TYPE_AND_SIZE.NATIVE);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeAd.AdInteractionListener
        public void onAdCreativeClick(View view, TTNativeAd tTNativeAd) {
            MoPubLog.log(PangleAdNative.this.f60073b, MoPubLog.AdapterLogEvent.CLICKED, PangleAdNative.f60072a);
            notifyAdClicked();
            if (!this.f60082d.getAndSet(true)) {
                CallAppAdsAnalyticsManager.m28737c("pangle", PangleAdNative.this.f60073b, MoPub.AD_TYPE_AND_SIZE.NATIVE);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeAd.AdInteractionListener
        public void onAdShow(TTNativeAd tTNativeAd) {
            MoPubLog.log(PangleAdNative.this.f60073b, MoPubLog.AdapterLogEvent.SHOW_SUCCESS, PangleAdNative.f60072a);
            notifyAdImpressed();
            CallAppAdsAnalyticsManager.m28740a("pangle", PangleAdNative.this.f60073b, getPublisherRevenue(), MoPub.AD_TYPE_AND_SIZE.NATIVE, this.f60081c);
        }

        @Override // com.mopub.nativeads.BaseNativeAd
        public void prepare(View view) {
        }

        public void registerViewForInteraction(ViewGroup viewGroup, View view, TTNativeAd.AdInteractionListener adInteractionListener) {
            TTFeedAd tTFeedAd = this.f60083e;
            if (tTFeedAd != null) {
                tTFeedAd.registerViewForInteraction(viewGroup, view, adInteractionListener);
            }
        }

        public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, List<View> list2, View view, TTNativeAd.AdInteractionListener adInteractionListener) {
            TTFeedAd tTFeedAd = this.f60083e;
            if (tTFeedAd != null) {
                tTFeedAd.registerViewForInteraction(viewGroup, list, list2, view, adInteractionListener);
            }
        }

        public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, List<View> list2, TTNativeAd.AdInteractionListener adInteractionListener) {
            TTFeedAd tTFeedAd = this.f60083e;
            if (tTFeedAd != null) {
                tTFeedAd.registerViewForInteraction(viewGroup, list, list2, adInteractionListener);
            }
        }

        public void showPrivacyActivity() {
            TTFeedAd tTFeedAd = this.f60083e;
            if (tTFeedAd != null) {
                tTFeedAd.showPrivacyActivity();
            }
        }
    }

    /* renamed from: a */
    static /* synthetic */ NativeErrorCode m6152a(int i) {
        switch (i) {
            case PangleAdapterConfiguration.NO_AD /* 20001 */:
                return NativeErrorCode.NETWORK_NO_FILL;
            case PangleAdapterConfiguration.CONTENT_TYPE_ERROR /* 40000 */:
                return NativeErrorCode.CONNECTION_ERROR;
            case 40001:
                return NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR;
            case 40004:
            case PangleAdapterConfiguration.PLACEMENT_ERROR /* 40006 */:
                return NativeErrorCode.NETWORK_INVALID_REQUEST;
            default:
                return NativeErrorCode.UNSPECIFIED;
        }
    }

    @Override // com.mopub.nativeads.CustomEventNative
    public void loadNativeAd(Context context, CustomEventNative.CustomEventNativeListener customEventNativeListener, Map<String, Object> map, Map<String, String> map2) {
        TTAdManager tTAdManager;
        String str;
        this.f60074c = context;
        this.f60075d = customEventNativeListener;
        this.f60076e.initializeNetwork(context, map2);
        if (map2 == null || map2.isEmpty()) {
            str = null;
            tTAdManager = null;
        } else {
            String str2 = map2.get(PangleAdapterConfiguration.AD_PLACEMENT_ID_EXTRA_KEY);
            this.f60073b = str2;
            if (TextUtils.isEmpty(str2)) {
                MoPubLog.log(this.f60073b, MoPubLog.AdapterLogEvent.CUSTOM, f60072a, "Invalid Pangle placement ID. Failing ad request. Ensure the ad placement ID is valid on the MoPub dashboard.");
                if (customEventNativeListener == null) {
                    return;
                }
                customEventNativeListener.onNativeAdFailed(NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR);
                return;
            }
            String str3 = map2.get("adm");
            TTAdManager pangleSdkManager = PangleAdapterConfiguration.getPangleSdkManager();
            this.f60076e.setCachedInitializationParameters(context, map2);
            str = str3;
            tTAdManager = pangleSdkManager;
        }
        int i = 640;
        int i2 = 320;
        if (PangleAdapterConfiguration.getMediaViewWidth() > 0) {
            i = PangleAdapterConfiguration.getMediaViewWidth();
        }
        if (PangleAdapterConfiguration.getMediaViewHeight() > 0) {
            i2 = PangleAdapterConfiguration.getMediaViewHeight();
        }
        String str4 = this.f60073b;
        MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
        String str5 = f60072a;
        MoPubLog.log(str4, adapterLogEvent, str5, "extras: mediaViewWidth=" + i + ", mediaViewHeight=" + i2);
        final String str6 = (String) map.get("app_bidder_request_id");
        if (tTAdManager != null) {
            TTAdNative createAdNative = tTAdManager.createAdNative(this.f60074c);
            AdSlot build = new AdSlot.Builder().setCodeId(this.f60073b).setSupportDeepLink(true).setImageAcceptedSize(i, i2).withBid(str).build();
            MoPubLog.log(this.f60073b, MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, str5);
            createAdNative.loadFeedAd(build, new TTAdNative.FeedAdListener() { // from class: com.mopub.nativeads.PangleAdNative.1
                @Override // com.bytedance.sdk.openadsdk.TTAdNative.FeedAdListener, com.bytedance.sdk.openadsdk.p144a.AbstractC4269b
                public final void onError(int i3, String str7) {
                    String str8 = PangleAdNative.this.f60073b;
                    MoPubLog.AdapterLogEvent adapterLogEvent2 = MoPubLog.AdapterLogEvent.CUSTOM;
                    MoPubLog.log(str8, adapterLogEvent2, "Loading NativeAd encountered an error: " + PangleAdNative.m6152a(i3).toString() + ",error message:" + str7);
                    MoPubLog.log(PangleAdNative.this.f60073b, MoPubLog.AdapterLogEvent.LOAD_FAILED, PangleAdNative.f60072a, Integer.valueOf(PangleAdNative.m6152a(i3).getIntCode()), PangleAdNative.m6152a(i3));
                    if (PangleAdNative.this.f60075d != null) {
                        PangleAdNative.this.f60075d.onNativeAdFailed(PangleAdNative.m6152a(i3));
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTAdNative.FeedAdListener
                public final void onFeedAdLoad(List<TTFeedAd> list) {
                    if (list == null || list.size() <= 0) {
                        MoPubLog.log(PangleAdNative.this.f60073b, MoPubLog.AdapterLogEvent.LOAD_FAILED, PangleAdNative.f60072a, Integer.valueOf(NativeErrorCode.NETWORK_NO_FILL.getIntCode()), NativeErrorCode.NETWORK_NO_FILL);
                        if (PangleAdNative.this.f60075d == null) {
                            return;
                        }
                        PangleAdNative.this.f60075d.onNativeAdFailed(NativeErrorCode.NETWORK_NO_FILL);
                        return;
                    }
                    MoPubLog.log(PangleAdNative.this.f60073b, MoPubLog.AdapterLogEvent.LOAD_SUCCESS, PangleAdNative.f60072a);
                    if (PangleAdNative.this.f60075d == null) {
                        return;
                    }
                    for (TTFeedAd tTFeedAd : list) {
                        PangleAdNative.this.f60075d.onNativeAdLoaded(new PangleNativeAd(tTFeedAd, str6));
                    }
                }
            });
            return;
        }
        MoPubLog.log(this.f60073b, MoPubLog.AdapterLogEvent.CUSTOM, str5, "The ad manager cannot be created. Please make sure to pass the correct app id.");
        if (customEventNativeListener == null) {
            return;
        }
        customEventNativeListener.onNativeAdFailed(NativeErrorCode.NETWORK_INVALID_REQUEST);
    }
}
