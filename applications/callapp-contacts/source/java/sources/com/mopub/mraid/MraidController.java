package com.mopub.mraid;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.graphics.Rect;
import android.net.Uri;
import android.text.TextUtils;
import android.util.DisplayMetrics;
import android.util.Patterns;
import android.view.MotionEvent;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.ConsoleMessage;
import android.webkit.JsResult;
import android.widget.FrameLayout;
import com.mopub.common.CloseableLayout;
import com.mopub.common.Preconditions;
import com.mopub.common.UrlAction;
import com.mopub.common.UrlHandler;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.common.util.Dips;
import com.mopub.common.util.ManifestUtils;
import com.mopub.common.util.Utils;
import com.mopub.common.util.Views;
import com.mopub.mobileads.BaseHtmlWebView;
import com.mopub.mobileads.BaseWebView;
import com.mopub.mobileads.BaseWebViewViewability;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubWebViewController;
import com.mopub.mobileads.util.WebViews;
import com.mopub.mraid.MraidBridge;
import java.net.URI;
import java.util.EnumSet;
/* loaded from: classes4-dex2jar.jar:com/mopub/mraid/MraidController.class */
public class MraidController extends MoPubWebViewController {

    /* renamed from: e */
    final PlacementType f59753e;

    /* renamed from: f */
    final CloseableLayout f59754f;

    /* renamed from: g */
    final C16907c f59755g;

    /* renamed from: h */
    ViewState f59756h;

    /* renamed from: i */
    private ViewGroup f59757i;

    /* renamed from: j */
    private final MoPubWebViewController.ScreenMetricsWaiter f59758j;

    /* renamed from: k */
    private UseCustomCloseListener f59759k;

    /* renamed from: l */
    private MraidBridge.MraidWebView f59760l;

    /* renamed from: m */
    private final MraidBridge f59761m;

    /* renamed from: n */
    private final MraidBridge f59762n;

    /* renamed from: o */
    private C16898a f59763o;

    /* renamed from: p */
    private Integer f59764p;

    /* renamed from: q */
    private UrlHandler.MoPubSchemeListener f59765q;

    /* renamed from: r */
    private boolean f59766r;

    /* renamed from: s */
    private EnumC16906b f59767s;

    /* renamed from: t */
    private final MraidNativeCommandHandler f59768t;

    /* renamed from: u */
    private String f59769u;

    /* renamed from: v */
    private final MraidBridge.MraidBridgeListener f59770v;

    /* renamed from: w */
    private final MraidBridge.MraidBridgeListener f59771w;

    /* loaded from: classes4-dex2jar.jar:com/mopub/mraid/MraidController$UseCustomCloseListener.class */
    public interface UseCustomCloseListener {
        void useCustomCloseChanged(boolean z);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mopub.mraid.MraidController$a */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mraid/MraidController$a.class */
    public final class C16898a extends BroadcastReceiver {

        /* renamed from: b */
        private Context f59782b;

        /* renamed from: c */
        private int f59783c = -1;

        C16898a() {
            MraidController.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            int m6245w;
            if (this.f59782b == null || !"android.intent.action.CONFIGURATION_CHANGED".equals(intent.getAction()) || (m6245w = MraidController.m6245w(MraidController.this)) == this.f59783c) {
                return;
            }
            this.f59783c = m6245w;
            MraidController.this.m6280a((Runnable) null);
        }

        public final void register(Context context) {
            Preconditions.checkNotNull(context);
            Context applicationContext = context.getApplicationContext();
            this.f59782b = applicationContext;
            if (applicationContext != null) {
                applicationContext.registerReceiver(this, new IntentFilter("android.intent.action.CONFIGURATION_CHANGED"));
            }
        }

        public final void unregister() {
            Context context = this.f59782b;
            if (context != null) {
                context.unregisterReceiver(this);
                this.f59782b = null;
            }
        }
    }

