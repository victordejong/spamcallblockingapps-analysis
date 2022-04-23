package com.mopub.mobileads;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import androidx.annotation.Nullable;
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
import p081h.p430l.p433b.AbstractActivityC10699c;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubActivity.class */
public class MoPubActivity extends AbstractActivityC10699c {
    @Nullable

    /* renamed from: d */
    public HtmlInterstitialWebView f8474d;
    @Nullable

    /* renamed from: e */
    public ExternalViewabilitySessionManager f8475e;

    /* renamed from: com.mopub.mobileads.MoPubActivity$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubActivity$a.class */
    public static final class C3832a extends WebViewClient {

        /* renamed from: a */
        public final /* synthetic */ CustomEventInterstitial.CustomEventInterstitialListener f8476a;

        public C3832a(CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener) {
            this.f8476a = customEventInterstitialListener;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if ("mopub://finishLoad".equals(str)) {
                this.f8476a.onInterstitialLoaded();
                return true;
            } else if (!"mopub://failLoad".equals(str)) {
                return true;
            } else {
                this.f8476a.onInterstitialFailed(null);
                return true;
            }
        }
    }

    /* renamed from: com.mopub.mobileads.MoPubActivity$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MoPubActivity$b.class */
    public class C3833b implements CustomEventInterstitial.CustomEventInterstitialListener {
        public C3833b() {
        }

        @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
        public void onInterstitialClicked() {
            MoPubActivity moPubActivity = MoPubActivity.this;
            BaseBroadcastReceiver.broadcastAction(moPubActivity, moPubActivity.m10881a().longValue(), IntentActions.ACTION_INTERSTITIAL_CLICK);
        }

        @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
        public void onInterstitialDismissed() {
        }

        @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
        public void onInterstitialFailed(MoPubErrorCode moPubErrorCode) {
            MoPubActivity moPubActivity = MoPubActivity.this;
            BaseBroadcastReceiver.broadcastAction(moPubActivity, moPubActivity.m10881a().longValue(), IntentActions.ACTION_INTERSTITIAL_FAIL);
            MoPubActivity.this.finish();
        }

        @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
        public void onInterstitialLoaded() {
            if (MoPubActivity.this.f8474d != null) {
                MoPubActivity.this.f8474d.loadUrl(JavaScriptWebViewCallbacks.WEB_VIEW_DID_APPEAR.getUrl());
            }
        }

        @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
        public void onInterstitialShown() {
        }

        @Override // com.mopub.mobileads.CustomEventInterstitial.CustomEventInterstitialListener
        public void onLeaveApplication() {
        }
    }

    /* renamed from: a */
    public static Intent m30550a(Context context, String str, AdReport adReport, boolean z, String str2, String str3, CreativeOrientation creativeOrientation, long j) {
        Intent intent = new Intent(context, MoPubActivity.class);
        intent.putExtra("Html-Response-Body", str);
        intent.putExtra("Scrollable", z);
        intent.putExtra("Clickthrough-Url", str3);
        intent.putExtra("Redirect-Url", str2);
        intent.putExtra(DataKeys.BROADCAST_IDENTIFIER_KEY, j);
        intent.putExtra(DataKeys.AD_REPORT_KEY, adReport);
        intent.putExtra(DataKeys.CREATIVE_ORIENTATION_KEY, creativeOrientation);
        intent.addFlags(268435456);
        return intent;
    }

    /* renamed from: a */
    public static void m30549a(Interstitial interstitial, Context context, AdReport adReport, CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, String str, boolean z, String str2, String str3, long j) {
        HtmlInterstitialWebView create = HtmlInterstitialWebViewFactory.create(context.getApplicationContext(), adReport, customEventInterstitialListener, z, str2, str3);
        create.enablePlugins(false);
        create.m30568a();
        create.setWebViewClient(new C3832a(customEventInterstitialListener));
        ExternalViewabilitySessionManager externalViewabilitySessionManager = new ExternalViewabilitySessionManager(context);
        externalViewabilitySessionManager.createDisplaySession(context, create, true);
        create.m30577a(str);
        WebViewCacheService.storeWebViewConfig(Long.valueOf(j), interstitial, create, externalViewabilitySessionManager);
    }

