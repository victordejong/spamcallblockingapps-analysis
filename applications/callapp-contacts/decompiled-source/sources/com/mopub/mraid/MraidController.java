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
    final PlacementType e;
    final CloseableLayout f;
    final c g;
    ViewState h;
    private ViewGroup i;
    private final MoPubWebViewController.ScreenMetricsWaiter j;
    private UseCustomCloseListener k;
    private MraidBridge.MraidWebView l;
    private final MraidBridge m;
    private final MraidBridge n;
    private a o;
    private Integer p;
    private UrlHandler.MoPubSchemeListener q;
    private boolean r;
    private b s;
    private final MraidNativeCommandHandler t;
    private String u;
    private final MraidBridge.MraidBridgeListener v;
    private final MraidBridge.MraidBridgeListener w;

    /* loaded from: classes4-dex2jar.jar:com/mopub/mraid/MraidController$UseCustomCloseListener.class */
    public interface UseCustomCloseListener {
        void useCustomCloseChanged(boolean z);
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/mraid/MraidController$a.class */
    final class a extends BroadcastReceiver {

        /* renamed from: b  reason: collision with root package name */
        private Context f34442b;

        /* renamed from: c  reason: collision with root package name */
        private int f34443c = -1;

        a() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            int w;
            if (this.f34442b != null && "android.intent.action.CONFIGURATION_CHANGED".equals(intent.getAction()) && (w = MraidController.w(MraidController.this)) != this.f34443c) {
                this.f34443c = w;
                MraidController.this.a((Runnable) null);
            }
        }

        public final void register(Context context) {
            Preconditions.checkNotNull(context);
            Context applicationContext = context.getApplicationContext();
            this.f34442b = applicationContext;
            if (applicationContext != null) {
                applicationContext.registerReceiver(this, new IntentFilter("android.intent.action.CONFIGURATION_CHANGED"));
            }
        }

        public final void unregister() {
            Context context = this.f34442b;
            if (context != null) {
                context.unregisterReceiver(this);
                this.f34442b = null;
            }
        }
    }

    MraidController(Context context, String str, PlacementType placementType, MraidBridge mraidBridge, MraidBridge mraidBridge2, MoPubWebViewController.ScreenMetricsWaiter screenMetricsWaiter) {
        super(context, str);
        this.h = ViewState.LOADING;
        this.o = new a();
        this.q = new UrlHandler.MoPubSchemeListener() { // from class: com.mopub.mraid.MraidController.1
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
        this.r = true;
        this.s = b.NONE;
        MraidBridge.MraidBridgeListener mraidBridgeListener = new MraidBridge.MraidBridgeListener() { // from class: com.mopub.mraid.MraidController.4
            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final void onClose() {
                MraidController.this.c();
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
                return MraidController.this.a(consoleMessage);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final void onExpand(URI uri, boolean z) throws com.mopub.mraid.a {
                MraidController.this.a(uri, z);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final boolean onJsAlert(String str2, JsResult jsResult) {
                return MraidController.this.a(str2, jsResult);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final void onOpen(URI uri) {
                MraidController.this.a(uri.toString());
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final void onPageFailedToLoad() {
                if (MraidController.this.mBaseWebViewListener != null) {
                    MraidController.this.mBaseWebViewListener.onFailedToLoad(MoPubErrorCode.MRAID_LOAD_ERROR);
                }
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final void onPageLoaded() {
                MraidController.this.b();
                if (MraidController.this.mBaseWebViewListener != null) {
                    MraidController.this.mBaseWebViewListener.onLoaded(MraidController.this.mDefaultAdContainer);
                }
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final void onRenderProcessGone(MoPubErrorCode moPubErrorCode) {
                MraidController.this.a(moPubErrorCode);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final void onResize(int i, int i2, int i3, int i4, CloseableLayout.ClosePosition closePosition, boolean z) throws com.mopub.mraid.a {
                MraidController mraidController = MraidController.this;
                if (mraidController.mWebView == null) {
                    throw new com.mopub.mraid.a("Unable to resize after the WebView is destroyed");
                } else if (mraidController.h != ViewState.LOADING && mraidController.h != ViewState.HIDDEN) {
                    if (mraidController.h == ViewState.EXPANDED) {
                        throw new com.mopub.mraid.a("Not allowed to resize from an already expanded ad");
                    } else if (mraidController.e != PlacementType.INTERSTITIAL) {
                        int dipsToIntPixels = Dips.dipsToIntPixels(i, mraidController.mContext);
                        int dipsToIntPixels2 = Dips.dipsToIntPixels(i2, mraidController.mContext);
                        int dipsToIntPixels3 = Dips.dipsToIntPixels(i3, mraidController.mContext);
                        int dipsToIntPixels4 = Dips.dipsToIntPixels(i4, mraidController.mContext);
                        int i5 = mraidController.g.g.left + dipsToIntPixels3;
                        int i6 = mraidController.g.g.top + dipsToIntPixels4;
                        Rect rect = new Rect(i5, i6, dipsToIntPixels + i5, i6 + dipsToIntPixels2);
                        if (!z) {
                            Rect rect2 = mraidController.g.f34448c;
                            if (rect.width() > rect2.width() || rect.height() > rect2.height()) {
                                throw new com.mopub.mraid.a("resizeProperties specified a size (" + i + ", " + i2 + ") and offset (" + i3 + ", " + i4 + ") that doesn't allow the ad to appear within the max allowed size (" + mraidController.g.f34449d.width() + ", " + mraidController.g.f34449d.height() + ")");
                            }
                            rect.offsetTo(MraidController.a(rect2.left, rect.left, rect2.right - rect.width()), MraidController.a(rect2.top, rect.top, rect2.bottom - rect.height()));
                        }
                        Rect rect3 = new Rect();
                        mraidController.f.applyCloseRegionBounds(closePosition, rect, rect3);
                        if (!mraidController.g.f34448c.contains(rect3)) {
                            throw new com.mopub.mraid.a("resizeProperties specified a size (" + i + ", " + i2 + ") and offset (" + i3 + ", " + i4 + ") that doesn't allow the close region to appear within the max allowed size (" + mraidController.g.f34449d.width() + ", " + mraidController.g.f34449d.height() + ")");
                        } else if (rect.contains(rect3)) {
                            mraidController.f.setClosePosition(closePosition);
                            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(rect.width(), rect.height());
                            layoutParams.leftMargin = rect.left - mraidController.g.f34448c.left;
                            layoutParams.topMargin = rect.top - mraidController.g.f34448c.top;
                            if (mraidController.h == ViewState.DEFAULT) {
                                if (mraidController.mWebView instanceof BaseWebViewViewability) {
                                    ((BaseWebViewViewability) mraidController.mWebView).disableTracking();
                                }
                                mraidController.mDefaultAdContainer.removeView(mraidController.mWebView);
                                mraidController.mDefaultAdContainer.setVisibility(4);
                                mraidController.f.addView(mraidController.mWebView, new FrameLayout.LayoutParams(-1, -1));
                                mraidController.d().addView(mraidController.f, layoutParams);
                                if (mraidController.mWebView instanceof BaseWebViewViewability) {
                                    ((BaseWebViewViewability) mraidController.mWebView).enableTracking();
                                }
                            } else if (mraidController.h == ViewState.RESIZED) {
                                mraidController.f.setLayoutParams(layoutParams);
                            }
                            mraidController.f.setClosePosition(closePosition);
                            mraidController.a(ViewState.RESIZED);
                        } else {
                            throw new com.mopub.mraid.a("resizeProperties specified a size (" + i + ", " + dipsToIntPixels2 + ") and offset (" + i3 + ", " + i4 + ") that don't allow the close region to appear within the resized ad.");
                        }
                    } else {
                        throw new com.mopub.mraid.a("Not allowed to resize from an interstitial ad");
                    }
                }
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final void onSetOrientationProperties(boolean z, b bVar) throws com.mopub.mraid.a {
                MraidController.this.a(z, bVar);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final void onUseCustomClose(boolean z) {
                MraidController.this.a(z);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final void onVisibilityChanged(boolean z) {
                if (!MraidController.this.n.c()) {
                    MraidController.this.m.a(z);
                }
            }
        };
        this.v = mraidBridgeListener;
        MraidBridge.MraidBridgeListener mraidBridgeListener2 = new MraidBridge.MraidBridgeListener() { // from class: com.mopub.mraid.MraidController.5
            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final void onClose() {
                MraidController.this.c();
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
                return MraidController.this.a(consoleMessage);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final void onExpand(URI uri, boolean z) {
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final boolean onJsAlert(String str2, JsResult jsResult) {
                return MraidController.this.a(str2, jsResult);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final void onOpen(URI uri) {
                MraidController.this.a(uri.toString());
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final void onPageFailedToLoad() {
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final void onPageLoaded() {
                final MraidController mraidController = MraidController.this;
                mraidController.a(new Runnable() { // from class: com.mopub.mraid.MraidController.6
                    @Override // java.lang.Runnable
                    public final void run() {
                        MraidBridge mraidBridge3 = MraidController.this.n;
                        MraidNativeCommandHandler unused = MraidController.this.t;
                        Context unused2 = MraidController.this.mContext;
                        MraidNativeCommandHandler unused3 = MraidController.this.t;
                        Context unused4 = MraidController.this.mContext;
                        MraidNativeCommandHandler unused5 = MraidController.this.t;
                        Context unused6 = MraidController.this.mContext;
                        boolean a2 = MraidNativeCommandHandler.a();
                        MraidNativeCommandHandler unused7 = MraidController.this.t;
                        mraidBridge3.a(false, false, a2, MraidNativeCommandHandler.isStorePictureSupported(MraidController.this.mContext), MraidController.this.a());
                        MraidController.this.n.a(MraidController.this.h);
                        MraidController.this.n.a(MraidController.this.e);
                        MraidController.this.n.a(MraidController.this.n.b());
                        MraidController.this.n.a("mraidbridge.notifyReadyEvent();");
                    }
                });
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final void onRenderProcessGone(MoPubErrorCode moPubErrorCode) {
                MraidController.this.a(moPubErrorCode);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final void onResize(int i, int i2, int i3, int i4, CloseableLayout.ClosePosition closePosition, boolean z) throws com.mopub.mraid.a {
                throw new com.mopub.mraid.a("Not allowed to resize from an expanded state");
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final void onSetOrientationProperties(boolean z, b bVar) throws com.mopub.mraid.a {
                MraidController.this.a(z, bVar);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final void onUseCustomClose(boolean z) {
                MraidController.this.a(z);
            }

            @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
            public final void onVisibilityChanged(boolean z) {
                MraidController.this.m.a(z);
                MraidController.this.n.a(z);
            }
        };
        this.w = mraidBridgeListener2;
        this.e = placementType;
        this.m = mraidBridge;
        this.n = mraidBridge2;
        this.j = screenMetricsWaiter;
        this.h = ViewState.LOADING;
        this.g = new c(this.mContext, this.mContext.getResources().getDisplayMetrics().density);
        CloseableLayout closeableLayout = new CloseableLayout(this.mContext);
        this.f = closeableLayout;
        closeableLayout.setOnCloseListener(new CloseableLayout.OnCloseListener() { // from class: com.mopub.mraid.MraidController.2
            @Override // com.mopub.common.CloseableLayout.OnCloseListener
            public final void onClose() {
                MraidController.this.c();
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
        this.o.register(this.mContext);
        mraidBridge.f34422a = mraidBridgeListener;
        mraidBridge2.f34422a = mraidBridgeListener2;
        this.t = new MraidNativeCommandHandler();
    }

    public MraidController(Context context, String str, PlacementType placementType, boolean z) {
        this(context, str, placementType, new MraidBridge(placementType, z), new MraidBridge(PlacementType.INTERSTITIAL, z), new MoPubWebViewController.ScreenMetricsWaiter());
    }

    static int a(int i, int i2, int i3) {
        return Math.max(i, Math.min(i2, i3));
    }

    private void a(int i) throws com.mopub.mraid.a {
        Activity activity = this.f34141a.get();
        if (activity == null || !a(this.s)) {
            throw new com.mopub.mraid.a("Attempted to lock orientation to unsupported value: " + this.s.name());
        }
        if (this.p == null) {
            this.p = Integer.valueOf(activity.getRequestedOrientation());
        }
        activity.setRequestedOrientation(i);
    }

    private static void a(BaseHtmlWebView.BaseWebViewListener baseWebViewListener, ViewState viewState, ViewState viewState2) {
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
        } else if (viewState2 == ViewState.RESIZED) {
            baseWebViewListener.onResize(false);
        }
    }

    private boolean a(b bVar) {
        if (bVar == b.NONE) {
            return true;
        }
        Activity activity = this.f34141a.get();
        if (activity == null) {
            return false;
        }
        try {
            ActivityInfo activityInfo = activity.getPackageManager().getActivityInfo(new ComponentName(activity, activity.getClass()), 0);
            int i = activityInfo.screenOrientation;
            return i != -1 ? i == bVar.getActivityInfoOrientation() : Utils.bitMaskContainsFlag(activityInfo.configChanges, 128) && Utils.bitMaskContainsFlag(activityInfo.configChanges, 1024);
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    private void e() {
        this.n.a();
        this.l = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public ViewGroup f() {
        ViewGroup viewGroup = this.i;
        if (viewGroup != null) {
            return viewGroup;
        }
        View topmostView = Views.getTopmostView(this.f34141a.get(), this.mDefaultAdContainer);
        return topmostView instanceof ViewGroup ? (ViewGroup) topmostView : this.mDefaultAdContainer;
    }

    private void g() throws com.mopub.mraid.a {
        if (this.s != b.NONE) {
            a(this.s.getActivityInfoOrientation());
        } else if (this.r) {
            h();
        } else {
            Activity activity = this.f34141a.get();
            if (activity != null) {
                a(DeviceUtils.getScreenOrientation(activity));
                return;
            }
            throw new com.mopub.mraid.a("Unable to set MRAID expand orientation to 'none'; expected passed in Activity Context.");
        }
    }

    private void h() {
        Integer num;
        Activity activity = this.f34141a.get();
        if (!(activity == null || (num = this.p) == null)) {
            activity.setRequestedOrientation(num.intValue());
        }
        this.p = null;
    }

    private boolean i() {
        return !this.f.isCloseVisible();
    }

    static /* synthetic */ int w(MraidController mraidController) {
        return ((WindowManager) mraidController.mContext.getSystemService("window")).getDefaultDisplay().getRotation();
    }

    final void a(MoPubErrorCode moPubErrorCode) {
        if (this.mBaseWebViewListener != null) {
            this.mBaseWebViewListener.onRenderProcessGone(moPubErrorCode);
        }
    }

    void a(ViewState viewState) {
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MRAID state set to ".concat(String.valueOf(viewState)));
        ViewState viewState2 = this.h;
        this.h = viewState;
        this.m.a(viewState);
        if (this.n.f34423b) {
            this.n.a(viewState);
        }
        if (this.mBaseWebViewListener != null) {
            a(this.mBaseWebViewListener, viewState2, viewState);
        }
        a((Runnable) null);
    }

    void a(final Runnable runnable) {
        this.j.cancelLastRequest();
        final MraidBridge.MraidWebView currentWebView = getCurrentWebView();
        if (currentWebView != null) {
            this.j.waitFor(this.mDefaultAdContainer, currentWebView).start(new Runnable() { // from class: com.mopub.mraid.MraidController.7
                @Override // java.lang.Runnable
                public final void run() {
                    DisplayMetrics displayMetrics = MraidController.this.mContext.getResources().getDisplayMetrics();
                    c cVar = MraidController.this.g;
                    cVar.f34446a.set(0, 0, displayMetrics.widthPixels, displayMetrics.heightPixels);
                    cVar.a(cVar.f34446a, cVar.f34447b);
                    int[] iArr = new int[2];
                    ViewGroup f = MraidController.this.f();
                    f.getLocationOnScreen(iArr);
                    c cVar2 = MraidController.this.g;
                    int i = iArr[0];
                    int i2 = iArr[1];
                    cVar2.f34448c.set(i, i2, f.getWidth() + i, f.getHeight() + i2);
                    cVar2.a(cVar2.f34448c, cVar2.f34449d);
                    MraidController.this.mDefaultAdContainer.getLocationOnScreen(iArr);
                    c cVar3 = MraidController.this.g;
                    int i3 = iArr[0];
                    int i4 = iArr[1];
                    cVar3.g.set(i3, i4, MraidController.this.mDefaultAdContainer.getWidth() + i3, MraidController.this.mDefaultAdContainer.getHeight() + i4);
                    cVar3.a(cVar3.g, cVar3.h);
                    currentWebView.getLocationOnScreen(iArr);
                    c cVar4 = MraidController.this.g;
                    int i5 = iArr[0];
                    int i6 = iArr[1];
                    cVar4.e.set(i5, i6, currentWebView.getWidth() + i5, currentWebView.getHeight() + i6);
                    cVar4.a(cVar4.e, cVar4.f);
                    MraidController.this.m.notifyScreenMetrics(MraidController.this.g);
                    if (MraidController.this.n.c()) {
                        MraidController.this.n.notifyScreenMetrics(MraidController.this.g);
                    }
                    Runnable runnable2 = runnable;
                    if (runnable2 != null) {
                        runnable2.run();
                    }
                }
            });
        }
    }

    final void a(String str) {
        if (this.mBaseWebViewListener != null) {
            this.mBaseWebViewListener.onClicked();
        }
        Uri parse = Uri.parse(str);
        if (UrlAction.HANDLE_PHONE_SCHEME.shouldTryHandlingUrl(parse)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, String.format("Uri scheme %s is not allowed.", parse.getScheme()), new com.mopub.mraid.a("Unsupported MRAID Javascript command"));
            return;
        }
        UrlHandler.Builder builder = new UrlHandler.Builder();
        if (!TextUtils.isEmpty(this.u)) {
            builder.withDspCreativeId(this.u);
        }
        EnumSet<UrlAction> of = EnumSet.of(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK);
        if (ManifestUtils.isDebuggable(this.mContext)) {
            of.add(UrlAction.HANDLE_MOPUB_SCHEME);
            builder.withMoPubSchemeListener(this.q);
        }
        builder.withSupportedUrlActions(of).build().handleUrl(this.mContext, str);
    }

    final void a(URI uri, boolean z) throws com.mopub.mraid.a {
        if (this.mWebView == null) {
            throw new com.mopub.mraid.a("Unable to expand after the WebView is destroyed");
        } else if (this.e != PlacementType.INTERSTITIAL) {
            if (this.h == ViewState.DEFAULT || this.h == ViewState.RESIZED) {
                g();
                boolean z2 = uri != null;
                if (z2) {
                    MraidBridge.MraidWebView mraidWebView = (MraidBridge.MraidWebView) createWebView();
                    this.l = mraidWebView;
                    mraidWebView.disableTracking();
                    this.n.a(this.l);
                    this.n.setContentUrl(uri.toString());
                }
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
                if (this.h == ViewState.DEFAULT) {
                    if (z2) {
                        this.f.addView(this.l, layoutParams);
                    } else {
                        if (this.mWebView instanceof BaseWebViewViewability) {
                            ((BaseWebViewViewability) this.mWebView).disableTracking();
                        }
                        this.mDefaultAdContainer.removeView(this.mWebView);
                        this.mDefaultAdContainer.setVisibility(4);
                        this.f.addView(this.mWebView, layoutParams);
                        if (this.mWebView instanceof BaseWebViewViewability) {
                            ((BaseWebViewViewability) this.mWebView).enableTracking();
                        }
                    }
                    d().addView(this.f, new FrameLayout.LayoutParams(-1, -1));
                } else if (this.h == ViewState.RESIZED && z2) {
                    if (this.mWebView instanceof BaseWebViewViewability) {
                        ((BaseWebViewViewability) this.mWebView).disableTracking();
                    }
                    this.f.removeView(this.mWebView);
                    this.mDefaultAdContainer.addView(this.mWebView, layoutParams);
                    if (this.mWebView instanceof BaseWebViewViewability) {
                        ((BaseWebViewViewability) this.mWebView).enableTracking();
                    }
                    this.mDefaultAdContainer.setVisibility(4);
                    this.f.addView(this.l, layoutParams);
                }
                this.f.setLayoutParams(layoutParams);
                a(z);
                a(ViewState.EXPANDED);
            }
        }
    }

    protected final void a(boolean z) {
        if (z != i()) {
            this.f.setCloseVisible(!z);
            UseCustomCloseListener useCustomCloseListener = this.k;
            if (useCustomCloseListener != null) {
                useCustomCloseListener.useCustomCloseChanged(z);
            }
        }
    }

    final void a(boolean z, b bVar) throws com.mopub.mraid.a {
        if (a(bVar)) {
            this.r = z;
            this.s = bVar;
            if (this.h == ViewState.EXPANDED || (this.e == PlacementType.INTERSTITIAL && !this.f34144d)) {
                g();
                return;
            }
            return;
        }
        throw new com.mopub.mraid.a("Unable to force orientation to ".concat(String.valueOf(bVar)));
    }

    final boolean a() {
        Activity activity = this.f34141a.get();
        if (activity == null || getCurrentWebView() == null) {
            return false;
        }
        if (this.e != PlacementType.INLINE) {
            return true;
        }
        getCurrentWebView();
        return MraidNativeCommandHandler.a(activity);
    }

    final boolean a(ConsoleMessage consoleMessage) {
        if (this.f34142b != null) {
            return this.f34142b.onConsoleMessage(consoleMessage);
        }
        return true;
    }

    final boolean a(String str, JsResult jsResult) {
        if (this.f34142b != null) {
            return this.f34142b.onJsAlert(str, jsResult);
        }
        jsResult.confirm();
        return true;
    }

    final void b() {
        this.m.a(false, false, MraidNativeCommandHandler.a(), MraidNativeCommandHandler.isStorePictureSupported(this.mContext), a());
        this.m.a(this.e);
        MraidBridge mraidBridge = this.m;
        mraidBridge.a(mraidBridge.b());
        this.m.notifyScreenMetrics(this.g);
        a(ViewState.DEFAULT);
        this.m.a("mraidbridge.notifyReadyEvent();");
    }

    protected final void c() {
        MraidBridge.MraidWebView mraidWebView;
        if (this.mWebView != null && this.h != ViewState.LOADING && this.h != ViewState.HIDDEN) {
            if (this.h == ViewState.EXPANDED || this.e == PlacementType.INTERSTITIAL) {
                h();
            }
            if (this.h == ViewState.RESIZED || this.h == ViewState.EXPANDED) {
                if (!this.n.c() || (mraidWebView = this.l) == null) {
                    this.f.removeView(this.mWebView);
                    this.mDefaultAdContainer.addView(this.mWebView, new FrameLayout.LayoutParams(-1, -1));
                    this.mDefaultAdContainer.setVisibility(0);
                } else {
                    e();
                    this.f.removeView(mraidWebView);
                }
                Views.removeFromParent(this.f);
                a(ViewState.DEFAULT);
            } else if (this.h == ViewState.DEFAULT) {
                this.mDefaultAdContainer.setVisibility(4);
                a(ViewState.HIDDEN);
            }
        }
    }

    @Override // com.mopub.mobileads.MoPubWebViewController
    public BaseWebView createWebView() {
        return new MraidBridge.MraidWebView(this.mContext);
    }

    ViewGroup d() {
        if (this.i == null) {
            this.i = f();
        }
        return this.i;
    }

    @Override // com.mopub.mobileads.MoPubWebViewController
    public final void destroy() {
        super.destroy();
        this.j.cancelLastRequest();
        try {
            this.o.unregister();
        } catch (IllegalArgumentException e) {
            if (!e.getMessage().contains("Receiver not registered")) {
                throw e;
            }
        }
        Views.removeFromParent(this.f);
        this.m.a();
        this.mWebView = null;
        e();
        h();
    }

    @Override // com.mopub.mobileads.MoPubWebViewController
    public final void doFillContent(String str) {
        this.m.a((MraidBridge.MraidWebView) this.mWebView);
        this.mDefaultAdContainer.addView(this.mWebView, new FrameLayout.LayoutParams(-1, -1));
        if (Patterns.WEB_URL.matcher(str).matches()) {
            this.m.setContentUrl(str);
        } else {
            this.m.setContentHtml(str);
        }
    }

    @Override // com.mopub.mobileads.MoPubWebViewController
    public Context getContext() {
        return this.mContext;
    }

    public MraidBridge.MraidWebView getCurrentWebView() {
        return this.n.c() ? this.l : (MraidBridge.MraidWebView) this.mWebView;
    }

    public final ViewGroup.LayoutParams getLayoutParams() {
        return new ViewGroup.LayoutParams(-1, -1);
    }

    @Override // com.mopub.mobileads.MoPubWebViewController
    public void loadJavascript(String str) {
        this.m.a(str);
    }

    @Override // com.mopub.mobileads.MoPubWebViewController
    public void onShow(Activity activity) {
        super.onShow(activity);
        UseCustomCloseListener useCustomCloseListener = this.k;
        if (useCustomCloseListener != null) {
            useCustomCloseListener.useCustomCloseChanged(i());
        }
        try {
            g();
        } catch (com.mopub.mraid.a e) {
            MoPubLog.d("Failed to apply orientation.");
        }
    }

    @Override // com.mopub.mobileads.MoPubWebViewController
    public final void pause(boolean z) {
        super.pause(z);
        MraidBridge.MraidWebView mraidWebView = this.l;
        if (mraidWebView != null) {
            WebViews.onPause(mraidWebView, z);
        }
    }

    @Override // com.mopub.mobileads.MoPubWebViewController
    public final void resume() {
        super.resume();
        MraidBridge.MraidWebView mraidWebView = this.l;
        if (mraidWebView != null) {
            mraidWebView.onResume();
        }
    }

    @Override // com.mopub.mobileads.MoPubWebViewController
    public void setDebugListener(WebViewDebugListener webViewDebugListener) {
        this.f34142b = webViewDebugListener;
    }

    public void setUseCustomCloseListener(UseCustomCloseListener useCustomCloseListener) {
        this.k = useCustomCloseListener;
    }
}
