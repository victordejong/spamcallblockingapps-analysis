package com.mopub.mobileads;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.media.MediaMetadataRetriever;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.explorestack.iab.mraid.C9568h;
import com.mopub.common.AdType;
import com.mopub.common.CloseableLayout;
import com.mopub.common.CreativeOrientation;
import com.mopub.common.FullAdType;
import com.mopub.common.IntentActions;
import com.mopub.common.Preconditions;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.AsyncTasks;
import com.mopub.common.util.DeviceUtils;
import com.mopub.common.util.Dips;
import com.mopub.common.util.Intents;
import com.mopub.common.util.JavaScriptWebViewCallbacks;
import com.mopub.mobileads.BaseHtmlWebView;
import com.mopub.mobileads.BaseVideoViewController;
import com.mopub.mobileads.VastResource;
import com.mopub.mobileads.WebViewCacheService;
import com.mopub.mobileads.factories.HtmlControllerFactory;
import com.mopub.mraid.MraidController;
import com.mopub.mraid.PlacementType;
import com.mopub.mraid.WebViewDebugListener;
import com.mopub.network.Networking;
import com.mopub.network.TrackingRequest;
import com.mopub.volley.VolleyError;
import com.mopub.volley.toolbox.ImageLoader;
import java.util.EnumSet;
import java.util.Set;
import org.json.JSONException;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/FullscreenAdController.class */
public class FullscreenAdController implements BaseVideoViewController.BaseVideoViewControllerListener, MraidController.UseCustomCloseListener {

    /* renamed from: d */
    private static final EnumSet<UrlAction> f59176d = EnumSet.of(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.HANDLE_PHONE_SCHEME, UrlAction.OPEN_APP_MARKET, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK);

    /* renamed from: a */
    BaseVideoViewController f59177a;

    /* renamed from: b */
    EnumC16773b f59178b;

    /* renamed from: c */
    boolean f59179c;

    /* renamed from: e */
    private final Activity f59180e;

    /* renamed from: f */
    private final MoPubWebViewController f59181f;

    /* renamed from: g */
    private final AdData f59182g;

    /* renamed from: h */
    private WebViewDebugListener f59183h;

    /* renamed from: i */
    private CloseableLayout f59184i;

    /* renamed from: j */
    private RadialCountdownWidget f59185j;

    /* renamed from: k */
    private C16772a f59186k;

    /* renamed from: l */
    private VastCompanionAdConfig f59187l;

    /* renamed from: m */
    private ImageView f59188m;

    /* renamed from: n */
    private VideoCtaButtonWidget f59189n;

    /* renamed from: o */
    private VastVideoBlurLastVideoFrameTask f59190o;

    /* renamed from: p */
    private String f59191p;

    /* renamed from: q */
    private int f59192q;

    /* renamed from: r */
    private int f59193r;

    /* renamed from: s */
    private boolean f59194s;

    /* renamed from: t */
    private boolean f59195t;

    /* renamed from: u */
    private int f59196u;

    /* renamed from: v */
    private boolean f59197v;

    /* renamed from: com.mopub.mobileads.FullscreenAdController$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/FullscreenAdController$a.class */
    public static final class C16772a extends RepeatingHandlerRunnable {

        /* renamed from: c */
        private final FullscreenAdController f59205c;

        /* renamed from: d */
        private int f59206d;

        private C16772a(FullscreenAdController fullscreenAdController, Handler handler) {
            super(handler);
            Preconditions.checkNotNull(handler);
            Preconditions.checkNotNull(fullscreenAdController);
            this.f59205c = fullscreenAdController;
        }

        @Override // com.mopub.mobileads.RepeatingHandlerRunnable
        public final void doWork() {
            int i = (int) (this.f59206d + this.f59436b);
            this.f59206d = i;
            FullscreenAdController.m6532a(this.f59205c, i);
            if (FullscreenAdController.m6523d(this.f59205c)) {
                this.f59205c.m6538a();
            }
        }
    }

    /* renamed from: com.mopub.mobileads.FullscreenAdController$b */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/FullscreenAdController$b.class */
    public enum EnumC16773b {
        VIDEO,
        MRAID,
        HTML,
        IMAGE
    }

