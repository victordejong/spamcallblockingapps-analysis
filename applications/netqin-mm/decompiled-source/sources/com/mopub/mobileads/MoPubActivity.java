package com.mopub.mobileads;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.mopub.common.AdReport;
import com.mopub.common.CreativeOrientation;
import com.mopub.common.DataKeys;
import com.mopub.common.ExternalViewabilitySessionManager;
import com.mopub.common.IntentActions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.common.util.JavaScriptWebViewCallbacks;
import com.mopub.mobileads.CustomEventInterstitial;
import com.mopub.mobileads.WebViewCacheService;
import com.mopub.mobileads.factories.HtmlInterstitialWebViewFactory;
import java.io.Serializable;
import p131c.p421j.p424b.AbstractActivityC6649d;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubActivity.class */
public class MoPubActivity extends AbstractActivityC6649d {

    /* renamed from: d */
    public HtmlInterstitialWebView f34106d;

    /* renamed from: e */
    public ExternalViewabilitySessionManager f34107e;

    /* renamed from: com.mopub.mobileads.MoPubActivity$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubActivity$a.class */
    public static final class C8774a extends WebViewClient {

        /* renamed from: a */
        public final /* synthetic */ CustomEventInterstitial.CustomEventInterstitialListener f34108a;

        public C8774a(CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener) {
            this.f34108a = customEventInterstitialListener;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if ("mopub://finishLoad".equals(str)) {
                this.f34108a.onInterstitialLoaded();
                return true;
            } else if (!"mopub://failLoad".equals(str)) {
                return true;
            } else {
                this.f34108a.onInterstitialFailed(null);
                return true;
            }
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubActivity$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubActivity$b.class */
    public class C8775b implements CustomEventInterstitial.CustomEventInterstitialListener {
        public C8775b() {
        }

        @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
        public void onInterstitialClicked() {
            MoPubLog.log(MoPubLog.AdLogEvent.CLICKED, new Object[0]);
            MoPubActivity moPubActivity = MoPubActivity.this;
            BaseBroadcastReceiver.broadcastAction(moPubActivity, moPubActivity.m20195a().longValue(), IntentActions.ACTION_INTERSTITIAL_CLICK);
        }

        @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
        public void onInterstitialDismissed() {
            MoPubLog.log(MoPubLog.AdLogEvent.DID_DISAPPEAR, new Object[0]);
        }

        @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
        public void onInterstitialFailed(MoPubErrorCode moPubErrorCode) {
            MoPubLog.log(MoPubLog.AdLogEvent.LOAD_FAILED, Integer.valueOf(MoPubErrorCode.VIDEO_CACHE_ERROR.getIntCode()), MoPubErrorCode.VIDEO_CACHE_ERROR);
            MoPubActivity moPubActivity = MoPubActivity.this;
            BaseBroadcastReceiver.broadcastAction(moPubActivity, moPubActivity.m20195a().longValue(), IntentActions.ACTION_INTERSTITIAL_FAIL);
            MoPubActivity.this.finish();
        }

        public void onInterstitialImpression() {
        }

        @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
        public void onInterstitialLoaded() {
            MoPubLog.log(MoPubLog.AdLogEvent.LOAD_SUCCESS, new Object[0]);
            if (MoPubActivity.this.f34106d != null) {
                MoPubActivity.this.f34106d.loadUrl(JavaScriptWebViewCallbacks.WEB_VIEW_DID_APPEAR.getUrl());
            }
        }

        @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
        public void onInterstitialShown() {
            MoPubLog.log(MoPubLog.AdLogEvent.SHOW_SUCCESS, new Object[0]);
        }

        public void onLeaveApplication() {
            MoPubLog.log(MoPubLog.AdLogEvent.WILL_LEAVE_APPLICATION, new Object[0]);
        }
    }

    /* renamed from: a */
    public static Intent m4389a(Context context, AdReport adReport, String str, CreativeOrientation creativeOrientation, long j) {
        Intent intent = new Intent(context, MoPubActivity.class);
        intent.putExtra(DataKeys.CLICKTHROUGH_URL_KEY, str);
        intent.putExtra(DataKeys.BROADCAST_IDENTIFIER_KEY, j);
        intent.putExtra(DataKeys.AD_REPORT_KEY, adReport);
        intent.putExtra(DataKeys.CREATIVE_ORIENTATION_KEY, creativeOrientation);
        intent.addFlags(268435456);
        return intent;
    }

    /* renamed from: a */
    public static void m4388a(Interstitial interstitial, Context context, AdReport adReport, CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, String str, long j) {
        MoPubLog.log(MoPubLog.AdLogEvent.LOAD_ATTEMPTED, new Object[0]);
        HtmlInterstitialWebView create = HtmlInterstitialWebViewFactory.create(context.getApplicationContext(), adReport, customEventInterstitialListener, str);
        create.m4412a();
        create.setWebViewClient(new C8774a(customEventInterstitialListener));
        ExternalViewabilitySessionManager externalViewabilitySessionManager = new ExternalViewabilitySessionManager(context);
        externalViewabilitySessionManager.createDisplaySession(context, create, true);
        create.m4425a(AbstractActivityC6649d.m20193a(adReport));
        WebViewCacheService.storeWebViewConfig(Long.valueOf(j), interstitial, create, externalViewabilitySessionManager, null);
    }

    public static void start(Context context, AdReport adReport, String str, CreativeOrientation creativeOrientation, long j) {
        MoPubLog.log(MoPubLog.AdLogEvent.SHOW_ATTEMPTED, new Object[0]);
        try {
            context.startActivity(m4389a(context, adReport, str, creativeOrientation, j));
        } catch (ActivityNotFoundException e) {
            Log.d("MoPubActivity", "MoPubActivity not found - did you declare it in AndroidManifest.xml?");
        }
    }

    @Override // p131c.p421j.p424b.AbstractActivityC6649d
    public View getAdView() {
        WebViewCacheService.Config popWebViewConfig;
        String stringExtra = getIntent().getStringExtra(DataKeys.CLICKTHROUGH_URL_KEY);
        String c = m20190c();
        Long a = m20195a();
        if (a == null || (popWebViewConfig = WebViewCacheService.popWebViewConfig(a)) == null || !(popWebViewConfig.getWebView() instanceof HtmlInterstitialWebView)) {
            MoPubLog.log(MoPubLog.AdLogEvent.CUSTOM, "WebView cache miss. Recreating the WebView.");
            this.f34106d = HtmlInterstitialWebViewFactory.create(getApplicationContext(), this.f20532a, new C8775b(), stringExtra);
            ExternalViewabilitySessionManager externalViewabilitySessionManager = new ExternalViewabilitySessionManager(this);
            this.f34107e = externalViewabilitySessionManager;
            externalViewabilitySessionManager.createDisplaySession(this, this.f34106d, true);
            this.f34106d.m4425a(c);
            return this.f34106d;
        }
        HtmlInterstitialWebView htmlInterstitialWebView = (HtmlInterstitialWebView) popWebViewConfig.getWebView();
        this.f34106d = htmlInterstitialWebView;
        C8775b bVar = new C8775b();
        AdReport adReport = this.f20532a;
        htmlInterstitialWebView.init(bVar, stringExtra, adReport != null ? adReport.getDspCreativeId() : null);
        this.f34106d.loadUrl(JavaScriptWebViewCallbacks.WEB_VIEW_DID_APPEAR.getUrl());
        this.f34107e = popWebViewConfig.getViewabilityManager();
        return this.f34106d;
    }

    @Override // p131c.p421j.p424b.AbstractActivityC6649d, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Serializable serializableExtra = getIntent().getSerializableExtra(DataKeys.CREATIVE_ORIENTATION_KEY);
        DeviceUtils.lockOrientation(this, (serializableExtra == null || !(serializableExtra instanceof CreativeOrientation)) ? CreativeOrientation.DEVICE : (CreativeOrientation) serializableExtra);
        ExternalViewabilitySessionManager externalViewabilitySessionManager = this.f34107e;
        if (externalViewabilitySessionManager != null) {
            externalViewabilitySessionManager.startDeferredDisplaySession(this);
        }
        BaseBroadcastReceiver.broadcastAction(this, m20195a().longValue(), IntentActions.ACTION_INTERSTITIAL_SHOW);
    }

    @Override // p131c.p421j.p424b.AbstractActivityC6649d, android.app.Activity
    public void onDestroy() {
        ExternalViewabilitySessionManager externalViewabilitySessionManager = this.f34107e;
        if (externalViewabilitySessionManager != null) {
            externalViewabilitySessionManager.endDisplaySession();
            this.f34107e = null;
        }
        HtmlInterstitialWebView htmlInterstitialWebView = this.f34106d;
        if (htmlInterstitialWebView != null) {
            htmlInterstitialWebView.loadUrl(JavaScriptWebViewCallbacks.WEB_VIEW_DID_CLOSE.getUrl());
            this.f34106d.destroy();
        }
        BaseBroadcastReceiver.broadcastAction(this, m20195a().longValue(), IntentActions.ACTION_INTERSTITIAL_DISMISS);
        super.onDestroy();
    }
}
