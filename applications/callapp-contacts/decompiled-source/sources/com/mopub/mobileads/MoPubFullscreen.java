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

    /* renamed from: d  reason: collision with root package name */
    AdData f34104d;
    private EventForwardingBroadcastReceiver e;
    private Context f;
    private long g;
    private VastManager h;
    private JSONObject i;
    private Handler j;
    private Runnable k;
    private boolean l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/MoPubFullscreen$a.class */
    public final class a implements BaseHtmlWebView.BaseWebViewListener {

        /* renamed from: a  reason: collision with root package name */
        final AdLifecycleListener.LoadListener f34106a;

        a(AdLifecycleListener.LoadListener loadListener) {
            this.f34106a = loadListener;
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
            MoPubFullscreen.this.d();
            this.f34106a.onAdLoadFailed(moPubErrorCode);
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public final void onLoaded(View view) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_SUCCESS, MoPubFullscreen.ADAPTER_NAME);
            MoPubFullscreen.this.c();
            this.f34106a.onAdLoaded();
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public final void onRenderProcessGone(MoPubErrorCode moPubErrorCode) {
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public final void onResize(boolean z) {
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        MoPubLog.log(MoPubLog.AdapterLogEvent.EXPIRED, ADAPTER_NAME, "time in seconds");
        this.f34041b.onAdLoadFailed(MoPubErrorCode.EXPIRED);
        onInvalidate();
    }

    @Override // com.mopub.mobileads.BaseAd
    protected final void a() {
        MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.SHOW_ATTEMPTED;
        String str = ADAPTER_NAME;
        MoPubLog.log(adapterLogEvent, str);
        if (!this.l || this.f == null) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.SHOW_FAILED, str, Integer.valueOf(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR.getIntCode()), MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
            if (this.f34042c != null) {
                this.f34042c.onAdFailed(MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR);
                return;
            }
            return;
        }
        EventForwardingBroadcastReceiver eventForwardingBroadcastReceiver = new EventForwardingBroadcastReceiver(this.f34042c, this.g);
        this.e = eventForwardingBroadcastReceiver;
        eventForwardingBroadcastReceiver.register(eventForwardingBroadcastReceiver, this.f);
        MoPubFullscreenActivity.start(this.f, this.f34104d);
    }

    final void c() {
        Handler handler;
        Runnable runnable;
        this.l = true;
        if (this.f34104d != null && (handler = this.j) != null && (runnable = this.k) != null) {
            handler.postDelayed(runnable, 14400000L);
        }
    }

    final void d() {
        Handler handler;
        Runnable runnable;
        this.l = false;
        if (this.f34104d != null && (handler = this.j) != null && (runnable = this.k) != null) {
            handler.removeCallbacks(runnable);
        }
    }

    @Override // com.mopub.mobileads.BaseAd
    public String getAdNetworkId() {
        String name = MoPubFullscreen.class.getName();
        AdData adData = this.f34104d;
        String str = name;
        if (adData != null) {
            str = name;
            if (!TextUtils.isEmpty(adData.getAdUnit())) {
                str = this.f34104d.getAdUnit();
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
        Preconditions.checkNotNull(this.f34041b);
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(adData);
        MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, ADAPTER_NAME);
        this.f = context;
        this.f34104d = adData;
        Map<String, String> extras = adData.getExtras();
        AdData adData2 = this.f34104d;
        if (adData2 != null) {
            adData2.setOrientation(CreativeOrientation.fromString(extras.get(DataKeys.CREATIVE_ORIENTATION_KEY)));
            String str = extras.get(DataKeys.VIDEO_TRACKERS_KEY);
            if (!TextUtils.isEmpty(str)) {
                try {
                    this.i = new JSONObject(str);
                } catch (JSONException e) {
                    MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM_WITH_THROWABLE, "Failed to parse video trackers to JSON: ".concat(String.valueOf(str)), e);
                    this.i = null;
                }
            }
            try {
                this.g = adData.getBroadcastIdentifier();
                MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED;
                String str2 = ADAPTER_NAME;
                MoPubLog.log(adapterLogEvent, str2);
                if (!CacheService.initializeDiskCache(this.f)) {
                    MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, str2, Integer.valueOf(MoPubErrorCode.VIDEO_CACHE_ERROR.getIntCode()), MoPubErrorCode.VIDEO_CACHE_ERROR);
                    this.f34041b.onAdLoadFailed(MoPubErrorCode.VIDEO_CACHE_ERROR);
                } else if (this.f34104d == null) {
                    this.f34041b.onAdLoadFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
                } else {
                    this.j = new Handler();
                    this.k = new Runnable() { // from class: com.mopub.mobileads._$$Lambda$MoPubFullscreen$VIHGyidB1od75orQlpPZ7z2jRo8
                        @Override // java.lang.Runnable
                        public final void run() {
                            MoPubFullscreen.this.e();
                        }
                    };
                    if (FullAdType.VAST.equals(this.f34104d.getFullAdType())) {
                        VastManager create = VastManagerFactory.create(this.f);
                        this.h = create;
                        create.prepareVastVideoConfiguration(this.f34104d.getAdPayload(), this, this.f34104d.getDspCreativeId(), this.f);
                    } else if ("json".equals(this.f34104d.getFullAdType())) {
                        Context context2 = this.f;
                        AdData adData3 = this.f34104d;
                        Preconditions.checkNotNull(context2);
                        Preconditions.checkNotNull(adData3);
                        try {
                            String string = new JSONObject(adData3.getAdPayload()).getString("image");
                            if (TextUtils.isEmpty(string)) {
                                MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM, "Image url is empty.");
                                this.f34041b.onAdLoadFailed(MoPubErrorCode.FULLSCREEN_LOAD_ERROR);
                            } else {
                                Networking.getImageLoader(context2).get(string, new ImageLoader.ImageListener() { // from class: com.mopub.mobileads.MoPubFullscreen.1
                                    @Override // com.mopub.volley.Response.ErrorListener
                                    public final void onErrorResponse(VolleyError volleyError) {
                                        MoPubFullscreen.this.f34041b.onAdLoadFailed(MoPubErrorCode.FULLSCREEN_LOAD_ERROR);
                                    }

                                    @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener
                                    public final void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
                                        if (imageContainer.getBitmap() != null) {
                                            MoPubFullscreen.this.f34041b.onAdLoaded();
                                            MoPubFullscreen.this.c();
                                        }
                                    }
                                });
                            }
                        } catch (JSONException e2) {
                            MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM, "Unable to get image url.");
                            this.f34041b.onAdLoadFailed(MoPubErrorCode.FULLSCREEN_LOAD_ERROR);
                        }
                    } else {
                        preRenderWeb(this.f, this.f34104d);
                    }
                }
                MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_SUCCESS, ADAPTER_NAME);
            } catch (ClassCastException e3) {
                MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM, "LocalExtras contained an incorrect type.");
                MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, ADAPTER_NAME, Integer.valueOf(MoPubErrorCode.INTERNAL_ERROR.getIntCode()), MoPubErrorCode.INTERNAL_ERROR);
                this.f34041b.onAdLoadFailed(MoPubErrorCode.INTERNAL_ERROR);
            }
        } else {
            MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM, "Error extracting extras due to null ad data.");
            throw new IllegalStateException("Ad Data cannot be null here.");
        }
    }

    @Override // com.mopub.mobileads.BaseAd
    public void onInvalidate() {
        VastManager vastManager = this.h;
        if (vastManager != null) {
            vastManager.cancel();
        }
        d();
        this.k = null;
        this.j = null;
        this.f34041b = null;
        this.f34042c = null;
        this.f = null;
        EventForwardingBroadcastReceiver eventForwardingBroadcastReceiver = this.e;
        if (eventForwardingBroadcastReceiver != null) {
            eventForwardingBroadcastReceiver.unregister(eventForwardingBroadcastReceiver);
            this.e = null;
        }
    }

    @Override // com.mopub.mobileads.VastManager.VastManagerListener
    public void onVastVideoConfigurationPrepared(VastVideoConfig vastVideoConfig) {
        if (vastVideoConfig != null && this.f34104d != null) {
            vastVideoConfig.addVideoTrackers(this.i);
            vastVideoConfig.addViewabilityVendors(this.f34104d.getViewabilityVendors());
            if (this.f34104d.isRewarded()) {
                vastVideoConfig.setRewarded(true);
            }
            this.f34104d.setVastVideoConfigString(vastVideoConfig.toJsonString());
            if (this.f34041b != null) {
                this.f34041b.onAdLoaded();
            }
            c();
        } else if (this.f34041b != null) {
            this.f34041b.onAdLoadFailed(MoPubErrorCode.VIDEO_DOWNLOAD_ERROR);
        }
    }

    public void preRenderWeb(Context context, AdData adData) {
        BaseWebView baseWebView;
        MoPubWebViewController moPubWebViewController;
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(adData);
        MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED, ADAPTER_NAME);
        Long valueOf = Long.valueOf(adData.getBroadcastIdentifier());
        Preconditions.checkNotNull(valueOf);
        String adPayload = adData.getAdPayload();
        Preconditions.checkNotNull(adPayload);
        if ("mraid".equals(adData.getAdType())) {
            baseWebView = new MraidBridge.MraidWebView(context);
            baseWebView.a();
            moPubWebViewController = new MraidController(context, adData.getDspCreativeId(), PlacementType.INTERSTITIAL, adData.getAllowCustomClose());
            baseWebView.a();
        } else if (AdType.HTML.equals(adData.getAdType())) {
            baseWebView = new HtmlWebView(context);
            moPubWebViewController = HtmlControllerFactory.create(context, adData.getDspCreativeId());
        } else {
            this.f34041b.onAdLoadFailed(MoPubErrorCode.FULLSCREEN_LOAD_ERROR);
            return;
        }
        moPubWebViewController.setMoPubWebViewListener(new a(this.f34041b));
        moPubWebViewController.fillContent(adPayload, adData.getViewabilityVendors(), null);
        WebViewCacheService.storeWebViewConfig(valueOf, baseWebView, this, moPubWebViewController);
    }

    @Override // com.mopub.mobileads.BaseAd
    public boolean shouldReportImpressionAndClick() {
        return true;
    }
}
