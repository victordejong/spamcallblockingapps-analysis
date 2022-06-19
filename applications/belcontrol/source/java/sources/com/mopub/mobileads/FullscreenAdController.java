package com.mopub.mobileads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import com.mopub.common.AdType;
import com.mopub.common.CloseableLayout;
import com.mopub.common.FullAdType;
import com.mopub.common.IntentActions;
import com.mopub.common.Preconditions;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Intents;
import com.mopub.common.util.JavaScriptWebViewCallbacks;
import com.mopub.mobileads.BaseHtmlWebView;
import com.mopub.mobileads.BaseVideoViewController;
import com.mopub.mobileads.MoPubWebViewController;
import com.mopub.mobileads.WebViewCacheService;
import com.mopub.mobileads.factories.HtmlControllerFactory;
import com.mopub.mraid.MraidController;
import com.mopub.mraid.MraidVideoViewController;
import com.mopub.mraid.PlacementType;
import com.mopub.mraid.WebViewDebugListener;
/* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/FullscreenAdController.class */
public class FullscreenAdController implements BaseVideoViewController.BaseVideoViewControllerListener, MraidController.UseCustomCloseListener {

    /* renamed from: a */
    public final Activity f4660a;

    /* renamed from: b */
    public BaseVideoViewController f4661b;

    /* renamed from: c */
    public final MoPubWebViewController f4662c;

    /* renamed from: d */
    public final AdData f4663d;

    /* renamed from: f */
    public EnumC1078e f4664f;

    /* renamed from: g */
    public WebViewDebugListener f4665g;

    /* renamed from: h */
    public CloseableLayout f4666h;

    /* renamed from: j */
    public RadialCountdownWidget f4667j;

    /* renamed from: k */
    public C1077d f4668k;

    /* renamed from: l */
    public int f4669l;

    /* renamed from: m */
    public int f4670m;

    /* renamed from: n */
    public boolean f4671n;

    /* renamed from: o */
    public boolean f4672o;

    /* renamed from: p */
    public boolean f4673p;

    /* renamed from: com.mopub.mobileads.FullscreenAdController$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/FullscreenAdController$a.class */
    public class C1074a implements BaseHtmlWebView.BaseWebViewListener {

        /* renamed from: a */
        public final /* synthetic */ Activity f4674a;

        /* renamed from: b */
        public final /* synthetic */ AdData f4675b;