    MraidController(Context context, String str, PlacementType placementType, MraidBridge mraidBridge, MraidBridge mraidBridge2, MoPubWebViewController.ScreenMetricsWaiter screenMetricsWaiter) {
        super(context, str);
        this.f59756h = ViewState.LOADING;
        this.f59763o = new C16898a();
        this.f59765q = new UrlHandler.MoPubSchemeListener() { // from class: com.mopub.mraid.MraidController.1
            @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
            public final void onClose() {
            }

            @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
            public final void onCrash() {
                if (MraidController.this.mWebView != null) {
                    MraidController.this.mWebView.loadUrl("chrome://crash");
                }
            }

            @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
            public final void onFailLoad() {
            }

            @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
            public final void onFinishLoad() {
            }
        };
        this.f59766r = true;
        this.f59767s = EnumC16906b.NONE;
        MraidBridge.MraidBridgeListener mraidBridgeListener = new MraidBridge.MraidBridgeListener() { // from class: com.mopub.mraid.MraidController.4
            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final void onClose() {
                MraidController.this.m6272c();
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
                return MraidController.this.m6286a(consoleMessage);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final void onExpand(URI uri, boolean z) throws C16905a {
                MraidController.this.m6277a(uri, z);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final boolean onJsAlert(String str2, JsResult jsResult) {
                return MraidController.this.m6278a(str2, jsResult);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final void onOpen(URI uri) {
                MraidController.this.m6279a(uri.toString());
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final void onPageFailedToLoad() {
                if (MraidController.this.mBaseWebViewListener != null) {
                    MraidController.this.mBaseWebViewListener.onFailedToLoad(MoPubErrorCode.MRAID_LOAD_ERROR);
                }
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final void onPageLoaded() {
                MraidController.this.m6274b();
                if (MraidController.this.mBaseWebViewListener != null) {
                    MraidController.this.mBaseWebViewListener.onLoaded(MraidController.this.mDefaultAdContainer);
                }
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final void onRenderProcessGone(MoPubErrorCode moPubErrorCode) {
                MraidController.this.m6284a(moPubErrorCode);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final void onResize(int i, int i2, int i3, int i4, CloseableLayout.ClosePosition closePosition, boolean z) throws C16905a {
                MraidController mraidController = MraidController.this;
                if (mraidController.mWebView != null) {
                    if (mraidController.f59756h == ViewState.LOADING || mraidController.f59756h == ViewState.HIDDEN) {
                        return;
                    }
                    if (mraidController.f59756h == ViewState.EXPANDED) {
                        throw new C16905a("Not allowed to resize from an already expanded ad");
                    }
                    if (mraidController.f59753e == PlacementType.INTERSTITIAL) {
                        throw new C16905a("Not allowed to resize from an interstitial ad");
                    }
                    int dipsToIntPixels = Dips.dipsToIntPixels(i, mraidController.mContext);
                    int dipsToIntPixels2 = Dips.dipsToIntPixels(i2, mraidController.mContext);
                    int dipsToIntPixels3 = Dips.dipsToIntPixels(i3, mraidController.mContext);
                    int dipsToIntPixels4 = Dips.dipsToIntPixels(i4, mraidController.mContext);
                    int i5 = mraidController.f59755g.f59792g.left + dipsToIntPixels3;
                    int i6 = mraidController.f59755g.f59792g.top + dipsToIntPixels4;
                    Rect rect = new Rect(i5, i6, dipsToIntPixels + i5, i6 + dipsToIntPixels2);
                    if (!z) {
                        Rect rect2 = mraidController.f59755g.f59788c;
                        if (rect.width() > rect2.width() || rect.height() > rect2.height()) {
                            throw new C16905a("resizeProperties specified a size (" + i + ", " + i2 + ") and offset (" + i3 + ", " + i4 + ") that doesn't allow the ad to appear within the max allowed size (" + mraidController.f59755g.f59789d.width() + ", " + mraidController.f59755g.f59789d.height() + ")");
                        }
                        rect.offsetTo(MraidController.m6287a(rect2.left, rect.left, rect2.right - rect.width()), MraidController.m6287a(rect2.top, rect.top, rect2.bottom - rect.height()));
                    }
                    Rect rect3 = new Rect();
                    mraidController.f59754f.applyCloseRegionBounds(closePosition, rect, rect3);
                    if (!mraidController.f59755g.f59788c.contains(rect3)) {
                        throw new C16905a("resizeProperties specified a size (" + i + ", " + i2 + ") and offset (" + i3 + ", " + i4 + ") that doesn't allow the close region to appear within the max allowed size (" + mraidController.f59755g.f59789d.width() + ", " + mraidController.f59755g.f59789d.height() + ")");
                    } else if (!rect.contains(rect3)) {
                        throw new C16905a("resizeProperties specified a size (" + i + ", " + dipsToIntPixels2 + ") and offset (" + i3 + ", " + i4 + ") that don't allow the close region to appear within the resized ad.");
                    } else {
                        mraidController.f59754f.setClosePosition(closePosition);
                        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(rect.width(), rect.height());
                        layoutParams.leftMargin = rect.left - mraidController.f59755g.f59788c.left;
                        layoutParams.topMargin = rect.top - mraidController.f59755g.f59788c.top;
                        if (mraidController.f59756h == ViewState.DEFAULT) {
                            if (mraidController.mWebView instanceof BaseWebViewViewability) {
                                ((BaseWebViewViewability) mraidController.mWebView).disableTracking();
                            }
                            mraidController.mDefaultAdContainer.removeView(mraidController.mWebView);
                            mraidController.mDefaultAdContainer.setVisibility(4);
                            mraidController.f59754f.addView(mraidController.mWebView, new FrameLayout.LayoutParams(-1, -1));
                            mraidController.m6270d().addView(mraidController.f59754f, layoutParams);
                            if (mraidController.mWebView instanceof BaseWebViewViewability) {
                                ((BaseWebViewViewability) mraidController.mWebView).enableTracking();
                            }
                        } else if (mraidController.f59756h == ViewState.RESIZED) {
                            mraidController.f59754f.setLayoutParams(layoutParams);
                        }
                        mraidController.f59754f.setClosePosition(closePosition);
                        mraidController.m6282a(ViewState.RESIZED);
                        return;
                    }
                }
                throw new C16905a("Unable to resize after the WebView is destroyed");
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final void onSetOrientationProperties(boolean z, EnumC16906b enumC16906b) throws C16905a {
                MraidController.this.m6275a(z, enumC16906b);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final void onUseCustomClose(boolean z) {
                MraidController.this.m6276a(z);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final void onVisibilityChanged(boolean z) {
                if (!MraidController.this.f59762n.m6297c()) {
                    MraidController.this.f59761m.m6303a(z);
                }
            }
        };
        this.f59770v = mraidBridgeListener;
        MraidBridge.MraidBridgeListener mraidBridgeListener2 = new MraidBridge.MraidBridgeListener() { // from class: com.mopub.mraid.MraidController.5
            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final void onClose() {
                MraidController.this.m6272c();
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
                return MraidController.this.m6286a(consoleMessage);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final void onExpand(URI uri, boolean z) {
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final boolean onJsAlert(String str2, JsResult jsResult) {
                return MraidController.this.m6278a(str2, jsResult);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final void onOpen(URI uri) {
                MraidController.this.m6279a(uri.toString());
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final void onPageFailedToLoad() {
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final void onPageLoaded() {
                final MraidController mraidController = MraidController.this;
                mraidController.m6280a(new Runnable() { // from class: com.mopub.mraid.MraidController.6
                    @Override // java.lang.Runnable
                    public final void run() {
                        MraidBridge mraidBridge3 = mraidController.f59762n;
                        MraidNativeCommandHandler unused = mraidController.f59768t;
                        Context unused2 = mraidController.mContext;
                        MraidNativeCommandHandler unused3 = mraidController.f59768t;
                        Context unused4 = mraidController.mContext;
                        MraidNativeCommandHandler unused5 = mraidController.f59768t;
                        Context unused6 = mraidController.mContext;
                        boolean m6244a = MraidNativeCommandHandler.m6244a();
                        MraidNativeCommandHandler unused7 = mraidController.f59768t;
                        mraidBridge3.m6302a(false, false, m6244a, MraidNativeCommandHandler.isStorePictureSupported(mraidController.mContext), mraidController.m6289a());
                        mraidController.f59762n.m6307a(mraidController.f59756h);
                        mraidController.f59762n.m6308a(mraidController.f59753e);
                        mraidController.f59762n.m6303a(mraidController.f59762n.m6301b());
                        mraidController.f59762n.m6306a("mraidbridge.notifyReadyEvent();");
                    }
                });
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final void onRenderProcessGone(MoPubErrorCode moPubErrorCode) {
                MraidController.this.m6284a(moPubErrorCode);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final void onResize(int i, int i2, int i3, int i4, CloseableLayout.ClosePosition closePosition, boolean z) throws C16905a {
                throw new C16905a("Not allowed to resize from an expanded state");
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final void onSetOrientationProperties(boolean z, EnumC16906b enumC16906b) throws C16905a {
                MraidController.this.m6275a(z, enumC16906b);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final void onUseCustomClose(boolean z) {
                MraidController.this.m6276a(z);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final void onVisibilityChanged(boolean z) {
                MraidController.this.f59761m.m6303a(z);
                MraidController.this.f59762n.m6303a(z);
            }
        };
        this.f59771w = mraidBridgeListener2;
        this.f59753e = placementType;
        this.f59761m = mraidBridge;
        this.f59762n = mraidBridge2;
        this.f59758j = screenMetricsWaiter;
        this.f59756h = ViewState.LOADING;
        this.f59755g = new C16907c(this.mContext, this.mContext.getResources().getDisplayMetrics().density);
        CloseableLayout closeableLayout = new CloseableLayout(this.mContext);
        this.f59754f = closeableLayout;
        closeableLayout.setOnCloseListener(new CloseableLayout.OnCloseListener() { // from class: com.mopub.mraid.MraidController.2
            @Override // com.mopub.common.CloseableLayout.OnCloseListener
            public final void onClose() {
                MraidController.this.m6272c();
            }
        });
        View view = new View(this.mContext);
        view.setOnTouchListener(new View.OnTouchListener() { // from class: com.mopub.mraid.MraidController.3
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view2, MotionEvent motionEvent) {
                return true;
            }
        });
        closeableLayout.addView(view, new FrameLayout.LayoutParams(-1, -1));
        this.f59763o.register(this.mContext);
        mraidBridge.f59736a = mraidBridgeListener;
        mraidBridge2.f59736a = mraidBridgeListener2;
        this.f59768t = new MraidNativeCommandHandler();
    }

    public MraidController(Context context, String str, PlacementType placementType, boolean z) {
        this(context, str, placementType, new MraidBridge(placementType, z), new MraidBridge(PlacementType.INTERSTITIAL, z), new MoPubWebViewController.ScreenMetricsWaiter());
    }

    /* renamed from: a */
    static int m6287a(int i, int i2, int i3) {
        return Math.max(i, Math.min(i2, i3));
    }

    /* renamed from: a */
    private void m6288a(int i) throws C16905a {
        Activity activity = this.f59326a.get();
        if (activity == null || !m6281a(this.f59767s)) {
            throw new C16905a("Attempted to lock orientation to unsupported value: " + this.f59767s.name());
        }
        if (this.f59764p == null) {
            this.f59764p = Integer.valueOf(activity.getRequestedOrientation());
        }
        activity.setRequestedOrientation(i);
    }

    /* renamed from: a */
    private static void m6285a(BaseHtmlWebView.BaseWebViewListener baseWebViewListener, ViewState viewState, ViewState viewState2) {
        Preconditions.checkNotNull(baseWebViewListener);
        Preconditions.checkNotNull(viewState);
        Preconditions.checkNotNull(viewState2);
        if (viewState2 == ViewState.EXPANDED) {
            baseWebViewListener.onExpand();
        } else if (viewState == ViewState.EXPANDED && viewState2 == ViewState.DEFAULT) {
            baseWebViewListener.onClose();
        } else if (viewState2 == ViewState.HIDDEN) {
            baseWebViewListener.onClose();
        } else if (viewState == ViewState.RESIZED && viewState2 == ViewState.DEFAULT) {
            baseWebViewListener.onResize(true);
        } else if (viewState2 != ViewState.RESIZED) {
        } else {
            baseWebViewListener.onResize(false);
        }
    }

    /* renamed from: a */
    private boolean m6281a(EnumC16906b enumC16906b) {
        if (enumC16906b == EnumC16906b.NONE) {
            return true;
        }
        Activity activity = this.f59326a.get();
        if (activity == null) {
            return false;
        }
        try {
            ActivityInfo activityInfo = activity.getPackageManager().getActivityInfo(new ComponentName(activity, activity.getClass()), 0);
            int i = activityInfo.screenOrientation;
            return i != -1 ? i == enumC16906b.getActivityInfoOrientation() : Utils.bitMaskContainsFlag(activityInfo.configChanges, 128) && Utils.bitMaskContainsFlag(activityInfo.configChanges, 1024);
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    /* renamed from: e */
    private void m6268e() {
        this.f59762n.m6314a();
        this.f59760l = null;
    }

    /* renamed from: f */
    public ViewGroup m6266f() {
        ViewGroup viewGroup = this.f59757i;
        if (viewGroup != null) {
            return viewGroup;
        }
        View topmostView = Views.getTopmostView(this.f59326a.get(), this.mDefaultAdContainer);
        return topmostView instanceof ViewGroup ? (ViewGroup) topmostView : this.mDefaultAdContainer;
    }

    /* renamed from: g */
    private void m6264g() throws C16905a {
        if (this.f59767s != EnumC16906b.NONE) {
            m6288a(this.f59767s.getActivityInfoOrientation());
        } else if (this.f59766r) {
            m6262h();
        } else {
            Activity activity = this.f59326a.get();
            if (activity == null) {
                throw new C16905a("Unable to set MRAID expand orientation to 'none'; expected passed in Activity Context.");
            }
            m6288a(DeviceUtils.getScreenOrientation(activity));
        }
    }

    /* renamed from: h */
    private void m6262h() {
        Integer num;
        Activity activity = this.f59326a.get();
        if (activity != null && (num = this.f59764p) != null) {
            activity.setRequestedOrientation(num.intValue());
        }
        this.f59764p = null;
    }

    /* renamed from: i */
    private boolean m6260i() {
        return !this.f59754f.isCloseVisible();
    }

    /* renamed from: w */
    static /* synthetic */ int m6245w(MraidController mraidController) {
        return ((WindowManager) mraidController.mContext.getSystemService("window")).getDefaultDisplay().getRotation();
    }

    /* renamed from: a */
    final void m6284a(MoPubErrorCode moPubErrorCode) {
        if (this.mBaseWebViewListener != null) {
            this.mBaseWebViewListener.onRenderProcessGone(moPubErrorCode);
        }
    }

    /* renamed from: a */
    void m6282a(ViewState viewState) {
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MRAID state set to ".concat(String.valueOf(viewState)));
        ViewState viewState2 = this.f59756h;
        this.f59756h = viewState;
        this.f59761m.m6307a(viewState);
        if (this.f59762n.f59737b) {
            this.f59762n.m6307a(viewState);
        }
        if (this.mBaseWebViewListener != null) {
            m6285a(this.mBaseWebViewListener, viewState2, viewState);
        }
        m6280a((Runnable) null);
    }

    /* renamed from: a */
    void m6280a(final Runnable runnable) {
        this.f59758j.cancelLastRequest();
        final MraidBridge.MraidWebView currentWebView = getCurrentWebView();
        if (currentWebView == null) {
            return;
        }
        this.f59758j.waitFor(this.mDefaultAdContainer, currentWebView).start(new Runnable() { // from class: com.mopub.mraid.MraidController.7
            @Override // java.lang.Runnable
            public final void run() {
                DisplayMetrics displayMetrics = MraidController.this.mContext.getResources().getDisplayMetrics();
                C16907c c16907c = MraidController.this.f59755g;
                c16907c.f59786a.set(0, 0, displayMetrics.widthPixels, displayMetrics.heightPixels);
                c16907c.m6242a(c16907c.f59786a, c16907c.f59787b);
                int[] iArr = new int[2];
                ViewGroup m6266f = MraidController.this.m6266f();
                m6266f.getLocationOnScreen(iArr);
                C16907c c16907c2 = MraidController.this.f59755g;
                int i = iArr[0];
                int i2 = iArr[1];
                c16907c2.f59788c.set(i, i2, m6266f.getWidth() + i, m6266f.getHeight() + i2);
                c16907c2.m6242a(c16907c2.f59788c, c16907c2.f59789d);
                MraidController.this.mDefaultAdContainer.getLocationOnScreen(iArr);
                C16907c c16907c3 = MraidController.this.f59755g;
                int i3 = iArr[0];
                int i4 = iArr[1];
                c16907c3.f59792g.set(i3, i4, MraidController.this.mDefaultAdContainer.getWidth() + i3, MraidController.this.mDefaultAdContainer.getHeight() + i4);
                c16907c3.m6242a(c16907c3.f59792g, c16907c3.f59793h);
                currentWebView.getLocationOnScreen(iArr);
                C16907c c16907c4 = MraidController.this.f59755g;
                int i5 = iArr[0];
                int i6 = iArr[1];
                c16907c4.f59790e.set(i5, i6, currentWebView.getWidth() + i5, currentWebView.getHeight() + i6);
                c16907c4.m6242a(c16907c4.f59790e, c16907c4.f59791f);
                MraidController.this.f59761m.notifyScreenMetrics(MraidController.this.f59755g);
                if (MraidController.this.f59762n.m6297c()) {
                    MraidController.this.f59762n.notifyScreenMetrics(MraidController.this.f59755g);
                }
                Runnable runnable2 = runnable;
                if (runnable2 != null) {
                    runnable2.run();
                }
            }
        });
    }

    /* renamed from: a */
    final void m6279a(String str) {
        if (this.mBaseWebViewListener != null) {
            this.mBaseWebViewListener.onClicked();
        }
        Uri parse = Uri.parse(str);
        if (UrlAction.HANDLE_PHONE_SCHEME.shouldTryHandlingUrl(parse)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, String.format("Uri scheme %s is not allowed.", parse.getScheme()), new C16905a("Unsupported MRAID Javascript command"));
            return;
        }
        UrlHandler.Builder builder = new UrlHandler.Builder();
        if (!TextUtils.isEmpty(this.f59769u)) {
            builder.withDspCreativeId(this.f59769u);
        }
        EnumSet<UrlAction> of = EnumSet.of(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK);
        if (ManifestUtils.isDebuggable(this.mContext)) {
            of.add(UrlAction.HANDLE_MOPUB_SCHEME);
            builder.withMoPubSchemeListener(this.f59765q);
        }
        builder.withSupportedUrlActions(of).build().handleUrl(this.mContext, str);
    }

    /* renamed from: a */
    final void m6277a(URI uri, boolean z) throws C16905a {
        if (this.mWebView != null) {
            if (this.f59753e == PlacementType.INTERSTITIAL) {
                return;
            }
            if (this.f59756h != ViewState.DEFAULT && this.f59756h != ViewState.RESIZED) {
                return;
            }
            m6264g();
            boolean z2 = uri != null;
            if (z2) {
                MraidBridge.MraidWebView mraidWebView = (MraidBridge.MraidWebView) createWebView();
                this.f59760l = mraidWebView;
                mraidWebView.disableTracking();
                this.f59762n.m6311a(this.f59760l);
                this.f59762n.setContentUrl(uri.toString());
            }
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            if (this.f59756h == ViewState.DEFAULT) {
                if (z2) {
                    this.f59754f.addView(this.f59760l, layoutParams);
                } else {
                    if (this.mWebView instanceof BaseWebViewViewability) {
                        ((BaseWebViewViewability) this.mWebView).disableTracking();
                    }
                    this.mDefaultAdContainer.removeView(this.mWebView);
                    this.mDefaultAdContainer.setVisibility(4);
                    this.f59754f.addView(this.mWebView, layoutParams);
                    if (this.mWebView instanceof BaseWebViewViewability) {
                        ((BaseWebViewViewability) this.mWebView).enableTracking();
                    }
                }
                m6270d().addView(this.f59754f, new FrameLayout.LayoutParams(-1, -1));
            } else if (this.f59756h == ViewState.RESIZED && z2) {
                if (this.mWebView instanceof BaseWebViewViewability) {
                    ((BaseWebViewViewability) this.mWebView).disableTracking();
                }
                this.f59754f.removeView(this.mWebView);
                this.mDefaultAdContainer.addView(this.mWebView, layoutParams);
                if (this.mWebView instanceof BaseWebViewViewability) {
                    ((BaseWebViewViewability) this.mWebView).enableTracking();
                }
                this.mDefaultAdContainer.setVisibility(4);
                this.f59754f.addView(this.f59760l, layoutParams);
            }
            this.f59754f.setLayoutParams(layoutParams);
            m6276a(z);
            m6282a(ViewState.EXPANDED);
            return;
        }
        throw new C16905a("Unable to expand after the WebView is destroyed");
    }

    /* renamed from: a */
    protected final void m6276a(boolean z) {
        if (z == m6260i()) {
            return;
        }
        this.f59754f.setCloseVisible(!z);
        UseCustomCloseListener useCustomCloseListener = this.f59759k;
        if (useCustomCloseListener == null) {
            return;
        }
        useCustomCloseListener.useCustomCloseChanged(z);
    }

    /* renamed from: a */
    final void m6275a(boolean z, EnumC16906b enumC16906b) throws C16905a {
        if (m6281a(enumC16906b)) {
            this.f59766r = z;
            this.f59767s = enumC16906b;
            if (this.f59756h != ViewState.EXPANDED && (this.f59753e != PlacementType.INTERSTITIAL || this.f59329d)) {
                return;
            }
            m6264g();
            return;
        }
        throw new C16905a("Unable to force orientation to ".concat(String.valueOf(enumC16906b)));
    }

    /* renamed from: a */
    final boolean m6289a() {
        Activity activity = this.f59326a.get();
        if (activity == null || getCurrentWebView() == null) {
            return false;
        }
        if (this.f59753e != PlacementType.INLINE) {
            return true;
        }
        getCurrentWebView();
        return MraidNativeCommandHandler.m6243a(activity);
    }

    /* renamed from: a */
    final boolean m6286a(ConsoleMessage consoleMessage) {
        if (this.f59327b != null) {
            return this.f59327b.onConsoleMessage(consoleMessage);
        }
        return true;
    }

    /* renamed from: a */
    final boolean m6278a(String str, JsResult jsResult) {
        if (this.f59327b != null) {
            return this.f59327b.onJsAlert(str, jsResult);
        }
        jsResult.confirm();
        return true;
    }

    /* renamed from: b */
    final void m6274b() {
        this.f59761m.m6302a(false, false, MraidNativeCommandHandler.m6244a(), MraidNativeCommandHandler.isStorePictureSupported(this.mContext), m6289a());
        this.f59761m.m6308a(this.f59753e);
        MraidBridge mraidBridge = this.f59761m;
        mraidBridge.m6303a(mraidBridge.m6301b());
        this.f59761m.notifyScreenMetrics(this.f59755g);
        m6282a(ViewState.DEFAULT);
        this.f59761m.m6306a("mraidbridge.notifyReadyEvent();");
    }

    /* renamed from: c */
    protected final void m6272c() {
        MraidBridge.MraidWebView mraidWebView;
        if (this.mWebView == null || this.f59756h == ViewState.LOADING || this.f59756h == ViewState.HIDDEN) {
            return;
        }
        if (this.f59756h == ViewState.EXPANDED || this.f59753e == PlacementType.INTERSTITIAL) {
            m6262h();
        }
        if (this.f59756h != ViewState.RESIZED && this.f59756h != ViewState.EXPANDED) {
            if (this.f59756h != ViewState.DEFAULT) {
                return;
            }
            this.mDefaultAdContainer.setVisibility(4);
            m6282a(ViewState.HIDDEN);
            return;
        }
        if (!this.f59762n.m6297c() || (mraidWebView = this.f59760l) == null) {
            this.f59754f.removeView(this.mWebView);
            this.mDefaultAdContainer.addView(this.mWebView, new FrameLayout.LayoutParams(-1, -1));
            this.mDefaultAdContainer.setVisibility(0);
        } else {
            m6268e();
            this.f59754f.removeView(mraidWebView);
        }
        Views.removeFromParent(this.f59754f);
        m6282a(ViewState.DEFAULT);
    }

    @Override // com.mopub.mobileads.MoPubWebViewController
    public BaseWebView createWebView() {
        return new MraidBridge.MraidWebView(this.mContext);
    }

    /* renamed from: d */
    ViewGroup m6270d() {
        if (this.f59757i == null) {
            this.f59757i = m6266f();
        }
        return this.f59757i;
    }

    @Override // com.mopub.mobileads.MoPubWebViewController
    public final void destroy() {
        super.destroy();
        this.f59758j.cancelLastRequest();
        try {
            this.f59763o.unregister();
        } catch (IllegalArgumentException e) {
            if (!e.getMessage().contains("Receiver not registered")) {
                throw e;
            }
        }
        Views.removeFromParent(this.f59754f);
        this.f59761m.m6314a();
        this.mWebView = null;
        m6268e();
        m6262h();
    }

    @Override // com.mopub.mobileads.MoPubWebViewController
    public final void doFillContent(String str) {
        this.f59761m.m6311a((MraidBridge.MraidWebView) this.mWebView);
        this.mDefaultAdContainer.addView(this.mWebView, new FrameLayout.LayoutParams(-1, -1));
        if (Patterns.WEB_URL.matcher(str).matches()) {
            this.f59761m.setContentUrl(str);
        } else {
            this.f59761m.setContentHtml(str);
        }
    }

    @Override // com.mopub.mobileads.MoPubWebViewController
    public Context getContext() {
        return this.mContext;
    }

    public MraidBridge.MraidWebView getCurrentWebView() {
        return this.f59762n.m6297c() ? this.f59760l : (MraidBridge.MraidWebView) this.mWebView;
    }

    public final ViewGroup.LayoutParams getLayoutParams() {
        return new ViewGroup.LayoutParams(-1, -1);
    }

    @Override // com.mopub.mobileads.MoPubWebViewController
    public void loadJavascript(String str) {
        this.f59761m.m6306a(str);
    }

    @Override // com.mopub.mobileads.MoPubWebViewController
    public void onShow(Activity activity) {
        super.onShow(activity);
        UseCustomCloseListener useCustomCloseListener = this.f59759k;
        if (useCustomCloseListener != null) {
            useCustomCloseListener.useCustomCloseChanged(m6260i());
        }
        try {
            m6264g();
        } catch (C16905a e) {
            MoPubLog.m6671d("Failed to apply orientation.");
        }
    }

    @Override // com.mopub.mobileads.MoPubWebViewController
    public final void pause(boolean z) {
        super.pause(z);
        MraidBridge.MraidWebView mraidWebView = this.f59760l;
        if (mraidWebView != null) {
            WebViews.onPause(mraidWebView, z);
        }
    }

    @Override // com.mopub.mobileads.MoPubWebViewController
    public final void resume() {
        super.resume();
        MraidBridge.MraidWebView mraidWebView = this.f59760l;
        if (mraidWebView != null) {
            mraidWebView.onResume();
        }
    }

    @Override // com.mopub.mobileads.MoPubWebViewController
    public void setDebugListener(WebViewDebugListener webViewDebugListener) {
        this.f59327b = webViewDebugListener;
    }

    public void setUseCustomCloseListener(UseCustomCloseListener useCustomCloseListener) {
        this.f59759k = useCustomCloseListener;
    }
}
