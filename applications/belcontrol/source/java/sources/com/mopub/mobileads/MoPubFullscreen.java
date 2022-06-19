package com.mopub.mobileads;

import android.app.Activity;
import android.content.Context;
import android.os.Handler;
import android.text.TextUtils;
import android.view.View;
import com.mopub.common.AdType;
import com.mopub.common.CacheService;
import com.mopub.common.CreativeOrientation;
import com.mopub.common.DataKeys;
import com.mopub.common.FullAdType;
import com.mopub.common.LifecycleListener;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.AdLifecycleListener;
import com.mopub.mobileads.BaseHtmlWebView;
import com.mopub.mobileads.MoPubFullscreen;
import com.mopub.mobileads.VastManager;
import com.mopub.mobileads.factories.HtmlControllerFactory;
import com.mopub.mobileads.factories.VastManagerFactory;
import com.mopub.mraid.MraidBridge;
import com.mopub.mraid.MraidController;
import com.mopub.mraid.PlacementType;
import java.util.Map;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubFullscreen.class */
public class MoPubFullscreen extends BaseAd implements VastManager.VastManagerListener {
    public static final String ADAPTER_NAME = "MoPubFullscreen";

    /* renamed from: d */
    public EventForwardingBroadcastReceiver f4695d;

    /* renamed from: e */
    public Context f4696e;

    /* renamed from: f */
    public long f4697f;

    /* renamed from: g */
    public AdData f4698g;

    /* renamed from: h */
    public VastManager f4699h;

    /* renamed from: i */
    public JSONObject f4700i;

    /* renamed from: j */
    public Handler f4701j;

    /* renamed from: k */
    public Runnable f4702k;

    /* renamed from: l */
    public boolean f4703l;

    /* renamed from: com.mopub.mobileads.MoPubFullscreen$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/MoPubFullscreen$a.class */
    public class C1082a implements BaseHtmlWebView.BaseWebViewListener {

        /* renamed from: a */
        public final AdLifecycleListener.LoadListener f4704a;

