package com.mopub.mraid;

import android.graphics.Rect;
import android.text.TextUtils;
import android.view.MotionEvent;
import android.view.View;
import android.webkit.ConsoleMessage;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.mopub.common.CloseableLayout;
import com.mopub.common.Constants;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.ViewGestureDetector;
import com.mopub.network.Networking;
import com.tenor.android.core.constant.StringConstant;
import e.n.c.a;
import e.n.c.e;
import e.n.c.f;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Locale;
import java.util.Map;
import org.json.JSONObject;
import p193e.p1432d.p1439c.p1440a.C22128a;
/* loaded from: classes3-dex2jar.jar:com/mopub/mraid/MraidBridge.class */
public class MraidBridge {

    /* renamed from: a */
    public final PlacementType f9010a;

    /* renamed from: b */
    public MraidBridgeListener f9011b;

    /* renamed from: c */
    public MraidWebView f9012c;

    /* renamed from: d */
    public ViewGestureDetector f9013d;

    /* renamed from: e */
    public boolean f9014e;

    /* renamed from: f */
    public boolean f9015f;

    /* renamed from: g */
    public final WebViewClient f9016g = new d(this);

    /* loaded from: classes3-dex2jar.jar:com/mopub/mraid/MraidBridge$MraidBridgeListener.class */
    public interface MraidBridgeListener {
        void onClose();

        boolean onConsoleMessage(ConsoleMessage consoleMessage);

        void onExpand(URI uri, boolean z) throws a;

        boolean onJsAlert(String str, JsResult jsResult);

        void onOpen(URI uri);

        void onPageFailedToLoad();

        void onPageLoaded();

        void onRenderProcessGone(MoPubErrorCode moPubErrorCode);

        void onResize(int i, int i2, int i3, int i4, CloseableLayout.ClosePosition closePosition, boolean z) throws a;

        void onSetOrientationProperties(boolean z, e eVar) throws a;

        void onUseCustomClose(boolean z);

        void onVisibilityChanged(boolean z);
    }

    /* renamed from: com.mopub.mraid.MraidBridge$a */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mraid/MraidBridge$a.class */
    public class C2701a extends WebChromeClient {
        public C2701a() {
            MraidBridge.this = r4;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            MraidBridgeListener mraidBridgeListener = MraidBridge.this.f9011b;
            return mraidBridgeListener != null ? mraidBridgeListener.onConsoleMessage(consoleMessage) : super.onConsoleMessage(consoleMessage);
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            MraidBridgeListener mraidBridgeListener = MraidBridge.this.f9011b;
            return mraidBridgeListener != null ? mraidBridgeListener.onJsAlert(str2, jsResult) : super.onJsAlert(webView, str, str2, jsResult);
        }