    public FullscreenAdController(final Activity activity, Bundle bundle, Intent intent, final AdData adData) {
        this.f59178b = EnumC16773b.MRAID;
        this.f59180e = activity;
        this.f59182g = adData;
        WebViewCacheService.Config popWebViewConfig = WebViewCacheService.popWebViewConfig(Long.valueOf(adData.getBroadcastIdentifier()));
        if (popWebViewConfig != null && popWebViewConfig.getController() != null) {
            this.f59181f = popWebViewConfig.getController();
        } else if (AdType.HTML.equals(adData.getAdType())) {
            this.f59181f = HtmlControllerFactory.create(activity, adData.getDspCreativeId());
        } else {
            this.f59181f = new MraidController(activity, adData.getDspCreativeId(), PlacementType.INTERSTITIAL, adData.getAllowCustomClose());
        }
        String adPayload = adData.getAdPayload();
        if (TextUtils.isEmpty(adPayload)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MoPubFullscreenActivity received an empty HTML body. Finishing the activity.");
            activity.finish();
            return;
        }
        MoPubWebViewController moPubWebViewController = this.f59181f;
        if (moPubWebViewController instanceof MraidController) {
            ((MraidController) moPubWebViewController).setUseCustomCloseListener(this);
        }
        this.f59181f.setDebugListener(this.f59183h);
        this.f59181f.setMoPubWebViewListener(new BaseHtmlWebView.BaseWebViewListener() { // from class: com.mopub.mobileads.FullscreenAdController.1
            @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
            public final void onClicked() {
                FullscreenAdController.this.m6537a(activity, adData);
            }

            @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
            public final void onClose() {
                BaseBroadcastReceiver.broadcastAction(activity, adData.getBroadcastIdentifier(), IntentActions.ACTION_FULLSCREEN_DISMISS);
                FullscreenAdController.this.f59181f.loadJavascript(JavaScriptWebViewCallbacks.WEB_VIEW_DID_CLOSE.getJavascript());
                activity.finish();
            }

            @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
            public final void onExpand() {
            }

            @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
            public final void onFailed() {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "FullscreenAdController failed to load. Finishing MoPubFullscreenActivity.");
                BaseBroadcastReceiver.broadcastAction(activity, adData.getBroadcastIdentifier(), IntentActions.ACTION_FULLSCREEN_FAIL);
                activity.finish();
            }

            @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
            public final void onFailedToLoad(MoPubErrorCode moPubErrorCode) {
            }

            @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
            public final void onLoaded(View view) {
                if (EnumC16773b.HTML.equals(FullscreenAdController.this.f59178b) || EnumC16773b.MRAID.equals(FullscreenAdController.this.f59178b)) {
                    FullscreenAdController.this.f59181f.loadJavascript(JavaScriptWebViewCallbacks.WEB_VIEW_DID_APPEAR.getJavascript());
                }
            }

            @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
            public final void onRenderProcessGone(MoPubErrorCode moPubErrorCode) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Finishing the activity due to a render process gone problem: ".concat(String.valueOf(moPubErrorCode)));
                BaseBroadcastReceiver.broadcastAction(activity, adData.getBroadcastIdentifier(), IntentActions.ACTION_FULLSCREEN_FAIL);
                activity.finish();
            }

            @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
            public final void onResize(boolean z) {
            }
        });
        this.f59184i = new CloseableLayout(activity);
        if (FullAdType.VAST.equals(adData.getFullAdType())) {
            this.f59177a = new VastVideoViewController(activity, intent.getExtras(), bundle, Long.valueOf(adData.getBroadcastIdentifier()).longValue(), this);
            this.f59178b = EnumC16773b.VIDEO;
            this.f59177a.mo6393a();
            return;
        }
        if ("json".equals(adData.getFullAdType())) {
            this.f59178b = EnumC16773b.IMAGE;
            try {
                JSONObject jSONObject = new JSONObject(adData.getAdPayload());
                final String string = jSONObject.getString("image");
                int i = jSONObject.getInt("w");
                int i2 = jSONObject.getInt(C9568h.f32519a);
                this.f59191p = jSONObject.optString("clk");
                this.f59188m = new ImageView(activity);
                Networking.getImageLoader(activity).get(string, new ImageLoader.ImageListener() { // from class: com.mopub.mobileads.FullscreenAdController.2
                    @Override // com.mopub.volley.Response.ErrorListener
                    public final void onErrorResponse(VolleyError volleyError) {
                        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("Failed to retrieve image at %s", string));
                    }

                    @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener
                    public final void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
                        Bitmap bitmap = imageContainer.getBitmap();
                        if (FullscreenAdController.this.f59188m == null || bitmap == null) {
                            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("%s returned null bitmap", string));
                            return;
                        }
                        FullscreenAdController.this.f59188m.setAdjustViewBounds(true);
                        FullscreenAdController.this.f59188m.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                        bitmap.setDensity(160);
                        FullscreenAdController.this.f59188m.setImageBitmap(bitmap);
                    }
                }, i, i2, ImageView.ScaleType.CENTER_INSIDE);
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                layoutParams.gravity = 17;
                this.f59188m.setLayoutParams(layoutParams);
                this.f59184i.addView(this.f59188m);
                this.f59184i.setOnCloseListener(new CloseableLayout.OnCloseListener() { // from class: com.mopub.mobileads._$$Lambda$FullscreenAdController$6zRmpn_BoRQ4ctUOz9aA_WKyKYY
                    @Override // com.mopub.common.CloseableLayout.OnCloseListener
                    public final void onClose() {
                        FullscreenAdController.this.m6521f();
                    }
                });
                if (adData.isRewarded()) {
                    this.f59184i.setCloseAlwaysInteractable(false);
                    this.f59184i.setCloseVisible(false);
                }
                activity.setContentView(this.f59184i);
            } catch (JSONException e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to load image into fullscreen container.");
                BaseBroadcastReceiver.broadcastAction(activity, adData.getBroadcastIdentifier(), IntentActions.ACTION_FULLSCREEN_FAIL);
                this.f59180e.finish();
                return;
            }
        } else {
            if (popWebViewConfig == null || popWebViewConfig.getController() == null) {
                this.f59181f.fillContent(adPayload, adData.getViewabilityVendors(), _$$Lambda$FullscreenAdController$FQsvASius_AfaeUDrOx_oD5csgM.INSTANCE);
            }
            if (AdType.HTML.equals(adData.getAdType())) {
                this.f59178b = EnumC16773b.HTML;
            } else {
                this.f59178b = EnumC16773b.MRAID;
            }
            this.f59184i.setOnCloseListener(new CloseableLayout.OnCloseListener() { // from class: com.mopub.mobileads._$$Lambda$FullscreenAdController$acBJECPDHDtYJQBD13FMkq3Umrs
                @Override // com.mopub.common.CloseableLayout.OnCloseListener
                public final void onClose() {
                    FullscreenAdController.this.m6522e();
                }
            });
            this.f59184i.addView(this.f59181f.getAdContainer(), new FrameLayout.LayoutParams(-1, -1));
            if (adData.isRewarded()) {
                this.f59184i.setCloseAlwaysInteractable(false);
                this.f59184i.setCloseVisible(false);
            }
            activity.setContentView(this.f59184i);
            this.f59181f.onShow(activity);
        }
        if (EnumC16773b.HTML.equals(this.f59178b) || EnumC16773b.IMAGE.equals(this.f59178b)) {
            DeviceUtils.lockOrientation(activity, adData.getOrientation() != null ? adData.getOrientation() : CreativeOrientation.DEVICE);
        }
        if (!adData.isRewarded()) {
            m6538a();
            return;
        }
        m6536a(activity);
        if (EnumC16773b.IMAGE.equals(this.f59178b)) {
            this.f59193r = adData.getRewardedDurationSeconds() >= 0 ? adData.getRewardedDurationSeconds() * 1000 : 5000;
        } else {
            this.f59193r = adData.getRewardedDurationSeconds() >= 0 ? adData.getRewardedDurationSeconds() * 1000 : 30000;
        }
        this.f59185j.calibrateAndMakeVisible(this.f59193r);
        this.f59194s = true;
        this.f59186k = new C16772a(new Handler(Looper.getMainLooper()));
    }

    /* renamed from: a */
    private void m6536a(Context context) {
        RadialCountdownWidget radialCountdownWidget = new RadialCountdownWidget(context);
        this.f59185j = radialCountdownWidget;
        radialCountdownWidget.setVisibility(4);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.f59185j.getLayoutParams();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(marginLayoutParams.width, marginLayoutParams.height);
        layoutParams.rightMargin = Dips.dipsToIntPixels(4.0f, context);
        layoutParams.topMargin = Dips.dipsToIntPixels(4.0f, context);
        layoutParams.gravity = 53;
        this.f59184i.addView(this.f59185j, layoutParams);
    }

    /* renamed from: a */
    public /* synthetic */ void m6535a(View view) {
        m6537a(this.f59180e, this.f59182g);
    }

    /* renamed from: a */
    public static /* synthetic */ void m6534a(BaseWebView baseWebView) {
    }

    /* renamed from: a */
    static /* synthetic */ void m6532a(FullscreenAdController fullscreenAdController, int i) {
        RadialCountdownWidget radialCountdownWidget;
        fullscreenAdController.f59192q = i;
        if (!fullscreenAdController.f59194s || (radialCountdownWidget = fullscreenAdController.f59185j) == null) {
            return;
        }
        radialCountdownWidget.updateCountdownProgress(fullscreenAdController.f59193r, i);
    }

    /* renamed from: b */
    private void m6531b() {
        C16772a c16772a = this.f59186k;
        if (c16772a != null) {
            c16772a.startRepeating(250L);
        }
    }

    /* renamed from: b */
    public /* synthetic */ void m6530b(View view) {
        m6537a(this.f59180e, this.f59182g);
    }

    /* renamed from: c */
    private void m6528c() {
        C16772a c16772a = this.f59186k;
        if (c16772a != null) {
            c16772a.stop();
        }
    }

    /* renamed from: c */
    public /* synthetic */ void m6527c(View view) {
        m6537a(this.f59180e, this.f59182g);
    }

    /* renamed from: d */
    public /* synthetic */ void m6525d() {
        destroy();
        this.f59180e.finish();
    }

    /* renamed from: d */
    public /* synthetic */ void m6524d(View view) {
        m6537a(this.f59180e, this.f59182g);
    }

    /* renamed from: d */
    static /* synthetic */ boolean m6523d(FullscreenAdController fullscreenAdController) {
        return !fullscreenAdController.f59179c && fullscreenAdController.f59192q >= fullscreenAdController.f59193r;
    }

    /* renamed from: e */
    public /* synthetic */ void m6522e() {
        destroy();
        this.f59180e.finish();
    }

    /* renamed from: f */
    public /* synthetic */ void m6521f() {
        destroy();
        this.f59180e.finish();
    }

    /* renamed from: a */
    final void m6538a() {
        this.f59179c = true;
        RadialCountdownWidget radialCountdownWidget = this.f59185j;
        if (radialCountdownWidget != null) {
            radialCountdownWidget.setVisibility(8);
        }
        CloseableLayout closeableLayout = this.f59184i;
        if (closeableLayout != null) {
            closeableLayout.setCloseVisible(true);
        }
        if (!this.f59195t && this.f59182g.isRewarded()) {
            BaseBroadcastReceiver.broadcastAction(this.f59180e, this.f59182g.getBroadcastIdentifier(), IntentActions.ACTION_REWARDED_AD_COMPLETE);
            this.f59195t = true;
        }
        ImageView imageView = this.f59188m;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.mopub.mobileads._$$Lambda$FullscreenAdController$zPuMegkbEBttclOtl_S4YZnI9GY
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    FullscreenAdController.this.m6535a(view);
                }
            });
        }
    }

    /* renamed from: a */
    final void m6537a(Activity activity, AdData adData) {
        String str;
        VastCompanionAdConfig vastCompanionAdConfig = this.f59187l;
        if (vastCompanionAdConfig != null && !TextUtils.isEmpty(vastCompanionAdConfig.getClickThroughUrl()) && EnumC16773b.IMAGE.equals(this.f59178b)) {
            BaseBroadcastReceiver.broadcastAction(activity, adData.getBroadcastIdentifier(), IntentActions.ACTION_FULLSCREEN_CLICK);
            TrackingRequest.makeVastTrackingHttpRequest(this.f59187l.getClickTrackers(), null, Integer.valueOf(this.f59196u), null, activity);
            this.f59187l.handleClick(activity, 1, null, adData.getDspCreativeId());
        } else if (this.f59187l != null && EnumC16773b.MRAID.equals(this.f59178b)) {
            BaseBroadcastReceiver.broadcastAction(activity, adData.getBroadcastIdentifier(), IntentActions.ACTION_FULLSCREEN_CLICK);
            TrackingRequest.makeVastTrackingHttpRequest(this.f59187l.getClickTrackers(), null, Integer.valueOf(this.f59196u), null, activity);
        } else if (this.f59187l == null && EnumC16773b.IMAGE.equals(this.f59178b) && (str = this.f59191p) != null && !TextUtils.isEmpty(str)) {
            BaseBroadcastReceiver.broadcastAction(activity, adData.getBroadcastIdentifier(), IntentActions.ACTION_FULLSCREEN_CLICK);
            new UrlHandler.Builder().withDspCreativeId(this.f59182g.getDspCreativeId()).withSupportedUrlActions(f59176d).build().handleUrl(this.f59180e, this.f59191p);
        } else if (this.f59187l != null) {
        } else {
            if (!EnumC16773b.MRAID.equals(this.f59178b) && !EnumC16773b.HTML.equals(this.f59178b)) {
                return;
            }
            BaseBroadcastReceiver.broadcastAction(activity, adData.getBroadcastIdentifier(), IntentActions.ACTION_FULLSCREEN_CLICK);
        }
    }

    public void destroy() {
        this.f59181f.destroy();
        BaseVideoViewController baseVideoViewController = this.f59177a;
        if (baseVideoViewController != null) {
            baseVideoViewController.mo6388e();
            this.f59177a = null;
        }
        m6528c();
        VastVideoBlurLastVideoFrameTask vastVideoBlurLastVideoFrameTask = this.f59190o;
        if (vastVideoBlurLastVideoFrameTask != null) {
            vastVideoBlurLastVideoFrameTask.cancel(true);
        }
        BaseBroadcastReceiver.broadcastAction(this.f59180e, this.f59182g.getBroadcastIdentifier(), IntentActions.ACTION_FULLSCREEN_DISMISS);
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        BaseVideoViewController baseVideoViewController = this.f59177a;
        if (baseVideoViewController != null) {
            baseVideoViewController.mo6392a(i, i2);
        }
    }

    @Override // com.mopub.mobileads.BaseVideoViewController.BaseVideoViewControllerListener
    public void onCompanionAdsReady(Set<VastCompanionAdConfig> set, int i) {
        Preconditions.checkNotNull(set);
        if (this.f59184i == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "CloseableLayout is null. This should not happen.");
        }
        DisplayMetrics displayMetrics = this.f59180e.getResources().getDisplayMetrics();
        int i2 = displayMetrics.widthPixels;
        int i3 = displayMetrics.heightPixels;
        int i4 = (int) (i2 / displayMetrics.density);
        int i5 = (int) (i3 / displayMetrics.density);
        VastCompanionAdConfig vastCompanionAdConfig = null;
        for (VastCompanionAdConfig vastCompanionAdConfig2 : set) {
            if (vastCompanionAdConfig2 != null && (vastCompanionAdConfig == null || vastCompanionAdConfig2.calculateScore(i4, i5) > vastCompanionAdConfig.calculateScore(i4, i5))) {
                vastCompanionAdConfig = vastCompanionAdConfig2;
            }
        }
        this.f59187l = vastCompanionAdConfig;
        if (vastCompanionAdConfig == null) {
            return;
        }
        final VastResource vastResource = vastCompanionAdConfig.getVastResource();
        String htmlResourceValue = vastResource.getHtmlResourceValue();
        if (TextUtils.isEmpty(htmlResourceValue)) {
            return;
        }
        if (VastResource.Type.STATIC_RESOURCE.equals(vastResource.getType()) && VastResource.CreativeType.IMAGE.equals(vastResource.getCreativeType())) {
            this.f59188m = new ImageView(this.f59180e);
            Networking.getImageLoader(this.f59180e).get(vastResource.getResource(), new ImageLoader.ImageListener() { // from class: com.mopub.mobileads.FullscreenAdController.3
                @Override // com.mopub.volley.Response.ErrorListener
                public final void onErrorResponse(VolleyError volleyError) {
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("Failed to retrieve image at %s", vastResource.getResource()));
                }

                @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener
                public final void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
                    Bitmap bitmap = imageContainer.getBitmap();
                    if (FullscreenAdController.this.f59188m == null || bitmap == null) {
                        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("%s returned null bitmap", vastResource.getResource()));
                        return;
                    }
                    FullscreenAdController.this.f59188m.setAdjustViewBounds(true);
                    FullscreenAdController.this.f59188m.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                    bitmap.setDensity(160);
                    FullscreenAdController.this.f59188m.setImageBitmap(bitmap);
                }
            }, this.f59187l.getWidth(), this.f59187l.getHeight(), ImageView.ScaleType.CENTER_INSIDE);
            this.f59188m.setOnClickListener(new View.OnClickListener() { // from class: com.mopub.mobileads._$$Lambda$FullscreenAdController$p5slvYNoBljC8l3VB2VFvf2jVKY
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    FullscreenAdController.this.m6524d(view);
                }
            });
        } else if (!VastResource.Type.BLURRED_LAST_FRAME.equals(vastResource.getType())) {
            this.f59181f.fillContent(htmlResourceValue, null, null);
        } else {
            ImageView imageView = new ImageView(this.f59180e);
            this.f59188m = imageView;
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.mopub.mobileads._$$Lambda$FullscreenAdController$G6vAm9mq5lSPZtHtl2Mrdot0FqM
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    FullscreenAdController.this.m6527c(view);
                }
            });
            VastVideoBlurLastVideoFrameTask vastVideoBlurLastVideoFrameTask = new VastVideoBlurLastVideoFrameTask(new MediaMetadataRetriever(), this.f59188m, i);
            this.f59190o = vastVideoBlurLastVideoFrameTask;
            AsyncTasks.safeExecuteOnExecutor(vastVideoBlurLastVideoFrameTask, vastResource.getResource());
            if (TextUtils.isEmpty(this.f59187l.getClickThroughUrl())) {
                return;
            }
            this.f59189n = new VideoCtaButtonWidget(this.f59180e, false, true);
            String customCtaText = this.f59187l.getCustomCtaText();
            if (!TextUtils.isEmpty(customCtaText)) {
                this.f59189n.m6361a(customCtaText);
            }
            this.f59189n.m6360b();
            this.f59189n.setOnClickListener(new View.OnClickListener() { // from class: com.mopub.mobileads._$$Lambda$FullscreenAdController$sMUY_uaVvx4Ztd5shy81aO9bmQM
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    FullscreenAdController.this.m6530b(view);
                }
            });
        }
    }

    @Override // com.mopub.mobileads.BaseVideoViewController.BaseVideoViewControllerListener
    public void onSetContentView(View view) {
        this.f59180e.setContentView(view);
    }

    @Override // com.mopub.mobileads.BaseVideoViewController.BaseVideoViewControllerListener
    public void onSetRequestedOrientation(int i) {
        this.f59180e.setRequestedOrientation(i);
    }

    @Override // com.mopub.mobileads.BaseVideoViewController.BaseVideoViewControllerListener
    public void onStartActivityForResult(Class<? extends Activity> cls, int i, Bundle bundle) {
        if (cls == null) {
            return;
        }
        try {
            this.f59180e.startActivityForResult(Intents.getStartActivityIntent(this.f59180e, cls, bundle), i);
        } catch (ActivityNotFoundException e) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Activity " + cls.getName() + " not found. Did you declare it in your AndroidManifest.xml?");
        }
    }

    @Override // com.mopub.mobileads.BaseVideoViewController.BaseVideoViewControllerListener
    public void onVideoFinish(int i) {
        if (this.f59184i == null || this.f59187l == null) {
            destroy();
            this.f59180e.finish();
        } else if (this.f59197v) {
        } else {
            this.f59197v = true;
            this.f59196u = i;
            BaseVideoViewController baseVideoViewController = this.f59177a;
            if (baseVideoViewController != null) {
                baseVideoViewController.mo6390c();
                this.f59177a.mo6388e();
                this.f59177a = null;
            }
            this.f59184i.removeAllViews();
            this.f59184i.setOnCloseListener(new CloseableLayout.OnCloseListener() { // from class: com.mopub.mobileads._$$Lambda$FullscreenAdController$HigIKw6Xsz4dKtrukTDYogFOKcw
                @Override // com.mopub.common.CloseableLayout.OnCloseListener
                public final void onClose() {
                    FullscreenAdController.this.m6525d();
                }
            });
            VastResource vastResource = this.f59187l.getVastResource();
            if ((!VastResource.Type.STATIC_RESOURCE.equals(vastResource.getType()) || !VastResource.CreativeType.IMAGE.equals(vastResource.getCreativeType())) && !VastResource.Type.BLURRED_LAST_FRAME.equals(vastResource.getType())) {
                this.f59178b = EnumC16773b.MRAID;
                this.f59184i.addView(this.f59181f.getAdContainer(), new FrameLayout.LayoutParams(-1, -1));
            } else {
                this.f59178b = EnumC16773b.IMAGE;
                if (this.f59188m == null) {
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Companion image null. Skipping.");
                    destroy();
                    this.f59180e.finish();
                    return;
                }
                RelativeLayout relativeLayout = new RelativeLayout(this.f59180e);
                this.f59188m.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
                ViewGroup viewGroup = (ViewGroup) this.f59188m.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(this.f59188m);
                }
                relativeLayout.addView(this.f59188m);
                VideoCtaButtonWidget videoCtaButtonWidget = this.f59189n;
                if (videoCtaButtonWidget != null) {
                    ViewGroup viewGroup2 = (ViewGroup) videoCtaButtonWidget.getParent();
                    if (viewGroup2 != null) {
                        viewGroup2.removeView(this.f59189n);
                    }
                    relativeLayout.addView(this.f59189n);
                }
                this.f59184i.addView(relativeLayout);
            }
            if (this.f59182g.isRewarded()) {
                this.f59184i.setCloseAlwaysInteractable(false);
                this.f59184i.setCloseVisible(false);
            }
            this.f59180e.setContentView(this.f59184i);
            this.f59181f.onShow(this.f59180e);
            if (this.f59182g.isRewarded()) {
                int rewardedDurationSeconds = this.f59182g.getRewardedDurationSeconds() >= 0 ? this.f59182g.getRewardedDurationSeconds() * 1000 : 30000;
                this.f59193r = rewardedDurationSeconds;
                if (i >= rewardedDurationSeconds || VastResource.Type.BLURRED_LAST_FRAME.equals(this.f59187l.getVastResource().getType())) {
                    this.f59184i.setCloseAlwaysInteractable(true);
                    m6538a();
                } else {
                    m6536a(this.f59180e);
                    this.f59185j.calibrateAndMakeVisible(this.f59193r);
                    this.f59185j.updateCountdownProgress(this.f59193r, i);
                    this.f59194s = true;
                    C16772a c16772a = new C16772a(new Handler(Looper.getMainLooper()));
                    this.f59186k = c16772a;
                    c16772a.f59206d = i;
                    m6531b();
                }
            } else {
                this.f59184i.setCloseAlwaysInteractable(true);
                m6538a();
            }
            this.f59187l.handleImpression(this.f59180e, i);
        }
    }

    public void pause() {
        BaseVideoViewController baseVideoViewController = this.f59177a;
        if (baseVideoViewController != null) {
            baseVideoViewController.mo6390c();
        }
        if (EnumC16773b.HTML.equals(this.f59178b) || EnumC16773b.MRAID.equals(this.f59178b)) {
            this.f59181f.pause(false);
        }
        m6528c();
    }

    public void resume() {
        BaseVideoViewController baseVideoViewController = this.f59177a;
        if (baseVideoViewController != null) {
            baseVideoViewController.mo6389d();
        }
        if (EnumC16773b.HTML.equals(this.f59178b) || EnumC16773b.MRAID.equals(this.f59178b)) {
            this.f59181f.resume();
        }
        m6531b();
    }

    @Override // com.mopub.mraid.MraidController.UseCustomCloseListener
    public void useCustomCloseChanged(boolean z) {
        if (this.f59184i == null) {
            return;
        }
        if (z && !this.f59182g.isRewarded()) {
            this.f59184i.setCloseVisible(false);
        } else if (!this.f59179c) {
        } else {
            this.f59184i.setCloseVisible(true);
        }
    }
}
