package com.mopub.mobileads;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.View;
import android.webkit.WebView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.mopub.common.AdReport;
import com.mopub.common.Constants;
import com.mopub.common.DataKeys;
import com.mopub.common.ExternalViewabilitySessionManager;
import com.mopub.common.IntentActions;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.JavaScriptWebViewCallbacks;
import com.mopub.mobileads.CustomEventInterstitial;
import com.mopub.mraid.MraidBridge;
import com.mopub.mraid.MraidController;
import com.mopub.mraid.MraidWebViewClient;
import com.mopub.mraid.MraidWebViewDebugListener;
import com.mopub.mraid.PlacementType;
import com.mopub.network.Networking;
import p081h.p430l.p433b.AbstractActivityC10699c;
/* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MraidActivity.class */
public class MraidActivity extends AbstractActivityC10699c {
    @Nullable

    /* renamed from: d */
    public MraidController f8508d;
    @Nullable

    /* renamed from: e */
    public MraidWebViewDebugListener f8509e;
    @Nullable

    /* renamed from: f */
    public ExternalViewabilitySessionManager f8510f;

    /* renamed from: com.mopub.mobileads.MraidActivity$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MraidActivity$a.class */
    public static final class C3841a extends MraidWebViewClient {

        /* renamed from: b */
        public final /* synthetic */ CustomEventInterstitial.CustomEventInterstitialListener f8511b;

        public C3841a(CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener) {
            this.f8511b = customEventInterstitialListener;
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            this.f8511b.onInterstitialLoaded();
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            super.onReceivedError(webView, i, str, str2);
            this.f8511b.onInterstitialFailed(MoPubErrorCode.MRAID_LOAD_ERROR);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (!"mopub://failLoad".equals(str)) {
                return true;
            }
            this.f8511b.onInterstitialFailed(MoPubErrorCode.MRAID_LOAD_ERROR);
            return true;
        }
    }

    /* renamed from: com.mopub.mobileads.MraidActivity$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MraidActivity$b.class */
    public class C3842b implements MraidController.MraidListener {
        public C3842b() {
        }

        @Override // com.mopub.mraid.MraidController.MraidListener
        public void onClose() {
            MraidActivity.this.f8508d.loadJavascript(JavaScriptWebViewCallbacks.WEB_VIEW_DID_CLOSE.getJavascript());
            MraidActivity.this.finish();
        }

        @Override // com.mopub.mraid.MraidController.MraidListener
        public void onExpand() {
        }

        @Override // com.mopub.mraid.MraidController.MraidListener
        public void onFailedToLoad() {
            MoPubLog.m30733d("MraidActivity failed to load. Finishing the activity");
            if (MraidActivity.this.m10881a() != null) {
                MraidActivity mraidActivity = MraidActivity.this;
                BaseBroadcastReceiver.broadcastAction(mraidActivity, mraidActivity.m10881a().longValue(), IntentActions.ACTION_INTERSTITIAL_FAIL);
            }
            MraidActivity.this.finish();
        }

        @Override // com.mopub.mraid.MraidController.MraidListener
        public void onLoaded(View view) {
            MraidActivity.this.f8508d.loadJavascript(JavaScriptWebViewCallbacks.WEB_VIEW_DID_APPEAR.getJavascript());
        }

        @Override // com.mopub.mraid.MraidController.MraidListener
        public void onOpen() {
            if (MraidActivity.this.m10881a() != null) {
                MraidActivity mraidActivity = MraidActivity.this;
                BaseBroadcastReceiver.broadcastAction(mraidActivity, mraidActivity.m10881a().longValue(), IntentActions.ACTION_INTERSTITIAL_CLICK);
            }
        }
    }

    /* renamed from: com.mopub.mobileads.MraidActivity$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MraidActivity$c.class */
    public class C3843c implements MraidController.UseCustomCloseListener {
        public C3843c() {
        }

        @Override // com.mopub.mraid.MraidController.UseCustomCloseListener
        public void useCustomCloseChanged(boolean z) {
            if (z) {
                MraidActivity.this.m10879b();
            } else {
                MraidActivity.this.m10877c();
            }
        }
    }

    /* renamed from: com.mopub.mobileads.MraidActivity$d */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mobileads/MraidActivity$d.class */
    public class C3844d implements MraidController.MraidWebViewCacheListener {
        public C3844d() {
        }

