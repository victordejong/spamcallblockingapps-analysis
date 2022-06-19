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
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.common.util.DeviceUtils;
import com.mopub.common.util.Dips;
import com.mopub.common.util.ManifestUtils;
import com.mopub.common.util.Utils;
import com.mopub.common.util.Views;
import com.mopub.mobileads.BaseHtmlWebView;
import com.mopub.mobileads.BaseVideoPlayerActivity;
import com.mopub.mobileads.BaseWebView;
import com.mopub.mobileads.BaseWebViewViewability;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.MoPubWebViewController;
import com.mopub.mobileads.util.WebViews;
import com.mopub.mraid.MraidBridge;
import java.net.URI;
import java.util.EnumSet;
/* loaded from: classes3-dex2jar.jar:com/mopub/mraid/MraidController.class */
public class MraidController extends MoPubWebViewController {

    /* renamed from: A */
    public final MraidBridge.MraidBridgeListener f5048A;

    /* renamed from: i */
    public final PlacementType f5049i;

    /* renamed from: j */
    public final CloseableLayout f5050j;

    /* renamed from: k */
    public ViewGroup f5051k;

    /* renamed from: l */
    public final MoPubWebViewController.ScreenMetricsWaiter f5052l;

    /* renamed from: m */
    public final th1 f5053m;

    /* renamed from: n */
    public ViewState f5054n;

    /* renamed from: o */
    public UseCustomCloseListener f5055o;

    /* renamed from: p */
    public MraidBridge.MraidWebView f5056p;

    /* renamed from: q */
    public final MraidBridge f5057q;

    /* renamed from: r */
    public final MraidBridge f5058r;

    /* renamed from: s */
    public C1160h f5059s;

    /* renamed from: t */
    public Integer f5060t;

    /* renamed from: u */
    public UrlHandler.MoPubSchemeListener f5061u;

    /* renamed from: v */
    public boolean f5062v;

    /* renamed from: w */
    public sh1 f5063w;

    /* renamed from: x */
    public final MraidNativeCommandHandler f5064x;

    /* renamed from: y */
    public String f5065y;

    /* renamed from: z */
    public final MraidBridge.MraidBridgeListener f5066z;

    /* loaded from: classes3-dex2jar.jar:com/mopub/mraid/MraidController$UseCustomCloseListener.class */
    public interface UseCustomCloseListener {
        void useCustomCloseChanged(boolean z);
    }

    /* renamed from: com.mopub.mraid.MraidController$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mraid/MraidController$a.class */
    public class C1153a implements UrlHandler.MoPubSchemeListener {
        public C1153a() {
            MraidController.this = r4;
        }

        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public void onClose() {
        }

        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public void onCrash() {
            if (MraidController.this.f4760f != null) {
                MraidController.this.f4760f.loadUrl("chrome://crash");
            }
        }

        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public void onFailLoad() {
        }

        @Override // com.mopub.common.UrlHandler.MoPubSchemeListener
        public void onFinishLoad() {
        }
    }

    /* renamed from: com.mopub.mraid.MraidController$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mraid/MraidController$b.class */
    public class C1154b implements CloseableLayout.OnCloseListener {
        public C1154b() {
            MraidController.this = r4;
        }

        @Override // com.mopub.common.CloseableLayout.OnCloseListener
        public void onClose() {
            MraidController.this.m3452J();
        }
    }

    /* renamed from: com.mopub.mraid.MraidController$c */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mraid/MraidController$c.class */
    public class View$OnTouchListenerC1155c implements View.OnTouchListener {
        public View$OnTouchListenerC1155c(MraidController mraidController) {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            return true;
        }
    }

