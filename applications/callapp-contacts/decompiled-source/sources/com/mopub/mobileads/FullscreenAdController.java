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
import com.explorestack.iab.mraid.h;
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

    /* renamed from: d  reason: collision with root package name */
    private static final EnumSet<UrlAction> f34067d = EnumSet.of(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.HANDLE_PHONE_SCHEME, UrlAction.OPEN_APP_MARKET, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK);

    /* renamed from: a  reason: collision with root package name */
    BaseVideoViewController f34068a;

    /* renamed from: b  reason: collision with root package name */
    b f34069b;

    /* renamed from: c  reason: collision with root package name */
    boolean f34070c;
    private final Activity e;
    private final MoPubWebViewController f;
    private final AdData g;
    private WebViewDebugListener h;
    private CloseableLayout i;
    private RadialCountdownWidget j;
    private a k;
    private VastCompanionAdConfig l;
    private ImageView m;
    private VideoCtaButtonWidget n;
    private VastVideoBlurLastVideoFrameTask o;
    private String p;
    private int q;
    private int r;
    private boolean s;
    private boolean t;
    private int u;
    private boolean v;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/FullscreenAdController$a.class */
    public static final class a extends RepeatingHandlerRunnable {

        /* renamed from: c  reason: collision with root package name */
        private final FullscreenAdController f34078c;

        /* renamed from: d  reason: collision with root package name */
        private int f34079d;

        private a(FullscreenAdController fullscreenAdController, Handler handler) {
            super(handler);
            Preconditions.checkNotNull(handler);
            Preconditions.checkNotNull(fullscreenAdController);
            this.f34078c = fullscreenAdController;
        }

        @Override // com.mopub.mobileads.RepeatingHandlerRunnable
        public final void doWork() {
            int i = (int) (this.f34079d + this.f34230b);
            this.f34079d = i;
            FullscreenAdController.a(this.f34078c, i);
            if (FullscreenAdController.d(this.f34078c)) {
                this.f34078c.a();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mobileads/FullscreenAdController$b.class */
    public enum b {
        VIDEO,
        MRAID,
        HTML,
        IMAGE
    }

    public FullscreenAdController(final Activity activity, Bundle bundle, Intent intent, final AdData adData) {
        this.f34069b = b.MRAID;
        this.e = activity;
        this.g = adData;
        WebViewCacheService.Config popWebViewConfig = WebViewCacheService.popWebViewConfig(Long.valueOf(adData.getBroadcastIdentifier()));
        if (popWebViewConfig != null && popWebViewConfig.getController() != null) {
            this.f = popWebViewConfig.getController();
        } else if (AdType.HTML.equals(adData.getAdType())) {
            this.f = HtmlControllerFactory.create(activity, adData.getDspCreativeId());
        } else {
            this.f = new MraidController(activity, adData.getDspCreativeId(), PlacementType.INTERSTITIAL, adData.getAllowCustomClose());
        }
        String adPayload = adData.getAdPayload();
        if (TextUtils.isEmpty(adPayload)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MoPubFullscreenActivity received an empty HTML body. Finishing the activity.");
            activity.finish();
            return;
        }
        MoPubWebViewController moPubWebViewController = this.f;
        if (moPubWebViewController instanceof MraidController) {
            ((MraidController) moPubWebViewController).setUseCustomCloseListener(this);
        }
        this.f.setDebugListener(this.h);
        this.f.setMoPubWebViewListener(new BaseHtmlWebView.BaseWebViewListener() { // from class: com.mopub.mobileads.FullscreenAdController.1
            @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
            public final void onClicked() {
                FullscreenAdController.this.a(activity, adData);
            }

            @Override // com.mopub.mobileads.BaseHtmlWebView.BaseWebViewListener
            public final void onClose() {
                BaseBroadcastReceiver.broadcastAction(activity, adData.getBroadcastIdentifier(), IntentActions.ACTION_FULLSCREEN_DISMISS);
                FullscreenAdController.this.f.loadJavascript(JavaScriptWebViewCallbacks.WEB_VIEW_DID_CLOSE.getJavascript());
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
                if (b.HTML.equals(FullscreenAdController.this.f34069b) || b.MRAID.equals(FullscreenAdController.this.f34069b)) {
                    FullscreenAdController.this.f.loadJavascript(JavaScriptWebViewCallbacks.WEB_VIEW_DID_APPEAR.getJavascript());
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
        this.i = new CloseableLayout(activity);
        if (FullAdType.VAST.equals(adData.getFullAdType())) {
            this.f34068a = new VastVideoViewController(activity, intent.getExtras(), bundle, Long.valueOf(adData.getBroadcastIdentifier()).longValue(), this);
            this.f34069b = b.VIDEO;
            this.f34068a.a();
            return;
        }
        if ("json".equals(adData.getFullAdType())) {
            this.f34069b = b.IMAGE;
            try {
                JSONObject jSONObject = new JSONObject(adData.getAdPayload());
                final String string = jSONObject.getString("image");
                int i = jSONObject.getInt("w");
                int i2 = jSONObject.getInt(h.f19142a);
                this.p = jSONObject.optString("clk");
                this.m = new ImageView(activity);
                Networking.getImageLoader(activity).get(string, new ImageLoader.ImageListener() { // from class: com.mopub.mobileads.FullscreenAdController.2
                    @Override // com.mopub.volley.Response.ErrorListener
                    public final void onErrorResponse(VolleyError volleyError) {
                        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("Failed to retrieve image at %s", string));
                    }

                    @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener
                    public final void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
                        Bitmap bitmap = imageContainer.getBitmap();
                        if (FullscreenAdController.this.m == null || bitmap == null) {
                            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("%s returned null bitmap", string));
                            return;
                        }
                        FullscreenAdController.this.m.setAdjustViewBounds(true);
                        FullscreenAdController.this.m.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                        bitmap.setDensity(160);
                        FullscreenAdController.this.m.setImageBitmap(bitmap);
                    }
                }, i, i2, ImageView.ScaleType.CENTER_INSIDE);
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                layoutParams.gravity = 17;
                this.m.setLayoutParams(layoutParams);
                this.i.addView(this.m);
                this.i.setOnCloseListener(new CloseableLayout.OnCloseListener() { // from class: com.mopub.mobileads._$$Lambda$FullscreenAdController$6zRmpn_BoRQ4ctUOz9aA_WKyKYY
                    @Override // com.mopub.common.CloseableLayout.OnCloseListener
                    public final void onClose() {
                        FullscreenAdController.this.f();
                    }
                });
                if (adData.isRewarded()) {
                    this.i.setCloseAlwaysInteractable(false);
                    this.i.setCloseVisible(false);
                }
                activity.setContentView(this.i);
            } catch (JSONException e) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Unable to load image into fullscreen container.");
                BaseBroadcastReceiver.broadcastAction(activity, adData.getBroadcastIdentifier(), IntentActions.ACTION_FULLSCREEN_FAIL);
                this.e.finish();
                return;
            }
        } else {
            if (popWebViewConfig == null || popWebViewConfig.getController() == null) {
                this.f.fillContent(adPayload, adData.getViewabilityVendors(), _$$Lambda$FullscreenAdController$FQsvASius_AfaeUDrOx_oD5csgM.INSTANCE);
            }
            if (AdType.HTML.equals(adData.getAdType())) {
                this.f34069b = b.HTML;
            } else {
                this.f34069b = b.MRAID;
            }
            this.i.setOnCloseListener(new CloseableLayout.OnCloseListener() { // from class: com.mopub.mobileads._$$Lambda$FullscreenAdController$acBJECPDHDtYJQBD13FMkq3Umrs
                @Override // com.mopub.common.CloseableLayout.OnCloseListener
                public final void onClose() {
                    FullscreenAdController.this.e();
                }
            });
            this.i.addView(this.f.getAdContainer(), new FrameLayout.LayoutParams(-1, -1));
            if (adData.isRewarded()) {
                this.i.setCloseAlwaysInteractable(false);
                this.i.setCloseVisible(false);
            }
            activity.setContentView(this.i);
            this.f.onShow(activity);
        }
        if (b.HTML.equals(this.f34069b) || b.IMAGE.equals(this.f34069b)) {
            DeviceUtils.lockOrientation(activity, adData.getOrientation() != null ? adData.getOrientation() : CreativeOrientation.DEVICE);
        }
        if (adData.isRewarded()) {
            a(activity);
            if (b.IMAGE.equals(this.f34069b)) {
                this.r = adData.getRewardedDurationSeconds() >= 0 ? adData.getRewardedDurationSeconds() * 1000 : 5000;
            } else {
                this.r = adData.getRewardedDurationSeconds() >= 0 ? adData.getRewardedDurationSeconds() * 1000 : 30000;
            }
            this.j.calibrateAndMakeVisible(this.r);
            this.s = true;
            this.k = new a(new Handler(Looper.getMainLooper()));
            return;
        }
        a();
    }

    private void a(Context context) {
        RadialCountdownWidget radialCountdownWidget = new RadialCountdownWidget(context);
        this.j = radialCountdownWidget;
        radialCountdownWidget.setVisibility(4);
        ViewGroup.MarginLayoutParams marginLayoutParams = (ViewGroup.MarginLayoutParams) this.j.getLayoutParams();
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(marginLayoutParams.width, marginLayoutParams.height);
        layoutParams.rightMargin = Dips.dipsToIntPixels(4.0f, context);
        layoutParams.topMargin = Dips.dipsToIntPixels(4.0f, context);
        layoutParams.gravity = 53;
        this.i.addView(this.j, layoutParams);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void a(View view) {
        a(this.e, this.g);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ void a(BaseWebView baseWebView) {
    }

    static /* synthetic */ void a(FullscreenAdController fullscreenAdController, int i) {
        RadialCountdownWidget radialCountdownWidget;
        fullscreenAdController.q = i;
        if (fullscreenAdController.s && (radialCountdownWidget = fullscreenAdController.j) != null) {
            radialCountdownWidget.updateCountdownProgress(fullscreenAdController.r, i);
        }
    }

    private void b() {
        a aVar = this.k;
        if (aVar != null) {
            aVar.startRepeating(250L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b(View view) {
        a(this.e, this.g);
    }

    private void c() {
        a aVar = this.k;
        if (aVar != null) {
            aVar.stop();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void c(View view) {
        a(this.e, this.g);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d() {
        destroy();
        this.e.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void d(View view) {
        a(this.e, this.g);
    }

    static /* synthetic */ boolean d(FullscreenAdController fullscreenAdController) {
        return !fullscreenAdController.f34070c && fullscreenAdController.q >= fullscreenAdController.r;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e() {
        destroy();
        this.e.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f() {
        destroy();
        this.e.finish();
    }

    final void a() {
        this.f34070c = true;
        RadialCountdownWidget radialCountdownWidget = this.j;
        if (radialCountdownWidget != null) {
            radialCountdownWidget.setVisibility(8);
        }
        CloseableLayout closeableLayout = this.i;
        if (closeableLayout != null) {
            closeableLayout.setCloseVisible(true);
        }
        if (!this.t && this.g.isRewarded()) {
            BaseBroadcastReceiver.broadcastAction(this.e, this.g.getBroadcastIdentifier(), IntentActions.ACTION_REWARDED_AD_COMPLETE);
            this.t = true;
        }
        ImageView imageView = this.m;
        if (imageView != null) {
            imageView.setOnClickListener(new View.OnClickListener() { // from class: com.mopub.mobileads._$$Lambda$FullscreenAdController$zPuMegkbEBttclOtl_S4YZnI9GY
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    FullscreenAdController.this.a(view);
                }
            });
        }
    }

    final void a(Activity activity, AdData adData) {
        String str;
        VastCompanionAdConfig vastCompanionAdConfig = this.l;
        if (vastCompanionAdConfig != null && !TextUtils.isEmpty(vastCompanionAdConfig.getClickThroughUrl()) && b.IMAGE.equals(this.f34069b)) {
            BaseBroadcastReceiver.broadcastAction(activity, adData.getBroadcastIdentifier(), IntentActions.ACTION_FULLSCREEN_CLICK);
            TrackingRequest.makeVastTrackingHttpRequest(this.l.getClickTrackers(), null, Integer.valueOf(this.u), null, activity);
            this.l.handleClick(activity, 1, null, adData.getDspCreativeId());
        } else if (this.l != null && b.MRAID.equals(this.f34069b)) {
            BaseBroadcastReceiver.broadcastAction(activity, adData.getBroadcastIdentifier(), IntentActions.ACTION_FULLSCREEN_CLICK);
            TrackingRequest.makeVastTrackingHttpRequest(this.l.getClickTrackers(), null, Integer.valueOf(this.u), null, activity);
        } else if (this.l == null && b.IMAGE.equals(this.f34069b) && (str = this.p) != null && !TextUtils.isEmpty(str)) {
            BaseBroadcastReceiver.broadcastAction(activity, adData.getBroadcastIdentifier(), IntentActions.ACTION_FULLSCREEN_CLICK);
            new UrlHandler.Builder().withDspCreativeId(this.g.getDspCreativeId()).withSupportedUrlActions(f34067d).build().handleUrl(this.e, this.p);
        } else if (this.l != null) {
        } else {
            if (b.MRAID.equals(this.f34069b) || b.HTML.equals(this.f34069b)) {
                BaseBroadcastReceiver.broadcastAction(activity, adData.getBroadcastIdentifier(), IntentActions.ACTION_FULLSCREEN_CLICK);
            }
        }
    }

    public void destroy() {
        this.f.destroy();
        BaseVideoViewController baseVideoViewController = this.f34068a;
        if (baseVideoViewController != null) {
            baseVideoViewController.e();
            this.f34068a = null;
        }
        c();
        VastVideoBlurLastVideoFrameTask vastVideoBlurLastVideoFrameTask = this.o;
        if (vastVideoBlurLastVideoFrameTask != null) {
            vastVideoBlurLastVideoFrameTask.cancel(true);
        }
        BaseBroadcastReceiver.broadcastAction(this.e, this.g.getBroadcastIdentifier(), IntentActions.ACTION_FULLSCREEN_DISMISS);
    }

    public void onActivityResult(int i, int i2, Intent intent) {
        BaseVideoViewController baseVideoViewController = this.f34068a;
        if (baseVideoViewController != null) {
            baseVideoViewController.a(i, i2);
        }
    }

    @Override // com.mopub.mobileads.BaseVideoViewController.BaseVideoViewControllerListener
    public void onCompanionAdsReady(Set<VastCompanionAdConfig> set, int i) {
        Preconditions.checkNotNull(set);
        if (this.i == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "CloseableLayout is null. This should not happen.");
        }
        DisplayMetrics displayMetrics = this.e.getResources().getDisplayMetrics();
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
        this.l = vastCompanionAdConfig;
        if (vastCompanionAdConfig != null) {
            final VastResource vastResource = vastCompanionAdConfig.getVastResource();
            String htmlResourceValue = vastResource.getHtmlResourceValue();
            if (!TextUtils.isEmpty(htmlResourceValue)) {
                if (VastResource.Type.STATIC_RESOURCE.equals(vastResource.getType()) && VastResource.CreativeType.IMAGE.equals(vastResource.getCreativeType())) {
                    this.m = new ImageView(this.e);
                    Networking.getImageLoader(this.e).get(vastResource.getResource(), new ImageLoader.ImageListener() { // from class: com.mopub.mobileads.FullscreenAdController.3
                        @Override // com.mopub.volley.Response.ErrorListener
                        public final void onErrorResponse(VolleyError volleyError) {
                            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("Failed to retrieve image at %s", vastResource.getResource()));
                        }

                        @Override // com.mopub.volley.toolbox.ImageLoader.ImageListener
                        public final void onResponse(ImageLoader.ImageContainer imageContainer, boolean z) {
                            Bitmap bitmap = imageContainer.getBitmap();
                            if (FullscreenAdController.this.m == null || bitmap == null) {
                                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, String.format("%s returned null bitmap", vastResource.getResource()));
                                return;
                            }
                            FullscreenAdController.this.m.setAdjustViewBounds(true);
                            FullscreenAdController.this.m.setScaleType(ImageView.ScaleType.CENTER_INSIDE);
                            bitmap.setDensity(160);
                            FullscreenAdController.this.m.setImageBitmap(bitmap);
                        }
                    }, this.l.getWidth(), this.l.getHeight(), ImageView.ScaleType.CENTER_INSIDE);
                    this.m.setOnClickListener(new View.OnClickListener() { // from class: com.mopub.mobileads._$$Lambda$FullscreenAdController$p5slvYNoBljC8l3VB2VFvf2jVKY
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            FullscreenAdController.this.d(view);
                        }
                    });
                } else if (VastResource.Type.BLURRED_LAST_FRAME.equals(vastResource.getType())) {
                    ImageView imageView = new ImageView(this.e);
                    this.m = imageView;
                    imageView.setOnClickListener(new View.OnClickListener() { // from class: com.mopub.mobileads._$$Lambda$FullscreenAdController$G6vAm9mq5lSPZtHtl2Mrdot0FqM
                        @Override // android.view.View.OnClickListener
                        public final void onClick(View view) {
                            FullscreenAdController.this.c(view);
                        }
                    });
                    VastVideoBlurLastVideoFrameTask vastVideoBlurLastVideoFrameTask = new VastVideoBlurLastVideoFrameTask(new MediaMetadataRetriever(), this.m, i);
                    this.o = vastVideoBlurLastVideoFrameTask;
                    AsyncTasks.safeExecuteOnExecutor(vastVideoBlurLastVideoFrameTask, vastResource.getResource());
                    if (!TextUtils.isEmpty(this.l.getClickThroughUrl())) {
                        this.n = new VideoCtaButtonWidget(this.e, false, true);
                        String customCtaText = this.l.getCustomCtaText();
                        if (!TextUtils.isEmpty(customCtaText)) {
                            this.n.a(customCtaText);
                        }
                        this.n.b();
                        this.n.setOnClickListener(new View.OnClickListener() { // from class: com.mopub.mobileads._$$Lambda$FullscreenAdController$sMUY_uaVvx4Ztd5shy81aO9bmQM
                            @Override // android.view.View.OnClickListener
                            public final void onClick(View view) {
                                FullscreenAdController.this.b(view);
                            }
                        });
                    }
                } else {
                    this.f.fillContent(htmlResourceValue, null, null);
                }
            }
        }
    }

    @Override // com.mopub.mobileads.BaseVideoViewController.BaseVideoViewControllerListener
    public void onSetContentView(View view) {
        this.e.setContentView(view);
    }

    @Override // com.mopub.mobileads.BaseVideoViewController.BaseVideoViewControllerListener
    public void onSetRequestedOrientation(int i) {
        this.e.setRequestedOrientation(i);
    }

    @Override // com.mopub.mobileads.BaseVideoViewController.BaseVideoViewControllerListener
    public void onStartActivityForResult(Class<? extends Activity> cls, int i, Bundle bundle) {
        if (cls != null) {
            try {
                this.e.startActivityForResult(Intents.getStartActivityIntent(this.e, cls, bundle), i);
            } catch (ActivityNotFoundException e) {
                MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                MoPubLog.log(sdkLogEvent, "Activity " + cls.getName() + " not found. Did you declare it in your AndroidManifest.xml?");
            }
        }
    }

    @Override // com.mopub.mobileads.BaseVideoViewController.BaseVideoViewControllerListener
    public void onVideoFinish(int i) {
        if (this.i == null || this.l == null) {
            destroy();
            this.e.finish();
        } else if (!this.v) {
            this.v = true;
            this.u = i;
            BaseVideoViewController baseVideoViewController = this.f34068a;
            if (baseVideoViewController != null) {
                baseVideoViewController.c();
                this.f34068a.e();
                this.f34068a = null;
            }
            this.i.removeAllViews();
            this.i.setOnCloseListener(new CloseableLayout.OnCloseListener() { // from class: com.mopub.mobileads._$$Lambda$FullscreenAdController$HigIKw6Xsz4dKtrukTDYogFOKcw
                @Override // com.mopub.common.CloseableLayout.OnCloseListener
                public final void onClose() {
                    FullscreenAdController.this.d();
                }
            });
            VastResource vastResource = this.l.getVastResource();
            if ((!VastResource.Type.STATIC_RESOURCE.equals(vastResource.getType()) || !VastResource.CreativeType.IMAGE.equals(vastResource.getCreativeType())) && !VastResource.Type.BLURRED_LAST_FRAME.equals(vastResource.getType())) {
                this.f34069b = b.MRAID;
                this.i.addView(this.f.getAdContainer(), new FrameLayout.LayoutParams(-1, -1));
            } else {
                this.f34069b = b.IMAGE;
                if (this.m == null) {
                    MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Companion image null. Skipping.");
                    destroy();
                    this.e.finish();
                    return;
                }
                RelativeLayout relativeLayout = new RelativeLayout(this.e);
                this.m.setLayoutParams(new RelativeLayout.LayoutParams(-1, -1));
                ViewGroup viewGroup = (ViewGroup) this.m.getParent();
                if (viewGroup != null) {
                    viewGroup.removeView(this.m);
                }
                relativeLayout.addView(this.m);
                VideoCtaButtonWidget videoCtaButtonWidget = this.n;
                if (videoCtaButtonWidget != null) {
                    ViewGroup viewGroup2 = (ViewGroup) videoCtaButtonWidget.getParent();
                    if (viewGroup2 != null) {
                        viewGroup2.removeView(this.n);
                    }
                    relativeLayout.addView(this.n);
                }
                this.i.addView(relativeLayout);
            }
            if (this.g.isRewarded()) {
                this.i.setCloseAlwaysInteractable(false);
                this.i.setCloseVisible(false);
            }
            this.e.setContentView(this.i);
            this.f.onShow(this.e);
            if (this.g.isRewarded()) {
                int rewardedDurationSeconds = this.g.getRewardedDurationSeconds() >= 0 ? this.g.getRewardedDurationSeconds() * 1000 : 30000;
                this.r = rewardedDurationSeconds;
                if (i >= rewardedDurationSeconds || VastResource.Type.BLURRED_LAST_FRAME.equals(this.l.getVastResource().getType())) {
                    this.i.setCloseAlwaysInteractable(true);
                    a();
                } else {
                    a(this.e);
                    this.j.calibrateAndMakeVisible(this.r);
                    this.j.updateCountdownProgress(this.r, i);
                    this.s = true;
                    a aVar = new a(new Handler(Looper.getMainLooper()));
                    this.k = aVar;
                    aVar.f34079d = i;
                    b();
                }
            } else {
                this.i.setCloseAlwaysInteractable(true);
                a();
            }
            this.l.handleImpression(this.e, i);
        }
    }

    public void pause() {
        BaseVideoViewController baseVideoViewController = this.f34068a;
        if (baseVideoViewController != null) {
            baseVideoViewController.c();
        }
        if (b.HTML.equals(this.f34069b) || b.MRAID.equals(this.f34069b)) {
            this.f.pause(false);
        }
        c();
    }

    public void resume() {
        BaseVideoViewController baseVideoViewController = this.f34068a;
        if (baseVideoViewController != null) {
            baseVideoViewController.d();
        }
        if (b.HTML.equals(this.f34069b) || b.MRAID.equals(this.f34069b)) {
            this.f.resume();
        }
        b();
    }

    @Override // com.mopub.mraid.MraidController.UseCustomCloseListener
    public void useCustomCloseChanged(boolean z) {
        if (this.i != null) {
            if (z && !this.g.isRewarded()) {
                this.i.setCloseVisible(false);
            } else if (this.f34070c) {
                this.i.setCloseVisible(true);
            }
        }
    }
}
