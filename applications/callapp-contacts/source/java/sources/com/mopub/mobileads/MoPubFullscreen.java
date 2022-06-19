package com.mopub.mobileads;

import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import com.mopub.common.AdType;
import com.mopub.common.CacheService;
import com.mopub.common.CreativeOrientation;
import com.mopub.common.DataKeys;
import com.mopub.common.FullAdType;
import com.mopub.common.MoPub;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.AdLifecycleListener;
import com.mopub.mobileads.BaseHtmlWebView;
import com.mopub.mobileads.VastManager;
import com.mopub.mobileads.factories.HtmlControllerFactory;
import com.mopub.mobileads.factories.VastManagerFactory;
import com.mopub.mraid.MraidBridge;
import com.mopub.mraid.MraidController;
import com.mopub.mraid.PlacementType;
import com.mopub.network.Networking;
import com.mopub.volley.VolleyError;
import com.mopub.volley.toolbox.ImageLoader;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/MoPubFullscreen.class */
public class MoPubFullscreen extends BaseAd implements VastManager.VastManagerListener {
    public static final String ADAPTER_NAME = "MoPubFullscreen";

    /* renamed from: d */
    AdData f59264d;

    /* renamed from: e */
    private EventForwardingBroadcastReceiver f59265e;

    /* renamed from: f */
    private Context f59266f;

    /* renamed from: g */
    private long f59267g;

    /* renamed from: h */
    private VastManager f59268h;

    /* renamed from: i */
    private JSONObject f59269i;

    /* renamed from: j */
    private Handler f59270j;

    /* renamed from: k */
    private Runnable f59271k;

    /* renamed from: l */
    private boolean f59272l;

    /* renamed from: com.mopub.mobileads.MoPubFullscreen$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/MoPubFullscreen$a.class */
    public final class C16788a implements BaseHtmlWebView.BaseWebViewListener {

        /* renamed from: a */
        final AdLifecycleListener.LoadListener f59274a;

