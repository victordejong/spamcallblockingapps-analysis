package com.mopub.mraid;

import android.annotation.TargetApi;
import android.content.Context;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.JsResult;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.google.android.exoplayer2.C0515C;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.google.android.gms.common.internal.ImagesContract;
import com.millennialmedia.internal.utils.EnvironmentUtils;
import com.mopub.common.CloseableLayout;
import com.mopub.common.Constants;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibilityTracker;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.BaseWebViewViewability;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.ViewGestureDetector;
import com.mopub.network.MoPubRequestUtils;
import com.mopub.network.Networking;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes3-dex2jar.jar:com/mopub/mraid/MraidBridge.class */
public class MraidBridge {

    /* renamed from: a */
    public final PlacementType f5032a;

    /* renamed from: b */
    public MraidBridgeListener f5033b;

    /* renamed from: c */
    public MraidWebView f5034c;

    /* renamed from: d */
    public ViewGestureDetector f5035d;

    /* renamed from: e */
    public boolean f5036e;

    /* renamed from: f */
    public boolean f5037f;

    /* renamed from: g */
    public final WebViewClient f5038g;

    /* loaded from: classes3-dex2jar.jar:com/mopub/mraid/MraidBridge$MraidBridgeListener.class */
    public interface MraidBridgeListener {
        void onClose();

        boolean onConsoleMessage(ConsoleMessage consoleMessage);

        void onExpand(URI uri, boolean z);

        boolean onJsAlert(String str, JsResult jsResult);

        void onOpen(URI uri);

        void onPageFailedToLoad();

        void onPageLoaded();

        void onPlayVideo(URI uri);

        void onRenderProcessGone(MoPubErrorCode moPubErrorCode);

        void onResize(int i, int i2, int i3, int i4, CloseableLayout.ClosePosition closePosition, boolean z);

        void onSetOrientationProperties(boolean z, sh1 sh1Var);

        void onUseCustomClose(boolean z);

        void onVisibilityChanged(boolean z);
    }

    /* loaded from: classes3-dex2jar.jar:com/mopub/mraid/MraidBridge$MraidWebView.class */
    public static class MraidWebView extends BaseWebViewViewability {

        /* renamed from: m */
        public OnVisibilityChangedListener f5039m;

        /* renamed from: n */
        public VisibilityTracker f5040n;

        /* renamed from: o */
        public boolean f5041o;

        /* loaded from: classes3-dex2jar.jar:com/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener.class */
        public interface OnVisibilityChangedListener {
            void onVisibilityChanged(boolean z);
        }

        /* renamed from: com.mopub.mraid.MraidBridge$MraidWebView$a */
        /* loaded from: classes3-dex2jar.jar:com/mopub/mraid/MraidBridge$MraidWebView$a.class */
        public class C1147a implements VisibilityTracker.VisibilityTrackerListener {
            public C1147a() {
                MraidWebView.this = r4;
            }

            @Override // com.mopub.common.VisibilityTracker.VisibilityTrackerListener
            public void onVisibilityChanged(List<View> list, List<View> list2) {
                Preconditions.checkNotNull(list);
                Preconditions.checkNotNull(list2);
                MraidWebView mraidWebView = MraidWebView.this;
                mraidWebView.setMraidViewable(list.contains(mraidWebView));
            }
        }

        public MraidWebView(Context context) {
            super(context);
            if (Build.VERSION.SDK_INT <= 22) {
                this.f5041o = getVisibility() == 0;
                return;
            }
            VisibilityTracker visibilityTracker = new VisibilityTracker(context);
            this.f5040n = visibilityTracker;
            visibilityTracker.setVisibilityTrackerListener(new C1147a());
        }

        public void setMraidViewable(boolean z) {
            if (this.f5041o == z) {
                return;
            }
            this.f5041o = z;
            OnVisibilityChangedListener onVisibilityChangedListener = this.f5039m;
            if (onVisibilityChangedListener == null) {
                return;
            }
            onVisibilityChangedListener.onVisibilityChanged(z);
        }

