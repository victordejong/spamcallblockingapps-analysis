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
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import androidx.media2.exoplayer.external.text.ttml.TtmlNode;
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
import com.taiwanmobile.p055pt.adp.view.webview.mraid.MraidParser;
import gogolook.callgogolook2.gson.UserProfile;
import java.io.UnsupportedEncodingException;
import java.net.URI;
import java.net.URISyntaxException;
import java.net.URLEncoder;
import java.util.List;
import java.util.Map;
import org.json.JSONObject;
import p081h.p430l.p434c.C10721a;
import p081h.p430l.p434c.C10723c;
import p081h.p430l.p434c.EnumC10722b;
/* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidBridge.class */
public class MraidBridge {

    /* renamed from: a */
    public final AdReport f8884a;
    @NonNull

    /* renamed from: b */
    public final PlacementType f8885b;
    @Nullable

    /* renamed from: c */
    public MraidBridgeListener f8886c;
    @Nullable

    /* renamed from: d */
    public MraidWebView f8887d;
    @Nullable

    /* renamed from: e */
    public ViewGestureDetector f8888e;

    /* renamed from: f */
    public boolean f8889f;

    /* renamed from: g */
    public final WebViewClient f8890g;

    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidBridge$MraidBridgeListener.class */
    public interface MraidBridgeListener {
        void onClose();

        boolean onConsoleMessage(@NonNull ConsoleMessage consoleMessage);

        void onExpand(URI uri, boolean z) throws C10721a;

        boolean onJsAlert(@NonNull String str, @NonNull JsResult jsResult);

        void onOpen(URI uri);

        void onPageFailedToLoad();

        void onPageLoaded();

        void onPlayVideo(URI uri);

        void onRenderProcessGone(@NonNull MoPubErrorCode moPubErrorCode);

        void onResize(int i, int i2, int i3, int i4, @NonNull CloseableLayout.ClosePosition closePosition, boolean z) throws C10721a;

        void onSetOrientationProperties(boolean z, EnumC10722b bVar) throws C10721a;

        void onUseCustomClose(boolean z);

        void onVisibilityChanged(boolean z);
    }

    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidBridge$MraidWebView.class */
    public static class MraidWebView extends BaseWebView {
        @Nullable

        /* renamed from: c */
        public OnVisibilityChangedListener f8891c;
        @Nullable

        /* renamed from: d */
        public VisibilityTracker f8892d;

        /* renamed from: e */
        public boolean f8893e;

        /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidBridge$MraidWebView$OnVisibilityChangedListener.class */
        public interface OnVisibilityChangedListener {
            void onVisibilityChanged(boolean z);
        }

        /* renamed from: com.mopub.mraid.MraidBridge$MraidWebView$a */
        /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidBridge$MraidWebView$a.class */
        public class C3898a implements VisibilityTracker.VisibilityTrackerListener {
            public C3898a() {
            }

            @Override // com.mopub.common.VisibilityTracker.VisibilityTrackerListener
            public void onVisibilityChanged(@NonNull List<View> list, @NonNull List<View> list2) {
                Preconditions.checkNotNull(list);
                Preconditions.checkNotNull(list2);
                MraidWebView mraidWebView = MraidWebView.this;
                mraidWebView.m30303a(list.contains(mraidWebView));
            }
        }

        public MraidWebView(Context context) {
            super(context);
            if (Build.VERSION.SDK_INT <= 22) {
                this.f8893e = getVisibility() == 0;
                return;
            }
            this.f8892d = new VisibilityTracker(context);
            this.f8892d.setVisibilityTrackerListener(new C3898a());
        }

        /* renamed from: a */
        public void m30305a(@Nullable OnVisibilityChangedListener onVisibilityChangedListener) {
            this.f8891c = onVisibilityChangedListener;
        }

        /* renamed from: a */
        public final void m30303a(boolean z) {
            if (this.f8893e != z) {
                this.f8893e = z;
                OnVisibilityChangedListener onVisibilityChangedListener = this.f8891c;
                if (onVisibilityChangedListener != null) {
                    onVisibilityChangedListener.onVisibilityChanged(z);
                }
            }
        }

        @Override // com.mopub.mobileads.BaseWebView, android.webkit.WebView
        public void destroy() {
            super.destroy();
            this.f8892d = null;
            this.f8891c = null;
        }

        public boolean isMraidViewable() {
            return this.f8893e;
        }

