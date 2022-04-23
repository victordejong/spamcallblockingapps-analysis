package com.explorestack.iab.mraid;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.net.Uri;
import android.os.Build;
import android.text.TextUtils;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.ValueCallback;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import com.explorestack.iab.mraid.MraidWebView;
import com.explorestack.iab.utils.Utils;
import com.verizon.ads.EnvironmentInfo;
import java.util.Arrays;
import java.util.Map;
import net.pubnative.lite.sdk.vpaid.enums.EventConstants;
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/h.class */
public class h {

    /* renamed from: a  reason: collision with root package name */
    public static final String f19142a = "h";
    static final /* synthetic */ boolean g = true;

    /* renamed from: b  reason: collision with root package name */
    final MraidWebView f19143b;

    /* renamed from: c  reason: collision with root package name */
    boolean f19144c;
    com.explorestack.iab.mraid.b f;
    private final a h;
    boolean e = false;

    /* renamed from: d  reason: collision with root package name */
    boolean f19145d = false;

    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/h$a.class */
    public interface a {
        void a();

        void a(int i);

        void a(com.explorestack.iab.mraid.b bVar);

        void a(d dVar);

        void a(String str);

        void a(boolean z);

        void b();

        void b(String str);

        void b(boolean z);

        void c(String str);

        void d(String str);
    }

    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/h$b.class */
    final class b extends WebViewClient {
        private b() {
        }

        private void a(String str, String str2, int i) {
            MraidLog.d(h.f19142a, String.format("onError: %s / %s / %d", str, str2, Integer.valueOf(i)));
            if (str2 != null && str2.contains("ERR_INTERNET_DISCONNECTED")) {
                h.this.e = true;
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            MraidLog.d(h.f19142a, "onPageFinished");
            if (!h.this.f19144c) {
                h.this.f19144c = true;
                h.this.h.a(str);
            }
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            MraidLog.d(h.f19142a, "onPageStarted");
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, int i, String str, String str2) {
            a(str2, str, i);
            super.onReceivedError(webView, i, str, str2);
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            Uri url = webResourceRequest.getUrl();
            a(url != null ? url.toString() : null, webResourceError.getDescription().toString(), webResourceError.getErrorCode());
            super.onReceivedError(webView, webResourceRequest, webResourceError);
        }

        @Override // android.webkit.WebViewClient
        public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            MraidLog.d(h.f19142a, "onRenderProcessGone");
            h.this.h.a(1);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (str.startsWith("mraid://")) {
                h.a(h.this, str);
                return true;
            }
            h.this.b(str);
            return true;
        }
    }

