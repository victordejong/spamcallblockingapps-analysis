package p081h.p415j.p416a.p417a.p418a.p421e;

import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.WebView;
import androidx.annotation.VisibleForTesting;
import androidx.media2.exoplayer.external.text.webvtt.CssParser;
import org.json.JSONObject;
import p081h.p415j.p416a.p417a.p418a.p423g.C10643c;
/* renamed from: h.j.a.a.a.e.d */
/* loaded from: classes2-dex2jar.jar:h/j/a/a/a/e/d.class */
public class C10632d {

    /* renamed from: a */
    public static C10632d f24213a = new C10632d();

    /* renamed from: h.j.a.a.a.e.d$a */
    /* loaded from: classes2-dex2jar.jar:h/j/a/a/a/e/d$a.class */
    public class RunnableC10633a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ WebView f24214a;

        /* renamed from: b */
        public final /* synthetic */ String f24215b;

        public RunnableC10633a(C10632d dVar, WebView webView, String str) {
            this.f24214a = webView;
            this.f24215b = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            this.f24214a.loadUrl(this.f24215b);
        }
    }

    /* renamed from: a */
    public static C10632d m11133a() {
        return f24213a;
    }

    /* renamed from: a */
    public void m11132a(WebView webView) {
        m11128a(webView, "finishSession", new Object[0]);
    }

    /* renamed from: a */
    public void m11131a(WebView webView, float f) {
        m11128a(webView, "setDeviceVolume", Float.valueOf(f));
    }

    /* renamed from: a */
    public void m11129a(WebView webView, String str, JSONObject jSONObject, JSONObject jSONObject2) {
        m11128a(webView, "startSession", str, jSONObject, jSONObject2);
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m11128a(WebView webView, String str, Object... objArr) {
        if (webView != null) {
            StringBuilder sb = new StringBuilder(128);
            sb.append("javascript: if(window.omidBridge!==undefined){omidBridge.");
            sb.append(str);
            sb.append("(");
            m11125a(sb, objArr);
            sb.append(")}");
            m11127a(webView, sb);
            return;
        }
        C10643c.m11087a("The WebView is null for " + str);
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m11127a(WebView webView, StringBuilder sb) {
        String sb2 = sb.toString();
        Handler handler = webView.getHandler();
        if (handler == null || Looper.myLooper() == handler.getLooper()) {
            webView.loadUrl(sb2);
        } else {
            handler.post(new RunnableC10633a(this, webView, sb2));
        }
    }

    /* renamed from: a */
    public void m11126a(WebView webView, JSONObject jSONObject) {
        m11128a(webView, "init", jSONObject);
    }

    @VisibleForTesting
    /* renamed from: a */
    public void m11125a(StringBuilder sb, Object[] objArr) {
        if (objArr != null && objArr.length > 0) {
            for (Object obj : objArr) {
                if (obj == null) {
                    sb.append('\"');
                } else {
                    if (obj instanceof String) {
                        String obj2 = obj.toString();
                        if (obj2.startsWith(CssParser.BLOCK_START)) {
                            sb.append(obj2);
                        } else {
                            sb.append('\"');
                            sb.append(obj2);
                        }
                    } else {
                        sb.append(obj);
                    }
                    sb.append(",");
                }
                sb.append('\"');
                sb.append(",");
            }
            sb.setLength(sb.length() - 1);
        }
    }

    /* renamed from: a */
    public boolean m11130a(WebView webView, String str) {
        if (webView == null || TextUtils.isEmpty(str)) {
            return false;
        }
        webView.loadUrl("javascript: " + str);
        return true;
    }

    /* renamed from: b */
    public void m11124b(WebView webView) {
        m11128a(webView, "publishImpressionEvent", new Object[0]);
    }

    /* renamed from: b */
    public void m11123b(WebView webView, String str) {
        if (str != null) {
            m11130a(webView, "var script=document.createElement('script');script.setAttribute(\"type\",\"text/javascript\");script.setAttribute(\"src\",\"%SCRIPT_SRC%\");document.body.appendChild(script);".replace("%SCRIPT_SRC%", str));
        }
    }

    /* renamed from: c */
    public void m11122c(WebView webView, String str) {
        m11128a(webView, "setNativeViewHierarchy", str);
    }

    /* renamed from: d */
    public void m11121d(WebView webView, String str) {
        m11128a(webView, "setState", str);
    }
}
