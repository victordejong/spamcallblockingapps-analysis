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
import com.android.volley.Request;
import com.mopub.common.AdReport;
import com.mopub.common.AdType;
import com.mopub.common.CloseableLayout;
import com.mopub.common.Constants;
import com.mopub.common.Preconditions;
import com.mopub.common.VisibilityTracker;
import com.mopub.common.VisibleForTesting;
import com.mopub.common.logging.MoPubLog;
import com.mopub.mobileads.BaseWebView;
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
import p131c.p421j.p425c.C6666a;
/* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidBridge.class */
public class MraidBridge {

    /* renamed from: a */
    public final AdReport f34549a;

    /* renamed from: b */
    public final PlacementType f34550b;

    /* renamed from: c */
    public MraidBridgeListener f34551c;

    /* renamed from: d */
    public MraidWebView f34552d;

    /* renamed from: e */
    public ViewGestureDetector f34553e;

    /* renamed from: f */
    public boolean f34554f;

    /* renamed from: g */
    public final WebViewClient f34555g;

    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidBridge$MraidBridgeListener.class */
    public interface MraidBridgeListener {
        void onClose();

        boolean onConsoleMessage(ConsoleMessage consoleMessage);

        void onExpand(URI uri, boolean z) throws MraidCommandException;

        boolean onJsAlert(String str, JsResult jsResult);

        void onOpen(URI uri);

        void onPageFailedToLoad();

        void onPageLoaded();

        void onPlayVideo(URI uri);

        void onRenderProcessGone(MoPubErrorCode moPubErrorCode);

        void onResize(int i, int i2, int i3, int i4, CloseableLayout.ClosePosition closePosition, boolean z) throws MraidCommandException;

        void onSetOrientationProperties(boolean z, MraidOrientation mraidOrientation) throws MraidCommandException;

        void onUseCustomClose(boolean z);

        void onVisibilityChanged(boolean z);
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidBridge$MraidWebView.class */
    public static class MraidWebView extends BaseWebView {

        /* renamed from: c */
        public OnVisibilityChangedListener f34556c;

        /* renamed from: d */
        public VisibilityTracker f34557d;

        /* renamed from: e */
        public boolean f34558e;

        /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener.class */
        public interface OnVisibilityChangedListener {
            void onVisibilityChanged(boolean z);
        }

        /* renamed from: com.mopub.mraid.MraidBridge$MraidWebView$a */
        /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidBridge$MraidWebView$a.class */
        public class C8892a implements VisibilityTracker.VisibilityTrackerListener {
            public C8892a() {
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
                this.f34558e = getVisibility() == 0;
                return;
            }
            this.f34557d = new VisibilityTracker(context);
            this.f34557d.setVisibilityTrackerListener(new C8892a());
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void setMraidViewable(boolean z) {
            if (this.f34558e != z) {
                this.f34558e = z;
                OnVisibilityChangedListener onVisibilityChangedListener = this.f34556c;
                if (onVisibilityChangedListener != null) {
                    onVisibilityChangedListener.onVisibilityChanged(z);
                }
            }
        }

        @Override // com.mopub.mobileads.BaseWebView, android.webkit.WebView
        public void destroy() {
            super.destroy();
            this.f34557d = null;
            this.f34556c = null;
        }

        public boolean isMraidViewable() {
            return this.f34558e;
        }

        @Override // android.webkit.WebView, android.view.View
        public void onVisibilityChanged(View view, int i) {
            super.onVisibilityChanged(view, i);
            VisibilityTracker visibilityTracker = this.f34557d;
            boolean z = true;
            if (visibilityTracker == null) {
                if (i != 0) {
                    z = false;
                }
                setMraidViewable(z);
            } else if (i == 0) {
                visibilityTracker.clear();
                this.f34557d.addView(view, this, 0, 0, 1);
            } else {
                visibilityTracker.removeView(this);
                setMraidViewable(false);
            }
        }

        public void setVisibilityChangedListener(OnVisibilityChangedListener onVisibilityChangedListener) {
            this.f34556c = onVisibilityChangedListener;
        }
    }

    /* renamed from: com.mopub.mraid.MraidBridge$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidBridge$a.class */
    public class C8893a extends WebChromeClient {
        public C8893a() {
        }