        @Override // com.mopub.mobileads.BaseWebView, android.webkit.WebView
        public void destroy() {
            super.destroy();
            this.f5040n = null;
            this.f5039m = null;
        }

        public boolean isMraidViewable() {
            return this.f5041o;
        }

        @Override // com.mopub.mobileads.BaseWebViewViewability, android.webkit.WebView, android.view.View
        public void onVisibilityChanged(View view, int i) {
            super.onVisibilityChanged(view, i);
            VisibilityTracker visibilityTracker = this.f5040n;
            boolean z = true;
            if (visibilityTracker == null) {
                if (i != 0) {
                    z = false;
                }
                setMraidViewable(z);
            } else if (i == 0) {
                visibilityTracker.clear();
                this.f5040n.addView(view, this, 0, 0, 1);
            } else {
                visibilityTracker.removeView(this);
                setMraidViewable(false);
            }
        }

        public void setVisibilityChangedListener(OnVisibilityChangedListener onVisibilityChangedListener) {
            this.f5039m = onVisibilityChangedListener;
        }
    }

    /* renamed from: com.mopub.mraid.MraidBridge$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mraid/MraidBridge$a.class */
    public class C1148a extends WebChromeClient {
        public C1148a() {
            MraidBridge.this = r4;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            return MraidBridge.this.f5033b != null ? MraidBridge.this.f5033b.onConsoleMessage(consoleMessage) : super.onConsoleMessage(consoleMessage);
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            return MraidBridge.this.f5033b != null ? MraidBridge.this.f5033b.onJsAlert(str2, jsResult) : super.onJsAlert(webView, str, str2, jsResult);
        }