        @Override // com.mopub.mraid.MraidController.MraidWebViewCacheListener
        public void onReady(@NonNull MraidBridge.MraidWebView mraidWebView, @Nullable ExternalViewabilitySessionManager externalViewabilitySessionManager) {
            if (externalViewabilitySessionManager != null) {
                MraidActivity.this.f8510f = externalViewabilitySessionManager;
                return;
            }
            MraidActivity mraidActivity = MraidActivity.this;
            mraidActivity.f8510f = new ExternalViewabilitySessionManager(mraidActivity);
            MraidActivity.this.f8510f.createDisplaySession(MraidActivity.this, mraidWebView, true);
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public static Intent m30504a(@NonNull Context context, @Nullable AdReport adReport, @Nullable String str, long j) {
        Intent intent = new Intent(context, MraidActivity.class);
        intent.putExtra("Html-Response-Body", str);
        intent.putExtra(DataKeys.BROADCAST_IDENTIFIER_KEY, j);
        intent.putExtra(DataKeys.AD_REPORT_KEY, adReport);
        intent.addFlags(268435456);
        return intent;
    }

    @VisibleForTesting
    /* renamed from: a */
    public static void m30503a(@NonNull Interstitial interstitial, @NonNull CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, @Nullable String str, @NonNull BaseWebView baseWebView, @NonNull Long l) {
        Preconditions.checkNotNull(interstitial);
        Preconditions.checkNotNull(customEventInterstitialListener);
        Preconditions.checkNotNull(baseWebView);
        Preconditions.checkNotNull(l);
        baseWebView.enablePlugins(false);
        baseWebView.m30568a();
        baseWebView.setWebViewClient(new C3841a(customEventInterstitialListener));
        Context context = baseWebView.getContext();
        ExternalViewabilitySessionManager externalViewabilitySessionManager = new ExternalViewabilitySessionManager(context);
        externalViewabilitySessionManager.createDisplaySession(context, baseWebView, true);
        baseWebView.loadDataWithBaseURL(Networking.getBaseUrlScheme() + "://" + Constants.HOST + "/", str, "text/html", "UTF-8", null);
        WebViewCacheService.storeWebViewConfig(l, interstitial, baseWebView, externalViewabilitySessionManager);
    }

    public static void preRenderHtml(@NonNull Interstitial interstitial, @NonNull Context context, @NonNull CustomEventInterstitial.CustomEventInterstitialListener customEventInterstitialListener, @Nullable String str, @NonNull Long l) {
        Preconditions.checkNotNull(interstitial);
        Preconditions.checkNotNull(context);
        Preconditions.checkNotNull(customEventInterstitialListener);
        Preconditions.checkNotNull(l);
        m30503a(interstitial, customEventInterstitialListener, str, new MraidBridge.MraidWebView(context), l);
    }

    public static void start(@NonNull Context context, @Nullable AdReport adReport, @Nullable String str, long j) {
        try {
            context.startActivity(m30504a(context, adReport, str, j));
        } catch (ActivityNotFoundException e) {
        }
    }

    @Override // p081h.p430l.p433b.AbstractActivityC10699c
    public View getAdView() {
        String stringExtra = getIntent().getStringExtra("Html-Response-Body");
        if (stringExtra == null) {
            MoPubLog.m30725w("MraidActivity received a null HTML body. Finishing the activity.");
            finish();
            return new View(this);
        }
        this.f8508d = new MraidController(this, this.f24382a, PlacementType.INTERSTITIAL);
        this.f8508d.setDebugListener(this.f8509e);
        this.f8508d.setMraidListener(new C3842b());
        this.f8508d.setUseCustomCloseListener(new C3843c());
        this.f8508d.fillContent(m10881a(), stringExtra, new C3844d());
        return this.f8508d.getAdContainer();
    }

    @Override // p081h.p430l.p433b.AbstractActivityC10699c, android.app.Activity
    public void onCreate(@Nullable Bundle bundle) {
        super.onCreate(bundle);
        ExternalViewabilitySessionManager externalViewabilitySessionManager = this.f8510f;
        if (externalViewabilitySessionManager != null) {
            externalViewabilitySessionManager.startDeferredDisplaySession(this);
        }
        if (m10881a() != null) {
            BaseBroadcastReceiver.broadcastAction(this, m10881a().longValue(), IntentActions.ACTION_INTERSTITIAL_SHOW);
        }
        getWindow().setFlags(16777216, 16777216);
    }

    @Override // p081h.p430l.p433b.AbstractActivityC10699c, android.app.Activity
    public void onDestroy() {
        ExternalViewabilitySessionManager externalViewabilitySessionManager = this.f8510f;
        if (externalViewabilitySessionManager != null) {
            externalViewabilitySessionManager.endDisplaySession();
            this.f8510f = null;
        }
        MraidController mraidController = this.f8508d;
        if (mraidController != null) {
            mraidController.destroy();
        }
        if (m10881a() != null) {
            BaseBroadcastReceiver.broadcastAction(this, m10881a().longValue(), IntentActions.ACTION_INTERSTITIAL_DISMISS);
        }
        super.onDestroy();
    }

    @Override // android.app.Activity
    public void onPause() {
        MraidController mraidController = this.f8508d;
        if (mraidController != null) {
            mraidController.pause(isFinishing());
        }
        super.onPause();
    }

    @Override // android.app.Activity
    public void onResume() {
        super.onResume();
        MraidController mraidController = this.f8508d;
        if (mraidController != null) {
            mraidController.resume();
        }
    }

    @VisibleForTesting
    public void setDebugListener(@Nullable MraidWebViewDebugListener mraidWebViewDebugListener) {
        this.f8509e = mraidWebViewDebugListener;
        MraidController mraidController = this.f8508d;
        if (mraidController != null) {
            mraidController.setDebugListener(mraidWebViewDebugListener);
        }
    }
}
