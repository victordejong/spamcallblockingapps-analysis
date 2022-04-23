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
import com.amazonaws.services.s3.util.Mimetypes;
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

    /* renamed from: a  reason: collision with root package name */
    MraidBridgeListener f34422a;

    /* renamed from: b  reason: collision with root package name */
    boolean f34423b;

    /* renamed from: c  reason: collision with root package name */
    private final PlacementType f34424c;

    /* renamed from: d  reason: collision with root package name */
    private final MraidNativeCommandHandler f34425d;
    private MraidWebView e;
    private ViewGestureDetector f;
    private boolean g;
    private final WebViewClient h;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.mopub.mraid.MraidBridge$5  reason: invalid class name */
    /* loaded from: classes4-dex2jar.jar:com/mopub/mraid/MraidBridge$5.class */
    public static final /* synthetic */ class AnonymousClass5 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f34430a;

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
            f34430a = iArr;
            try {
                iArr[MraidJavascriptCommand.CLOSE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f34430a[MraidJavascriptCommand.RESIZE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f34430a[MraidJavascriptCommand.EXPAND.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f34430a[MraidJavascriptCommand.USE_CUSTOM_CLOSE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f34430a[MraidJavascriptCommand.OPEN.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f34430a[MraidJavascriptCommand.SET_ORIENTATION_PROPERTIES.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f34430a[MraidJavascriptCommand.PLAY_VIDEO.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f34430a[MraidJavascriptCommand.STORE_PICTURE.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f34430a[MraidJavascriptCommand.CREATE_CALENDAR_EVENT.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f34430a[MraidJavascriptCommand.UNSPECIFIED.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
        }
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/mraid/MraidBridge$MraidBridgeListener.class */
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

        void onSetOrientationProperties(boolean z, b bVar) throws a;

        void onUseCustomClose(boolean z);

        void onVisibilityChanged(boolean z);
    }

    /* loaded from: classes4-dex2jar.jar:com/mopub/mraid/MraidBridge$MraidWebView.class */
    public static class MraidWebView extends BaseWebViewViewability {
        OnVisibilityChangedListener i;
        private VisibilityTracker j;
        private boolean k;

        /* loaded from: classes4-dex2jar.jar:com/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener.class */
        public interface OnVisibilityChangedListener {
            void onVisibilityChanged(boolean z);
        }

        public MraidWebView(Context context) {
            super(context);
            this.k = getVisibility() == 0;
            if (Build.VERSION.SDK_INT > 22) {
                this.j = new VisibilityTracker(context);
                this.j.setVisibilityTrackerListener(new VisibilityTracker.VisibilityTrackerListener() { // from class: com.mopub.mraid.MraidBridge.MraidWebView.1
                    @Override // com.mopub.common.VisibilityTracker.VisibilityTrackerListener
                    public final void onVisibilityChanged(List<View> list, List<View> list2) {
                        Preconditions.checkNotNull(list);
                        Preconditions.checkNotNull(list2);
                        MraidWebView mraidWebView = MraidWebView.this;
                        mraidWebView.a(list.contains(mraidWebView));
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void a(boolean z) {
            if (this.k != z) {
                this.k = z;
                OnVisibilityChangedListener onVisibilityChangedListener = this.i;
                if (onVisibilityChangedListener != null) {
                    onVisibilityChangedListener.onVisibilityChanged(z);
                }
            }
        }

        @Override // com.mopub.mobileads.BaseWebView, android.webkit.WebView
        public void destroy() {
            super.destroy();
            VisibilityTracker visibilityTracker = this.j;
            if (visibilityTracker != null) {
                visibilityTracker.destroy();
            }
            this.j = null;
            this.i = null;
        }

        public boolean isMraidViewable() {
            return this.k;
        }

        @Override // com.mopub.mobileads.BaseWebViewViewability, android.webkit.WebView, android.view.View
        public void onVisibilityChanged(View view, int i) {
            super.onVisibilityChanged(view, i);
            VisibilityTracker visibilityTracker = this.j;
            boolean z = true;
            if (visibilityTracker == null) {
                if (i != 0) {
                    z = false;
                }
                a(z);
            } else if (i == 0) {
                visibilityTracker.clear();
                this.j.addView(view, this, 0, 0, 1);
            } else {
                visibilityTracker.removeView(this);
                a(false);
            }
        }
    }

    MraidBridge(PlacementType placementType, MraidNativeCommandHandler mraidNativeCommandHandler, boolean z) {
        this.h = new MraidWebViewClient() { // from class: com.mopub.mraid.MraidBridge.4
            @Override // android.webkit.WebViewClient
            public final void onPageFinished(WebView webView, String str) {
                if (webView instanceof BaseWebViewViewability) {
                    ((BaseWebViewViewability) webView).setPageLoaded();
                }
                MraidBridge.c(MraidBridge.this);
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
                mraidBridge.a();
                if (mraidBridge.f34422a == null) {
                    return true;
                }
                mraidBridge.f34422a.onRenderProcessGone(moPubErrorCode);
                return true;
            }

            @Override // android.webkit.WebViewClient
            public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
                return MraidBridge.this.b(str);
            }
        };
        this.f34424c = placementType;
        this.f34425d = mraidNativeCommandHandler;
        this.g = z;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public MraidBridge(PlacementType placementType, boolean z) {
        this(placementType, new MraidNativeCommandHandler(), z);
    }

    private static int a(int i, int i2) throws a {
        if (i >= i2 && i <= 100000) {
            return i;
        }
        throw new a("Integer parameter out of range: ".concat(String.valueOf(i)));
    }

    private static String a(Rect rect) {
        return rect.left + "," + rect.top + "," + rect.width() + "," + rect.height();
    }

    private void a(MraidJavascriptCommand mraidJavascriptCommand, String str) {
        a("window.mraidbridge.notifyErrorEvent(" + JSONObject.quote(mraidJavascriptCommand.toJavascriptString()) + ", " + JSONObject.quote(str) + ")");
    }

    private static boolean a(String str, boolean z) throws a {
        return str == null ? z : d(str);
    }

    private static boolean a(Map<String, String> map, boolean z) throws a {
        return a(map.get("shouldUseCustomClose"), false) & z;
    }

    private static String b(Rect rect) {
        return rect.width() + "," + rect.height();
    }

    private static int c(String str) throws a {
        try {
            return Integer.parseInt(str, 10);
        } catch (NumberFormatException e) {
            throw new a("Invalid numeric parameter: ".concat(String.valueOf(str)));
        }
    }

    static /* synthetic */ void c(MraidBridge mraidBridge) {
        if (!mraidBridge.f34423b) {
            mraidBridge.f34423b = true;
            MraidBridgeListener mraidBridgeListener = mraidBridge.f34422a;
            if (mraidBridgeListener != null) {
                mraidBridgeListener.onPageLoaded();
            }
        }
    }

    private boolean d() {
        ViewGestureDetector viewGestureDetector = this.f;
        return viewGestureDetector != null && viewGestureDetector.isClicked();
    }

    private static boolean d(String str) throws a {
        if ("true".equals(str)) {
            return true;
        }
        if ("false".equals(str)) {
            return false;
        }
        throw new a("Invalid boolean parameter: ".concat(String.valueOf(str)));
    }

    private static URI e(String str) throws a {
        if (str != null) {
            try {
                return new URI(str);
            } catch (URISyntaxException e) {
                throw new a("Invalid URL parameter: ".concat(String.valueOf(str)));
            }
        } else {
            throw new a("Parameter cannot be null");
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a() {
        MraidWebView mraidWebView = this.e;
        if (mraidWebView != null) {
            mraidWebView.destroy();
            this.e = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(MraidWebView mraidWebView) {
        this.e = mraidWebView;
        mraidWebView.getSettings().setJavaScriptEnabled(true);
        if (this.f34424c == PlacementType.INTERSTITIAL) {
            mraidWebView.getSettings().setMediaPlaybackRequiresUserGesture(false);
        }
        this.e.setScrollContainer(false);
        this.e.setVerticalScrollBarEnabled(false);
        this.e.setHorizontalScrollBarEnabled(false);
        this.e.setBackgroundColor(0);
        this.e.setWebViewClient(this.h);
        this.e.setWebChromeClient(new WebChromeClient() { // from class: com.mopub.mraid.MraidBridge.1
            @Override // android.webkit.WebChromeClient
            public final boolean onConsoleMessage(ConsoleMessage consoleMessage) {
                return MraidBridge.this.f34422a != null ? MraidBridge.this.f34422a.onConsoleMessage(consoleMessage) : super.onConsoleMessage(consoleMessage);
            }

            @Override // android.webkit.WebChromeClient
            public final boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
                return MraidBridge.this.f34422a != null ? MraidBridge.this.f34422a.onJsAlert(str2, jsResult) : super.onJsAlert(webView, str, str2, jsResult);
            }

            @Override // android.webkit.WebChromeClient
            public final void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
                super.onShowCustomView(view, customViewCallback);
            }
        });
        this.f = new ViewGestureDetector(this.e.getContext());
        this.e.setOnTouchListener(new View.OnTouchListener() { // from class: com.mopub.mraid.MraidBridge.2
            @Override // android.view.View.OnTouchListener
            public final boolean onTouch(View view, MotionEvent motionEvent) {
                MraidBridge.this.f.onTouchEvent(motionEvent);
                int action = motionEvent.getAction();
                if ((action != 0 && action != 1) || view.hasFocus()) {
                    return false;
                }
                view.requestFocus();
                return false;
            }
        });
        this.e.i = new MraidWebView.OnVisibilityChangedListener() { // from class: com.mopub.mraid.MraidBridge.3
            @Override // com.mopub.mraid.MraidBridge.MraidWebView.OnVisibilityChangedListener
            public final void onVisibilityChanged(boolean z) {
                if (MraidBridge.this.f34422a != null) {
                    MraidBridge.this.f34422a.onVisibilityChanged(z);
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(PlacementType placementType) {
        a("mraidbridge.setPlacementType(" + JSONObject.quote(placementType.toJavascriptString()) + ")");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(ViewState viewState) {
        a("mraidbridge.setState(" + JSONObject.quote(viewState.toJavascriptString()) + ")");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str) {
        if (this.e == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Attempted to inject Javascript into MRAID WebView while was not attached:\n\t".concat(String.valueOf(str)));
            return;
        }
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Injecting Javascript into MRAID WebView:\n\t".concat(String.valueOf(str)));
        this.e.loadUrl("javascript:".concat(String.valueOf(str)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(boolean z) {
        a("mraidbridge.setIsViewable(" + z + ")");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        a("mraidbridge.setSupports(false,false," + z3 + "," + z4 + "," + z5 + ")");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean b() {
        MraidWebView mraidWebView = this.e;
        return mraidWebView != null && mraidWebView.isMraidViewable();
    }

    final boolean b(String str) {
        Map<String, String> queryParamMap;
        b bVar;
        MraidBridgeListener mraidBridgeListener;
        try {
            new URI(str);
            Uri parse = Uri.parse(str);
            String scheme = parse.getScheme();
            String host = parse.getHost();
            if (!MoPub.ANALYTICS_MOPUB_TAG.equals(scheme)) {
                Uri uri = parse;
                String str2 = scheme;
                String str3 = host;
                if (d()) {
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
                            a(MraidJavascriptCommand.OPEN, "Non-mraid URL is invalid");
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
                    if (fromJavascriptString.requiresClick(this.f34424c) && !d()) {
                        throw new a("Cannot execute this command unless the user clicks");
                    }
                } catch (a | IllegalArgumentException e2) {
                    a(fromJavascriptString, e2.getMessage());
                }
                if (this.f34422a == null) {
                    throw new a("Invalid state to execute this command");
                } else if (this.e != null) {
                    switch (AnonymousClass5.f34430a[fromJavascriptString.ordinal()]) {
                        case 1:
                            this.f34422a.onClose();
                            break;
                        case 2:
                            int a2 = a(c(queryParamMap.get("width")), 0);
                            int a3 = a(c(queryParamMap.get("height")), 0);
                            int a4 = a(c(queryParamMap.get("offsetX")), -100000);
                            int a5 = a(c(queryParamMap.get("offsetY")), -100000);
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
                                } else if (str4.equals("bottom-center")) {
                                    closePosition = CloseableLayout.ClosePosition.BOTTOM_CENTER;
                                } else {
                                    throw new a("Invalid close position: ".concat(String.valueOf(str4)));
                                }
                            }
                            this.f34422a.onResize(a2, a3, a4, a5, closePosition, a(queryParamMap.get("allowOffscreen"), true));
                            this.f34422a.onUseCustomClose(this.g);
                            break;
                        case 3:
                            String str5 = queryParamMap.get("url");
                            this.f34422a.onExpand(str5 == null ? null : e(str5), a(queryParamMap, this.g));
                            break;
                        case 4:
                            this.f34422a.onUseCustomClose(a(queryParamMap, this.g));
                            break;
                        case 5:
                            this.f34422a.onOpen(e(queryParamMap.get("url")));
                            break;
                        case 6:
                            boolean d2 = d(queryParamMap.get("allowOrientationChange"));
                            String str6 = queryParamMap.get("forceOrientation");
                            if (EnvironmentInfo.DeviceInfo.ORIENTATION_PORTRAIT.equals(str6)) {
                                bVar = b.PORTRAIT;
                            } else if (EnvironmentInfo.DeviceInfo.ORIENTATION_LANDSCAPE.equals(str6)) {
                                bVar = b.LANDSCAPE;
                            } else if ("none".equals(str6)) {
                                bVar = b.NONE;
                            } else {
                                throw new a("Invalid orientation: ".concat(String.valueOf(str6)));
                            }
                            this.f34422a.onSetOrientationProperties(d2, bVar);
                            break;
                        case 7:
                        case 8:
                        case 9:
                            throw new a("Unsupported MRAID Javascript command");
                        case 10:
                            throw new a("Unspecified MRAID Javascript command");
                    }
                    a("window.mraidbridge.nativeCallComplete(" + JSONObject.quote(fromJavascriptString.toJavascriptString()) + ")");
                    return true;
                } else {
                    throw new a("The current WebView is being destroyed");
                }
            } else if (!"failLoad".equals(host) || this.f34424c != PlacementType.INLINE || (mraidBridgeListener = this.f34422a) == null) {
                return true;
            } else {
                mraidBridgeListener.onPageFailedToLoad();
                return true;
            }
        } catch (URISyntaxException e3) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "Invalid MRAID URL: ".concat(String.valueOf(str)));
            a(MraidJavascriptCommand.UNSPECIFIED, "Mraid command sent an invalid URL");
            return true;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean c() {
        return this.e != null;
    }

    public void notifyScreenMetrics(c cVar) {
        a("mraidbridge.setScreenSize(" + b(cVar.f34447b) + ");mraidbridge.setMaxSize(" + b(cVar.f34449d) + ");mraidbridge.setCurrentPosition(" + a(cVar.f) + ");mraidbridge.setDefaultPosition(" + a(cVar.h) + ")");
        StringBuilder sb = new StringBuilder("mraidbridge.notifySizeChangeEvent(");
        sb.append(b(cVar.f));
        sb.append(")");
        a(sb.toString());
    }

    public void setContentHtml(String str) {
        MraidWebView mraidWebView = this.e;
        if (mraidWebView == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MRAID bridge called setContentHtml before WebView was attached");
            return;
        }
        this.f34423b = false;
        mraidWebView.loadDataWithBaseURL(Networking.getScheme() + "://" + Constants.HOST + "/", str, Mimetypes.MIMETYPE_HTML, "UTF-8", null);
    }

    public void setContentUrl(String str) {
        MraidWebView mraidWebView = this.e;
        if (mraidWebView == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MRAID bridge called setContentHtml while WebView was not attached");
            return;
        }
        this.f34423b = false;
        mraidWebView.loadUrl(str);
    }
}