        @Override // android.webkit.WebChromeClient
        public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
            super.onShowCustomView(view, customViewCallback);
        }
    }

    /* renamed from: com.mopub.mraid.MraidBridge$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mraid/MraidBridge$b.class */
    public class View$OnTouchListenerC1149b implements View.OnTouchListener {
        public View$OnTouchListenerC1149b() {
            MraidBridge.this = r4;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            MraidBridge.this.f5035d.onTouchEvent(motionEvent);
            int action = motionEvent.getAction();
            if ((action == 0 || action == 1) && !view.hasFocus()) {
                view.requestFocus();
                return false;
            }
            return false;
        }
    }

    /* renamed from: com.mopub.mraid.MraidBridge$c */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mraid/MraidBridge$c.class */
    public class C1150c implements MraidWebView.OnVisibilityChangedListener {
        public C1150c() {
            MraidBridge.this = r4;
        }

        @Override // com.mopub.mraid.MraidBridge.MraidWebView.OnVisibilityChangedListener
        public void onVisibilityChanged(boolean z) {
            if (MraidBridge.this.f5033b != null) {
                MraidBridge.this.f5033b.onVisibilityChanged(z);
            }
        }
    }

    /* renamed from: com.mopub.mraid.MraidBridge$d */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mraid/MraidBridge$d.class */
    public class C1151d extends MraidWebViewClient {
        public C1151d() {
            MraidBridge.this = r4;
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            if (webView instanceof BaseWebViewViewability) {
                ((BaseWebViewViewability) webView).setPageLoaded();
            }
            MraidBridge.this.m3480i();
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Error: " + str);
            super.onReceivedError(webView, i, str, str2);
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            MraidBridge.this.m3479j(renderProcessGoneDetail);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            return MraidBridge.this.m3478k(str);
        }
    }

    /* renamed from: com.mopub.mraid.MraidBridge$e */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mraid/MraidBridge$e.class */
    public static /* synthetic */ class C1152e {

        /* renamed from: a */
        public static final /* synthetic */ int[] f5047a;

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:23:0x007d -> B:51:0x0014). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:24:0x0081 -> B:45:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:25:0x0085 -> B:41:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:26:0x0089 -> B:35:0x0035). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:27:0x008d -> B:49:0x0040). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:28:0x0091 -> B:43:0x004c). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:29:0x0095 -> B:39:0x0058). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:30:0x0099 -> B:33:0x0064). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:31:0x009d -> B:47:0x0070). Please submit an issue!!! */
        static {
            int[] iArr = new int[MraidJavascriptCommand.values().length];
            f5047a = iArr;
            try {
                iArr[MraidJavascriptCommand.CLOSE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f5047a[MraidJavascriptCommand.RESIZE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f5047a[MraidJavascriptCommand.EXPAND.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f5047a[MraidJavascriptCommand.USE_CUSTOM_CLOSE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f5047a[MraidJavascriptCommand.OPEN.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f5047a[MraidJavascriptCommand.SET_ORIENTATION_PROPERTIES.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f5047a[MraidJavascriptCommand.PLAY_VIDEO.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f5047a[MraidJavascriptCommand.STORE_PICTURE.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f5047a[MraidJavascriptCommand.CREATE_CALENDAR_EVENT.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f5047a[MraidJavascriptCommand.UNSPECIFIED.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
        }
    }

    @VisibleForTesting
    public MraidBridge(PlacementType placementType, MraidNativeCommandHandler mraidNativeCommandHandler, boolean z) {
        this.f5038g = new C1151d();
        this.f5032a = placementType;
        this.f5037f = z;
    }

    public MraidBridge(PlacementType placementType, boolean z) {
        this(placementType, new MraidNativeCommandHandler(), z);
    }

    /* renamed from: v */
    public static boolean m3467v(Map<String, String> map, boolean z) {
        return m3465x(map.get("shouldUseCustomClose"), false) & z;
    }

    /* renamed from: w */
    public static boolean m3466w(String str) {
        if ("true".equals(str)) {
            return true;
        }
        if ("false".equals(str)) {
            return false;
        }
        throw new rh1("Invalid boolean parameter: " + str);
    }

    /* renamed from: x */
    public static boolean m3465x(String str, boolean z) {
        return str == null ? z : m3466w(str);
    }

    /* renamed from: A */
    public final int m3495A(String str) {
        try {
            return Integer.parseInt(str, 10);
        } catch (NumberFormatException e) {
            throw new rh1("Invalid numeric parameter: " + str);
        }
    }

    /* renamed from: B */
    public final URI m3494B(String str) {
        if (str != null) {
            try {
                return new URI(str);
            } catch (URISyntaxException e) {
                throw new rh1("Invalid URL parameter: " + str);
            }
        }
        throw new rh1("Parameter cannot be null");
    }

    /* renamed from: C */
    public final URI m3493C(String str, URI uri) {
        return str == null ? uri : m3494B(str);
    }

    @VisibleForTesting
    /* renamed from: D */
    public void m3492D(MraidJavascriptCommand mraidJavascriptCommand, Map<String, String> map) {
        boolean z;
        MraidBridgeListener mraidBridgeListener;
        if (!mraidJavascriptCommand.mo3404b(this.f5032a) || m3475n()) {
            if (this.f5033b == null) {
                throw new rh1("Invalid state to execute this command");
            }
            if (this.f5034c == null) {
                throw new rh1("The current WebView is being destroyed");
            }
            switch (C1152e.f5047a[mraidJavascriptCommand.ordinal()]) {
                case 1:
                    this.f5033b.onClose();
                    return;
                case 2:
                    int m3495A = m3495A(map.get("width"));
                    m3484e(m3495A, 0, 100000);
                    int m3495A2 = m3495A(map.get("height"));
                    m3484e(m3495A2, 0, 100000);
                    int m3495A3 = m3495A(map.get("offsetX"));
                    m3484e(m3495A3, -100000, 100000);
                    int m3495A4 = m3495A(map.get("offsetY"));
                    m3484e(m3495A4, -100000, 100000);
                    this.f5033b.onResize(m3495A, m3495A2, m3495A3, m3495A4, m3464y(map.get("customClosePosition"), CloseableLayout.ClosePosition.TOP_RIGHT), m3465x(map.get("allowOffscreen"), true));
                    mraidBridgeListener = this.f5033b;
                    z = this.f5037f;
                    break;
                case 3:
                    this.f5033b.onExpand(m3493C(map.get(ImagesContract.URL), null), m3467v(map, this.f5037f));
                    return;
                case 4:
                    mraidBridgeListener = this.f5033b;
                    z = m3467v(map, this.f5037f);
                    break;
                case 5:
                    this.f5033b.onOpen(m3494B(map.get(ImagesContract.URL)));
                    return;
                case 6:
                    this.f5033b.onSetOrientationProperties(m3466w(map.get("allowOrientationChange")), m3463z(map.get("forceOrientation")));
                    return;
                case 7:
                    this.f5033b.onPlayVideo(m3494B(map.get("uri")));
                    return;
                case 8:
                case 9:
                    throw new rh1("Unsupported MRAID Javascript command");
                case 10:
                    throw new rh1("Unspecified MRAID Javascript command");
                default:
                    return;
            }
            mraidBridgeListener.onUseCustomClose(z);
            return;
        }
        throw new rh1("Cannot execute this command unless the user clicks");
    }

    /* renamed from: E */
    public void m3491E(MraidBridgeListener mraidBridgeListener) {
        this.f5033b = mraidBridgeListener;
    }

    /* renamed from: F */
    public final String m3490F(Rect rect) {
        return rect.left + "," + rect.top + "," + rect.width() + "," + rect.height();
    }

    /* renamed from: G */
    public final String m3489G(Rect rect) {
        return rect.width() + "," + rect.height();
    }

    /* renamed from: d */
    public void m3485d(MraidWebView mraidWebView) {
        this.f5034c = mraidWebView;
        mraidWebView.getSettings().setJavaScriptEnabled(true);
        if (this.f5032a == PlacementType.INTERSTITIAL) {
            mraidWebView.getSettings().setMediaPlaybackRequiresUserGesture(false);
        }
        this.f5034c.setScrollContainer(false);
        this.f5034c.setVerticalScrollBarEnabled(false);
        this.f5034c.setHorizontalScrollBarEnabled(false);
        this.f5034c.setBackgroundColor(0);
        this.f5034c.setWebViewClient(this.f5038g);
        this.f5034c.setWebChromeClient(new C1148a());
        this.f5035d = new ViewGestureDetector(this.f5034c.getContext());
        this.f5034c.setOnTouchListener(new View$OnTouchListenerC1149b());
        this.f5034c.setVisibilityChangedListener(new C1150c());
    }

    /* renamed from: e */
    public final int m3484e(int i, int i2, int i3) {
        if (i < i2 || i > i3) {
            throw new rh1("Integer parameter out of range: " + i);
        }
        return i;
    }

    /* renamed from: f */
    public void m3483f() {
        MraidWebView mraidWebView = this.f5034c;
        if (mraidWebView != null) {
            mraidWebView.destroy();
            this.f5034c = null;
        }
    }

    /* renamed from: g */
    public final void m3482g(MraidJavascriptCommand mraidJavascriptCommand, String str) {
        m3477l("window.mraidbridge.notifyErrorEvent(" + JSONObject.quote(mraidJavascriptCommand.m3405c()) + ", " + JSONObject.quote(str) + ")");
    }

    /* renamed from: h */
    public final void m3481h(MraidJavascriptCommand mraidJavascriptCommand) {
        m3477l("window.mraidbridge.nativeCallComplete(" + JSONObject.quote(mraidJavascriptCommand.m3405c()) + ")");
    }

    @VisibleForTesting
    /* renamed from: i */
    public final void m3480i() {
        if (this.f5036e) {
            return;
        }
        this.f5036e = true;
        MraidBridgeListener mraidBridgeListener = this.f5033b;
        if (mraidBridgeListener == null) {
            return;
        }
        mraidBridgeListener.onPageLoaded();
    }

    @TargetApi(26)
    @VisibleForTesting
    /* renamed from: j */
    public void m3479j(RenderProcessGoneDetail renderProcessGoneDetail) {
        MoPubErrorCode moPubErrorCode = (renderProcessGoneDetail == null || !renderProcessGoneDetail.didCrash()) ? MoPubErrorCode.RENDER_PROCESS_GONE_UNSPECIFIED : MoPubErrorCode.RENDER_PROCESS_GONE_WITH_CRASH;
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, moPubErrorCode);
        m3483f();
        MraidBridgeListener mraidBridgeListener = this.f5033b;
        if (mraidBridgeListener != null) {
            mraidBridgeListener.onRenderProcessGone(moPubErrorCode);
        }
    }

    @VisibleForTesting
    /* renamed from: k */
    public boolean m3478k(String str) {
        MraidBridgeListener mraidBridgeListener;
        try {
            new URI(str);
            Uri parse = Uri.parse(str);
            String scheme = parse.getScheme();
            String host = parse.getHost();
            if ("mopub".equals(scheme)) {
                if (!"failLoad".equals(host) || this.f5032a != PlacementType.INLINE || (mraidBridgeListener = this.f5033b) == null) {
                    return true;
                }
                mraidBridgeListener.onPageFailedToLoad();
                return true;
            }
            Uri uri = parse;
            String str2 = scheme;
            String str3 = host;
            if (m3475n()) {
                uri = parse;
                str2 = scheme;
                str3 = host;
                if (!"mraid".equals(scheme)) {
                    try {
                        uri = Uri.parse("mraid://open?url=" + URLEncoder.encode(str, C0515C.UTF8_NAME));
                        str3 = uri.getHost();
                        str2 = uri.getScheme();
                    } catch (UnsupportedEncodingException e) {
                        MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                        MoPubLog.log(sdkLogEvent, "Invalid MRAID URL encoding: " + str);
                        m3482g(MraidJavascriptCommand.OPEN, "Non-mraid URL is invalid");
                        return false;
                    }
                }
            }
            if (!"mraid".equals(str2)) {
                return false;
            }
            MraidJavascriptCommand m3406a = MraidJavascriptCommand.m3406a(str3);
            try {
                m3492D(m3406a, MoPubRequestUtils.getQueryParamMap(uri));
            } catch (IllegalArgumentException | rh1 e2) {
                m3482g(m3406a, e2.getMessage());
            }
            m3481h(m3406a);
            return true;
        } catch (URISyntaxException e3) {
            MoPubLog.SdkLogEvent sdkLogEvent2 = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent2, "Invalid MRAID URL: " + str);
            m3482g(MraidJavascriptCommand.UNSPECIFIED, "Mraid command sent an invalid URL");
            return true;
        }
    }

    /* renamed from: l */
    public void m3477l(String str) {
        if (this.f5034c == null) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Attempted to inject Javascript into MRAID WebView while was not attached:\n\t" + str);
            return;
        }
        MoPubLog.SdkLogEvent sdkLogEvent2 = MoPubLog.SdkLogEvent.CUSTOM;
        MoPubLog.log(sdkLogEvent2, "Injecting Javascript into MRAID WebView:\n\t" + str);
        MraidWebView mraidWebView = this.f5034c;
        mraidWebView.loadUrl("javascript:" + str);
    }

    /* renamed from: m */
    public boolean m3476m() {
        return this.f5034c != null;
    }

    /* renamed from: n */
    public boolean m3475n() {
        ViewGestureDetector viewGestureDetector = this.f5035d;
        return viewGestureDetector != null && viewGestureDetector.isClicked();
    }

    public void notifyScreenMetrics(th1 th1Var) {
        m3477l("mraidbridge.setScreenSize(" + m3489G(th1Var.m492g()) + ");mraidbridge.setMaxSize(" + m3489G(th1Var.m493f()) + ");mraidbridge.setCurrentPosition(" + m3490F(th1Var.m497b()) + ");mraidbridge.setDefaultPosition(" + m3490F(th1Var.m495d()) + ")");
        StringBuilder sb = new StringBuilder();
        sb.append("mraidbridge.notifySizeChangeEvent(");
        sb.append(m3489G(th1Var.m497b()));
        sb.append(")");
        m3477l(sb.toString());
    }

    /* renamed from: o */
    public boolean m3474o() {
        return this.f5036e;
    }

    /* renamed from: p */
    public boolean m3473p() {
        MraidWebView mraidWebView = this.f5034c;
        return mraidWebView != null && mraidWebView.isMraidViewable();
    }

    /* renamed from: q */
    public void m3472q(PlacementType placementType) {
        m3477l("mraidbridge.setPlacementType(" + JSONObject.quote(placementType.m3383a()) + ")");
    }

    /* renamed from: r */
    public void m3471r() {
        m3477l("mraidbridge.notifyReadyEvent();");
    }

    /* renamed from: s */
    public void m3470s(boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        m3477l("mraidbridge.setSupports(" + z + "," + z2 + "," + z3 + "," + z4 + "," + z5 + ")");
    }

    public void setContentHtml(String str) {
        MraidWebView mraidWebView = this.f5034c;
        if (mraidWebView == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MRAID bridge called setContentHtml before WebView was attached");
            return;
        }
        this.f5036e = false;
        mraidWebView.loadDataWithBaseURL(Networking.getScheme() + "://" + Constants.HOST + "/", str, "text/html", C0515C.UTF8_NAME, null);
    }

    public void setContentUrl(String str) {
        MraidWebView mraidWebView = this.f5034c;
        if (mraidWebView == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MRAID bridge called setContentHtml while WebView was not attached");
            return;
        }
        this.f5036e = false;
        mraidWebView.loadUrl(str);
    }

    /* renamed from: t */
    public void m3469t(ViewState viewState) {
        m3477l("mraidbridge.setState(" + JSONObject.quote(viewState.toJavascriptString()) + ")");
    }

    /* renamed from: u */
    public void m3468u(boolean z) {
        m3477l("mraidbridge.setIsViewable(" + z + ")");
    }

    /* renamed from: y */
    public final CloseableLayout.ClosePosition m3464y(String str, CloseableLayout.ClosePosition closePosition) {
        if (TextUtils.isEmpty(str)) {
            return closePosition;
        }
        if (str.equals("top-left")) {
            return CloseableLayout.ClosePosition.TOP_LEFT;
        }
        if (str.equals("top-right")) {
            return CloseableLayout.ClosePosition.TOP_RIGHT;
        }
        if (str.equals(TtmlNode.CENTER)) {
            return CloseableLayout.ClosePosition.CENTER;
        }
        if (str.equals("bottom-left")) {
            return CloseableLayout.ClosePosition.BOTTOM_LEFT;
        }
        if (str.equals("bottom-right")) {
            return CloseableLayout.ClosePosition.BOTTOM_RIGHT;
        }
        if (str.equals("top-center")) {
            return CloseableLayout.ClosePosition.TOP_CENTER;
        }
        if (str.equals("bottom-center")) {
            return CloseableLayout.ClosePosition.BOTTOM_CENTER;
        }
        throw new rh1("Invalid close position: " + str);
    }

    /* renamed from: z */
    public final sh1 m3463z(String str) {
        if (EnvironmentUtils.ORIENTATION_PORTRAIT.equals(str)) {
            return sh1.PORTRAIT;
        }
        if (EnvironmentUtils.ORIENTATION_LANDSCAPE.equals(str)) {
            return sh1.LANDSCAPE;
        }
        if ("none".equals(str)) {
            return sh1.NONE;
        }
        throw new rh1("Invalid orientation: " + str);
    }
}
