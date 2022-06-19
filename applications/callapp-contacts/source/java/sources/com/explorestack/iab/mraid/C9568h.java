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
/* renamed from: com.explorestack.iab.mraid.h */
/* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/h.class */
public class C9568h {

    /* renamed from: a */
    public static final String f32519a = "h";

    /* renamed from: g */
    static final /* synthetic */ boolean f32520g = true;

    /* renamed from: b */
    final MraidWebView f32521b;

    /* renamed from: c */
    boolean f32522c;

    /* renamed from: f */
    C9562b f32525f;

    /* renamed from: h */
    private final AbstractC9571a f32526h;

    /* renamed from: e */
    boolean f32524e = false;

    /* renamed from: d */
    boolean f32523d = false;

    /* renamed from: com.explorestack.iab.mraid.h$a */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/h$a.class */
    public interface AbstractC9571a {
        /* renamed from: a */
        void mo24147a();

        /* renamed from: a */
        void mo24146a(int i);

        /* renamed from: a */
        void mo24145a(C9562b c9562b);

        /* renamed from: a */
        void mo24144a(C9564d c9564d);

        /* renamed from: a */
        void mo24143a(String str);

        /* renamed from: a */
        void mo24142a(boolean z);

        /* renamed from: b */
        void mo24141b();

        /* renamed from: b */
        void mo24140b(String str);

        /* renamed from: b */
        void mo24139b(boolean z);

        /* renamed from: c */
        void mo24138c(String str);

        /* renamed from: d */
        void mo24137d(String str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: com.explorestack.iab.mraid.h$b */
    /* loaded from: classes2-dex2jar.jar:com/explorestack/iab/mraid/h$b.class */
    public final class C9572b extends WebViewClient {
        private C9572b() {
            C9568h.this = r4;
        }

        /* renamed from: a */
        private void m24136a(String str, String str2, int i) {
            MraidLog.m24185d(C9568h.f32519a, String.format("onError: %s / %s / %d", str, str2, Integer.valueOf(i)));
            if (str2 == null || !str2.contains("ERR_INTERNET_DISCONNECTED")) {
                return;
            }
            C9568h.this.f32524e = true;
        }

        @Override // android.webkit.WebViewClient
        public final void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            MraidLog.m24185d(C9568h.f32519a, "onPageFinished");
            if (C9568h.this.f32522c) {
                return;
            }
            C9568h.this.f32522c = true;
            C9568h.this.f32526h.mo24143a(str);
        }

        @Override // android.webkit.WebViewClient
        public final void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            MraidLog.m24185d(C9568h.f32519a, "onPageStarted");
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, int i, String str, String str2) {
            m24136a(str2, str, i);
            super.onReceivedError(webView, i, str, str2);
        }

        @Override // android.webkit.WebViewClient
        public final void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            Uri url = webResourceRequest.getUrl();
            m24136a(url != null ? url.toString() : null, webResourceError.getDescription().toString(), webResourceError.getErrorCode());
            super.onReceivedError(webView, webResourceRequest, webResourceError);
        }