    public h(Context context, a aVar) {
        this.h = aVar;
        MraidWebView mraidWebView = new MraidWebView(context);
        this.f19143b = mraidWebView;
        mraidWebView.setWebViewClient(new b());
        mraidWebView.setListener(new MraidWebView.b() { // from class: com.explorestack.iab.mraid.h.1
            @Override // com.explorestack.iab.mraid.MraidWebView.b
            public final void a(boolean z) {
                if (h.this.f19144c) {
                    h.this.a(z);
                }
                h.this.h.b(z);
            }
        });
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    static /* synthetic */ void a(h hVar, String str) {
        Map<String, String> a2;
        char c2;
        String str2 = f19142a;
        MraidLog.d(str2, "handleJsCommand ".concat(String.valueOf(str)));
        try {
            a2 = f.a(str);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (a2 != null) {
            String str3 = a2.get("command");
            if (str3 == null) {
                MraidLog.a(str2, "handleJsCommand: not found");
                return;
            }
            int i = 2;
            switch (str3.hashCode()) {
                case -1886160473:
                    if (str3.equals("playVideo")) {
                        c2 = '\b';
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1289167206:
                    if (str3.equals("expand")) {
                        c2 = 5;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1097519099:
                    if (str3.equals("loaded")) {
                        c2 = 1;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -1041060124:
                    if (str3.equals("noFill")) {
                        c2 = 0;
                        break;
                    }
                    c2 = 65535;
                    break;
                case -934437708:
                    if (str3.equals("resize")) {
                        c2 = 4;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 3417674:
                    if (str3.equals("open")) {
                        c2 = 3;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 94756344:
                    if (str3.equals(EventConstants.CLOSE)) {
                        c2 = 2;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 133423073:
                    if (str3.equals("setOrientationProperties")) {
                        c2 = 7;
                        break;
                    }
                    c2 = 65535;
                    break;
                case 1614272768:
                    if (str3.equals("useCustomClose")) {
                        c2 = 6;
                        break;
                    }
                    c2 = 65535;
                    break;
                default:
                    c2 = 65535;
                    break;
            }
            switch (c2) {
                case 0:
                    hVar.h.a(0);
                    break;
                case 1:
                    hVar.h.a();
                    break;
                case 2:
                    hVar.h.b();
                    break;
                case 3:
                    String str4 = a2.get("url");
                    if (TextUtils.isEmpty(str4)) {
                        MraidLog.b(str2, "url is null or empty");
                        break;
                    } else if (g || str4 != null) {
                        hVar.b(str4);
                        break;
                    } else {
                        throw new AssertionError();
                    }
                case 4:
                    d dVar = new d();
                    dVar.f19130a = c(a2.get("width"));
                    dVar.f19131b = c(a2.get("height"));
                    dVar.f19132c = c(a2.get("offsetX"));
                    dVar.f19133d = c(a2.get("offsetY"));
                    dVar.f = Boolean.parseBoolean(a2.get("allowOffscreen"));
                    dVar.e = j.fromJsString(a2.get("customClosePosition"));
                    hVar.h.a(dVar);
                    break;
                case 5:
                    hVar.h.c(a2.get("url"));
                    break;
                case 6:
                    boolean parseBoolean = Boolean.parseBoolean(a2.get("useCustomClose"));
                    if (hVar.f19145d != parseBoolean) {
                        hVar.f19145d = parseBoolean;
                        hVar.h.a(parseBoolean);
                        break;
                    }
                    break;
                case 7:
                    boolean parseBoolean2 = Boolean.parseBoolean(a2.get("allowOrientationChange"));
                    int indexOf = Arrays.asList(EnvironmentInfo.DeviceInfo.ORIENTATION_PORTRAIT, EnvironmentInfo.DeviceInfo.ORIENTATION_LANDSCAPE, "none").indexOf(a2.get("forceOrientation"));
                    if (indexOf != -1) {
                        i = indexOf;
                    }
                    com.explorestack.iab.mraid.b bVar = new com.explorestack.iab.mraid.b(parseBoolean2, i);
                    hVar.f = bVar;
                    hVar.h.a(bVar);
                    break;
                case '\b':
                    hVar.h.d(a2.get("url"));
                    break;
            }
            hVar.a("mraid.nativeCallComplete();");
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(String str) {
        if (this.f19143b.f19122a.f19157a.f19158a) {
            this.h.b(str);
            this.f19143b.f19122a.f19157a.f19158a = false;
            return;
        }
        MraidLog.d(f19142a, "Can't open url because webView wasn't clicked");
    }

    private static int c(String str) {
        int i = 0;
        if (str != null) {
            try {
                i = Integer.parseInt(str, 10);
            } catch (NumberFormatException e) {
                e.printStackTrace();
                i = 0;
            }
        }
        return i;
    }

    public final void a() {
        MraidWebView mraidWebView = this.f19143b;
        Utils.b(mraidWebView);
        mraidWebView.destroy();
    }

    public final void a(com.explorestack.iab.mraid.a aVar) {
        a("mraid.setSupports(mraid.SUPPORTED_FEATURES.CALENDAR, " + com.explorestack.iab.mraid.a.a() + ");mraid.setSupports(mraid.SUPPORTED_FEATURES.INLINEVIDEO, " + aVar.b() + ");mraid.setSupports(mraid.SUPPORTED_FEATURES.SMS, " + com.explorestack.iab.mraid.a.c() + ");mraid.setSupports(mraid.SUPPORTED_FEATURES.STOREPICTURE, " + com.explorestack.iab.mraid.a.d() + ");mraid.setSupports(mraid.SUPPORTED_FEATURES.TEL, " + com.explorestack.iab.mraid.a.e() + ");");
    }

    public final void a(c cVar) {
        a("mraid.setPlacementType('" + cVar.toJsString() + "');");
    }

    public final void a(e eVar) {
        Rect rect = eVar.f19135b;
        Rect rect2 = eVar.f19137d;
        a("mraid.setScreenSize(" + rect.width() + "," + rect.height() + ");mraid.setMaxSize(" + rect2.width() + "," + rect2.height() + ");mraid.setCurrentPosition(" + Utils.a(eVar.f) + ");mraid.setDefaultPosition(" + Utils.a(eVar.h) + ");mraid.fireSizeChangeEvent(" + Utils.b(eVar.f) + ");");
    }

    public final void a(g gVar) {
        a("mraid.fireStateChangeEvent('" + gVar.toJsString() + "');");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void a(String str) {
        MraidWebView mraidWebView = this.f19143b;
        if (mraidWebView.f19124c) {
            MraidLog.d(f19142a, "can't evaluating js: WebView is destroyed");
        } else if (TextUtils.isEmpty(str)) {
            MraidLog.d(f19142a, "can't evaluating js: js is empty");
        } else {
            if (Build.VERSION.SDK_INT >= 19) {
                try {
                    MraidLog.d(f19142a, "evaluating js: ".concat(String.valueOf(str)));
                    mraidWebView.evaluateJavascript(str, new ValueCallback<String>() { // from class: com.explorestack.iab.mraid.h.2
                        @Override // android.webkit.ValueCallback
                        public final /* synthetic */ void onReceiveValue(String str2) {
                            MraidLog.d(h.f19142a, "evaluate js complete: ".concat(String.valueOf(str2)));
                        }
                    });
                    return;
                } catch (Throwable th) {
                    MraidLog.b(f19142a, th.getMessage());
                }
            }
            MraidLog.d(f19142a, "loading url: ".concat(String.valueOf(str)));
            mraidWebView.loadUrl("javascript:".concat(String.valueOf(str)));
        }
    }

    public final void a(boolean z) {
        a("mraid.fireViewableChangeEvent(" + z + ");");
    }
}