    public static void start(Context context, String str, AdReport adReport, boolean z, String str2, String str3, CreativeOrientation creativeOrientation, long j) {
        try {
            context.startActivity(m30550a(context, str, adReport, z, str2, str3, creativeOrientation, j));
        } catch (ActivityNotFoundException e) {
        }
    }

    @Override // p081h.p430l.p433b.AbstractActivityC10699c
    public View getAdView() {
        WebViewCacheService.Config popWebViewConfig;
        Intent intent = getIntent();
        boolean booleanExtra = intent.getBooleanExtra("Scrollable", false);
        String stringExtra = intent.getStringExtra("Redirect-Url");
        String stringExtra2 = intent.getStringExtra("Clickthrough-Url");
        String stringExtra3 = intent.getStringExtra("Html-Response-Body");
        Long a = m10881a();
        if (a == null || (popWebViewConfig = WebViewCacheService.popWebViewConfig(a)) == null || !(popWebViewConfig.getWebView() instanceof HtmlInterstitialWebView)) {
            MoPubLog.m30733d("WebView cache miss. Recreating the WebView.");
            this.f8474d = HtmlInterstitialWebViewFactory.create(getApplicationContext(), this.f24382a, new C3833b(), booleanExtra, stringExtra, stringExtra2);
            this.f8475e = new ExternalViewabilitySessionManager(this);
            this.f8475e.createDisplaySession(this, this.f8474d, true);
            this.f8474d.m30577a(stringExtra3);
            return this.f8474d;
        }
        this.f8474d = (HtmlInterstitialWebView) popWebViewConfig.getWebView();
        HtmlInterstitialWebView htmlInterstitialWebView = this.f8474d;
        C3833b bVar = new C3833b();
        AdReport adReport = this.f24382a;
        htmlInterstitialWebView.init(bVar, booleanExtra, stringExtra, stringExtra2, adReport != null ? adReport.getDspCreativeId() : null);
        this.f8474d.enablePlugins(true);
        this.f8474d.loadUrl(JavaScriptWebViewCallbacks.WEB_VIEW_DID_APPEAR.getUrl());
        this.f8475e = popWebViewConfig.getViewabilityManager();
        return this.f8474d;
    }

    @Override // p081h.p430l.p433b.AbstractActivityC10699c, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        Serializable serializableExtra = getIntent().getSerializableExtra(DataKeys.CREATIVE_ORIENTATION_KEY);
        DeviceUtils.lockOrientation(this, (serializableExtra == null || !(serializableExtra instanceof CreativeOrientation)) ? CreativeOrientation.UNDEFINED : (CreativeOrientation) serializableExtra);
        ExternalViewabilitySessionManager externalViewabilitySessionManager = this.f8475e;
        if (externalViewabilitySessionManager != null) {
            externalViewabilitySessionManager.startDeferredDisplaySession(this);
        }
        BaseBroadcastReceiver.broadcastAction(this, m10881a().longValue(), IntentActions.ACTION_INTERSTITIAL_SHOW);
    }

    @Override // p081h.p430l.p433b.AbstractActivityC10699c, android.app.Activity
    public void onDestroy() {
        ExternalViewabilitySessionManager externalViewabilitySessionManager = this.f8475e;
        if (externalViewabilitySessionManager != null) {
            externalViewabilitySessionManager.endDisplaySession();
            this.f8475e = null;
        }
        HtmlInterstitialWebView htmlInterstitialWebView = this.f8474d;
        if (htmlInterstitialWebView != null) {
            htmlInterstitialWebView.loadUrl(JavaScriptWebViewCallbacks.WEB_VIEW_DID_CLOSE.getUrl());
            this.f8474d.destroy();
        }
        BaseBroadcastReceiver.broadcastAction(this, m10881a().longValue(), IntentActions.ACTION_INTERSTITIAL_DISMISS);
        super.onDestroy();
    }
}