        @Override // android.webkit.WebViewClient
        public final boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            MraidLog.m24185d(C9568h.f32519a, "onRenderProcessGone");
            C9568h.this.f32526h.mo24146a(1);
            return true;
        }

        @Override // android.webkit.WebViewClient
        public final boolean shouldOverrideUrlLoading(WebView webView, String str) {
            if (str.startsWith("mraid://")) {
                C9568h.m24157a(C9568h.this, str);
                return true;
            }
            C9568h.this.m24152b(str);
            return true;
        }
    }

    public C9568h(Context context, AbstractC9571a abstractC9571a) {
        this.f32526h = abstractC9571a;
        MraidWebView mraidWebView = new MraidWebView(context);
        this.f32521b = mraidWebView;
        mraidWebView.setWebViewClient(new C9572b());
        mraidWebView.setListener(new MraidWebView.AbstractC9560b() { // from class: com.explorestack.iab.mraid.h.1
            @Override // com.explorestack.iab.mraid.MraidWebView.AbstractC9560b
            /* renamed from: a */
            public final void mo24148a(boolean z) {
                if (C9568h.this.f32522c) {
                    C9568h.this.m24155a(z);
                }
                C9568h.this.f32526h.mo24139b(z);
            }
        });
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* renamed from: a */
    static /* synthetic */ void m24157a(C9568h c9568h, String str) {
        Map<String, String> m24168a;
        boolean z;
        String str2 = f32519a;
        MraidLog.m24185d(str2, "handleJsCommand ".concat(String.valueOf(str)));
        try {
            m24168a = C9566f.m24168a(str);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        if (m24168a == null) {
            return;
        }
        String str3 = m24168a.get("command");
        if (str3 == null) {
            MraidLog.m24188a(str2, "handleJsCommand: not found");
            return;
        }
        switch (str3.hashCode()) {
            case -1886160473:
                if (str3.equals("playVideo")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -1289167206:
                if (str3.equals("expand")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -1097519099:
                if (str3.equals("loaded")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case -1041060124:
                if (str3.equals("noFill")) {
                    z = false;
                    break;
                }
                z = true;
                break;
            case -934437708:
                if (str3.equals("resize")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 3417674:
                if (str3.equals("open")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 94756344:
                if (str3.equals(EventConstants.CLOSE)) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 133423073:
                if (str3.equals("setOrientationProperties")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            case 1614272768:
                if (str3.equals("useCustomClose")) {
                    z = true;
                    break;
                }
                z = true;
                break;
            default:
                z = true;
                break;
        }
        switch (z) {
            case false:
                c9568h.f32526h.mo24146a(0);
                break;
            case true:
                c9568h.f32526h.mo24147a();
                break;
            case true:
                c9568h.f32526h.mo24141b();
                break;
            case true:
                String str4 = m24168a.get("url");
                if (TextUtils.isEmpty(str4)) {
                    MraidLog.m24186b(str2, "url is null or empty");
                    break;
                } else if (!f32520g && str4 == null) {
                    throw new AssertionError();
                } else {
                    c9568h.m24152b(str4);
                    break;
                }
            case true:
                C9564d c9564d = new C9564d();
                c9564d.f32500a = m24150c(m24168a.get("width"));
                c9564d.f32501b = m24150c(m24168a.get("height"));
                c9564d.f32502c = m24150c(m24168a.get("offsetX"));
                c9564d.f32503d = m24150c(m24168a.get("offsetY"));
                c9564d.f32505f = Boolean.parseBoolean(m24168a.get("allowOffscreen"));
                c9564d.f32504e = EnumC9577j.fromJsString(m24168a.get("customClosePosition"));
                c9568h.f32526h.mo24144a(c9564d);
                break;
            case true:
                c9568h.f32526h.mo24138c(m24168a.get("url"));
                break;
            case true:
                boolean parseBoolean = Boolean.parseBoolean(m24168a.get("useCustomClose"));
                if (c9568h.f32523d != parseBoolean) {
                    c9568h.f32523d = parseBoolean;
                    c9568h.f32526h.mo24142a(parseBoolean);
                    break;
                }
                break;
            case true:
                boolean parseBoolean2 = Boolean.parseBoolean(m24168a.get("allowOrientationChange"));
                int indexOf = Arrays.asList(EnvironmentInfo.DeviceInfo.ORIENTATION_PORTRAIT, EnvironmentInfo.DeviceInfo.ORIENTATION_LANDSCAPE, "none").indexOf(m24168a.get("forceOrientation"));
                int i = 2;
                if (indexOf != -1) {
                    i = indexOf;
                }
                C9562b c9562b = new C9562b(parseBoolean2, i);
                c9568h.f32525f = c9562b;
                c9568h.f32526h.mo24145a(c9562b);
                break;
            case true:
                c9568h.f32526h.mo24137d(m24168a.get("url"));
                break;
        }
        c9568h.m24156a("mraid.nativeCallComplete();");
    }

    /* renamed from: b */
    public void m24152b(String str) {
        if (!this.f32521b.f32489a.f32538a.f32539a) {
            MraidLog.m24185d(f32519a, "Can't open url because webView wasn't clicked");
            return;
        }
        this.f32526h.mo24140b(str);
        this.f32521b.f32489a.f32538a.f32539a = false;
    }

    /* renamed from: c */
    private static int m24150c(String str) {
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

    /* renamed from: a */
    public final void m24163a() {
        MraidWebView mraidWebView = this.f32521b;
        Utils.m24104b(mraidWebView);
        mraidWebView.destroy();
    }

    /* renamed from: a */
    public final void m24162a(C9561a c9561a) {
        m24156a("mraid.setSupports(mraid.SUPPORTED_FEATURES.CALENDAR, " + C9561a.m24179a() + ");mraid.setSupports(mraid.SUPPORTED_FEATURES.INLINEVIDEO, " + c9561a.m24178b() + ");mraid.setSupports(mraid.SUPPORTED_FEATURES.SMS, " + C9561a.m24177c() + ");mraid.setSupports(mraid.SUPPORTED_FEATURES.STOREPICTURE, " + C9561a.m24176d() + ");mraid.setSupports(mraid.SUPPORTED_FEATURES.TEL, " + C9561a.m24175e() + ");");
    }

    /* renamed from: a */
    public final void m24161a(EnumC9563c enumC9563c) {
        m24156a("mraid.setPlacementType('" + enumC9563c.toJsString() + "');");
    }

    /* renamed from: a */
    public final void m24160a(C9565e c9565e) {
        Rect rect = c9565e.f32507b;
        Rect rect2 = c9565e.f32509d;
        m24156a("mraid.setScreenSize(" + rect.width() + "," + rect.height() + ");mraid.setMaxSize(" + rect2.width() + "," + rect2.height() + ");mraid.setCurrentPosition(" + Utils.m24113a(c9565e.f32511f) + ");mraid.setDefaultPosition(" + Utils.m24113a(c9565e.f32513h) + ");mraid.fireSizeChangeEvent(" + Utils.m24105b(c9565e.f32511f) + ");");
    }

    /* renamed from: a */
    public final void m24159a(EnumC9567g enumC9567g) {
        m24156a("mraid.fireStateChangeEvent('" + enumC9567g.toJsString() + "');");
    }

    /* renamed from: a */
    public final void m24156a(String str) {
        MraidWebView mraidWebView = this.f32521b;
        if (mraidWebView.f32491c) {
            MraidLog.m24185d(f32519a, "can't evaluating js: WebView is destroyed");
        } else if (TextUtils.isEmpty(str)) {
            MraidLog.m24185d(f32519a, "can't evaluating js: js is empty");
        } else {
            if (Build.VERSION.SDK_INT >= 19) {
                try {
                    MraidLog.m24185d(f32519a, "evaluating js: ".concat(String.valueOf(str)));
                    mraidWebView.evaluateJavascript(str, new ValueCallback<String>() { // from class: com.explorestack.iab.mraid.h.2
                        @Override // android.webkit.ValueCallback
                        public final /* synthetic */ void onReceiveValue(String str2) {
                            MraidLog.m24185d(C9568h.f32519a, "evaluate js complete: ".concat(String.valueOf(str2)));
                        }
                    });
                    return;
                } catch (Throwable th) {
                    MraidLog.m24186b(f32519a, th.getMessage());
                }
            }
            MraidLog.m24185d(f32519a, "loading url: ".concat(String.valueOf(str)));
            mraidWebView.loadUrl("javascript:".concat(String.valueOf(str)));
        }
    }

    /* renamed from: a */
    public final void m24155a(boolean z) {
        m24156a("mraid.fireViewableChangeEvent(" + z + ");");
    }
}
