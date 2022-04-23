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

    /* renamed from: a  reason: collision with root package name */
    private static final String f34620a = "PangleAdNative";

    /* renamed from: c  reason: collision with root package name */
    private Context f34622c;

    /* renamed from: d  reason: collision with root package name */
    private CustomEventNative.CustomEventNativeListener f34623d;

    /* renamed from: b  reason: collision with root package name */
    private String f34621b = "";
    private PangleAdapterConfiguration e = new PangleAdapterConfiguration();

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes4-dex2jar.jar:com/mopub/nativeads/PangleAdNative$PangleNativeAd.class */
    public class PangleNativeAd extends BaseNativeAd implements TTNativeAd.AdInteractionListener {

        /* renamed from: c  reason: collision with root package name */
        private final String f34628c;
        private TTFeedAd e;

        /* renamed from: b  reason: collision with root package name */
        private final Map<String, Object> f34627b = new HashMap();

        /* renamed from: d  reason: collision with root package name */
        private AtomicBoolean f34629d = new AtomicBoolean(false);

        PangleNativeAd(TTFeedAd tTFeedAd, String str) {
            this.e = tTFeedAd;
            this.f34628c = str;
        }

        public final void addExtra(String str, Object obj) {
            if (Preconditions.NoThrow.checkNotNull(str, "addExtra key is not allowed to be null")) {
                this.f34627b.put(str, obj);
            }
        }

        @Override // com.mopub.nativeads.BaseNativeAd
        public void clear(View view) {
        }

        @Override // com.mopub.nativeads.BaseNativeAd
        public void destroy() {
        }

        public Bitmap getAdLogo() {
            TTFeedAd tTFeedAd = this.e;
            if (tTFeedAd != null) {
                return tTFeedAd.getAdLogo();
            }
            return null;
        }

        public View getAdView() {
            TTFeedAd tTFeedAd = this.e;
            if (tTFeedAd != null) {
                return tTFeedAd.getAdView();
            }
            return null;
        }

        public final String getAdvertiserName() {
            TTFeedAd tTFeedAd = this.e;
            if (tTFeedAd != null) {
                return tTFeedAd.getSource();
            }
            return null;
        }

        public int getAppCommentNum() {
            TTFeedAd tTFeedAd = this.e;
            if (tTFeedAd != null) {
                return tTFeedAd.getAppCommentNum();
            }
            return -1;
        }

        public int getAppScore() {
            TTFeedAd tTFeedAd = this.e;
            if (tTFeedAd != null) {
                return tTFeedAd.getAppScore();
            }
            return -1;
        }

        public int getAppSize() {
            TTFeedAd tTFeedAd = this.e;
            if (tTFeedAd != null) {
                return tTFeedAd.getAppSize();
            }
            return -1;
        }

        public final String getCallToAction() {
            TTFeedAd tTFeedAd = this.e;
            if (tTFeedAd != null) {
                return tTFeedAd.getButtonText();
            }
            return null;
        }

        public final String getDescriptionText() {
            TTFeedAd tTFeedAd = this.e;
            if (tTFeedAd != null) {
                return tTFeedAd.getDescription();
            }
            return null;
        }

        public TTAdDislike getDislikeDialog(Activity activity) {
            TTFeedAd tTFeedAd = this.e;
            if (tTFeedAd != null) {
                return tTFeedAd.getDislikeDialog(activity);
            }
            return null;
        }

        public TTAdDislike getDislikeDialog(TTDislikeDialogAbstract tTDislikeDialogAbstract) {
            TTFeedAd tTFeedAd = this.e;
            if (tTFeedAd != null) {
                return tTFeedAd.getDislikeDialog(tTDislikeDialogAbstract);
            }
            return null;
        }

        public final Object getExtra(String str) {
            if (!Preconditions.NoThrow.checkNotNull(str, "getExtra key is not allowed to be null")) {
                return null;
            }
            return this.f34627b.get(str);
        }

        public final Map<String, Object> getExtras() {
            return new HashMap(this.f34627b);
        }

        public List<FilterWord> getFilterWords() {
            TTFeedAd tTFeedAd = this.e;
            if (tTFeedAd != null) {
                return tTFeedAd.getFilterWords();
            }
            return null;
        }

        public TTImage getIcon() {
            TTFeedAd tTFeedAd = this.e;
            if (tTFeedAd != null) {
                return tTFeedAd.getIcon();
            }
            return null;
        }

        public List<TTImage> getImageList() {
            TTFeedAd tTFeedAd = this.e;
            if (tTFeedAd != null) {
                return tTFeedAd.getImageList();
            }
            return null;
        }

        public int getImageMode() {
            TTFeedAd tTFeedAd = this.e;
            if (tTFeedAd != null) {
                return tTFeedAd.getImageMode();
            }
            return -1;
        }

        public int getInteractionType() {
            TTFeedAd tTFeedAd = this.e;
            if (tTFeedAd != null) {
                return tTFeedAd.getInteractionType();
            }
            return -1;
        }

        public final String getTitle() {
            TTFeedAd tTFeedAd = this.e;
            if (tTFeedAd != null) {
                return tTFeedAd.getTitle();
            }
            return null;
        }

        public TTImage getVideoCoverImage() {
            TTFeedAd tTFeedAd = this.e;
            if (tTFeedAd != null) {
                return tTFeedAd.getVideoCoverImage();
            }
            return null;
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeAd.AdInteractionListener
        public void onAdClicked(View view, TTNativeAd tTNativeAd) {
            MoPubLog.log(PangleAdNative.this.f34621b, MoPubLog.AdapterLogEvent.CLICKED, PangleAdNative.f34620a);
            notifyAdClicked();
            if (!this.f34629d.getAndSet(true)) {
                CallAppAdsAnalyticsManager.c("pangle", PangleAdNative.this.f34621b, MoPub.AD_TYPE_AND_SIZE.NATIVE);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeAd.AdInteractionListener
        public void onAdCreativeClick(View view, TTNativeAd tTNativeAd) {
            MoPubLog.log(PangleAdNative.this.f34621b, MoPubLog.AdapterLogEvent.CLICKED, PangleAdNative.f34620a);
            notifyAdClicked();
            if (!this.f34629d.getAndSet(true)) {
                CallAppAdsAnalyticsManager.c("pangle", PangleAdNative.this.f34621b, MoPub.AD_TYPE_AND_SIZE.NATIVE);
            }
        }

        @Override // com.bytedance.sdk.openadsdk.TTNativeAd.AdInteractionListener
        public void onAdShow(TTNativeAd tTNativeAd) {
            MoPubLog.log(PangleAdNative.this.f34621b, MoPubLog.AdapterLogEvent.SHOW_SUCCESS, PangleAdNative.f34620a);
            notifyAdImpressed();
            CallAppAdsAnalyticsManager.a("pangle", PangleAdNative.this.f34621b, getPublisherRevenue(), MoPub.AD_TYPE_AND_SIZE.NATIVE, this.f34628c);
        }

        @Override // com.mopub.nativeads.BaseNativeAd
        public void prepare(View view) {
        }

        public void registerViewForInteraction(ViewGroup viewGroup, View view, TTNativeAd.AdInteractionListener adInteractionListener) {
            TTFeedAd tTFeedAd = this.e;
            if (tTFeedAd != null) {
                tTFeedAd.registerViewForInteraction(viewGroup, view, adInteractionListener);
            }
        }

        public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, List<View> list2, View view, TTNativeAd.AdInteractionListener adInteractionListener) {
            TTFeedAd tTFeedAd = this.e;
            if (tTFeedAd != null) {
                tTFeedAd.registerViewForInteraction(viewGroup, list, list2, view, adInteractionListener);
            }
        }

        public void registerViewForInteraction(ViewGroup viewGroup, List<View> list, List<View> list2, TTNativeAd.AdInteractionListener adInteractionListener) {
            TTFeedAd tTFeedAd = this.e;
            if (tTFeedAd != null) {
                tTFeedAd.registerViewForInteraction(viewGroup, list, list2, adInteractionListener);
            }
        }

        public void showPrivacyActivity() {
            TTFeedAd tTFeedAd = this.e;
            if (tTFeedAd != null) {
                tTFeedAd.showPrivacyActivity();
            }
        }
    }

    static /* synthetic */ NativeErrorCode a(int i) {
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.mopub.nativeads.CustomEventNative
    public void loadNativeAd(Context context, CustomEventNative.CustomEventNativeListener customEventNativeListener, Map<String, Object> map, Map<String, String> map2) {
        String str;
        this.f34622c = context;
        this.f34623d = customEventNativeListener;
        this.e.initializeNetwork(context, map2);
        TTAdManager tTAdManager = null;
        if (map2 == null || map2.isEmpty()) {
            str = null;
        } else {
            String str2 = map2.get(PangleAdapterConfiguration.AD_PLACEMENT_ID_EXTRA_KEY);
            this.f34621b = str2;
            if (TextUtils.isEmpty(str2)) {
                MoPubLog.log(this.f34621b, MoPubLog.AdapterLogEvent.CUSTOM, f34620a, "Invalid Pangle placement ID. Failing ad request. Ensure the ad placement ID is valid on the MoPub dashboard.");
                if (customEventNativeListener != null) {
                    customEventNativeListener.onNativeAdFailed(NativeErrorCode.NATIVE_ADAPTER_CONFIGURATION_ERROR);
                    return;
                }
                return;
            }
            str = map2.get("adm");
            tTAdManager = PangleAdapterConfiguration.getPangleSdkManager();
            this.e.setCachedInitializationParameters(context, map2);
        }
        int i = 640;
        int i2 = 320;
        if (PangleAdapterConfiguration.getMediaViewWidth() > 0) {
            i = PangleAdapterConfiguration.getMediaViewWidth();
        }
        if (PangleAdapterConfiguration.getMediaViewHeight() > 0) {
            i2 = PangleAdapterConfiguration.getMediaViewHeight();
        }
        String str3 = this.f34621b;
        MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM;
        String str4 = f34620a;
        MoPubLog.log(str3, adapterLogEvent, str4, "extras: mediaViewWidth=" + i + ", mediaViewHeight=" + i2);
        final String str5 = (String) map.get("app_bidder_request_id");
        if (tTAdManager != null) {
            TTAdNative createAdNative = tTAdManager.createAdNative(this.f34622c);
            AdSlot build = new AdSlot.Builder().setCodeId(this.f34621b).setSupportDeepLink(true).setImageAcceptedSize(i, i2).withBid(str).build();
            MoPubLog.log(this.f34621b, MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, str4);
            createAdNative.loadFeedAd(build, new TTAdNative.FeedAdListener() { // from class: com.mopub.nativeads.PangleAdNative.1
                @Override // com.bytedance.sdk.openadsdk.TTAdNative.FeedAdListener, com.bytedance.sdk.openadsdk.a.b
                public final void onError(int i3, String str6) {
                    String str7 = PangleAdNative.this.f34621b;
                    MoPubLog.AdapterLogEvent adapterLogEvent2 = MoPubLog.AdapterLogEvent.CUSTOM;
                    MoPubLog.log(str7, adapterLogEvent2, "Loading NativeAd encountered an error: " + PangleAdNative.a(i3).toString() + ",error message:" + str6);
                    MoPubLog.log(PangleAdNative.this.f34621b, MoPubLog.AdapterLogEvent.LOAD_FAILED, PangleAdNative.f34620a, Integer.valueOf(PangleAdNative.a(i3).getIntCode()), PangleAdNative.a(i3));
                    if (PangleAdNative.this.f34623d != null) {
                        PangleAdNative.this.f34623d.onNativeAdFailed(PangleAdNative.a(i3));
                    }
                }

                @Override // com.bytedance.sdk.openadsdk.TTAdNative.FeedAdListener
                public final void onFeedAdLoad(List<TTFeedAd> list) {
                    if (list == null || list.size() <= 0) {
                        MoPubLog.log(PangleAdNative.this.f34621b, MoPubLog.AdapterLogEvent.LOAD_FAILED, PangleAdNative.f34620a, Integer.valueOf(NativeErrorCode.NETWORK_NO_FILL.getIntCode()), NativeErrorCode.NETWORK_NO_FILL);
                        if (PangleAdNative.this.f34623d != null) {
                            PangleAdNative.this.f34623d.onNativeAdFailed(NativeErrorCode.NETWORK_NO_FILL);
                            return;
                        }
                        return;
                    }
                    MoPubLog.log(PangleAdNative.this.f34621b, MoPubLog.AdapterLogEvent.LOAD_SUCCESS, PangleAdNative.f34620a);
                    if (PangleAdNative.this.f34623d != null) {
                        for (TTFeedAd tTFeedAd : list) {
                            PangleAdNative.this.f34623d.onNativeAdLoaded(new PangleNativeAd(tTFeedAd, str5));
                        }
                    }
                }
            });
            return;
        }
        MoPubLog.log(this.f34621b, MoPubLog.AdapterLogEvent.CUSTOM, str4, "The ad manager cannot be created. Please make sure to pass the correct app id.");
        if (customEventNativeListener != null) {
            customEventNativeListener.onNativeAdFailed(NativeErrorCode.NETWORK_INVALID_REQUEST);
        }
    }
}
