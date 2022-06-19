package com.mopub.mraid;

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
import com.amazonaws.services.p101s3.util.Mimetypes;
import com.mopub.common.CloseableLayout;
import com.mopub.common.Constants;
import com.mopub.common.MoPub;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibilityTracker;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.BaseWebViewViewability;
import com.mopub.mobileads.MoPubErrorCode;
import com.mopub.mobileads.ViewGestureDetector;
import com.mopub.network.MoPubRequestUtils;
import com.mopub.network.Networking;
import com.verizon.ads.EnvironmentInfo;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
/* loaded from: classes4-dex2jar.jar:com/mopub/mraid/MraidBridge.class */
public class MraidBridge {

    /* renamed from: a */
    MraidBridgeListener f59736a;

    /* renamed from: b */
    boolean f59737b;

    /* renamed from: c */
    private final PlacementType f59738c;

    /* renamed from: d */
    private final MraidNativeCommandHandler f59739d;

    /* renamed from: e */
    private MraidWebView f59740e;

    /* renamed from: f */
    private ViewGestureDetector f59741f;

    /* renamed from: g */
    private boolean f59742g;

    /* renamed from: h */
    private final WebViewClient f59743h;

    /* renamed from: com.mopub.mraid.MraidBridge$5 */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mraid/MraidBridge$5.class */
    public static final /* synthetic */ class C168895 {

        /* renamed from: a */
        static final /* synthetic */ int[] f59748a;

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
            f59748a = iArr;
            try {
                iArr[MraidJavascriptCommand.CLOSE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f59748a[MraidJavascriptCommand.RESIZE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f59748a[MraidJavascriptCommand.EXPAND.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f59748a[MraidJavascriptCommand.USE_CUSTOM_CLOSE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f59748a[MraidJavascriptCommand.OPEN.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f59748a[MraidJavascriptCommand.SET_ORIENTATION_PROPERTIES.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f59748a[MraidJavascriptCommand.PLAY_VIDEO.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f59748a[MraidJavascriptCommand.STORE_PICTURE.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f59748a[MraidJavascriptCommand.CREATE_CALENDAR_EVENT.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f59748a[MraidJavascriptCommand.UNSPECIFIED.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/mraid/MraidBridge$MraidBridgeListener.class */
    public interface MraidBridgeListener {
        void onClose();

        boolean onConsoleMessage(ConsoleMessage consoleMessage);

        void onExpand(URI uri, boolean z) throws C16905a;

        boolean onJsAlert(String str, JsResult jsResult);

        void onOpen(URI uri);

        void onPageFailedToLoad();

        void onPageLoaded();

        void onRenderProcessGone(MoPubErrorCode moPubErrorCode);

        void onResize(int i, int i2, int i3, int i4, CloseableLayout.ClosePosition closePosition, boolean z) throws C16905a;

        void onSetOrientationProperties(boolean z, EnumC16906b enumC16906b) throws C16905a;

        void onUseCustomClose(boolean z);

        void onVisibilityChanged(boolean z);
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/mraid/MraidBridge$MraidWebView.class */
    public static class MraidWebView extends BaseWebViewViewability {

        /* renamed from: i */
        OnVisibilityChangedListener f59749i;

        /* renamed from: j */
        private VisibilityTracker f59750j;

        /* renamed from: k */
        private boolean f59751k;

        /* loaded from: classes4-dex2jar.jar:com/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener.class */
        public interface OnVisibilityChangedListener {
            void onVisibilityChanged(boolean z);
        }

        public MraidWebView(Context context) {
            super(context);
            this.f59751k = getVisibility() == 0;
            if (Build.VERSION.SDK_INT <= 22) {
                return;
            }
            this.f59750j = new VisibilityTracker(context);
            this.f59750j.setVisibilityTrackerListener(new VisibilityTracker.VisibilityTrackerListener() { // from class: com.mopub.mraid.MraidBridge.MraidWebView.1
                @Override // com.mopub.common.VisibilityTracker.VisibilityTrackerListener
                public final void onVisibilityChanged(List<View> list, List<View> list2) {
                    Preconditions.checkNotNull(list);
                    Preconditions.checkNotNull(list2);
                    MraidWebView mraidWebView = MraidWebView.this;
                    mraidWebView.m6290a(list.contains(mraidWebView));
                }
            });
        }

        /* renamed from: a */
        public void m6290a(boolean z) {
            if (this.f59751k == z) {
                return;
            }
            this.f59751k = z;
            OnVisibilityChangedListener onVisibilityChangedListener = this.f59749i;
            if (onVisibilityChangedListener == null) {
                return;
            }
            onVisibilityChangedListener.onVisibilityChanged(z);
        }

        @Override // com.mopub.mobileads.BaseWebView, android.webkit.WebView
        public void destroy() {
            super.destroy();
            VisibilityTracker visibilityTracker = this.f59750j;
            if (visibilityTracker != null) {
                visibilityTracker.destroy();
            }
            this.f59750j = null;
            this.f59749i = null;
        }

        public boolean isMraidViewable() {
            return this.f59751k;
        }

        @Override // com.mopub.mobileads.BaseWebViewViewability, android.webkit.WebView, android.view.View
        public void onVisibilityChanged(View view, int i) {
            super.onVisibilityChanged(view, i);
            VisibilityTracker visibilityTracker = this.f59750j;
            boolean z = true;
            if (visibilityTracker == null) {
                if (i != 0) {
                    z = false;
                }
                m6290a(z);
            } else if (i == 0) {
                visibilityTracker.clear();
                this.f59750j.addView(view, this, 0, 0, 1);
            } else {
                visibilityTracker.removeView(this);
                m6290a(false);
            }
        }
    }

    MraidBridge(PlacementType placementType, MraidNativeCommandHandler mraidNativeCommandHandler, boolean z) {
        this.f59743h = new MraidWebViewClient() { // from class: com.mopub.mraid.MraidBridge.4
            @Override // android.webkit.WebViewClient
            public final void onPageFinished(WebView webView, String str) {
                if (webView instanceof BaseWebViewViewability) {
                    ((BaseWebViewViewability) webView).setPageLoaded();
                }
                MraidBridge.m6296c(MraidBridge.this);
            }

            @Override // android.webkit.WebViewClient
            public final void onReceivedError(WebView webView, int i, String str, String str2) {
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Error: ".concat(String.valueOf(str)));
                super.onReceivedError(webView, i, str, str2);
            }

            @Override // android.webkit.WebViewClient
            public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
                MraidBridge mraidBridge = MraidBridge.this;
                MoPubErrorCode moPubErrorCode = (renderProcessGoneDetail == null || !renderProcessGoneDetail.didCrash()) ? MoPubErrorCode.RENDER_PROCESS_GONE_UNSPECIFIED : MoPubErrorCode.RENDER_PROCESS_GONE_WITH_CRASH;
                MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, moPubErrorCode);
                mraidBridge.m6314a();
                if (mraidBridge.f59736a != null) {
                    mraidBridge.f59736a.onRenderProcessGone(moPubErrorCode);
                    return true;
                }
                return true;
            }

            @Override // android.webkit.WebViewClient
            public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
                return MraidBridge.this.m6298b(str);
            }
        };
        this.f59738c = placementType;
        this.f59739d = mraidNativeCommandHandler;
        this.f59742g = z;
    }

    public MraidBridge(PlacementType placementType, boolean z) {
        this(placementType, new MraidNativeCommandHandler(), z);
    }

    /* renamed from: a */
    private static int m6313a(int i, int i2) throws C16905a {
        if (i < i2 || i > 100000) {
            throw new C16905a("Integer parameter out of range: ".concat(String.valueOf(i)));
        }
        return i;
    }

    /* renamed from: a */
    private static String m6312a(Rect rect) {
        return rect.left + "," + rect.top + "," + rect.width() + "," + rect.height();
    }

    /* renamed from: a */
    private void m6309a(MraidJavascriptCommand mraidJavascriptCommand, String str) {
        m6306a("window.mraidbridge.notifyErrorEvent(" + JSONObject.quote(mraidJavascriptCommand.toJavascriptString()) + ", " + JSONObject.quote(str) + ")");
    }

    /* renamed from: a */
    private static boolean m6305a(String str, boolean z) throws C16905a {
        return str == null ? z : m6293d(str);
    }

    /* renamed from: a */
    private static boolean m6304a(Map<String, String> map, boolean z) throws C16905a {
        return m6305a(map.get("shouldUseCustomClose"), false) & z;
    }

    /* renamed from: b */
    private static String m6300b(Rect rect) {
        return rect.width() + "," + rect.height();
    }

    /* renamed from: c */
    private static int m6295c(String str) throws C16905a {
        try {
            return Integer.parseInt(str, 10);
        } catch (NumberFormatException e) {
            throw new C16905a("Invalid numeric parameter: ".concat(String.valueOf(str)));
        }
    }

    /* renamed from: c */
    static /* synthetic */ void m6296c(MraidBridge mraidBridge) {
        if (!mraidBridge.f59737b) {
            mraidBridge.f59737b = true;
            MraidBridgeListener mraidBridgeListener = mraidBridge.f59736a;
            if (mraidBridgeListener == null) {
                return;
            }
            mraidBridgeListener.onPageLoaded();
        }
    }

    /* renamed from: d */
    private boolean m6294d() {
        ViewGestureDetector viewGestureDetector = this.f59741f;
        return viewGestureDetector != null && viewGestureDetector.isClicked();
    }

    /* renamed from: d */
    private static boolean m6293d(String str) throws C16905a {
        if ("true".equals(str)) {
            return true;
        }
        if (!"false".equals(str)) {
            throw new C16905a("Invalid boolean parameter: ".concat(String.valueOf(str)));
        }
        return false;
    }

    /* renamed from: e */
    private static URI m6292e(String str) throws C16905a {
        if (str != null) {
            try {
                return new URI(str);
            } catch (URISyntaxException e) {
                throw new C16905a("Invalid URL parameter: ".concat(String.valueOf(str)));
            }
        }
        throw new C16905a("Parameter cannot be null");
    }

    /* renamed from: a */
    public final void m6314a() {
        MraidWebView mraidWebView = this.f59740e;
        if (mraidWebView != null) {
            mraidWebView.destroy();
            this.f59740e = null;
        }
    }

    /* renamed from: a */
    public final void m6311a(MraidWebView mraidWebView) {
        this.f59740e = mraidWebView;
        mraidWebView.getSettings().setJavaScriptEnabled(true);
        if (this.f59738c == PlacementType.INTERSTITIAL) {
            mraidWebView.getSettings().setMediaPlaybackRequiresUserGesture(false);
        }
        this.f59740e.setScrollContainer(false);
        this.f59740e.setVerticalScrollBarEnabled(false);
        this.f59740e.setHorizontalScrollBarEnabled(false);
        this.f59740e.setBackgroundColor(0);
        this.f59740e.setWebViewClient(this.f59743h);
        this.f59740e.setWebChromeClient(new WebChromeClient() { // from class: com.mopub.mraid.MraidBridge.1
            @Override // android.webkit.WebChromeClient
            public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
                return MraidBridge.this.f59736a != null ? MraidBridge.this.f59736a.onConsoleMessage(consoleMessage) : super.onConsoleMessage(consoleMessage);
            }

            @Override // android.webkit.WebChromeClient
            public final boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
                return MraidBridge.this.f59736a != null ? MraidBridge.this.f59736a.onJsAlert(str2, jsResult) : super.onJsAlert(webView, str, str2, jsResult);
            }

            @Override // android.webkit.WebChromeClient
            public final void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
                super.onShowCustomView(view, customViewCallback);
            }
        });
        this.f59741f = new ViewGestureDetector(this.f59740e.getContext());
        this.f59740e.setOnTouchListener(new View.OnTouchListener() { // from class: com.mopub.mraid.MraidBridge.2
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                MraidBridge.this.f59741f.onTouchEvent(motionEvent);
                int action = motionEvent.getAction();
                if ((action == 0 || action == 1) && !view.hasFocus()) {
                    view.requestFocus();
                    return false;
                }
                return false;
            }
        });
        this.f59740e.f59749i = new MraidWebView.OnVisibilityChangedListener() { // from class: com.mopub.mraid.MraidBridge.3
            @Override // com.mopub.mraid.MraidBridge.MraidWebView.OnVisibilityChangedListener
            public final void onVisibilityChanged(boolean z) {
                if (MraidBridge.this.f59736a != null) {
                    MraidBridge.this.f59736a.onVisibilityChanged(z);
                }
            }
        };
    }

    /* renamed from: a */
    public final void m6308a(PlacementType placementType) {
        m6306a("mraidbridge.setPlacementType(" + JSONObject.quote(placementType.toJavascriptString()) + ")");
    }

    /* renamed from: a */
    public final void m6307a(ViewState viewState) {
        m6306a("mraidbridge.setState(" + JSONObject.quote(viewState.toJavascriptString()) + ")");
    }

    /* renamed from: a */
    public final void m6306a(String str) {
        if (this.f59740e == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Attempted to inject Javascript into MRAID WebView while was not attached:\n\t".concat(String.valueOf(str)));
            return;
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Injecting Javascript into MRAID WebView:\n\t".concat(String.valueOf(str)));
        this.f59740e.loadUrl("javascript:".concat(String.valueOf(str)));
    }

    /* renamed from: a */
    public final void m6303a(boolean z) {
        m6306a("mraidbridge.setIsViewable(" + z + ")");
    }

    /* renamed from: a */
    public final void m6302a(boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        m6306a("mraidbridge.setSupports(false,false," + z3 + "," + z4 + "," + z5 + ")");
    }

    /* renamed from: b */
    public final boolean m6301b() {
        MraidWebView mraidWebView = this.f59740e;
        return mraidWebView != null && mraidWebView.isMraidViewable();
    }

    /* renamed from: b */
    final boolean m6298b(String str) {
        Map<String, String> queryParamMap;
        EnumC16906b enumC16906b;
        MraidBridgeListener mraidBridgeListener;
        try {
            new URI(str);
            Uri parse = Uri.parse(str);
            String scheme = parse.getScheme();
            String host = parse.getHost();
            if (MoPub.ANALYTICS_MOPUB_TAG.equals(scheme)) {
                if (!"failLoad".equals(host) || this.f59738c != PlacementType.INLINE || (mraidBridgeListener = this.f59736a) == null) {
                    return true;
                }
                mraidBridgeListener.onPageFailedToLoad();
                return true;
            }
            Uri uri = parse;
            String str2 = scheme;
            String str3 = host;
            if (m6294d()) {
                uri = parse;
                str2 = scheme;
                str3 = host;
                if (!"mraid".equals(scheme)) {
                    try {
                        uri = Uri.parse("mraid://open?url=" + URLEncoder.encode(str, "UTF-8"));
                        str3 = uri.getHost();
                        str2 = uri.getScheme();
                    } catch (UnsupportedEncodingException e) {
                        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Invalid MRAID URL encoding: ".concat(String.valueOf(str)));
                        m6309a(MraidJavascriptCommand.OPEN, "Non-mraid URL is invalid");
                        return false;
                    }
                }
            }
            if (!"mraid".equals(str2)) {
                return false;
            }
            MraidJavascriptCommand fromJavascriptString = MraidJavascriptCommand.fromJavascriptString(str3);
            try {
                queryParamMap = MoPubRequestUtils.getQueryParamMap(uri);
                if (fromJavascriptString.requiresClick(this.f59738c) && !m6294d()) {
                    throw new C16905a("Cannot execute this command unless the user clicks");
                }
            } catch (C16905a | IllegalArgumentException e2) {
                m6309a(fromJavascriptString, e2.getMessage());
            }
            if (this.f59736a == null) {
                throw new C16905a("Invalid state to execute this command");
            }
            if (this.f59740e == null) {
                throw new C16905a("The current WebView is being destroyed");
            }
            switch (C168895.f59748a[fromJavascriptString.ordinal()]) {
                case 1:
                    this.f59736a.onClose();
                    break;
                case 2:
                    int m6313a = m6313a(m6295c(queryParamMap.get("width")), 0);
                    int m6313a2 = m6313a(m6295c(queryParamMap.get("height")), 0);
                    int m6313a3 = m6313a(m6295c(queryParamMap.get("offsetX")), -100000);
                    int m6313a4 = m6313a(m6295c(queryParamMap.get("offsetY")), -100000);
                    String str4 = queryParamMap.get("customClosePosition");
                    CloseableLayout.ClosePosition closePosition = CloseableLayout.ClosePosition.TOP_RIGHT;
                    if (!TextUtils.isEmpty(str4)) {
                        if (str4.equals("top-left")) {
                            closePosition = CloseableLayout.ClosePosition.TOP_LEFT;
                        } else if (str4.equals("top-right")) {
                            closePosition = CloseableLayout.ClosePosition.TOP_RIGHT;
                        } else if (str4.equals("center")) {
                            closePosition = CloseableLayout.ClosePosition.CENTER;
                        } else if (str4.equals("bottom-left")) {
                            closePosition = CloseableLayout.ClosePosition.BOTTOM_LEFT;
                        } else if (str4.equals("bottom-right")) {
                            closePosition = CloseableLayout.ClosePosition.BOTTOM_RIGHT;
                        } else if (str4.equals("top-center")) {
                            closePosition = CloseableLayout.ClosePosition.TOP_CENTER;
                        } else if (!str4.equals("bottom-center")) {
                            throw new C16905a("Invalid close position: ".concat(String.valueOf(str4)));
                        } else {
                            closePosition = CloseableLayout.ClosePosition.BOTTOM_CENTER;
                        }
                    }
                    this.f59736a.onResize(m6313a, m6313a2, m6313a3, m6313a4, closePosition, m6305a(queryParamMap.get("allowOffscreen"), true));
                    this.f59736a.onUseCustomClose(this.f59742g);
                    break;
                case 3:
                    String str5 = queryParamMap.get("url");
                    this.f59736a.onExpand(str5 == null ? null : m6292e(str5), m6304a(queryParamMap, this.f59742g));
                    break;
                case 4:
                    this.f59736a.onUseCustomClose(m6304a(queryParamMap, this.f59742g));
                    break;
                case 5:
                    this.f59736a.onOpen(m6292e(queryParamMap.get("url")));
                    break;
                case 6:
                    boolean m6293d = m6293d(queryParamMap.get("allowOrientationChange"));
                    String str6 = queryParamMap.get("forceOrientation");
                    if (EnvironmentInfo.DeviceInfo.ORIENTATION_PORTRAIT.equals(str6)) {
                        enumC16906b = EnumC16906b.PORTRAIT;
                    } else if (EnvironmentInfo.DeviceInfo.ORIENTATION_LANDSCAPE.equals(str6)) {
                        enumC16906b = EnumC16906b.LANDSCAPE;
                    } else if (!"none".equals(str6)) {
                        throw new C16905a("Invalid orientation: ".concat(String.valueOf(str6)));
                    } else {
                        enumC16906b = EnumC16906b.NONE;
                    }
                    this.f59736a.onSetOrientationProperties(m6293d, enumC16906b);
                    break;
                case 7:
                case 8:
                case 9:
                    throw new C16905a("Unsupported MRAID Javascript command");
                case 10:
                    throw new C16905a("Unspecified MRAID Javascript command");
            }
            m6306a("window.mraidbridge.nativeCallComplete(" + JSONObject.quote(fromJavascriptString.toJavascriptString()) + ")");
            return true;
        } catch (URISyntaxException e3) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Invalid MRAID URL: ".concat(String.valueOf(str)));
            m6309a(MraidJavascriptCommand.UNSPECIFIED, "Mraid command sent an invalid URL");
            return true;
        }
    }

    /* renamed from: c */
    public final boolean m6297c() {
        return this.f59740e != null;
    }

    public void notifyScreenMetrics(C16907c c16907c) {
        m6306a("mraidbridge.setScreenSize(" + m6300b(c16907c.f59787b) + ");mraidbridge.setMaxSize(" + m6300b(c16907c.f59789d) + ");mraidbridge.setCurrentPosition(" + m6312a(c16907c.f59791f) + ");mraidbridge.setDefaultPosition(" + m6312a(c16907c.f59793h) + ")");
        StringBuilder sb = new StringBuilder("mraidbridge.notifySizeChangeEvent(");
        sb.append(m6300b(c16907c.f59791f));
        sb.append(")");
        m6306a(sb.toString());
    }

    public void setContentHtml(String str) {
        MraidWebView mraidWebView = this.f59740e;
        if (mraidWebView == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MRAID bridge called setContentHtml before WebView was attached");
            return;
        }
        this.f59737b = false;
        mraidWebView.loadDataWithBaseURL(Networking.getScheme() + "://" + Constants.HOST + "/", str, Mimetypes.MIMETYPE_HTML, "UTF-8", null);
    }

    public void setContentUrl(String str) {
        MraidWebView mraidWebView = this.f59740e;
        if (mraidWebView == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MRAID bridge called setContentHtml while WebView was not attached");
            return;
        }
        this.f59737b = false;
        mraidWebView.loadUrl(str);
    }
}