        C16788a(AdLifecycleListener.LoadListener loadListener) {
            MoPubFullscreen.this = r4;
            this.f59274a = loadListener;
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public final void onClicked() {
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public final void onClose() {
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public final void onExpand() {
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public final void onFailed() {
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public final void onFailedToLoad(MoPubErrorCode moPubErrorCode) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, MoPubFullscreen.ADAPTER_NAME, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
            MoPubFullscreen.this.m6480d();
            this.f59274a.onAdLoadFailed(moPubErrorCode);
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public final void onLoaded(View view) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_SUCCESS, MoPubFullscreen.ADAPTER_NAME);
            MoPubFullscreen.this.m6481c();
            this.f59274a.onAdLoaded();
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public final void onRenderProcessGone(MoPubErrorCode moPubErrorCode) {
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public final void onResize(boolean z) {
        }
    }

    /* renamed from: e */
    public /* synthetic */ void m6479e() {
        MoPubLog.log(MoPubLog.AdapterLogEvent.EXPIRED, ADAPTER_NAME, "time in seconds");
        this.f59119b.onAdLoadFailed(MoPubErrorCode.EXPIRED);
        onInvalidate();
    }

    @Override // com.mopub.mobileads.BaseAd
    /* renamed from: a */
    protected final void mo6371a() {
        MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.SHOW_ATTEMPTED;
        String str = ADAPTER_NAME;
        MoPubLog.log(adapterLogEvent, str);
        if (!this.f59272l || this.f59266f == null) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.SHOW_FAILED, str, Integer.valueOf(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR.getIntCode()), MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            if (this.f59120c == null) {
                return;
            }
            this.f59120c.onAdFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            return;
        }
        EventForwardingBroadcastReceiver eventForwardingBroadcastReceiver = new EventForwardingBroadcastReceiver(this.f59120c, this.f59267g);
        this.f59265e = eventForwardingBroadcastReceiver;
        eventForwardingBroadcastReceiver.register(eventForwardingBroadcastReceiver, this.f59266f);
        MoPubFullscreenActivity.start(this.f59266f, this.f59264d);
    }

    /* renamed from: c */
    final void m6481c() {
        Handler handler;
        Runnable runnable;
        this.f59272l = true;
        if (this.f59264d == null || (handler = this.f59270j) == null || (runnable = this.f59271k) == null) {
            return;
        }
        handler.postDelayed(runnable, 14400000L);
    }

    /* renamed from: d */
    final void m6480d() {
        Handler handler;
        Runnable runnable;
        this.f59272l = false;
        if (this.f59264d == null || (handler = this.f59270j) == null || (runnable = this.f59271k) == null) {
            return;
        }
        handler.removeCallbacks(runnable);
    }

    @Override // com.mopub.mobileads.BaseAd
    public String getAdNetworkId() {
        String name = MoPubFullscreen.class.getName();
        AdData adData = this.f59264d;
        String str = name;
        if (adData != null) {
            str = name;
            if (!TextUtils.isEmpty(adData.getAdUnit())) {
                str = this.f59264d.getAdUnit();
            }
        }
        if (MoPubFullscreen.class.getName().equals(str)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Called getAdNetworkId before load() or no ad unit associated. Returning class name.");
        }
        return str;
    }

    @Override // com.mopub.mobileads.BaseAd
    public String getProviderTag() {
        return MoPub.ANALYTICS_MOPUB_TAG;
    }

    @Override // com.mopub.mobileads.BaseAd
    public void load(Context context, AdData adData) {
        Preconditions.checkNotNull(this.f59119b);
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(adData);
        MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, ADAPTER_NAME);
        this.f59266f = context;
        this.f59264d = adData;
        Map<String, String> extras = adData.getExtras();
        AdData adData2 = this.f59264d;
        if (adData2 == null) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM, "Error extracting extras due to null ad data.");
            throw new IllegalStateException("Ad Data cannot be null here.");
        }
        adData2.setOrientation(CreativeOrientation.fromString(extras.get(DataKeys.CREATIVE_ORIENTATION_KEY)));
        String str = extras.get(DataKeys.VIDEO_TRACKERS_KEY);
        if (!TextUtils.isEmpty(str)) {
            try {
                this.f59269i = new JSONObject(str);
            } catch (JSONException e) {
                MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM_WITH_THROWABLE, "Failed to parse video trackers to JSON: ".concat(String.valueOf(str)), e);
                this.f59269i = null;
            }
        }
        try {
            this.f59267g = adData.getBroadcastIdentifier();
            MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED;
            String str2 = ADAPTER_NAME;
            MoPubLog.log(adapterLogEvent, str2);
            if (!CacheService.initializeDiskCache(this.f59266f)) {
                MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, str2, Integer.valueOf(MoPubErrorCode.VIDEO_CACHE_ERROR.getIntCode()), MoPubErrorCode.VIDEO_CACHE_ERROR);
                this.f59119b.onAdLoadFailed(MoPubErrorCode.VIDEO_CACHE_ERROR);
            } else if (this.f59264d == null) {
                this.f59119b.onAdLoadFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
            } else {
                this.f59270j = new Handler();
                this.f59271k = new Runnable() { // from class: com.mopub.mobileads._$$Lambda$MoPubFullscreen$VIHGyidB1od75orQlpPZ7z2jRo8
                    @Override // java.lang.Runnable
                    public final void run() {
                        MoPubFullscreen.this.m6479e();
                    }
                };
                if (FullAdType.VAST.equals(this.f59264d.getFullAdType())) {
                    VastManager create = VastManagerFactory.create(this.f59266f);
                    this.f59268h = create;
                    create.prepareVastVideoConfiguration(this.f59264d.getAdPayload(), this, this.f59264d.getDspCreativeId(), this.f59266f);
                } else if ("json".equals(this.f59264d.getFullAdType())) {
                    Context context2 = this.f59266f;
                    AdData adData3 = this.f59264d;
                    Preconditions.checkNotNull(context2);
                    Preconditions.checkNotNull(adData3);
                    try {
                        String string = new JSONObject(adData3.getAdPayload()).getString("image");
                        if (TextUtils.isEmpty(string)) {
                            MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM, "Image url is empty.");
                            this.f59119b.onAdLoadFailed(MoPubErrorCode.FULLSCREEN_LOAD_ERROR);
                        } else {
                            Networking.getImageLoader(context2).get(string, new ImageLoader.ImageListener() { // from class: com.mopub.mobileads.MoPubFullscreen.1
                                @Override // com.mopub.volley.Response.ErrorListener
                                public final void onErrorResponse(VolleyError volleyError) {
                                    MoPubFullscreen.this.f59119b.onAdLoadFailed(MoPubErrorCode.FULLSCREEN_LOAD_ERROR);
                                }

                                @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener
                                public final void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
                                    if (imageContainer.getBitmap() == null) {
                                        return;
                                    }
                                    MoPubFullscreen.this.f59119b.onAdLoaded();
                                    MoPubFullscreen.this.m6481c();
                                }
                            });
                        }
                    } catch (JSONException e2) {
                        MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM, "Unable to get image url.");
                        this.f59119b.onAdLoadFailed(MoPubErrorCode.FULLSCREEN_LOAD_ERROR);
                    }
                } else {
                    preRenderWeb(this.f59266f, this.f59264d);
                }
            }
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_SUCCESS, ADAPTER_NAME);
        } catch (ClassCastException e3) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM, "LocalExtras contained an incorrect type.");
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, ADAPTER_NAME, Integer.valueOf(MoPubErrorCode.INTERNAL_ERROR.getIntCode()), MoPubErrorCode.INTERNAL_ERROR);
            this.f59119b.onAdLoadFailed(MoPubErrorCode.INTERNAL_ERROR);
        }
    }

    @Override // com.mopub.mobileads.BaseAd
    public void onInvalidate() {
        VastManager vastManager = this.f59268h;
        if (vastManager != null) {
            vastManager.cancel();
        }
        m6480d();
        this.f59271k = null;
        this.f59270j = null;
        this.f59119b = null;
        this.f59120c = null;
        this.f59266f = null;
        EventForwardingBroadcastReceiver eventForwardingBroadcastReceiver = this.f59265e;
        if (eventForwardingBroadcastReceiver != null) {
            eventForwardingBroadcastReceiver.unregister(eventForwardingBroadcastReceiver);
            this.f59265e = null;
        }
    }

    @Override // com.mopub.mobileads.VastManager.VastManagerListener
    public void onVastVideoConfigurationPrepared(VastVideoConfig vastVideoConfig) {
        if (vastVideoConfig == null || this.f59264d == null) {
            if (this.f59119b == null) {
                return;
            }
            this.f59119b.onAdLoadFailed(MoPubErrorCode.VIDEO_DOWNLOAD_ERROR);
            return;
        }
        vastVideoConfig.addVideoTrackers(this.f59269i);
        vastVideoConfig.addViewabilityVendors(this.f59264d.getViewabilityVendors());
        if (this.f59264d.isRewarded()) {
            vastVideoConfig.setRewarded(true);
        }
        this.f59264d.setVastVideoConfigString(vastVideoConfig.toJsonString());
        if (this.f59119b != null) {
            this.f59119b.onAdLoaded();
        }
        m6481c();
    }

    public void preRenderWeb(Context context, AdData adData) {
        MraidBridge.MraidWebView mraidWebView;
        MraidController mraidController;
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(adData);
        MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, ADAPTER_NAME);
        Long valueOf = Long.valueOf(adData.getBroadcastIdentifier());
        Preconditions.checkNotNull(valueOf);
        String adPayload = adData.getAdPayload();
        Preconditions.checkNotNull(adPayload);
        if ("mraid".equals(adData.getAdType())) {
            mraidWebView = new MraidBridge.MraidWebView(context);
            mraidWebView.m6551a();
            mraidController = new MraidController(context, adData.getDspCreativeId(), PlacementType.INTERSTITIAL, adData.getAllowCustomClose());
            mraidWebView.m6551a();
        } else if (!AdType.HTML.equals(adData.getAdType())) {
            this.f59119b.onAdLoadFailed(MoPubErrorCode.FULLSCREEN_LOAD_ERROR);
            return;
        } else {
            mraidWebView = new HtmlWebView(context);
            mraidController = HtmlControllerFactory.create(context, adData.getDspCreativeId());
        }
        mraidController.setMoPubWebViewListener(new C16788a(this.f59119b));
        mraidController.fillContent(adPayload, adData.getViewabilityVendors(), null);
        WebViewCacheService.storeWebViewConfig(valueOf, mraidWebView, this, mraidController);
    }

    @Override // com.mopub.mobileads.BaseAd
    public boolean shouldReportImpressionAndClick() {
        return true;
    }
}