        @Override // android.webkit.WebChromeClient
        public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
            super.onShowCustomView(view, customViewCallback);
        }
    }

    /* renamed from: com.mopub.mraid.MraidBridge$b */
    /* loaded from: classes3-dex2jar.jar:com/mopub/mraid/MraidBridge$b.class */
    public class View$OnTouchListenerC2702b implements View.OnTouchListener {
        public View$OnTouchListenerC2702b() {
            MraidBridge.this = r4;
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            MraidBridge.this.f9013d.onTouchEvent(motionEvent);
            int action = motionEvent.getAction();
            if ((action == 0 || action == 1) && !view.hasFocus()) {
                view.requestFocus();
                return false;
            }
            return false;
        }
    }

    public MraidBridge(PlacementType placementType, boolean z) {
        new MraidNativeCommandHandler();
        this.f9010a = placementType;
        this.f9015f = z;
    }

    /* renamed from: k */
    public static boolean m36201k(Map<String, String> map, boolean z) throws a {
        String str = map.get("shouldUseCustomClose");
        return (str == null ? false : m36200l(str)) & z;
    }

    /* renamed from: l */
    public static boolean m36200l(String str) throws a {
        if ("true".equals(str)) {
            return true;
        }
        if (!"false".equals(str)) {
            throw new a(C22128a.m8543z2("Invalid boolean parameter: ", str));
        }
        return false;
    }

    /* renamed from: a */
    public void m36211a(MraidWebView mraidWebView) {
        this.f9012c = mraidWebView;
        mraidWebView.getSettings().setJavaScriptEnabled(true);
        if (this.f9010a == PlacementType.INTERSTITIAL) {
            mraidWebView.getSettings().setMediaPlaybackRequiresUserGesture(false);
        }
        this.f9012c.setScrollContainer(false);
        this.f9012c.setVerticalScrollBarEnabled(false);
        this.f9012c.setHorizontalScrollBarEnabled(false);
        this.f9012c.setBackgroundColor(0);
        this.f9012c.setWebViewClient(this.f9016g);
        this.f9012c.setWebChromeClient(new C2701a());
        this.f9013d = new ViewGestureDetector(this.f9012c.getContext());
        this.f9012c.setOnTouchListener(new View$OnTouchListenerC2702b());
        this.f9012c.setVisibilityChangedListener(new c(this));
    }

    /* renamed from: b */
    public final int m36210b(int i, int i2, int i3) throws a {
        if (i < i2 || i > i3) {
            throw new a(C22128a.m8611i2("Integer parameter out of range: ", i));
        }
        return i;
    }

    /* renamed from: c */
    public void m36209c() {
        MraidWebView mraidWebView = this.f9012c;
        if (mraidWebView != null) {
            mraidWebView.destroy();
            this.f9012c = null;
        }
    }

    /* renamed from: d */
    public final void m36208d(MraidJavascriptCommand mraidJavascriptCommand, String str) {
        StringBuilder m8728C = C22128a.m8728C("window.mraidbridge.notifyErrorEvent(");
        m8728C.append(JSONObject.quote(mraidJavascriptCommand.f9026a));
        m8728C.append(", ");
        m8728C.append(JSONObject.quote(str));
        m8728C.append(")");
        m36207e(m8728C.toString());
    }

    /* renamed from: e */
    public void m36207e(String str) {
        if (this.f9012c == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, C22128a.m8543z2("Attempted to inject Javascript into MRAID WebView while was not attached:\n\t", str));
            return;
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, C22128a.m8543z2("Injecting Javascript into MRAID WebView:\n\t", str));
        MraidWebView mraidWebView = this.f9012c;
        mraidWebView.loadUrl("javascript:" + str);
    }

    /* renamed from: f */
    public boolean m36206f() {
        return this.f9012c != null;
    }

    /* renamed from: g */
    public void m36205g(PlacementType placementType) {
        StringBuilder m8728C = C22128a.m8728C("mraidbridge.setPlacementType(");
        m8728C.append(JSONObject.quote(placementType.toString().toLowerCase(Locale.US)));
        m8728C.append(")");
        m36207e(m8728C.toString());
    }

    /* renamed from: h */
    public void m36204h(boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        m36207e("mraidbridge.setSupports(" + z + "," + z2 + "," + z3 + "," + z4 + "," + z5 + ")");
    }

    /* renamed from: i */
    public void m36203i(ViewState viewState) {
        StringBuilder m8728C = C22128a.m8728C("mraidbridge.setState(");
        m8728C.append(JSONObject.quote(viewState.toJavascriptString()));
        m8728C.append(")");
        m36207e(m8728C.toString());
    }

    /* renamed from: j */
    public void m36202j(boolean z) {
        m36207e("mraidbridge.setIsViewable(" + z + ")");
    }

    /* renamed from: m */
    public final int m36199m(String str) throws a {
        try {
            return Integer.parseInt(str, 10);
        } catch (NumberFormatException e) {
            throw new a(C22128a.m8543z2("Invalid numeric parameter: ", str));
        }
    }

    /* renamed from: n */
    public final URI m36198n(String str) throws a {
        if (str != null) {
            try {
                return new URI(str);
            } catch (URISyntaxException e) {
                throw new a(C22128a.m8543z2("Invalid URL parameter: ", str));
            }
        }
        throw new a("Parameter cannot be null");
    }

    public void notifyScreenMetrics(f fVar) {
        StringBuilder m8728C = C22128a.m8728C("mraidbridge.setScreenSize(");
        m8728C.append(m36195q(fVar.c));
        m8728C.append(");mraidbridge.setMaxSize(");
        m8728C.append(m36195q(fVar.e));
        m8728C.append(");mraidbridge.setCurrentPosition(");
        m8728C.append(m36196p(fVar.g));
        m8728C.append(");mraidbridge.setDefaultPosition(");
        m8728C.append(m36196p(fVar.i));
        m8728C.append(")");
        m36207e(m8728C.toString());
        m36207e("mraidbridge.notifySizeChangeEvent(" + m36195q(fVar.g) + ")");
    }

    @VisibleForTesting
    /* renamed from: o */
    public void m36197o(MraidJavascriptCommand mraidJavascriptCommand, Map<String, String> map) throws a {
        e eVar;
        boolean z = true;
        if (mraidJavascriptCommand.m36194a(this.f9010a)) {
            ViewGestureDetector viewGestureDetector = this.f9013d;
            if (!(viewGestureDetector != null && viewGestureDetector.isClicked())) {
                throw new a("Cannot execute this command unless the user clicks");
            }
        }
        if (this.f9011b != null) {
            if (this.f9012c == null) {
                throw new a("The current WebView is being destroyed");
            }
            switch (mraidJavascriptCommand.ordinal()) {
                case 0:
                    this.f9011b.onClose();
                    return;
                case 1:
                    String str = map.get("url");
                    URI uri = null;
                    if (str != null) {
                        uri = m36198n(str);
                    }
                    this.f9011b.onExpand(uri, m36201k(map, this.f9015f));
                    return;
                case 2:
                    this.f9011b.onUseCustomClose(m36201k(map, this.f9015f));
                    return;
                case 3:
                    this.f9011b.onOpen(m36198n(map.get("url")));
                    return;
                case 4:
                    int m36199m = m36199m(map.get("width"));
                    m36210b(m36199m, 0, 100000);
                    int m36199m2 = m36199m(map.get("height"));
                    m36210b(m36199m2, 0, 100000);
                    int m36199m3 = m36199m(map.get("offsetX"));
                    m36210b(m36199m3, -100000, 100000);
                    int m36199m4 = m36199m(map.get("offsetY"));
                    m36210b(m36199m4, -100000, 100000);
                    String str2 = map.get("customClosePosition");
                    CloseableLayout.ClosePosition closePosition = CloseableLayout.ClosePosition.TOP_RIGHT;
                    if (!TextUtils.isEmpty(str2)) {
                        if (str2.equals("top-left")) {
                            closePosition = CloseableLayout.ClosePosition.TOP_LEFT;
                        } else if (!str2.equals("top-right")) {
                            if (str2.equals("center")) {
                                closePosition = CloseableLayout.ClosePosition.CENTER;
                            } else if (str2.equals("bottom-left")) {
                                closePosition = CloseableLayout.ClosePosition.BOTTOM_LEFT;
                            } else if (str2.equals("bottom-right")) {
                                closePosition = CloseableLayout.ClosePosition.BOTTOM_RIGHT;
                            } else if (str2.equals("top-center")) {
                                closePosition = CloseableLayout.ClosePosition.TOP_CENTER;
                            } else if (!str2.equals("bottom-center")) {
                                throw new a(C22128a.m8543z2("Invalid close position: ", str2));
                            } else {
                                closePosition = CloseableLayout.ClosePosition.BOTTOM_CENTER;
                            }
                        }
                    }
                    String str3 = map.get("allowOffscreen");
                    if (str3 != null) {
                        z = m36200l(str3);
                    }
                    this.f9011b.onResize(m36199m, m36199m2, m36199m3, m36199m4, closePosition, z);
                    this.f9011b.onUseCustomClose(this.f9015f);
                    return;
                case 5:
                    boolean m36200l = m36200l(map.get("allowOrientationChange"));
                    String str4 = map.get("forceOrientation");
                    if ("portrait".equals(str4)) {
                        eVar = e.PORTRAIT;
                    } else if ("landscape".equals(str4)) {
                        eVar = e.LANDSCAPE;
                    } else if (!"none".equals(str4)) {
                        throw new a(C22128a.m8543z2("Invalid orientation: ", str4));
                    } else {
                        eVar = e.NONE;
                    }
                    this.f9011b.onSetOrientationProperties(m36200l, eVar);
                    return;
                case 6:
                case 7:
                case 8:
                    throw new a("Unsupported MRAID Javascript command");
                case 9:
                    throw new a("Unspecified MRAID Javascript command");
                default:
                    return;
            }
        }
        throw new a("Invalid state to execute this command");
    }

    /* renamed from: p */
    public final String m36196p(Rect rect) {
        return rect.left + "," + rect.top + "," + rect.width() + "," + rect.height();
    }

    /* renamed from: q */
    public final String m36195q(Rect rect) {
        return rect.width() + "," + rect.height();
    }

    public void setContentHtml(String str) {
        MraidWebView mraidWebView = this.f9012c;
        if (mraidWebView == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MRAID bridge called setContentHtml before WebView was attached");
            return;
        }
        this.f9014e = false;
        StringBuilder sb = new StringBuilder();
        sb.append(Networking.getScheme());
        sb.append("://");
        mraidWebView.loadDataWithBaseURL(C22128a.m8618h(sb, Constants.HOST, StringConstant.SLASH), str, "text/html", StringConstant.UTF8, null);
    }

    public void setContentUrl(String str) {
        MraidWebView mraidWebView = this.f9012c;
        if (mraidWebView == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MRAID bridge called setContentHtml while WebView was not attached");
            return;
        }
        this.f9014e = false;
        mraidWebView.loadUrl(str);
    }
}