        @Override // android.webkit.WebView, android.view.View
        public void onVisibilityChanged(@NonNull View view, int i) {
            super.onVisibilityChanged(view, i);
            VisibilityTracker visibilityTracker = this.f8892d;
            boolean z = true;
            if (visibilityTracker == null) {
                if (i != 0) {
                    z = false;
                }
                m30303a(z);
            } else if (i == 0) {
                visibilityTracker.clear();
                this.f8892d.addView(view, this, 0, 0, 1);
            } else {
                visibilityTracker.removeView(this);
                m30303a(false);
            }
        }
    }

    /* renamed from: com.mopub.mraid.MraidBridge$a */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidBridge$a.class */
    public class C3899a extends WebChromeClient {
        public C3899a() {
        }

        @Override // android.webkit.WebChromeClient
        public boolean onConsoleMessage(@NonNull ConsoleMessage consoleMessage) {
            return MraidBridge.this.f8886c != null ? MraidBridge.this.f8886c.onConsoleMessage(consoleMessage) : super.onConsoleMessage(consoleMessage);
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            return MraidBridge.this.f8886c != null ? MraidBridge.this.f8886c.onJsAlert(str2, jsResult) : super.onJsAlert(webView, str, str2, jsResult);
        }

        @Override // android.webkit.WebChromeClient
        public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
            super.onShowCustomView(view, customViewCallback);
        }
    }

    /* renamed from: com.mopub.mraid.MraidBridge$b */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidBridge$b.class */
    public class View$OnTouchListenerC3900b implements View.OnTouchListener {
        public View$OnTouchListenerC3900b() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            MraidBridge.this.f8888e.onTouchEvent(motionEvent);
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
    public class C3901c implements MraidWebView.OnVisibilityChangedListener {
        public C3901c() {
        }

        @Override // com.mopub.mraid.MraidBridge.MraidWebView.OnVisibilityChangedListener
        public void onVisibilityChanged(boolean z) {
            if (MraidBridge.this.f8886c != null) {
                MraidBridge.this.f8886c.onVisibilityChanged(z);
            }
        }
    }

    /* renamed from: com.mopub.mraid.MraidBridge$d */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidBridge$d.class */
    public class C3902d extends MraidWebViewClient {
        public C3902d() {
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(@NonNull WebView webView, @NonNull String str) {
            MraidBridge.this.m30319b();
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(@NonNull WebView webView, int i, @NonNull String str, @NonNull String str2) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Error: " + str);
            super.onReceivedError(webView, i, str, str2);
        }

        @Override // android.webkit.WebViewClient
        @RequiresApi(26)
        public boolean onRenderProcessGone(@Nullable WebView webView, @Nullable RenderProcessGoneDetail renderProcessGoneDetail) {
            MraidBridge.this.m30334a(renderProcessGoneDetail);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(@NonNull WebView webView, @NonNull String str) {
            return MraidBridge.this.m30325a(str);
        }
    }

    /* renamed from: com.mopub.mraid.MraidBridge$e */
    /* loaded from: classes2-dex2jar.jar:com/mopub/mraid/MraidBridge$e.class */
    public static /* synthetic */ class C3903e {

        /* renamed from: a */
        public static final /* synthetic */ int[] f8899a = new int[MraidJavascriptCommand.values().length];

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
            try {
                f8899a[MraidJavascriptCommand.CLOSE.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f8899a[MraidJavascriptCommand.RESIZE.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f8899a[MraidJavascriptCommand.EXPAND.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f8899a[MraidJavascriptCommand.USE_CUSTOM_CLOSE.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
            try {
                f8899a[MraidJavascriptCommand.OPEN.ordinal()] = 5;
            } catch (NoSuchFieldError e5) {
            }
            try {
                f8899a[MraidJavascriptCommand.SET_ORIENTATION_PROPERTIES.ordinal()] = 6;
            } catch (NoSuchFieldError e6) {
            }
            try {
                f8899a[MraidJavascriptCommand.PLAY_VIDEO.ordinal()] = 7;
            } catch (NoSuchFieldError e7) {
            }
            try {
                f8899a[MraidJavascriptCommand.STORE_PICTURE.ordinal()] = 8;
            } catch (NoSuchFieldError e8) {
            }
            try {
                f8899a[MraidJavascriptCommand.CREATE_CALENDAR_EVENT.ordinal()] = 9;
            } catch (NoSuchFieldError e9) {
            }
            try {
                f8899a[MraidJavascriptCommand.UNSPECIFIED.ordinal()] = 10;
            } catch (NoSuchFieldError e10) {
            }
        }
    }

    public MraidBridge(@Nullable AdReport adReport, @NonNull PlacementType placementType) {
        this(adReport, placementType, new MraidNativeCommandHandler());
    }

    @VisibleForTesting
    public MraidBridge(@Nullable AdReport adReport, @NonNull PlacementType placementType, @NonNull MraidNativeCommandHandler mraidNativeCommandHandler) {
        this.f8890g = new C3902d();
        this.f8884a = adReport;
        this.f8885b = placementType;
    }

    /* renamed from: a */
    public final int m30336a(int i, int i2, int i3) throws C10721a {
        if (i >= i2 && i <= i3) {
            return i;
        }
        throw new C10721a("Integer parameter out of range: " + i);
    }

    /* renamed from: a */
    public final CloseableLayout.ClosePosition m30324a(@NonNull String str, @NonNull CloseableLayout.ClosePosition closePosition) throws C10721a {
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
        throw new C10721a("Invalid close position: " + str);
    }

    @NonNull
    /* renamed from: a */
    public final String m30335a(Rect rect) {
        return rect.left + "," + rect.top + "," + rect.width() + "," + rect.height();
    }

    @NonNull
    /* renamed from: a */
    public final URI m30323a(@Nullable String str, URI uri) throws C10721a {
        return str == null ? uri : m30307f(str);
    }

    /* renamed from: a */
    public void m30337a() {
        MraidWebView mraidWebView = this.f8887d;
        if (mraidWebView != null) {
            mraidWebView.destroy();
            this.f8887d = null;
        }
    }

    @TargetApi(26)
    @VisibleForTesting
    /* renamed from: a */
    public void m30334a(@Nullable RenderProcessGoneDetail renderProcessGoneDetail) {
        MoPubErrorCode moPubErrorCode = (renderProcessGoneDetail == null || !renderProcessGoneDetail.didCrash()) ? MoPubErrorCode.RENDER_PROCESS_GONE_UNSPECIFIED : MoPubErrorCode.RENDER_PROCESS_GONE_WITH_CRASH;
        MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, moPubErrorCode);
        m30337a();
        MraidBridgeListener mraidBridgeListener = this.f8886c;
        if (mraidBridgeListener != null) {
            mraidBridgeListener.onRenderProcessGone(moPubErrorCode);
        }
    }

    /* renamed from: a */
    public void m30333a(@Nullable MraidBridgeListener mraidBridgeListener) {
        this.f8886c = mraidBridgeListener;
    }

    /* renamed from: a */
    public void m30332a(@NonNull MraidWebView mraidWebView) {
        this.f8887d = mraidWebView;
        this.f8887d.getSettings().setJavaScriptEnabled(true);
        if (this.f8885b == PlacementType.INTERSTITIAL) {
            mraidWebView.getSettings().setMediaPlaybackRequiresUserGesture(false);
        }
        this.f8887d.setScrollContainer(false);
        this.f8887d.setVerticalScrollBarEnabled(false);
        this.f8887d.setHorizontalScrollBarEnabled(false);
        this.f8887d.setBackgroundColor(0);
        this.f8887d.setWebViewClient(this.f8890g);
        this.f8887d.setWebChromeClient(new C3899a());
        this.f8888e = new ViewGestureDetector(this.f8887d.getContext(), this.f8887d, this.f8884a);
        this.f8887d.setOnTouchListener(new View$OnTouchListenerC3900b());
        this.f8887d.m30305a(new C3901c());
    }

    /* renamed from: a */
    public final void m30330a(@NonNull MraidJavascriptCommand mraidJavascriptCommand) {
        m30316b("window.mraidbridge.nativeCallComplete(" + JSONObject.quote(mraidJavascriptCommand.m30252a()) + ")");
    }

    /* renamed from: a */
    public final void m30329a(@NonNull MraidJavascriptCommand mraidJavascriptCommand, @NonNull String str) {
        m30316b("window.mraidbridge.notifyErrorEvent(" + JSONObject.quote(mraidJavascriptCommand.m30252a()) + UserProfile.CARD_CATE_SEPARATOR + JSONObject.quote(str) + ")");
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m30328a(@NonNull MraidJavascriptCommand mraidJavascriptCommand, @NonNull Map<String, String> map) throws C10721a {
        if (mraidJavascriptCommand.mo30250a(this.f8885b) && !m30312d()) {
            throw new C10721a("Cannot execute this command unless the user clicks");
        } else if (this.f8886c == null) {
            throw new C10721a("Invalid state to execute this command");
        } else if (this.f8887d != null) {
            switch (C3903e.f8899a[mraidJavascriptCommand.ordinal()]) {
                case 1:
                    this.f8886c.onClose();
                    return;
                case 2:
                    int e = m30309e(map.get("width"));
                    m30336a(e, 0, 100000);
                    int e2 = m30309e(map.get("height"));
                    m30336a(e2, 0, 100000);
                    int e3 = m30309e(map.get(MraidParser.MRAID_PARAM_OFFSET_X));
                    m30336a(e3, -100000, 100000);
                    int e4 = m30309e(map.get(MraidParser.MRAID_PARAM_OFFSET_Y));
                    m30336a(e4, -100000, 100000);
                    this.f8886c.onResize(e, e2, e3, e4, m30324a(map.get(MraidParser.MRAID_PARAM_CUSTOM_CLOSE_POSITION), CloseableLayout.ClosePosition.TOP_RIGHT), m30322a(map.get(MraidParser.MRAID_PARAM_ALLOW_OFF_SCREEN), true));
                    return;
                case 3:
                    this.f8886c.onExpand(m30323a(map.get("url"), (URI) null), m30322a(map.get("shouldUseCustomClose"), false));
                    return;
                case 4:
                    this.f8886c.onUseCustomClose(m30322a(map.get("shouldUseCustomClose"), false));
                    return;
                case 5:
                    this.f8886c.onOpen(m30307f(map.get("url")));
                    return;
                case 6:
                    this.f8886c.onSetOrientationProperties(m30313c(map.get(MraidParser.MRAID_PARAM_ALLOW_ORIENTATION_CHANGE)), m30311d(map.get(MraidParser.MRAID_PARAM_FORCE_ORIENTATION)));
                    return;
                case 7:
                    this.f8886c.onPlayVideo(m30307f(map.get("uri")));
                    return;
                case 8:
                case 9:
                    throw new C10721a("Unsupported MRAID Javascript command");
                case 10:
                    throw new C10721a("Unspecified MRAID Javascript command");
                default:
                    return;
            }
        } else {
            throw new C10721a("The current WebView is being destroyed");
        }
    }

    /* renamed from: a */
    public void m30327a(PlacementType placementType) {
        m30316b("mraidbridge.setPlacementType(" + JSONObject.quote(placementType.m30230a()) + ")");
    }

    /* renamed from: a */
    public void m30326a(ViewState viewState) {
        m30316b("mraidbridge.setState(" + JSONObject.quote(viewState.toJavascriptString()) + ")");
    }

    /* renamed from: a */
    public void m30321a(boolean z) {
        m30316b("mraidbridge.setIsViewable(" + z + ")");
    }

    /* renamed from: a */
    public void m30320a(boolean z, boolean z2, boolean z3, boolean z4, boolean z5) {
        m30316b("mraidbridge.setSupports(" + z + "," + z2 + "," + z3 + "," + z4 + "," + z5 + ")");
    }

    @VisibleForTesting
    /* renamed from: a */
    public boolean m30325a(@NonNull String str) {
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
                if (m30312d()) {
                    uri = parse;
                    str2 = scheme;
                    str3 = host;
                    if (!AdType.MRAID.equals(scheme)) {
                        try {
                            uri = Uri.parse("mraid://open?url=" + URLEncoder.encode(str, "UTF-8"));
                            str3 = uri.getHost();
                            str2 = uri.getScheme();
                        } catch (UnsupportedEncodingException e) {
                            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
                            MoPubLog.log(sdkLogEvent, "Invalid MRAID URL encoding: " + str);
                            m30329a(MraidJavascriptCommand.OPEN, "Non-mraid URL is invalid");
                            return false;
                        }
                    }
                }
                if (!AdType.MRAID.equals(str2)) {
                    return false;
                }
                MraidJavascriptCommand a = MraidJavascriptCommand.m30251a(str3);
                try {
                    m30328a(a, MoPubRequestUtils.getQueryParamMap(uri));
                } catch (C10721a | IllegalArgumentException e2) {
                    m30329a(a, e2.getMessage());
                }
                m30330a(a);
                return true;
            } else if (!"failLoad".equals(host) || this.f8885b != PlacementType.INLINE || (mraidBridgeListener = this.f8886c) == null) {
                return true;
            } else {
                mraidBridgeListener.onPageFailedToLoad();
                return true;
            }
        } catch (URISyntaxException e3) {
            MoPubLog.SdkLogEvent sdkLogEvent2 = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent2, "Invalid MRAID URL: " + str);
            m30329a(MraidJavascriptCommand.UNSPECIFIED, "Mraid command sent an invalid URL");
            return true;
        }
    }

    /* renamed from: a */
    public final boolean m30322a(@Nullable String str, boolean z) throws C10721a {
        return str == null ? z : m30313c(str);
    }

    @NonNull
    /* renamed from: b */
    public final String m30318b(Rect rect) {
        return rect.width() + "," + rect.height();
    }

    @VisibleForTesting
    /* renamed from: b */
    public final void m30319b() {
        if (!this.f8889f) {
            this.f8889f = true;
            MraidBridgeListener mraidBridgeListener = this.f8886c;
            if (mraidBridgeListener != null) {
                mraidBridgeListener.onPageLoaded();
            }
        }
    }

    /* renamed from: b */
    public void m30316b(@NonNull String str) {
        if (this.f8887d == null) {
            MoPubLog.SdkLogEvent sdkLogEvent = MoPubLog.SdkLogEvent.CUSTOM;
            MoPubLog.log(sdkLogEvent, "Attempted to inject Javascript into MRAID WebView while was not attached:\n\t" + str);
            return;
        }
        MoPubLog.SdkLogEvent sdkLogEvent2 = MoPubLog.SdkLogEvent.CUSTOM;
        MoPubLog.log(sdkLogEvent2, "Injecting Javascript into MRAID WebView:\n\t" + str);
        MraidWebView mraidWebView = this.f8887d;
        mraidWebView.loadUrl("javascript:" + str);
    }

    /* renamed from: c */
    public boolean m30315c() {
        return this.f8887d != null;
    }

    /* renamed from: c */
    public final boolean m30313c(String str) throws C10721a {
        if ("true".equals(str)) {
            return true;
        }
        if ("false".equals(str)) {
            return false;
        }
        throw new C10721a("Invalid boolean parameter: " + str);
    }

    /* renamed from: d */
    public final EnumC10722b m30311d(String str) throws C10721a {
        if ("portrait".equals(str)) {
            return EnumC10722b.PORTRAIT;
        }
        if ("landscape".equals(str)) {
            return EnumC10722b.LANDSCAPE;
        }
        if ("none".equals(str)) {
            return EnumC10722b.NONE;
        }
        throw new C10721a("Invalid orientation: " + str);
    }

    /* renamed from: d */
    public boolean m30312d() {
        ViewGestureDetector viewGestureDetector = this.f8888e;
        return viewGestureDetector != null && viewGestureDetector.isClicked();
    }

    /* renamed from: e */
    public final int m30309e(@NonNull String str) throws C10721a {
        try {
            return Integer.parseInt(str, 10);
        } catch (NumberFormatException e) {
            throw new C10721a("Invalid numeric parameter: " + str);
        }
    }

    /* renamed from: e */
    public boolean m30310e() {
        return this.f8889f;
    }

    @NonNull
    /* renamed from: f */
    public final URI m30307f(@Nullable String str) throws C10721a {
        if (str != null) {
            try {
                return new URI(str);
            } catch (URISyntaxException e) {
                throw new C10721a("Invalid URL parameter: " + str);
            }
        } else {
            throw new C10721a("Parameter cannot be null");
        }
    }

    /* renamed from: f */
    public boolean m30308f() {
        MraidWebView mraidWebView = this.f8887d;
        return mraidWebView != null && mraidWebView.isMraidViewable();
    }

    /* renamed from: g */
    public void m30306g() {
        m30316b("mraidbridge.notifyReadyEvent();");
    }

    public void notifyScreenMetrics(@NonNull C10723c cVar) {
        m30316b("mraidbridge.setScreenSize(" + m30318b(cVar.m10809f()) + ");mraidbridge.setMaxSize(" + m30318b(cVar.m10810e()) + ");mraidbridge.setCurrentPosition(" + m30335a(cVar.m10819a()) + ");mraidbridge.setDefaultPosition(" + m30335a(cVar.m10813c()) + ")");
        StringBuilder sb = new StringBuilder();
        sb.append("mraidbridge.notifySizeChangeEvent(");
        sb.append(m30318b(cVar.m10819a()));
        sb.append(")");
        m30316b(sb.toString());
    }

    public void setContentHtml(@NonNull String str) {
        MraidWebView mraidWebView = this.f8887d;
        if (mraidWebView == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MRAID bridge called setContentHtml before WebView was attached");
            return;
        }
        this.f8889f = false;
        mraidWebView.loadDataWithBaseURL(Networking.getBaseUrlScheme() + "://" + Constants.HOST + "/", str, "text/html", "UTF-8", null);
    }

    public void setContentUrl(String str) {
        MraidWebView mraidWebView = this.f8887d;
        if (mraidWebView == null) {
            MoPubLog.log(MoPubLog.SdkLogEvent.CUSTOM, "MRAID bridge called setContentHtml while WebView was not attached");
            return;
        }
        this.f8889f = false;
        mraidWebView.loadUrl(str);
    }
}
