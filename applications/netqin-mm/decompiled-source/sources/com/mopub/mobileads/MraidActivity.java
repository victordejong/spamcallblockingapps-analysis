package com.mopub.mobileads;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import android.view.View;
import android.webkit.WebView;
import com.android.volley.Request;
import com.mopub.common.AdReport;
import com.mopub.common.Constants;
import com.mopub.common.CreativeOrientation;
import com.mopub.common.DataKeys;
import com.mopub.common.ExternalViewabilitySessionManager;
import com.mopub.common.IntentActions;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.common.util.JavaScriptWebViewCallbacks;
import com.mopub.mobileads.CustomEventInterstitial;
import com.mopub.mobileads.WebViewCacheService;
import com.mopub.mraid.MraidBridge;
import com.mopub.mraid.MraidController;
import com.mopub.mraid.MraidInterstitial;
import com.mopub.mraid.MraidWebViewClient;
import com.mopub.mraid.MraidWebViewDebugListener;
import com.mopub.mraid.PlacementType;
import com.mopub.network.Networking;
import java.io.Serializable;
import p131c.p421j.p424b.AbstractActivityC6649d;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MraidActivity.class */
public class MraidActivity extends AbstractActivityC6649d {

    /* renamed from: d */
    public MraidController f34181d;

    /* renamed from: e */
    public MraidWebViewDebugListener f34182e;

    /* renamed from: f */
    public ExternalViewabilitySessionManager f34183f;

    /* renamed from: com.mopub.mobileads.MraidActivity$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MraidActivity$a.class */
    public static final class C8802a extends MraidWebViewClient {

        /* renamed from: b */
        public final /* synthetic */ CustomEventInterstitial.CustomEventInterstitialListener f34184b;

        /* renamed from: c */
        public final /* synthetic */ MraidController f34185c;

        /* renamed from: d */
        public final /* synthetic */ BaseWebView f34186d;

        public C8802a(CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, MraidController mraidController, BaseWebView baseWebView) {
            this.f34184b = customEventInterstitialListener;
            this.f34185c = mraidController;
            this.f34186d = baseWebView;
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            MoPubLog.log(MoPubLog.AdLogEvent.LOAD_SUCCESS, new Object[0]);
            this.f34184b.onInterstitialLoaded();
            this.f34185c.onPreloadFinished(this.f34186d);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            MoPubLog.log(MoPubLog.AdLogEvent.LOAD_FAILED, Integer.valueOf(MoPubErrorCode.VIDEO_CACHE_ERROR.getIntCode()), MoPubErrorCode.VIDEO_CACHE_ERROR);
            this.f34184b.onInterstitialFailed(MoPubErrorCode.MRAID_LOAD_ERROR);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (!"mopub://failLoad".equals(str)) {
                return true;
            }
            MoPubLog.log(MoPubLog.AdLogEvent.LOAD_FAILED, Integer.valueOf(MoPubErrorCode.VIDEO_CACHE_ERROR.getIntCode()), MoPubErrorCode.VIDEO_CACHE_ERROR);
            this.f34184b.onInterstitialFailed(MoPubErrorCode.MRAID_LOAD_ERROR);
            return true;
        }
    }

    /* renamed from: com.mopub.mobileads.MraidActivity$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MraidActivity$b.class */
    public class C8803b implements MraidController.MraidListener {
        public C8803b() {
        }

        @Override // com.mopub.mraid.MraidController.MraidListener
        public void onClose() {
            MoPubLog.log(MoPubLog.AdLogEvent.WILL_DISAPPEAR, new Object[0]);
            MraidActivity.this.f34181d.loadJavascript(JavaScriptWebViewCallbacks.WEB_VIEW_DID_CLOSE.getJavascript());
            MraidActivity.this.finish();
        }

        @Override // com.mopub.mraid.MraidController.MraidListener
        public void onExpand() {
        }

        @Override // com.mopub.mraid.MraidController.MraidListener
        public void onFailedToLoad() {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "MraidActivity failed to load. Finishing the activity");
            if (MraidActivity.this.m20195a() != null) {
                MraidActivity mraidActivity = MraidActivity.this;
                BaseBroadcastReceiver.broadcastAction(mraidActivity, mraidActivity.m20195a().longValue(), IntentActions.ACTION_INTERSTITIAL_FAIL);
            }
            MraidActivity.this.finish();
        }

        @Override // com.mopub.mraid.MraidController.MraidListener
        public void onLoaded(View view) {
            MraidActivity.this.f34181d.loadJavascript(JavaScriptWebViewCallbacks.WEB_VIEW_DID_APPEAR.getJavascript());
        }