        @Override // android.webkit.WebChromeClient
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            return MraidBridge.this.f34551c != null ? MraidBridge.this.f34551c.onConsoleMessage(consoleMessage) : super.onConsoleMessage(consoleMessage);
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            return MraidBridge.this.f34551c != null ? MraidBridge.this.f34551c.onJsAlert(str2, jsResult) : super.onJsAlert(webView, str, str2, jsResult);
        }

        @Override // android.webkit.WebChromeClient
        public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
            super.onShowCustomView(view, customViewCallback);
        }
    }

    /* renamed from: com.mopub.mraid.MraidBridge$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidBridge$b.class */
    public class View$OnTouchListenerC8894b implements View.OnTouchListener {
        public View$OnTouchListenerC8894b() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            MraidBridge.this.f34553e.onTouchEvent(motionEvent);
            int action = motionEvent.getAction();
            if ((action != 0 && action != 1) || view.hasFocus()) {
                return false;
            }
            view.requestFocus();
            return false;
        }
    }

    /* renamed from: com.mopub.mraid.MraidBridge$c */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidBridge$c.class */
    public class C8895c implements MraidWebView.OnVisibilityChangedListener {
        public C8895c() {
        }

        @Override // com.mopub.mraid.MraidBridge.MraidWebView.OnVisibilityChangedListener
        public void onVisibilityChanged(boolean z) {
            if (MraidBridge.this.f34551c != null) {
                MraidBridge.this.f34551c.onVisibilityChanged(z);
            }
        }
    }

    /* renamed from: com.mopub.mraid.MraidBridge$d */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidBridge$d.class */
    public class C8896d extends MraidWebViewClient {
        public C8896d() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            MraidBridge.this.m4110b();
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Error: " + str);
            super.onReceivedError(webView, i, str, str2);
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            MraidBridge.this.m4125a(renderProcessGoneDetail);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            return MraidBridge.this.m4116a(str);
        }
    }

    /* renamed from: com.mopub.mraid.MraidBridge$e */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidBridge$e.class */
    public static /* synthetic */ class C8897e {

        /* renamed from: a */
        public static final /* synthetic */ int[] f34564a;

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
            f34564a = iArr;
            try {
                iArr[MraidJavascriptCommand.CLOSE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f34564a[MraidJavascriptCommand.RESIZE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f34564a[MraidJavascriptCommand.EXPAND.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f34564a[MraidJavascriptCommand.USE_CUSTOM_CLOSE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f34564a[MraidJavascriptCommand.OPEN.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f34564a[MraidJavascriptCommand.SET_ORIENTATION_PROPERTIES.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f34564a[MraidJavascriptCommand.PLAY_VIDEO.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f34564a[MraidJavascriptCommand.STORE_PICTURE.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f34564a[MraidJavascriptCommand.CREATE_CALENDAR_EVENT.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f34564a[MraidJavascriptCommand.UNSPECIFIED.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
        }
    }

    public MraidBridge(AdReport adReport, PlacementType placementType) {
        this(adReport, placementType, new MraidNativeCommandHandler());
    }

    @VisibleForTesting
    public MraidBridge(AdReport adReport, PlacementType placementType, MraidNativeCommandHandler mraidNativeCommandHandler) {
        this.f34555g = new C8896d();
        this.f34549a = adReport;
        this.f34550b = placementType;
    }

    /* renamed from: a */
    public final int m4127a(int i, int i2, int i3) throws MraidCommandException {
        if (i >= i2 && i <= i3) {
            return i;
        }
        throw new MraidCommandException("Integer parameter out of range: " + i);
    }

    /* renamed from: a */
    public final CloseableLayout.ClosePosition m4115a(String str, CloseableLayout.ClosePosition closePosition) throws MraidCommandException {
        if (TextUtils.isEmpty(str)) {
            return closePosition;
        }
        if (str.equals("top-left")) {
            return CloseableLayout.ClosePosition.TOP_LEFT;
        }
        if (str.equals("top-right")) {
            return CloseableLayout.ClosePosition.TOP_RIGHT;
        }
        if (str.equals("center")) {
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
        throw new MraidCommandException("Invalid close position: " + str);
    }

    /* renamed from: a */
    public final String m4126a(Rect rect) {
        return rect.left + "," + rect.top + "," + rect.width() + "," + rect.height();
    }

    /* renamed from: a */
    public final URI m4114a(String str, URI uri) throws MraidCommandException {
        return str == null ? uri : m4098f(str);
    }

    /* renamed from: a */
    public void m4128a() {
        MraidWebView mraidWebView = this.f34552d;
        if (mraidWebView != null) {
            mraidWebView.destroy();
            this.f34552d = null;
        }
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m4125a(RenderProcessGoneDetail renderProcessGoneDetail) {
        MoPubErrorCode moPubErrorCode = (renderProcessGoneDetail == null || !renderProcessGoneDetail.didCrash()) ? MoPubErrorCode.RENDER_PROCESS_GONE_UNSPECIFIED : MoPubErrorCode.RENDER_PROCESS_GONE_WITH_CRASH;
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, moPubErrorCode);
        m4128a();
        MraidBridgeListener mraidBridgeListener = this.f34551c;
        if (mraidBridgeListener != null) {
            mraidBridgeListener.onRenderProcessGone(moPubErrorCode);
        }
    }

    /* renamed from: a */
    public void m4124a(MraidBridgeListener mraidBridgeListener) {
        this.f34551c = mraidBridgeListener;
    }

    /* renamed from: a */
    public void m4123a(MraidWebView mraidWebView) {
        this.f34552d = mraidWebView;
        mraidWebView.getSettings().setJavaScriptEnabled(true);
        if (this.f34550b == PlacementType.INTERSTITIAL) {
            mraidWebView.getSettings().setMediaPlaybackRequiresUserGesture(false);
        }
        this.f34552d.setScrollContainer(false);
        this.f34552d.setVerticalScrollBarEnabled(false);
        this.f34552d.setHorizontalScrollBarEnabled(false);
        this.f34552d.setBackgroundColor(0);
        this.f34552d.setWebViewClient(this.f34555g);
        this.f34552d.setWebChromeClient(new C8893a());
        this.f34553e = new ViewGestureDetector(this.f34552d.getContext(), this.f34552d, this.f34549a);
        this.f34552d.setOnTouchListener(new View$OnTouchListenerC8894b());
        this.f34552d.setVisibilityChangedListener(new C8895c());
    }

    /* renamed from: a */
    public final void m4121a(MraidJavascriptCommand mraidJavascriptCommand) {
        m4107b("window.mraidbridge.nativeCallComplete(" + JSONObject.quote(mraidJavascriptCommand.toJavascriptString()) + ")");
    }

    /* renamed from: a */
    public final void m4120a(MraidJavascriptCommand mraidJavascriptCommand, String str) {
        m4107b("window.mraidbridge.notifyErrorEvent(" + JSONObject.quote(mraidJavascriptCommand.toJavascriptString()) + ", " + JSONObject.quote(str) + ")");
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m4119a(MraidJavascriptCommand mraidJavascriptCommand, Map<String, String> map) throws MraidCommandException {
        if (mraidJavascriptCommand.requiresClick(this.f34550b) && !m4103d()) {
            throw new MraidCommandException("Cannot execute this command unless the user clicks");
        } else if (this.f34551c == null) {
            throw new MraidCommandException("Invalid state to execute this command");
        } else if (this.f34552d != null) {
            switch (C8897e.f34564a[mraidJavascriptCommand.ordinal()]) {
                case 1:
                    this.f34551c.onClose();
                    return;
                case 2:
                    int e = m4100e(map.get("width"));
                    m4127a(e, 0, 100000);
                    int e2 = m4100e(map.get("height"));
                    m4127a(e2, 0, 100000);
                    int e3 = m4100e(map.get("offsetX"));
                    m4127a(e3, -100000, 100000);
                    int e4 = m4100e(map.get("offsetY"));
                    m4127a(e4, -100000, 100000);
                    this.f34551c.onResize(e, e2, e3, e4, m4115a(map.get("customClosePosition"), CloseableLayout.ClosePosition.TOP_RIGHT), m4113a(map.get("allowOffscreen"), true));
                    return;
                case 3:
                    this.f34551c.onExpand(m4114a(map.get("url"), (URI) null), m4113a(map.get("shouldUseCustomClose"), false));
                    return;
                case 4:
                    this.f34551c.onUseCustomClose(m4113a(map.get("shouldUseCustomClose"), false));
                    return;
                case 5:
                    this.f34551c.onOpen(m4098f(map.get("url")));
                    return;
                case 6:
                    this.f34551c.onSetOrientationProperties(m4104c(map.get("allowOrientationChange")), m4102d(map.get("forceOrientation")));
                    return;
                case 7:
                    this.f34551c.onPlayVideo(m4098f(map.get("uri")));
                    return;
                case 8:
                case 9:
                    throw new MraidCommandException("Unsupported MRAID Javascript command");
                case 10:
                    throw new MraidCommandException("Unspecified MRAID Javascript command");
                default:
                    return;
            }
        } else {
            throw new MraidCommandException("The current WebView is being destroyed");
        }
    }

    /* renamed from: a */
    public void m4118a(PlacementType placementType) {
        m4107b("mraidbridge.setPlacementType(" + JSONObject.quote(placementType.toJavascriptString()) + ")");
    }

    /* renamed from: a */
    public void m4117a(ViewState viewState) {
        m4107b("mraidbridge.setState(" + JSONObject.quote(viewState.toJavascriptString()) + ")");
    }

    /* renamed from: a */
    public void m4112a(boolean z) {
        m4107b("mraidbridge.setIsViewable(" + z + ")");
    }

    /* renamed from: a */
    public void m4111a(boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        m4107b("mraidbridge.setSupports(" + z + "," + z2 + "," + z3 + "," + z4 + "," + z5 + ")");
    }

    @VisibleForTesting
    /* renamed from: a */
    public boolean m4116a(String str) {
        MraidBridgeListener mraidBridgeListener;
        try {
            new URI(str);
            Uri parse = Uri.parse(str);
            String scheme = parse.getScheme();
            String host = parse.getHost();
            if (!"mopub".equals(scheme)) {
                Uri uri = parse;
                String str2 = scheme;
                String str3 = host;
                if (m4103d()) {
                    uri = parse;
                    str2 = scheme;
                    str3 = host;
                    if (!AdType.MRAID.equals(scheme)) {
                        try {
                            uri = Uri.parse("mraid://open?url=" + URLEncoder.encode(str, Request.DEFAULT_PARAMS_ENCODING));
                            str3 = uri.getHost();
                            str2 = uri.getScheme();
                        } catch (UnsupportedEncodingException e) {
                            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                            MoPubLog.log(sdkLogEvent, "Invalid MRAID URL encoding: " + str);
                            m4120a(MraidJavascriptCommand.OPEN, "Non-mraid URL is invalid");
                            return false;
                        }
                    }
                }
                if (!AdType.MRAID.equals(str2)) {
                    return false;
                }
                MraidJavascriptCommand fromJavascriptString = MraidJavascriptCommand.fromJavascriptString(str3);
                try {
                    m4119a(fromJavascriptString, MoPubRequestUtils.getQueryParamMap(uri));
                } catch (MraidCommandException | IllegalArgumentException e2) {
                    m4120a(fromJavascriptString, e2.getMessage());
                }
                m4121a(fromJavascriptString);
                return true;
            } else if (!"failLoad".equals(host) || this.f34550b != PlacementType.INLINE || (mraidBridgeListener = this.f34551c) == null) {
                return true;
            } else {
                mraidBridgeListener.onPageFailedToLoad();
                return true;
            }
        } catch (URISyntaxException e3) {
            MoPubLog.SdkLogEvent sdkLogEvent2 = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent2, "Invalid MRAID URL: " + str);
            m4120a(MraidJavascriptCommand.UNSPECIFIED, "Mraid command sent an invalid URL");
            return true;
        }
    }

    /* renamed from: a */
    public final boolean m4113a(String str, boolean z) throws MraidCommandException {
        return str == null ? z : m4104c(str);
    }

    /* renamed from: b */
    public final String m4109b(Rect rect) {
        return rect.width() + "," + rect.height();
    }

    @VisibleForTesting
    /* renamed from: b */
    public final void m4110b() {
        if (!this.f34554f) {
            this.f34554f = true;
            MraidBridgeListener mraidBridgeListener = this.f34551c;
            if (mraidBridgeListener != null) {
                mraidBridgeListener.onPageLoaded();
            }
        }
    }

    /* renamed from: b */
    public void m4107b(String str) {
        if (this.f34552d == null) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Attempted to inject Javascript into MRAID WebView while was not attached:\n\t" + str);
            return;
        }
        MoPubLog.SdkLogEvent sdkLogEvent2 = MoPubLog.SdkLogEvent.CUSTOM;
        MoPubLog.log(sdkLogEvent2, "Injecting Javascript into MRAID WebView:\n\t" + str);
        MraidWebView mraidWebView = this.f34552d;
        mraidWebView.loadUrl("javascript:" + str);
    }

    /* renamed from: c */
    public boolean m4106c() {
        return this.f34552d != null;
    }

    /* renamed from: c */
    public final boolean m4104c(String str) throws MraidCommandException {
        if ("true".equals(str)) {
            return true;
        }
        if ("false".equals(str)) {
            return false;
        }
        throw new MraidCommandException("Invalid boolean parameter: " + str);
    }

    /* renamed from: d */
    public final MraidOrientation m4102d(String str) throws MraidCommandException {
        if ("portrait".equals(str)) {
            return MraidOrientation.PORTRAIT;
        }
        if ("landscape".equals(str)) {
            return MraidOrientation.LANDSCAPE;
        }
        if ("none".equals(str)) {
            return MraidOrientation.NONE;
        }
        throw new MraidCommandException("Invalid orientation: " + str);
    }

    /* renamed from: d */
    public boolean m4103d() {
        ViewGestureDetector viewGestureDetector = this.f34553e;
        return viewGestureDetector != null && viewGestureDetector.isClicked();
    }

    /* renamed from: e */
    public final int m4100e(String str) throws MraidCommandException {
        try {
            return Integer.parseInt(str, 10);
        } catch (NumberFormatException e) {
            throw new MraidCommandException("Invalid numeric parameter: " + str);
        }
    }

    /* renamed from: e */
    public boolean m4101e() {
        return this.f34554f;
    }

    /* renamed from: f */
    public final URI m4098f(String str) throws MraidCommandException {
        if (str != null) {
            try {
                return new URI(str);
            } catch (URISyntaxException e) {
                throw new MraidCommandException("Invalid URL parameter: " + str);
            }
        } else {
            throw new MraidCommandException("Parameter cannot be null");
        }
    }

    /* renamed from: f */
    public boolean m4099f() {
        MraidWebView mraidWebView = this.f34552d;
        return mraidWebView != null && mraidWebView.isMraidViewable();
    }

    /* renamed from: g */
    public void m4097g() {
        m4107b("mraidbridge.notifyReadyEvent();");
    }

    public void notifyScreenMetrics(C6666a aVar) {
        m4107b("mraidbridge.setScreenSize(" + m4109b(aVar.m20109f()) + ");mraidbridge.setMaxSize(" + m4109b(aVar.m20110e()) + ");mraidbridge.setCurrentPosition(" + m4126a(aVar.m20119a()) + ");mraidbridge.setDefaultPosition(" + m4126a(aVar.m20113c()) + ")");
        StringBuilder sb = new StringBuilder();
        sb.append("mraidbridge.notifySizeChangeEvent(");
        sb.append(m4109b(aVar.m20119a()));
        sb.append(")");
        m4107b(sb.toString());
    }

    public void setContentHtml(String str) {
        MraidWebView mraidWebView = this.f34552d;
        if (mraidWebView == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MRAID bridge called setContentHtml before WebView was attached");
            return;
        }
        this.f34554f = false;
        mraidWebView.loadDataWithBaseURL(Networking.getBaseUrlScheme() + "://" + Constants.HOST + "/", str, "text/html", Request.DEFAULT_PARAMS_ENCODING, null);
    }

    public void setContentUrl(String str) {
        MraidWebView mraidWebView = this.f34552d;
        if (mraidWebView == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MRAID bridge called setContentHtml while WebView was not attached");
            return;
        }
        this.f34554f = false;
        mraidWebView.loadUrl(str);
    }
}