    /* renamed from: com.mopub.mraid.MraidController$d */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mraid/MraidController$d.class */
    public class C1156d implements MraidBridge.MraidBridgeListener {
        public C1156d() {
            MraidController.this = r4;
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onClose() {
            MraidController.this.m3452J();
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            return MraidController.this.m3451K(consoleMessage);
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onExpand(URI uri, boolean z) {
            MraidController.this.m3449M(uri, z);
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public boolean onJsAlert(String str, JsResult jsResult) {
            return MraidController.this.m3448N(str, jsResult);
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onOpen(URI uri) {
            MraidController.this.m3447O(uri.toString());
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onPageFailedToLoad() {
            if (MraidController.this.f4758d != null) {
                MraidController.this.f4758d.onFailedToLoad(MoPubErrorCode.MRAID_LOAD_ERROR);
            }
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onPageLoaded() {
            MraidController.this.m3445Q();
            if (MraidController.this.f4758d != null) {
                MraidController.this.f4758d.onLoaded(MraidController.this.f4757c);
            }
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onPlayVideo(URI uri) {
            MraidController.this.m3441U(uri.toString());
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onRenderProcessGone(MoPubErrorCode moPubErrorCode) {
            MraidController.this.m3444R(moPubErrorCode);
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onResize(int i, int i2, int i3, int i4, CloseableLayout.ClosePosition closePosition, boolean z) {
            MraidController.this.m3443S(i, i2, i3, i4, closePosition, z);
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onSetOrientationProperties(boolean z, sh1 sh1Var) {
            MraidController.this.m3442T(z, sh1Var);
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onUseCustomClose(boolean z) {
            MraidController.this.m3450L(z);
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onVisibilityChanged(boolean z) {
            if (!MraidController.this.f5058r.m3476m()) {
                MraidController.this.f5057q.m3468u(z);
            }
        }
    }

    /* renamed from: com.mopub.mraid.MraidController$e */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mraid/MraidController$e.class */
    public class C1157e implements MraidBridge.MraidBridgeListener {
        public C1157e() {
            MraidController.this = r4;
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onClose() {
            MraidController.this.m3452J();
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            return MraidController.this.m3451K(consoleMessage);
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onExpand(URI uri, boolean z) {
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public boolean onJsAlert(String str, JsResult jsResult) {
            return MraidController.this.m3448N(str, jsResult);
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onOpen(URI uri) {
            MraidController.this.m3447O(uri.toString());
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onPageFailedToLoad() {
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onPageLoaded() {
            MraidController.this.m3440V();
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onPlayVideo(URI uri) {
            MraidController.this.m3441U(uri.toString());
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onRenderProcessGone(MoPubErrorCode moPubErrorCode) {
            MraidController.this.m3444R(moPubErrorCode);
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onResize(int i, int i2, int i3, int i4, CloseableLayout.ClosePosition closePosition, boolean z) {
            throw new rh1("Not allowed to resize from an expanded state");
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onSetOrientationProperties(boolean z, sh1 sh1Var) {
            MraidController.this.m3442T(z, sh1Var);
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onUseCustomClose(boolean z) {
            MraidController.this.m3450L(z);
        }

        @Override // com.mopub.mraid.MraidBridge.MraidBridgeListener
        public void onVisibilityChanged(boolean z) {
            MraidController.this.f5057q.m3468u(z);
            MraidController.this.f5058r.m3468u(z);
        }
    }

    /* renamed from: com.mopub.mraid.MraidController$f */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mraid/MraidController$f.class */
    public class RunnableC1158f implements Runnable {
        public RunnableC1158f() {
            MraidController.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            MraidBridge mraidBridge = MraidController.this.f5058r;
            boolean m3401c = MraidController.this.f5064x.m3401c(MraidController.this.f4756b);
            boolean m3400d = MraidController.this.f5064x.m3400d(MraidController.this.f4756b);
            MraidNativeCommandHandler unused = MraidController.this.f5064x;
            boolean m3403a = MraidNativeCommandHandler.m3403a(MraidController.this.f4756b);
            MraidNativeCommandHandler unused2 = MraidController.this.f5064x;
            mraidBridge.m3470s(m3401c, m3400d, m3403a, MraidNativeCommandHandler.isStorePictureSupported(MraidController.this.f4756b), MraidController.this.m3439W());
            MraidController.this.f5058r.m3469t(MraidController.this.f5054n);
            MraidController.this.f5058r.m3472q(MraidController.this.f5049i);
            MraidController.this.f5058r.m3468u(MraidController.this.f5058r.m3473p());
            MraidController.this.f5058r.m3471r();
        }
    }

    /* renamed from: com.mopub.mraid.MraidController$g */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mraid/MraidController$g.class */
    public class RunnableC1159g implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ View f5072a;

        /* renamed from: b */
        public final /* synthetic */ Runnable f5073b;

        public RunnableC1159g(View view, Runnable runnable) {
            MraidController.this = r4;
            this.f5072a = view;
            this.f5073b = runnable;
        }

        @Override // java.lang.Runnable
        public void run() {
            DisplayMetrics displayMetrics = MraidController.this.f4756b.getResources().getDisplayMetrics();
            MraidController.this.f5053m.m488k(displayMetrics.widthPixels, displayMetrics.heightPixels);
            int[] iArr = new int[2];
            ViewGroup m3453I = MraidController.this.m3453I();
            m3453I.getLocationOnScreen(iArr);
            MraidController.this.f5053m.m489j(iArr[0], iArr[1], m3453I.getWidth(), m3453I.getHeight());
            MraidController.this.f4757c.getLocationOnScreen(iArr);
            MraidController.this.f5053m.m490i(iArr[0], iArr[1], MraidController.this.f4757c.getWidth(), MraidController.this.f4757c.getHeight());
            this.f5072a.getLocationOnScreen(iArr);
            MraidController.this.f5053m.m491h(iArr[0], iArr[1], this.f5072a.getWidth(), this.f5072a.getHeight());
            MraidController.this.f5057q.notifyScreenMetrics(MraidController.this.f5053m);
            if (MraidController.this.f5058r.m3476m()) {
                MraidController.this.f5058r.notifyScreenMetrics(MraidController.this.f5053m);
            }
            Runnable runnable = this.f5073b;
            if (runnable != null) {
                runnable.run();
            }
        }
    }

    @VisibleForTesting
    /* renamed from: com.mopub.mraid.MraidController$h */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mraid/MraidController$h.class */
    public class C1160h extends BroadcastReceiver {

        /* renamed from: a */
        public Context f5075a;

        /* renamed from: b */
        public int f5076b = -1;

        public C1160h() {
            MraidController.this = r4;
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            int m3454H;
            if (this.f5075a == null || !"android.intent.action.CONFIGURATION_CHANGED".equals(intent.getAction()) || (m3454H = MraidController.this.m3454H()) == this.f5076b) {
                return;
            }
            this.f5076b = m3454H;
            MraidController.this.m3446P(m3454H);
        }

        public void register(Context context) {
            Preconditions.checkNotNull(context);
            Context applicationContext = context.getApplicationContext();
            this.f5075a = applicationContext;
            if (applicationContext != null) {
                applicationContext.registerReceiver(this, new IntentFilter("android.intent.action.CONFIGURATION_CHANGED"));
            }
        }

        public void unregister() {
            Context context = this.f5075a;
            if (context != null) {
                context.unregisterReceiver(this);
                this.f5075a = null;
            }
        }
    }

    @VisibleForTesting
    public MraidController(Context context, String str, PlacementType placementType, MraidBridge mraidBridge, MraidBridge mraidBridge2, MoPubWebViewController.ScreenMetricsWaiter screenMetricsWaiter) {
        super(context, str);
        ViewState viewState = ViewState.LOADING;
        this.f5054n = viewState;
        this.f5059s = new C1160h();
        this.f5061u = new C1153a();
        this.f5062v = true;
        this.f5063w = sh1.NONE;
        C1156d c1156d = new C1156d();
        this.f5066z = c1156d;
        C1157e c1157e = new C1157e();
        this.f5048A = c1157e;
        this.f5049i = placementType;
        this.f5057q = mraidBridge;
        this.f5058r = mraidBridge2;
        this.f5052l = screenMetricsWaiter;
        this.f5054n = viewState;
        this.f5053m = new th1(this.f4756b, this.f4756b.getResources().getDisplayMetrics().density);
        CloseableLayout closeableLayout = new CloseableLayout(this.f4756b);
        this.f5050j = closeableLayout;
        closeableLayout.setOnCloseListener(new C1154b());
        View view = new View(this.f4756b);
        view.setOnTouchListener(new View$OnTouchListenerC1155c(this));
        closeableLayout.addView(view, new FrameLayout.LayoutParams(-1, -1));
        this.f5059s.register(this.f4756b);
        mraidBridge.m3491E(c1156d);
        mraidBridge2.m3491E(c1157e);
        this.f5064x = new MraidNativeCommandHandler();
    }

    public MraidController(Context context, String str, PlacementType placementType, boolean z) {
        this(context, str, placementType, new MraidBridge(placementType, z), new MraidBridge(PlacementType.INTERSTITIAL, z), new MoPubWebViewController.ScreenMetricsWaiter());
    }

    @VisibleForTesting
    /* renamed from: C */
    public static void m3459C(BaseHtmlWebView.BaseWebViewListener baseWebViewListener, ViewState viewState, ViewState viewState2) {
        boolean z;
        Preconditions.checkNotNull(baseWebViewListener);
        Preconditions.checkNotNull(viewState);
        Preconditions.checkNotNull(viewState2);
        ViewState viewState3 = ViewState.EXPANDED;
        if (viewState2 == viewState3) {
            baseWebViewListener.onExpand();
        } else if ((viewState == viewState3 && viewState2 == ViewState.DEFAULT) || viewState2 == ViewState.HIDDEN) {
            baseWebViewListener.onClose();
        } else {
            ViewState viewState4 = ViewState.RESIZED;
            if (viewState == viewState4 && viewState2 == ViewState.DEFAULT) {
                z = true;
            } else if (viewState2 != viewState4) {
                return;
            } else {
                z = false;
            }
            baseWebViewListener.onResize(z);
        }
    }

    @VisibleForTesting
    /* renamed from: B */
    public void m3460B() {
        int i;
        sh1 sh1Var = this.f5063w;
        if (sh1Var != sh1.NONE) {
            i = sh1Var.m564a();
        } else if (this.f5062v) {
            m3432b0();
            return;
        } else {
            Activity activity = this.f4755a.get();
            if (activity == null) {
                throw new rh1("Unable to set MRAID expand orientation to 'none'; expected passed in Activity Context.");
            }
            i = DeviceUtils.getScreenOrientation(activity);
        }
        m3437Y(i);
    }

    /* renamed from: D */
    public int m3458D(int i, int i2, int i3) {
        return Math.max(i, Math.min(i2, i3));
    }

    /* renamed from: E */
    public final void m3457E() {
        this.f5057q.m3483f();
        this.f4760f = null;
    }

    /* renamed from: F */
    public final void m3456F() {
        this.f5058r.m3483f();
        this.f5056p = null;
    }

    /* renamed from: G */
    public final ViewGroup m3455G() {
        if (this.f5051k == null) {
            this.f5051k = m3453I();
        }
        return this.f5051k;
    }

    /* renamed from: H */
    public final int m3454H() {
        return ((WindowManager) this.f4756b.getSystemService("window")).getDefaultDisplay().getRotation();
    }

    /* renamed from: I */
    public final ViewGroup m3453I() {
        ViewGroup viewGroup = this.f5051k;
        if (viewGroup != null) {
            return viewGroup;
        }
        View topmostView = Views.getTopmostView(this.f4755a.get(), this.f4757c);
        return topmostView instanceof ViewGroup ? (ViewGroup) topmostView : this.f4757c;
    }

    @VisibleForTesting
    /* renamed from: J */
    public void m3452J() {
        ViewState viewState;
        ViewState viewState2;
        MraidBridge.MraidWebView mraidWebView;
        if (this.f4760f == null || (viewState = this.f5054n) == ViewState.LOADING || viewState == (viewState2 = ViewState.HIDDEN)) {
            return;
        }
        ViewState viewState3 = ViewState.EXPANDED;
        if (viewState == viewState3 || this.f5049i == PlacementType.INTERSTITIAL) {
            m3432b0();
        }
        ViewState viewState4 = this.f5054n;
        if (viewState4 != ViewState.RESIZED && viewState4 != viewState3) {
            if (viewState4 != ViewState.DEFAULT) {
                return;
            }
            this.f4757c.setVisibility(4);
            m3436Z(viewState2);
            return;
        }
        if (!this.f5058r.m3476m() || (mraidWebView = this.f5056p) == null) {
            this.f5050j.removeView(this.f4760f);
            this.f4757c.addView(this.f4760f, new FrameLayout.LayoutParams(-1, -1));
            this.f4757c.setVisibility(0);
        } else {
            m3456F();
            this.f5050j.removeView(mraidWebView);
        }
        Views.removeFromParent(this.f5050j);
        m3436Z(ViewState.DEFAULT);
    }

    @VisibleForTesting
    /* renamed from: K */
    public boolean m3451K(ConsoleMessage consoleMessage) {
        WebViewDebugListener webViewDebugListener = this.f4759e;
        if (webViewDebugListener != null) {
            return webViewDebugListener.onConsoleMessage(consoleMessage);
        }
        return true;
    }

    @VisibleForTesting
    /* renamed from: L */
    public void m3450L(boolean z) {
        if (z == m3438X()) {
            return;
        }
        this.f5050j.setCloseVisible(!z);
        UseCustomCloseListener useCustomCloseListener = this.f5055o;
        if (useCustomCloseListener == null) {
            return;
        }
        useCustomCloseListener.useCustomCloseChanged(z);
    }

    /* renamed from: M */
    public void m3449M(URI uri, boolean z) {
        if (this.f4760f != null) {
            if (this.f5049i == PlacementType.INTERSTITIAL) {
                return;
            }
            ViewState viewState = this.f5054n;
            ViewState viewState2 = ViewState.DEFAULT;
            if (viewState != viewState2 && viewState != ViewState.RESIZED) {
                return;
            }
            m3460B();
            boolean z2 = uri != null;
            if (z2) {
                MraidBridge.MraidWebView mraidWebView = (MraidBridge.MraidWebView) createWebView();
                this.f5056p = mraidWebView;
                mraidWebView.disableTracking();
                this.f5058r.m3485d(this.f5056p);
                this.f5058r.setContentUrl(uri.toString());
            }
            FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -1);
            ViewState viewState3 = this.f5054n;
            if (viewState3 == viewState2) {
                if (z2) {
                    this.f5050j.addView(this.f5056p, layoutParams);
                } else {
                    BaseWebView baseWebView = this.f4760f;
                    if (baseWebView instanceof BaseWebViewViewability) {
                        ((BaseWebViewViewability) baseWebView).disableTracking();
                    }
                    this.f4757c.removeView(this.f4760f);
                    this.f4757c.setVisibility(4);
                    this.f5050j.addView(this.f4760f, layoutParams);
                    BaseWebView baseWebView2 = this.f4760f;
                    if (baseWebView2 instanceof BaseWebViewViewability) {
                        ((BaseWebViewViewability) baseWebView2).enableTracking();
                    }
                }
                m3455G().addView(this.f5050j, new FrameLayout.LayoutParams(-1, -1));
            } else if (viewState3 == ViewState.RESIZED && z2) {
                BaseWebView baseWebView3 = this.f4760f;
                if (baseWebView3 instanceof BaseWebViewViewability) {
                    ((BaseWebViewViewability) baseWebView3).disableTracking();
                }
                this.f5050j.removeView(this.f4760f);
                this.f4757c.addView(this.f4760f, layoutParams);
                BaseWebView baseWebView4 = this.f4760f;
                if (baseWebView4 instanceof BaseWebViewViewability) {
                    ((BaseWebViewViewability) baseWebView4).enableTracking();
                }
                this.f4757c.setVisibility(4);
                this.f5050j.addView(this.f5056p, layoutParams);
            }
            this.f5050j.setLayoutParams(layoutParams);
            m3450L(z);
            m3436Z(ViewState.EXPANDED);
            return;
        }
        throw new rh1("Unable to expand after the WebView is destroyed");
    }

    @VisibleForTesting
    /* renamed from: N */
    public boolean m3448N(String str, JsResult jsResult) {
        WebViewDebugListener webViewDebugListener = this.f4759e;
        if (webViewDebugListener != null) {
            return webViewDebugListener.onJsAlert(str, jsResult);
        }
        jsResult.confirm();
        return true;
    }

    @VisibleForTesting
    /* renamed from: O */
    public void m3447O(String str) {
        BaseHtmlWebView.BaseWebViewListener baseWebViewListener = this.f4758d;
        if (baseWebViewListener != null) {
            baseWebViewListener.onClicked();
        }
        Uri parse = Uri.parse(str);
        if (UrlAction.HANDLE_PHONE_SCHEME.shouldTryHandlingUrl(parse)) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM_WITH_THROWABLE, String.format("Uri scheme %s is not allowed.", parse.getScheme()), new rh1("Unsupported MRAID Javascript command"));
            return;
        }
        UrlHandler.Builder builder = new UrlHandler.Builder();
        if (!TextUtils.isEmpty(this.f5065y)) {
            builder.withDspCreativeId(this.f5065y);
        }
        EnumSet<UrlAction> of = EnumSet.of(UrlAction.IGNORE_ABOUT_SCHEME, UrlAction.OPEN_NATIVE_BROWSER, UrlAction.OPEN_IN_APP_BROWSER, UrlAction.HANDLE_SHARE_TWEET, UrlAction.FOLLOW_DEEP_LINK_WITH_FALLBACK, UrlAction.FOLLOW_DEEP_LINK);
        if (ManifestUtils.isDebuggable(this.f4756b)) {
            of.add(UrlAction.HANDLE_MOPUB_SCHEME);
            builder.withMoPubSchemeListener(this.f5061u);
        }
        builder.withSupportedUrlActions(of).build().handleUrl(this.f4756b, str);
    }

    /* renamed from: P */
    public void m3446P(int i) {
        m3430c0(null);
    }

    @VisibleForTesting
    /* renamed from: Q */
    public void m3445Q() {
        this.f5057q.m3470s(this.f5064x.m3401c(this.f4756b), this.f5064x.m3400d(this.f4756b), MraidNativeCommandHandler.m3403a(this.f4756b), MraidNativeCommandHandler.isStorePictureSupported(this.f4756b), m3439W());
        this.f5057q.m3472q(this.f5049i);
        MraidBridge mraidBridge = this.f5057q;
        mraidBridge.m3468u(mraidBridge.m3473p());
        this.f5057q.notifyScreenMetrics(this.f5053m);
        m3436Z(ViewState.DEFAULT);
        this.f5057q.m3471r();
    }

    @VisibleForTesting
    /* renamed from: R */
    public void m3444R(MoPubErrorCode moPubErrorCode) {
        BaseHtmlWebView.BaseWebViewListener baseWebViewListener = this.f4758d;
        if (baseWebViewListener != null) {
            baseWebViewListener.onRenderProcessGone(moPubErrorCode);
        }
    }

    @VisibleForTesting
    /* renamed from: S */
    public void m3443S(int i, int i2, int i3, int i4, CloseableLayout.ClosePosition closePosition, boolean z) {
        if (this.f4760f != null) {
            ViewState viewState = this.f5054n;
            if (viewState == ViewState.LOADING || viewState == ViewState.HIDDEN) {
                return;
            }
            if (viewState == ViewState.EXPANDED) {
                throw new rh1("Not allowed to resize from an already expanded ad");
            }
            if (this.f5049i == PlacementType.INTERSTITIAL) {
                throw new rh1("Not allowed to resize from an interstitial ad");
            }
            int dipsToIntPixels = Dips.dipsToIntPixels(i, this.f4756b);
            int dipsToIntPixels2 = Dips.dipsToIntPixels(i2, this.f4756b);
            int dipsToIntPixels3 = Dips.dipsToIntPixels(i3, this.f4756b);
            int dipsToIntPixels4 = Dips.dipsToIntPixels(i4, this.f4756b);
            int i5 = this.f5053m.m496c().left + dipsToIntPixels3;
            int i6 = this.f5053m.m496c().top + dipsToIntPixels4;
            Rect rect = new Rect(i5, i6, dipsToIntPixels + i5, i6 + dipsToIntPixels2);
            if (!z) {
                Rect m494e = this.f5053m.m494e();
                if (rect.width() > m494e.width() || rect.height() > m494e.height()) {
                    throw new rh1("resizeProperties specified a size (" + i + ", " + i2 + ") and offset (" + i3 + ", " + i4 + ") that doesn't allow the ad to appear within the max allowed size (" + this.f5053m.m493f().width() + ", " + this.f5053m.m493f().height() + ")");
                }
                rect.offsetTo(m3458D(m494e.left, rect.left, m494e.right - rect.width()), m3458D(m494e.top, rect.top, m494e.bottom - rect.height()));
            }
            Rect rect2 = new Rect();
            this.f5050j.applyCloseRegionBounds(closePosition, rect, rect2);
            if (!this.f5053m.m494e().contains(rect2)) {
                throw new rh1("resizeProperties specified a size (" + i + ", " + i2 + ") and offset (" + i3 + ", " + i4 + ") that doesn't allow the close region to appear within the max allowed size (" + this.f5053m.m493f().width() + ", " + this.f5053m.m493f().height() + ")");
            } else if (!rect.contains(rect2)) {
                throw new rh1("resizeProperties specified a size (" + i + ", " + dipsToIntPixels2 + ") and offset (" + i3 + ", " + i4 + ") that don't allow the close region to appear within the resized ad.");
            } else {
                this.f5050j.setClosePosition(closePosition);
                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(rect.width(), rect.height());
                layoutParams.leftMargin = rect.left - this.f5053m.m494e().left;
                layoutParams.topMargin = rect.top - this.f5053m.m494e().top;
                ViewState viewState2 = this.f5054n;
                if (viewState2 == ViewState.DEFAULT) {
                    BaseWebView baseWebView = this.f4760f;
                    if (baseWebView instanceof BaseWebViewViewability) {
                        ((BaseWebViewViewability) baseWebView).disableTracking();
                    }
                    this.f4757c.removeView(this.f4760f);
                    this.f4757c.setVisibility(4);
                    this.f5050j.addView(this.f4760f, new FrameLayout.LayoutParams(-1, -1));
                    m3455G().addView(this.f5050j, layoutParams);
                    BaseWebView baseWebView2 = this.f4760f;
                    if (baseWebView2 instanceof BaseWebViewViewability) {
                        ((BaseWebViewViewability) baseWebView2).enableTracking();
                    }
                } else if (viewState2 == ViewState.RESIZED) {
                    this.f5050j.setLayoutParams(layoutParams);
                }
                this.f5050j.setClosePosition(closePosition);
                m3436Z(ViewState.RESIZED);
                return;
            }
        }
        throw new rh1("Unable to resize after the WebView is destroyed");
    }

    @VisibleForTesting
    /* renamed from: T */
    public void m3442T(boolean z, sh1 sh1Var) {
        if (!m3434a0(sh1Var)) {
            throw new rh1("Unable to force orientation to " + sh1Var);
        }
        this.f5062v = z;
        this.f5063w = sh1Var;
        if (this.f5054n != ViewState.EXPANDED && (this.f5049i != PlacementType.INTERSTITIAL || this.f4762h)) {
            return;
        }
        m3460B();
    }

    @VisibleForTesting
    /* renamed from: U */
    public void m3441U(String str) {
        BaseVideoPlayerActivity.startMraid(this.f4756b, str);
    }

    @VisibleForTesting
    /* renamed from: V */
    public void m3440V() {
        m3430c0(new RunnableC1158f());
    }

    @VisibleForTesting
    /* renamed from: W */
    public boolean m3439W() {
        Activity activity = this.f4755a.get();
        if (activity == null || getCurrentWebView() == null) {
            return false;
        }
        if (this.f5049i == PlacementType.INLINE) {
            return this.f5064x.m3402b(activity, getCurrentWebView());
        }
        return true;
    }

    /* renamed from: X */
    public final boolean m3438X() {
        return !this.f5050j.isCloseVisible();
    }

    @VisibleForTesting
    /* renamed from: Y */
    public void m3437Y(int i) {
        Activity activity = this.f4755a.get();
        if (activity == null || !m3434a0(this.f5063w)) {
            throw new rh1("Attempted to lock orientation to unsupported value: " + this.f5063w.name());
        }
        if (this.f5060t == null) {
            this.f5060t = Integer.valueOf(activity.getRequestedOrientation());
        }
        activity.setRequestedOrientation(i);
    }

    /* renamed from: Z */
    public final void m3436Z(ViewState viewState) {
        MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
        MoPubLog.log(sdkLogEvent, "MRAID state set to " + viewState);
        ViewState viewState2 = this.f5054n;
        this.f5054n = viewState;
        this.f5057q.m3469t(viewState);
        if (this.f5058r.m3474o()) {
            this.f5058r.m3469t(viewState);
        }
        BaseHtmlWebView.BaseWebViewListener baseWebViewListener = this.f4758d;
        if (baseWebViewListener != null) {
            m3459C(baseWebViewListener, viewState2, viewState);
        }
        m3430c0(null);
    }

    @Override // com.mopub.mobileads.MoPubWebViewController
    /* renamed from: a */
    public void mo3435a() {
        super.mo3435a();
        this.f5052l.cancelLastRequest();
        try {
            this.f5059s.unregister();
        } catch (IllegalArgumentException e) {
            if (!e.getMessage().contains("Receiver not registered")) {
                throw e;
            }
        }
        Views.removeFromParent(this.f5050j);
        m3457E();
        m3456F();
        m3432b0();
    }

    @VisibleForTesting
    /* renamed from: a0 */
    public boolean m3434a0(sh1 sh1Var) {
        boolean z = true;
        if (sh1Var == sh1.NONE) {
            return true;
        }
        Activity activity = this.f4755a.get();
        if (activity == null) {
            return false;
        }
        try {
            ActivityInfo activityInfo = activity.getPackageManager().getActivityInfo(new ComponentName(activity, activity.getClass()), 0);
            int i = activityInfo.screenOrientation;
            if (i == -1) {
                return Utils.bitMaskContainsFlag(activityInfo.configChanges, 128) && Utils.bitMaskContainsFlag(activityInfo.configChanges, 1024);
            }
            if (i != sh1Var.m564a()) {
                z = false;
            }
            return z;
        } catch (PackageManager.NameNotFoundException e) {
            return false;
        }
    }

    @Override // com.mopub.mobileads.MoPubWebViewController
    /* renamed from: b */
    public void mo3433b(String str) {
        this.f5057q.m3485d((MraidBridge.MraidWebView) this.f4760f);
        this.f4757c.addView(this.f4760f, new FrameLayout.LayoutParams(-1, -1));
        this.f5057q.setContentHtml(str);
    }

    @VisibleForTesting
    /* renamed from: b0 */
    public void m3432b0() {
        Integer num;
        Activity activity = this.f4755a.get();
        if (activity != null && (num = this.f5060t) != null) {
            activity.setRequestedOrientation(num.intValue());
        }
        this.f5060t = null;
    }

    @Override // com.mopub.mobileads.MoPubWebViewController
    /* renamed from: c */
    public void mo3431c(boolean z) {
        super.mo3431c(z);
        MraidBridge.MraidWebView mraidWebView = this.f5056p;
        if (mraidWebView != null) {
            WebViews.onPause(mraidWebView, z);
        }
    }

    /* renamed from: c0 */
    public final void m3430c0(Runnable runnable) {
        this.f5052l.cancelLastRequest();
        MraidBridge.MraidWebView currentWebView = getCurrentWebView();
        if (currentWebView == null) {
            return;
        }
        this.f5052l.waitFor(this.f4757c, currentWebView).start(new RunnableC1159g(currentWebView, runnable));
    }

    @Override // com.mopub.mobileads.MoPubWebViewController
    public BaseWebView createWebView() {
        return new MraidBridge.MraidWebView(this.f4756b);
    }

    @Override // com.mopub.mobileads.MoPubWebViewController
    /* renamed from: d */
    public void mo3429d() {
        super.mo3429d();
        MraidBridge.MraidWebView mraidWebView = this.f5056p;
        if (mraidWebView != null) {
            mraidWebView.onResume();
        }
    }

    @Override // com.mopub.mobileads.MoPubWebViewController
    public Context getContext() {
        return this.f4756b;
    }

    public MraidBridge.MraidWebView getCurrentWebView() {
        return this.f5058r.m3476m() ? this.f5056p : (MraidBridge.MraidWebView) this.f4760f;
    }

    @Override // com.mopub.mobileads.MoPubWebViewController
    public void loadJavascript(String str) {
        this.f5057q.m3477l(str);
    }

    @Override // com.mopub.mobileads.MoPubWebViewController
    public void onShow(Activity activity) {
        super.onShow(activity);
        UseCustomCloseListener useCustomCloseListener = this.f5055o;
        if (useCustomCloseListener != null) {
            useCustomCloseListener.useCustomCloseChanged(m3438X());
        }
        try {
            m3460B();
        } catch (rh1 e) {
            MoPubLog.m3866d("Failed to apply orientation.");
        }
    }

    @Override // com.mopub.mobileads.MoPubWebViewController
    public void setDebugListener(WebViewDebugListener webViewDebugListener) {
        this.f4759e = webViewDebugListener;
    }

    public void setUseCustomCloseListener(UseCustomCloseListener useCustomCloseListener) {
        this.f5055o = useCustomCloseListener;
    }
}