        public C1082a(AdLifecycleListener.LoadListener loadListener) {
            MoPubFullscreen.this = r4;
            this.f4704a = loadListener;
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public void onClicked() {
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public void onClose() {
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public void onExpand() {
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public void onFailed() {
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public void onFailedToLoad(MoPubErrorCode moPubErrorCode) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_FAILED, MoPubFullscreen.ADAPTER_NAME, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
            MoPubFullscreen.this.m3665l();
            this.f4704a.onAdLoadFailed(moPubErrorCode);
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public void onLoaded(View view) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_SUCCESS, MoPubFullscreen.ADAPTER_NAME);
            MoPubFullscreen.this.m3664m();
            this.f4704a.onAdLoaded();
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public void onRenderProcessGone(MoPubErrorCode moPubErrorCode) {
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public void onResize(boolean z) {
        }
    }

    /* renamed from: j */
    public /* synthetic */ void m3666k() {
        MoPubLog.log(MoPubLog.AdapterLogEvent.EXPIRED, ADAPTER_NAME, "time in seconds");
        this.f4635b.onAdLoadFailed(MoPubErrorCode.EXPIRED);
        onInvalidate();
    }

    @Override // com.mopub.mobileads.BaseAd
    /* renamed from: a */
    public boolean mo3660a(Activity activity, AdData adData) {
        return false;
    }

    @Override // com.mopub.mobileads.BaseAd
    /* renamed from: c */
    public LifecycleListener mo3658c() {
        return null;
    }

    @Override // com.mopub.mobileads.BaseAd
    /* renamed from: g */
    public void mo3669g() {
        MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.SHOW_ATTEMPTED;
        String str = ADAPTER_NAME;
        MoPubLog.log(adapterLogEvent, str);
        if (!this.f4703l || this.f4696e == null) {
            MoPubLog.AdapterLogEvent adapterLogEvent2 = MoPubLog.AdapterLogEvent.SHOW_FAILED;
            MoPubErrorCode moPubErrorCode = MoPubErrorCode.ADAPTER_CONFIGURATION_ERROR;
            MoPubLog.log(adapterLogEvent2, str, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
            return;
        }
        EventForwardingBroadcastReceiver eventForwardingBroadcastReceiver = new EventForwardingBroadcastReceiver(this.f4636c, this.f4697f);
        this.f4695d = eventForwardingBroadcastReceiver;
        eventForwardingBroadcastReceiver.register(eventForwardingBroadcastReceiver, this.f4696e);
        MoPubFullscreenActivity.start(this.f4696e, this.f4698g);
    }

    @Override // com.mopub.mobileads.BaseAd
    public String getAdNetworkId() {
        String name = MoPubFullscreen.class.getName();
        AdData adData = this.f4698g;
        String str = name;
        if (adData != null) {
            str = name;
            if (!TextUtils.isEmpty(adData.getAdUnit())) {
                str = this.f4698g.getAdUnit();
            }
        }
        if (MoPubFullscreen.class.getName().equals(str)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Called getAdNetworkId before load() or no ad unit associated. Returning class name.");
        }
        return str;
    }

    /* renamed from: i */
    public void m3668i(Map<String, String> map) {
        AdData adData = this.f4698g;
        if (adData == null) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM, "Error extracting extras due to null ad data.");
            throw new IllegalStateException("Ad Data cannot be null here.");
        }
        adData.setOrientation(CreativeOrientation.fromString(map.get(DataKeys.CREATIVE_ORIENTATION_KEY)));
        String str = map.get(DataKeys.VIDEO_TRACKERS_KEY);
        if (TextUtils.isEmpty(str)) {
            return;
        }
        try {
            this.f4700i = new JSONObject(str);
        } catch (JSONException e) {
            MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.CUSTOM_WITH_THROWABLE;
            MoPubLog.log(adapterLogEvent, "Failed to parse video trackers to JSON: " + str, e);
            this.f4700i = null;
        }
    }

    @VisibleForTesting
    /* renamed from: l */
    public void m3665l() {
        Handler handler;
        Runnable runnable;
        this.f4703l = false;
        if (this.f4698g == null || (handler = this.f4701j) == null || (runnable = this.f4702k) == null) {
            return;
        }
        handler.removeCallbacks(runnable);
    }

    @Override // com.mopub.mobileads.BaseAd
    public void load(Context context, AdData adData) {
        Preconditions.checkNotNull(this.f4635b);
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(adData);
        MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED;
        String str = ADAPTER_NAME;
        MoPubLog.log(adapterLogEvent, str);
        this.f4696e = context;
        this.f4698g = adData;
        m3668i(adData.getExtras());
        try {
            this.f4697f = adData.getBroadcastIdentifier();
            m3663n();
            MoPubLog.log(MoPubLog.AdapterLogEvent.LOAD_SUCCESS, str);
        } catch (ClassCastException e) {
            MoPubLog.log(MoPubLog.AdapterLogEvent.CUSTOM, "LocalExtras contained an incorrect type.");
            MoPubLog.AdapterLogEvent adapterLogEvent2 = MoPubLog.AdapterLogEvent.LOAD_FAILED;
            String str2 = ADAPTER_NAME;
            MoPubErrorCode moPubErrorCode = MoPubErrorCode.INTERNAL_ERROR;
            MoPubLog.log(adapterLogEvent2, str2, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
            this.f4635b.onAdLoadFailed(moPubErrorCode);
        }
    }

    @VisibleForTesting
    /* renamed from: m */
    public void m3664m() {
        Handler handler;
        Runnable runnable;
        this.f4703l = true;
        if (this.f4698g == null || (handler = this.f4701j) == null || (runnable = this.f4702k) == null) {
            return;
        }
        handler.postDelayed(runnable, 14400000L);
    }

    /* renamed from: n */
    public void m3663n() {
        MoPubLog.AdapterLogEvent adapterLogEvent = MoPubLog.AdapterLogEvent.LOAD_ATTEMPTED;
        String str = ADAPTER_NAME;
        MoPubLog.log(adapterLogEvent, str);
        if (!CacheService.initializeDiskCache(this.f4696e)) {
            MoPubLog.AdapterLogEvent adapterLogEvent2 = MoPubLog.AdapterLogEvent.LOAD_FAILED;
            MoPubErrorCode moPubErrorCode = MoPubErrorCode.VIDEO_CACHE_ERROR;
            MoPubLog.log(adapterLogEvent2, str, Integer.valueOf(moPubErrorCode.getIntCode()), moPubErrorCode);
            this.f4635b.onAdLoadFailed(moPubErrorCode);
        } else if (this.f4698g == null) {
            this.f4635b.onAdLoadFailed(MoPubErrorCode.NETWORK_INVALID_STATE);
        } else {
            this.f4701j = new Handler();
            this.f4702k = new Runnable() { // from class: tg1
                @Override // java.lang.Runnable
                public final void run() {
                    MoPubFullscreen.this.m3666k();
                }
            };
            if (!FullAdType.VAST.equals(this.f4698g.getFullAdType())) {
                preRenderWeb(this.f4696e, this.f4698g);
                return;
            }
            VastManager create = VastManagerFactory.create(this.f4696e);
            this.f4699h = create;
            create.prepareVastVideoConfiguration(this.f4698g.getAdPayload(), this, this.f4698g.getDspCreativeId(), this.f4696e);
        }
    }

    @Override // com.mopub.mobileads.BaseAd
    public void onInvalidate() {
        VastManager vastManager = this.f4699h;
        if (vastManager != null) {
            vastManager.cancel();
        }
        m3665l();
        this.f4702k = null;
        this.f4701j = null;
        this.f4635b = null;
        this.f4636c = null;
        EventForwardingBroadcastReceiver eventForwardingBroadcastReceiver = this.f4695d;
        if (eventForwardingBroadcastReceiver != null) {
            eventForwardingBroadcastReceiver.unregister(eventForwardingBroadcastReceiver);
            this.f4695d = null;
        }
    }

    @Override // com.mopub.mobileads.VastManager.VastManagerListener
    public void onVastVideoConfigurationPrepared(VastVideoConfig vastVideoConfig) {
        if (vastVideoConfig == null || this.f4698g == null) {
            AdLifecycleListener.LoadListener loadListener = this.f4635b;
            if (loadListener == null) {
                return;
            }
            loadListener.onAdLoadFailed(MoPubErrorCode.VIDEO_DOWNLOAD_ERROR);
            return;
        }
        vastVideoConfig.addVideoTrackers(this.f4700i);
        vastVideoConfig.addViewabilityVendors(this.f4698g.getViewabilityVendors());
        if (this.f4698g.isRewarded()) {
            vastVideoConfig.setRewarded(true);
        }
        this.f4698g.setVastVideoConfigString(vastVideoConfig.toJsonString());
        AdLifecycleListener.LoadListener loadListener2 = this.f4635b;
        if (loadListener2 != null) {
            loadListener2.onAdLoaded();
        }
        m3664m();
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
            mraidWebView.m3696c();
            mraidController = new MraidController(context, adData.getDspCreativeId(), PlacementType.INTERSTITIAL, adData.getAllowCustomClose());
            mraidWebView.m3696c();
        } else if (!AdType.HTML.equals(adData.getAdType())) {
            this.f4635b.onAdLoadFailed(MoPubErrorCode.FULLSCREEN_LOAD_ERROR);
            return;
        } else {
            mraidWebView = new HtmlWebView(context);
            mraidController = HtmlControllerFactory.create(context, adData.getDspCreativeId());
        }
        mraidController.setMoPubWebViewListener(new C1082a(this.f4635b));
        mraidController.fillContent(adPayload, adData.getViewabilityVendors(), null);
        WebViewCacheService.storeWebViewConfig(valueOf, mraidWebView, this, mraidController);
    }
}