        public C1074a(Activity activity, AdData adData) {
            FullscreenAdController.this = r4;
            this.f4674a = activity;
            this.f4675b = adData;
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public void onClicked() {
            BaseBroadcastReceiver.broadcastAction(this.f4674a, this.f4675b.getBroadcastIdentifier(), IntentActions.ACTION_FULLSCREEN_CLICK);
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public void onClose() {
            BaseBroadcastReceiver.broadcastAction(this.f4674a, this.f4675b.getBroadcastIdentifier(), IntentActions.ACTION_FULLSCREEN_DISMISS);
            FullscreenAdController.this.f4662c.loadJavascript(JavaScriptWebViewCallbacks.WEB_VIEW_DID_CLOSE.getJavascript());
            this.f4674a.finish();
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public void onExpand() {
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public void onFailed() {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "FullscreenAdController failed to load. Finishing MoPubFullscreenActivity.");
            BaseBroadcastReceiver.broadcastAction(this.f4674a, this.f4675b.getBroadcastIdentifier(), IntentActions.ACTION_FULLSCREEN_FAIL);
            this.f4674a.finish();
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public void onFailedToLoad(MoPubErrorCode moPubErrorCode) {
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public void onLoaded(View view) {
            FullscreenAdController.this.f4662c.loadJavascript(JavaScriptWebViewCallbacks.WEB_VIEW_DID_APPEAR.getJavascript());
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public void onRenderProcessGone(MoPubErrorCode moPubErrorCode) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Finishing the activity due to a problem: " + moPubErrorCode);
            this.f4674a.finish();
        }

        @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
        public void onResize(boolean z) {
        }
    }

    /* renamed from: com.mopub.mobileads.FullscreenAdController$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/FullscreenAdController$b.class */
    public class C1075b implements MoPubWebViewController.WebViewCacheListener {
        public C1075b(FullscreenAdController fullscreenAdController) {
        }

        @Override // com.mopub.mobileads.MoPubWebViewController.WebViewCacheListener
        public void onReady(BaseWebView baseWebView) {
        }
    }

    /* renamed from: com.mopub.mobileads.FullscreenAdController$c */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/FullscreenAdController$c.class */
    public class C1076c implements CloseableLayout.OnCloseListener {
        public C1076c() {
            FullscreenAdController.this = r4;
        }

        @Override // com.mopub.common.CloseableLayout.OnCloseListener
        public void onClose() {
            FullscreenAdController.this.f4660a.finish();
        }
    }

    /* renamed from: com.mopub.mobileads.FullscreenAdController$d */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/FullscreenAdController$d.class */
    public static class C1077d extends RepeatingHandlerRunnable {

        /* renamed from: d */
        public final FullscreenAdController f4678d;

        /* renamed from: f */
        public int f4679f;

        public C1077d(FullscreenAdController fullscreenAdController, Handler handler) {
            super(handler);
            Preconditions.checkNotNull(handler);
            Preconditions.checkNotNull(fullscreenAdController);
            this.f4678d = fullscreenAdController;
        }

        public /* synthetic */ C1077d(FullscreenAdController fullscreenAdController, Handler handler, C1074a c1074a) {
            this(fullscreenAdController, handler);
        }

        @Override // com.mopub.mobileads.RepeatingHandlerRunnable
        public void doWork() {
            int i = (int) (this.f4679f + this.f4779c);
            this.f4679f = i;
            this.f4678d.m3680l(i);
            if (this.f4678d.m3684h()) {
                this.f4678d.m3683i();
            }
        }
    }

    /* renamed from: com.mopub.mobileads.FullscreenAdController$e */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mobileads/FullscreenAdController$e.class */
    public enum EnumC1078e {
        VIDEO,
        MRAID,
        HTML,
        IMAGE
    }

    public FullscreenAdController(Activity activity, Bundle bundle, Intent intent, AdData adData) {
        boolean z;
        EnumC1078e enumC1078e = EnumC1078e.MRAID;
        this.f4664f = enumC1078e;
        this.f4660a = activity;
        this.f4663d = adData;
        WebViewCacheService.Config popWebViewConfig = WebViewCacheService.popWebViewConfig(Long.valueOf(adData.getBroadcastIdentifier()));
        if (popWebViewConfig == null || popWebViewConfig.getController() == null) {
            this.f4662c = AdType.HTML.equals(adData.getAdType()) ? HtmlControllerFactory.create(activity, adData.getDspCreativeId()) : new MraidController(activity, adData.getDspCreativeId(), PlacementType.INTERSTITIAL, adData.getAllowCustomClose());
            z = false;
        } else {
            this.f4662c = popWebViewConfig.getController();
            z = true;
        }
        String adPayload = adData.getAdPayload();
        if (TextUtils.isEmpty(adPayload)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MoPubFullscreenActivity received an empty HTML body. Finishing the activity.");
            activity.finish();
            return;
        }
        MoPubWebViewController moPubWebViewController = this.f4662c;
        if (moPubWebViewController instanceof MraidController) {
            ((MraidController) moPubWebViewController).setUseCustomCloseListener(this);
        }
        this.f4662c.setDebugListener(this.f4665g);
        this.f4662c.setMoPubWebViewListener(new C1074a(activity, adData));
        if (!z) {
            this.f4662c.fillContent(adPayload, adData.getViewabilityVendors(), new C1075b(this));
        }
        this.f4666h = new CloseableLayout(activity);
        if (FullAdType.VAST.equals(adData.getFullAdType())) {
            BaseVideoViewController m3685g = m3685g(activity, bundle, intent, Long.valueOf(adData.getBroadcastIdentifier()));
            this.f4661b = m3685g;
            this.f4664f = EnumC1078e.VIDEO;
            m3685g.mo3396h();
            return;
        }
        if (AdType.HTML.equals(adData.getAdType())) {
            this.f4664f = EnumC1078e.HTML;
        } else {
            this.f4664f = enumC1078e;
        }
        this.f4666h.setBackgroundColor(activity.getResources().getColor(17170444));
        this.f4666h.setOnCloseListener(new C1076c());
        this.f4666h.addView(this.f4662c.getAdContainer(), new FrameLayout.LayoutParams(-1, -1));
        if (adData.isRewarded()) {
            this.f4666h.setCloseAlwaysInteractable(false);
            this.f4666h.setCloseVisible(false);
        }
        activity.setContentView(this.f4666h);
        this.f4662c.onShow(activity);
        if (!adData.isRewarded()) {
            this.f4671n = true;
            return;
        }
        m3687e(activity, 4);
        int rewardedDurationSeconds = adData.getRewardedDurationSeconds() >= 0 ? adData.getRewardedDurationSeconds() * 1000 : 30000;
        this.f4670m = rewardedDurationSeconds;
        this.f4667j.calibrateAndMakeVisible(rewardedDurationSeconds);
        this.f4672o = true;
        this.f4668k = new C1077d(this, new Handler(Looper.getMainLooper()), null);
    }

    public void destroy() {
        this.f4662c.mo3435a();
        BaseVideoViewController baseVideoViewController = this.f4661b;
        if (baseVideoViewController != null) {
            baseVideoViewController.mo3395i();
        }
        m3681k();
        BaseBroadcastReceiver.broadcastAction(this.f4660a, this.f4663d.getBroadcastIdentifier(), IntentActions.ACTION_FULLSCREEN_DISMISS);
    }

    /* renamed from: e */
    public final void m3687e(Context context, int i) {
        RadialCountdownWidget radialCountdownWidget = new RadialCountdownWidget(context);
        this.f4667j = radialCountdownWidget;
        radialCountdownWidget.setVisibility(i);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f4667j.getLayoutParams();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(marginLayoutParams.width, marginLayoutParams.height);
        layoutParams.rightMargin = Dips.dipsToIntPixels(4.0f, context);
        layoutParams.topMargin = Dips.dipsToIntPixels(4.0f, context);
        layoutParams.gravity = 53;
        this.f4666h.addView(this.f4667j, layoutParams);
    }

    /* renamed from: f */
    public boolean m3686f() {
        BaseVideoViewController baseVideoViewController;
        if (!EnumC1078e.VIDEO.equals(this.f4664f) || (baseVideoViewController = this.f4661b) == null) {
            if (!EnumC1078e.MRAID.equals(this.f4664f)) {
                return true;
            }
            return this.f4671n;
        }
        return baseVideoViewController.backButtonEnabled();
    }

    /* renamed from: g */
    public BaseVideoViewController m3685g(Activity activity, Bundle bundle, Intent intent, Long l) {
        return FullAdType.VAST.equals(this.f4663d.getFullAdType()) ? new VastVideoViewController(activity, intent.getExtras(), bundle, l.longValue(), this) : new MraidVideoViewController(activity, intent.getExtras(), bundle, this);
    }

    /* renamed from: h */
    public final boolean m3684h() {
        return !this.f4671n && this.f4669l >= this.f4670m;
    }

    /* renamed from: i */
    public void m3683i() {
        this.f4671n = true;
        RadialCountdownWidget radialCountdownWidget = this.f4667j;
        if (radialCountdownWidget != null) {
            radialCountdownWidget.setVisibility(8);
        }
        CloseableLayout closeableLayout = this.f4666h;
        if (closeableLayout != null) {
            closeableLayout.setCloseVisible(true);
        }
        if (!this.f4673p) {
            BaseBroadcastReceiver.broadcastAction(this.f4660a, this.f4663d.getBroadcastIdentifier(), IntentActions.ACTION_REWARDED_AD_COMPLETE);
            this.f4673p = true;
        }
    }

    /* renamed from: j */
    public final void m3682j() {
        C1077d c1077d = this.f4668k;
        if (c1077d != null) {
            c1077d.startRepeating(250L);
        }
    }

    /* renamed from: k */
    public final void m3681k() {
        C1077d c1077d = this.f4668k;
        if (c1077d != null) {
            c1077d.stop();
        }
    }

    /* renamed from: l */
    public final void m3680l(int i) {
        RadialCountdownWidget radialCountdownWidget;
        this.f4669l = i;
        if (!this.f4672o || (radialCountdownWidget = this.f4667j) == null) {
            return;
        }
        radialCountdownWidget.updateCountdownProgress(this.f4670m, i);
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        BaseVideoViewController baseVideoViewController = this.f4661b;
        if (baseVideoViewController != null) {
            baseVideoViewController.mo3543e(i, i2, intent);
        }
    }

    @Override // com.mopub.mobileads.BaseVideoViewController.BaseVideoViewControllerListener
    public void onFinish() {
        this.f4660a.finish();
    }

    @Override // com.mopub.mobileads.BaseVideoViewController.BaseVideoViewControllerListener
    public void onSetContentView(View view) {
        this.f4660a.setContentView(view);
    }

    @Override // com.mopub.mobileads.BaseVideoViewController.BaseVideoViewControllerListener
    public void onSetRequestedOrientation(int i) {
        this.f4660a.setRequestedOrientation(i);
    }

    @Override // com.mopub.mobileads.BaseVideoViewController.BaseVideoViewControllerListener
    public void onStartActivityForResult(Class<? extends Activity> cls, int i, Bundle bundle) {
        if (cls == null) {
            return;
        }
        try {
            this.f4660a.startActivityForResult(Intents.getStartActivityIntent(this.f4660a, cls, bundle), i);
        } catch (ActivityNotFoundException e) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Activity " + cls.getName() + " not found. Did you declare it in your AndroidManifest.xml?");
        }
    }

    public void pause() {
        BaseVideoViewController baseVideoViewController;
        if (EnumC1078e.VIDEO.equals(this.f4664f) && (baseVideoViewController = this.f4661b) != null) {
            baseVideoViewController.mo3394j();
        } else if (EnumC1078e.MRAID.equals(this.f4664f) || EnumC1078e.HTML.equals(this.f4664f)) {
            this.f4662c.mo3431c(false);
        }
        m3681k();
    }

    public void resume() {
        BaseVideoViewController baseVideoViewController;
        if (EnumC1078e.VIDEO.equals(this.f4664f) && (baseVideoViewController = this.f4661b) != null) {
            baseVideoViewController.mo3393k();
        } else if (EnumC1078e.MRAID.equals(this.f4664f) || EnumC1078e.HTML.equals(this.f4664f)) {
            this.f4662c.mo3429d();
        }
        m3682j();
    }

    @Override // com.mopub.mraid.MraidController.UseCustomCloseListener
    public void useCustomCloseChanged(boolean z) {
        if (this.f4666h == null) {
            return;
        }
        if (z && !this.f4663d.isRewarded()) {
            this.f4666h.setCloseVisible(false);
        } else if (!this.f4671n) {
        } else {
            this.f4666h.setCloseVisible(true);
        }
    }
}