        @Override // com.mopub.mraid.MraidController.MraidListener
        public void onOpen() {
            MoPubLog.log(MoPubLog.AdLogEvent.DID_APPEAR, new Object[0]);
            if (MraidActivity.this.m20195a() != null) {
                MraidActivity mraidActivity = MraidActivity.this;
                BaseBroadcastReceiver.broadcastAction(mraidActivity, mraidActivity.m20195a().longValue(), IntentActions.ACTION_INTERSTITIAL_CLICK);
            }
        }

        @Override // com.mopub.mraid.MraidController.MraidListener
        public void onRenderProcessGone(MoPubErrorCode moPubErrorCode) {
            MoPubLog.AdLogEvent adLogEvent = MoPubLog.AdLogEvent.CUSTOM;
            MoPubLog.log(adLogEvent, "Finishing the activity due to a problem: " + moPubErrorCode);
            MraidActivity.this.finish();
        }

        @Override // com.mopub.mraid.MraidController.MraidListener
        public void onResize(boolean z) {
        }
    }

    /* renamed from: com.mopub.mobileads.MraidActivity$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MraidActivity$c.class */
    public class C8804c implements MraidController.UseCustomCloseListener {
        public C8804c() {
        }

        @Override // com.mopub.mraid.MraidController.UseCustomCloseListener
        public void useCustomCloseChanged(boolean z) {
            if (z) {
                MraidActivity.this.m20189d();
            } else {
                MraidActivity.this.m20188e();
            }
        }
    }

    /* renamed from: com.mopub.mobileads.MraidActivity$d */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MraidActivity$d.class */
    public class C8805d implements MraidController.MraidWebViewCacheListener {
        public C8805d() {
        }

        @Override // com.mopub.mraid.MraidController.MraidWebViewCacheListener
        public void onReady(MraidBridge.MraidWebView mraidWebView, ExternalViewabilitySessionManager externalViewabilitySessionManager) {
            if (externalViewabilitySessionManager != null) {
                MraidActivity.this.f34183f = externalViewabilitySessionManager;
                return;
            }
            MraidActivity mraidActivity = MraidActivity.this;
            mraidActivity.f34183f = new ExternalViewabilitySessionManager(mraidActivity);
            MraidActivity mraidActivity2 = MraidActivity.this;
            mraidActivity2.f34183f.createDisplaySession(mraidActivity2, mraidWebView, true);
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public static Intent m4304a(Context context, AdReport adReport, long j, CreativeOrientation creativeOrientation) {
        Intent intent = new Intent(context, MraidActivity.class);
        intent.putExtra(DataKeys.BROADCAST_IDENTIFIER_KEY, j);
        intent.putExtra(DataKeys.AD_REPORT_KEY, adReport);
        intent.putExtra(DataKeys.CREATIVE_ORIENTATION_KEY, creativeOrientation);
        intent.addFlags(268435456);
        return intent;
    }

    @VisibleForTesting
    /* renamed from: a */
    public static void m4303a(Interstitial interstitial, CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, String str, BaseWebView baseWebView, Long l, MraidController mraidController) {
        MoPubLog.log(MoPubLog.AdLogEvent.LOAD_ATTEMPTED, new Object[0]);
        Preconditions.checkNotNull(interstitial);
        Preconditions.checkNotNull(customEventInterstitialListener);
        Preconditions.checkNotNull(baseWebView);
        Preconditions.checkNotNull(l);
        Preconditions.checkNotNull(mraidController);
        baseWebView.m4412a();
        Context context = baseWebView.getContext();
        baseWebView.setWebViewClient(new C8802a(customEventInterstitialListener, mraidController, baseWebView));
        ExternalViewabilitySessionManager externalViewabilitySessionManager = new ExternalViewabilitySessionManager(context);
        externalViewabilitySessionManager.createDisplaySession(context, baseWebView, true);
        baseWebView.loadDataWithBaseURL(Networking.getBaseUrlScheme() + "://" + Constants.HOST + "/", str, "text/html", Request.DEFAULT_PARAMS_ENCODING, null);
        WebViewCacheService.storeWebViewConfig(l, interstitial, baseWebView, externalViewabilitySessionManager, mraidController);
    }

    public static void preRenderHtml(Interstitial interstitial, Context context, CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, Long l, AdReport adReport) {
        Preconditions.checkNotNull(interstitial);
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(customEventInterstitialListener);
        Preconditions.checkNotNull(l);
        m4303a(interstitial, customEventInterstitialListener, AbstractActivityC6649d.m20193a(adReport), new MraidBridge.MraidWebView(context), l, new MraidController(context, adReport, PlacementType.INTERSTITIAL));
    }

    public static void start(Context context, AdReport adReport, long j, CreativeOrientation creativeOrientation) {
        MoPubLog.log(MoPubLog.AdLogEvent.SHOW_ATTEMPTED, new Object[0]);
        try {
            context.startActivity(m4304a(context, adReport, j, creativeOrientation));
        } catch (ActivityNotFoundException e) {
            MoPubLog.log(MoPubLog.AdLogEvent.SHOW_FAILED, Integer.valueOf(MoPubErrorCode.INTERNAL_ERROR.getIntCode()), MoPubErrorCode.INTERNAL_ERROR);
            Log.d(MraidInterstitial.ADAPTER_NAME, "MraidActivity.class not found. Did you declare MraidActivity in your manifest?");
        }
    }

    @Override // p131c.p421j.p424b.AbstractActivityC6649d
    public View getAdView() {
        String c = m20190c();
        if (TextUtils.isEmpty(c)) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "MraidActivity received a null HTML body. Finishing the activity.");
            finish();
            return new View(this);
        }
        Long a = m20195a();
        WebViewCacheService.Config config = null;
        if (a != null) {
            config = WebViewCacheService.popWebViewConfig(a);
        }
        if (config == null || config.getController() == null) {
            this.f34181d = new MraidController(this, this.f20532a, PlacementType.INTERSTITIAL);
        } else {
            this.f34181d = config.getController();
        }
        this.f34181d.setDebugListener(this.f34182e);
        this.f34181d.setMraidListener(new C8803b());
        this.f34181d.setUseCustomCloseListener(new C8804c());
        if (config != null) {
            this.f34183f = config.getViewabilityManager();
        } else {
            this.f34181d.fillContent(c, new C8805d());
        }
        return this.f34181d.getAdContainer();
    }

    @Override // p131c.p421j.p424b.AbstractActivityC6649d, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        MoPubLog.log(MoPubLog.AdLogEvent.SHOW_SUCCESS, new Object[0]);
        Serializable serializableExtra = getIntent().getSerializableExtra(DataKeys.CREATIVE_ORIENTATION_KEY);
        CreativeOrientation creativeOrientation = CreativeOrientation.DEVICE;
        if (serializableExtra instanceof CreativeOrientation) {
            creativeOrientation = (CreativeOrientation) serializableExtra;
        }
        DeviceUtils.lockOrientation(this, creativeOrientation);
        ExternalViewabilitySessionManager externalViewabilitySessionManager = this.f34183f;
        if (externalViewabilitySessionManager != null) {
            externalViewabilitySessionManager.startDeferredDisplaySession(this);
        }
        if (m20195a() != null) {
            BaseBroadcastReceiver.broadcastAction(this, m20195a().longValue(), IntentActions.ACTION_INTERSTITIAL_SHOW);
        }
        getWindow().setFlags(16777216, 16777216);
        MraidController mraidController = this.f34181d;
        if (mraidController != null) {
            mraidController.onShow(this);
        }
    }

    @Override // p131c.p421j.p424b.AbstractActivityC6649d, android.app.Activity
    public void onDestroy() {
        ExternalViewabilitySessionManager externalViewabilitySessionManager = this.f34183f;
        if (externalViewabilitySessionManager != null) {
            externalViewabilitySessionManager.endDisplaySession();
            this.f34183f = null;
        }
        MraidController mraidController = this.f34181d;
        if (mraidController != null) {
            mraidController.destroy();
        }
        if (m20195a() != null) {
            BaseBroadcastReceiver.broadcastAction(this, m20195a().longValue(), IntentActions.ACTION_INTERSTITIAL_DISMISS);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onPause() {
        MraidController mraidController = this.f34181d;
        if (mraidController != null) {
            mraidController.pause(isFinishing());
        }
        super.onPause();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        MraidController mraidController = this.f34181d;
        if (mraidController != null) {
            mraidController.resume();
        }
    }

    @VisibleForTesting
    public void setDebugListener(MraidWebViewDebugListener mraidWebViewDebugListener) {
        this.f34182e = mraidWebViewDebugListener;
        MraidController mraidController = this.f34181d;
        if (mraidController != null) {
            mraidController.setDebugListener(mraidWebViewDebugListener);
        }
    }
}
