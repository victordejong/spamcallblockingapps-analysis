package p068d2;

import android.annotation.SuppressLint;
import android.annotation.TargetApi;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.graphics.Rect;
import android.graphics.drawable.GradientDrawable;
import android.net.Uri;
import android.os.Build;
import android.support.p012v4.media.C0082b;
import android.view.MotionEvent;
import android.webkit.ConsoleMessage;
import android.webkit.JavascriptInterface;
import android.webkit.JsResult;
import android.webkit.RenderProcessGoneDetail;
import android.webkit.WebChromeClient;
import android.webkit.WebMessage;
import android.webkit.WebMessagePort;
import android.webkit.WebResourceResponse;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.AbsoluteLayout;
import android.widget.FrameLayout;
import android.widget.ImageView;
import androidx.recyclerview.widget.C0608b;
import com.applovin.mediation.AppLovinUtils;
import com.google.ads.mediation.facebook.FacebookAdapter;
import com.google.android.gms.common.internal.ImagesContract;
import com.google.android.gms.internal.ads.C1676a;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Objects;
import java.util.regex.Matcher;
import org.json.JSONArray;
import org.json.JSONException;
import p124i4.C3102d;
@SuppressLint({"SetJavaScriptEnabled"})
/* renamed from: d2.x3 */
/* loaded from: classes-dex2jar.jar:d2/x3.class */
public class C2441x3 extends WebView implements AbstractC2463z0 {

    /* renamed from: R */
    public static boolean f8627R = false;

    /* renamed from: A */
    public boolean f8628A;

    /* renamed from: B */
    public boolean f8629B;

    /* renamed from: C */
    public boolean f8630C;

    /* renamed from: D */
    public boolean f8631D;

    /* renamed from: E */
    public boolean f8632E;

    /* renamed from: F */
    public boolean f8633F;

    /* renamed from: G */
    public boolean f8634G;

    /* renamed from: H */
    public boolean f8635H;

    /* renamed from: L */
    public C2322j0 f8639L;

    /* renamed from: M */
    public C2410t0 f8640M;

    /* renamed from: N */
    public ImageView f8641N;

    /* renamed from: O */
    public C2456k f8642O;

    /* renamed from: a */
    public String f8644a;

    /* renamed from: b */
    public String f8645b;

    /* renamed from: e */
    public String f8648e;

    /* renamed from: l */
    public int f8655l;

    /* renamed from: m */
    public int f8656m;

    /* renamed from: n */
    public int f8657n;

    /* renamed from: o */
    public int f8658o;

    /* renamed from: p */
    public int f8659p;

    /* renamed from: q */
    public int f8660q;

    /* renamed from: r */
    public int f8661r;

    /* renamed from: s */
    public int f8662s;

    /* renamed from: t */
    public int f8663t;

    /* renamed from: u */
    public int f8664u;

    /* renamed from: v */
    public int f8665v;

    /* renamed from: w */
    public int f8666w;

    /* renamed from: x */
    public int f8667x;

    /* renamed from: y */
    public boolean f8668y;

    /* renamed from: z */
    public boolean f8669z;

    /* renamed from: c */
    public String f8646c = "";

    /* renamed from: d */
    public String f8647d = "";

    /* renamed from: f */
    public String f8649f = "";

    /* renamed from: g */
    public String f8650g = "";

    /* renamed from: h */
    public String f8651h = "";

    /* renamed from: i */
    public String f8652i = "";

    /* renamed from: j */
    public String f8653j = "";

    /* renamed from: k */
    public String f8654k = "";

    /* renamed from: I */
    public C2200d4 f8636I = new C2200d4();

    /* renamed from: J */
    public C2267f4 f8637J = new C2267f4();

    /* renamed from: K */
    public C2267f4 f8638K = new C2267f4();

    /* renamed from: P */
    public final Object f8643P = new Object();

    /* renamed from: d2.x3$a */
    /* loaded from: classes-dex2jar.jar:d2/x3$a.class */
    public class RunnableC2442a implements Runnable {

        /* renamed from: a */
        public final /* synthetic */ String f8670a;

        public RunnableC2442a(String str) {
            C2441x3.this = r4;
            this.f8670a = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2441x3 c2441x3 = C2441x3.this;
            if (c2441x3.f8668y) {
                StringBuilder m8752j = C0082b.m8752j("NativeLayer.dispatch_messages(ADC3_update(");
                m8752j.append(this.f8670a);
                m8752j.append("), '");
                m8752j.append(C2441x3.this.f8654k);
                m8752j.append("');");
                c2441x3.m3542r(m8752j.toString());
            }
        }
    }

    /* renamed from: d2.x3$b */
    /* loaded from: classes-dex2jar.jar:d2/x3$b.class */
    public class C2443b implements AbstractC2458y0 {

        /* renamed from: d2.x3$b$a */
        /* loaded from: classes-dex2jar.jar:d2/x3$b$a.class */
        public class RunnableC2444a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ C2410t0 f8673a;

            public RunnableC2444a(C2410t0 c2410t0) {
                C2443b.this = r4;
                this.f8673a = c2410t0;
            }

            @Override // java.lang.Runnable
            public void run() {
                C2441x3 c2441x3 = C2441x3.this;
                C2410t0 c2410t0 = this.f8673a;
                Objects.requireNonNull(c2441x3);
                if (C2227e4.m3741l(c2410t0.f8537b, "visible")) {
                    c2441x3.setVisibility(0);
                } else {
                    c2441x3.setVisibility(4);
                }
                if (c2441x3.f8669z) {
                    C2267f4 c2267f4 = new C2267f4();
                    C2227e4.m3739n(c2267f4, "success", true);
                    C2227e4.m3740m(c2267f4, FacebookAdapter.KEY_ID, c2441x3.f8664u);
                    c2410t0.m3587a(c2267f4).m3586b();
                }
            }
        }

        public C2443b() {
            C2441x3.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            if (C2441x3.this.m3541s(c2410t0)) {
                C2315i3.m3652s(new RunnableC2444a(c2410t0));
            }
        }
    }

    /* renamed from: d2.x3$c */
    /* loaded from: classes-dex2jar.jar:d2/x3$c.class */
    public class C2445c implements AbstractC2458y0 {

        /* renamed from: d2.x3$c$a */
        /* loaded from: classes-dex2jar.jar:d2/x3$c$a.class */
        public class RunnableC2446a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ C2410t0 f8676a;

            public RunnableC2446a(C2410t0 c2410t0) {
                C2445c.this = r4;
                this.f8676a = c2410t0;
            }

            @Override // java.lang.Runnable
            public void run() {
                C2441x3.this.m3551i(this.f8676a);
            }
        }

        public C2445c() {
            C2441x3.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            if (C2441x3.this.m3541s(c2410t0)) {
                C2315i3.m3652s(new RunnableC2446a(c2410t0));
            }
        }
    }

    /* renamed from: d2.x3$d */
    /* loaded from: classes-dex2jar.jar:d2/x3$d.class */
    public class C2447d implements AbstractC2458y0 {

        /* renamed from: d2.x3$d$a */
        /* loaded from: classes-dex2jar.jar:d2/x3$d$a.class */
        public class RunnableC2448a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ C2410t0 f8679a;

            public RunnableC2448a(C2410t0 c2410t0) {
                C2447d.this = r4;
                this.f8679a = c2410t0;
            }

            @Override // java.lang.Runnable
            public void run() {
                C2441x3.this.m3542r(this.f8679a.f8537b.m3697o("custom_js"));
            }
        }

        public C2447d() {
            C2441x3.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            if (C2441x3.this.m3541s(c2410t0)) {
                C2315i3.m3652s(new RunnableC2448a(c2410t0));
            }
        }
    }

    /* renamed from: d2.x3$e */
    /* loaded from: classes-dex2jar.jar:d2/x3$e.class */
    public class C2449e implements AbstractC2458y0 {

        /* renamed from: d2.x3$e$a */
        /* loaded from: classes-dex2jar.jar:d2/x3$e$a.class */
        public class RunnableC2450a implements Runnable {

            /* renamed from: a */
            public final /* synthetic */ C2410t0 f8682a;

            public RunnableC2450a(C2410t0 c2410t0) {
                C2449e.this = r4;
                this.f8682a = c2410t0;
            }

            @Override // java.lang.Runnable
            public void run() {
                C2441x3 c2441x3 = C2441x3.this;
                boolean m3741l = C2227e4.m3741l(this.f8682a.f8537b, "transparent");
                boolean z = C2441x3.f8627R;
                c2441x3.setBackgroundColor(m3741l ? 0 : -1);
            }
        }

        public C2449e() {
            C2441x3.this = r4;
        }

        @Override // p068d2.AbstractC2458y0
        /* renamed from: a */
        public void mo3526a(C2410t0 c2410t0) {
            if (C2441x3.this.m3541s(c2410t0)) {
                C2315i3.m3652s(new RunnableC2450a(c2410t0));
            }
        }
    }

    /* renamed from: d2.x3$f */
    /* loaded from: classes-dex2jar.jar:d2/x3$f.class */
    public class RunnableC2451f implements Runnable {
        public RunnableC2451f() {
            C2441x3.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            C2441x3.this.clearCache(true);
            C2441x3 c2441x3 = C2441x3.this;
            c2441x3.f8630C = true;
            c2441x3.destroy();
        }
    }

    /* renamed from: d2.x3$g */
    /* loaded from: classes-dex2jar.jar:d2/x3$g.class */
    public class C2452g {
        public C2452g(C2461y3 c2461y3) {
            C2441x3.this = r4;
        }

        @JavascriptInterface
        public void dispatch_messages(String str, String str2) {
            if (str2.equals(C2441x3.this.f8654k)) {
                C2441x3.m3544p(C2441x3.this, str);
            }
        }

        @JavascriptInterface
        public void enable_reverse_messaging(String str) {
            if (str.equals(C2441x3.this.f8654k)) {
                C2441x3.this.f8631D = true;
            }
        }

        @JavascriptInterface
        public String pull_messages(String str) {
            String str2;
            if (str.equals(C2441x3.this.f8654k)) {
                String str3 = "[]";
                synchronized (C2441x3.this.f8643P) {
                    str2 = str3;
                    if (C2441x3.this.f8636I.m3762c() > 0) {
                        C2441x3 c2441x3 = C2441x3.this;
                        if (c2441x3.f8668y) {
                            str3 = c2441x3.f8636I.toString();
                        }
                        C2441x3.this.f8636I = new C2200d4();
                        str2 = str3;
                    }
                }
                return str2;
            }
            return "[]";
        }

        @JavascriptInterface
        public void push_messages(String str, String str2) {
            if (str2.equals(C2441x3.this.f8654k)) {
                C2441x3.m3544p(C2441x3.this, str);
            }
        }
    }

    /* renamed from: d2.x3$h */
    /* loaded from: classes-dex2jar.jar:d2/x3$h.class */
    public class C2453h extends C2452g {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C2453h(C2461y3 c2461y3) {
            super(null);
            C2441x3.this = r5;
        }

        @JavascriptInterface
        public void enable_event_messaging(String str) {
            if (str.equals(C2441x3.this.f8654k)) {
                C2441x3.this.f8632E = true;
            }
        }
    }

    /* renamed from: d2.x3$i */
    /* loaded from: classes-dex2jar.jar:d2/x3$i.class */
    public class C2454i extends WebChromeClient {
        public C2454i(C2461y3 c2461y3) {
            C2441x3.this = r4;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onConsoleMessage(ConsoleMessage consoleMessage) {
            ConsoleMessage.MessageLevel messageLevel = consoleMessage.messageLevel();
            String message = consoleMessage.message();
            boolean z = message.contains("Viewport target-densitydpi is not supported.") || message.contains("Viewport argument key \"shrink-to-fit\" not recognized and ignored");
            boolean z2 = messageLevel == ConsoleMessage.MessageLevel.ERROR;
            boolean z3 = messageLevel == ConsoleMessage.MessageLevel.WARNING;
            if (message.contains("ADC3_update is not defined") || message.contains("NativeLayer.dispatch_messages is not a function")) {
                C2441x3 c2441x3 = C2441x3.this;
                C2441x3.m3548l(c2441x3, c2441x3.f8640M.f8537b, "Unable to communicate with AdColony. Please ensure that you have added an exception for our Javascript interface in your ProGuard configuration and that you do not have a faulty proxy enabled on your device.");
            }
            if (!z) {
                if (!z3 && !z2) {
                    return true;
                }
                StringBuilder sb = new StringBuilder();
                sb.append("onConsoleMessage: " + message + " with ad id: " + C2441x3.this.m3538v());
                C2415u c2415u = z2 ? C2415u.f8561f : C2415u.f8559d;
                C2408t.m3591d().m3718p().m3686e(0, c2415u.f8562a, sb.toString(), c2415u.f8563b);
                return true;
            }
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
            jsResult.confirm();
            return true;
        }
    }

    /* renamed from: d2.x3$j */
    /* loaded from: classes-dex2jar.jar:d2/x3$j.class */
    public class C2455j extends WebViewClient {
        public C2455j(C2461y3 c2461y3) {
            C2441x3.this = r4;
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            C2267f4 c2267f4 = new C2267f4();
            C2227e4.m3740m(c2267f4, FacebookAdapter.KEY_ID, C2441x3.this.f8655l);
            C2227e4.m3744i(c2267f4, ImagesContract.URL, str);
            C2441x3 c2441x3 = C2441x3.this;
            if (c2441x3.f8639L == null) {
                new C2410t0("WebView.on_load", c2441x3.f8664u, c2267f4).m3586b();
            } else {
                C2227e4.m3744i(c2267f4, "ad_session_id", c2441x3.f8648e);
                C2227e4.m3740m(c2267f4, "container_id", C2441x3.this.f8639L.f8300j);
                new C2410t0("WebView.on_load", C2441x3.this.f8639L.f8301k, c2267f4).m3586b();
            }
            C2441x3 c2441x32 = C2441x3.this;
            if ((c2441x32.f8668y || c2441x32.f8669z) && !c2441x32.f8629B) {
                int i = c2441x32.f8665v;
                int i2 = i > 0 ? i : c2441x32.f8664u;
                if (i > 0) {
                    float m4794c = C1676a.m4794c();
                    C2227e4.m3740m(C2441x3.this.f8637J, "app_orientation", C2315i3.m3647x(C2315i3.m3674C()));
                    C2441x3 c2441x33 = C2441x3.this;
                    C2227e4.m3740m(c2441x33.f8637J, "x", C2315i3.m3669b(c2441x33));
                    C2441x3 c2441x34 = C2441x3.this;
                    C2227e4.m3740m(c2441x34.f8637J, "y", C2315i3.m3657n(c2441x34));
                    C2441x3 c2441x35 = C2441x3.this;
                    C2227e4.m3740m(c2441x35.f8637J, "width", (int) (c2441x35.f8660q / m4794c));
                    C2441x3 c2441x36 = C2441x3.this;
                    C2227e4.m3740m(c2441x36.f8637J, "height", (int) (c2441x36.f8662s / m4794c));
                    C2441x3 c2441x37 = C2441x3.this;
                    C2227e4.m3744i(c2441x37.f8637J, "ad_session_id", c2441x37.f8648e);
                }
                if (C2441x3.this.f8664u == 1) {
                    C2329k0 m3722l = C2408t.m3591d().m3722l();
                    C2200d4 c2200d4 = new C2200d4();
                    Objects.requireNonNull(m3722l);
                    ArrayList arrayList = new ArrayList();
                    for (C2387q c2387q : m3722l.f8330c.values()) {
                        int i3 = c2387q.f8447l;
                        if (!(i3 == 4 || i3 == 5 || i3 == 6)) {
                            arrayList.add(c2387q);
                        }
                    }
                    Iterator it2 = arrayList.iterator();
                    while (it2.hasNext()) {
                        C2387q c2387q2 = (C2387q) it2.next();
                        C2267f4 c2267f42 = new C2267f4();
                        C2227e4.m3744i(c2267f42, "ad_session_id", c2387q2.f8442g);
                        String str2 = c2387q2.f8443h;
                        String str3 = str2;
                        if (str2 == null) {
                            str3 = "";
                        }
                        C2227e4.m3744i(c2267f42, "ad_id", str3);
                        C2227e4.m3744i(c2267f42, AppLovinUtils.ServerParameterKeys.ZONE_ID, c2387q2.f8444i);
                        C2227e4.m3744i(c2267f42, "ad_request_id", c2387q2.f8446k);
                        c2200d4.m3764a(c2267f42);
                    }
                    C2227e4.m3746g(C2441x3.this.f8637J, "ads_to_restore", c2200d4);
                }
                C2441x3.this.f8654k = C2315i3.m3666e();
                C2267f4 m3748e = C2227e4.m3748e(new C2267f4(), C2441x3.this.f8637J);
                C2227e4.m3744i(m3748e, "message_key", C2441x3.this.f8654k);
                C2441x3 c2441x38 = C2441x3.this;
                StringBuilder m8751k = C0082b.m8751k("ADC3_init(", i2, ",");
                m8751k.append(m3748e.toString());
                m8751k.append(");");
                c2441x38.m3542r(m8751k.toString());
                C2441x3.this.f8629B = true;
            }
            C2441x3 c2441x39 = C2441x3.this;
            if (c2441x39.f8669z) {
                if (c2441x39.f8664u == 1 && c2441x39.f8665v <= 0) {
                    return;
                }
                C2267f4 c2267f43 = new C2267f4();
                C2227e4.m3739n(c2267f43, "success", true);
                C2227e4.m3740m(c2267f43, FacebookAdapter.KEY_ID, C2441x3.this.f8664u);
                C2441x3.this.f8640M.m3587a(c2267f43).m3586b();
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            C2441x3.this.f8629B = false;
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            if (Build.VERSION.SDK_INT >= 23) {
                return;
            }
            C2441x3.m3549k(C2441x3.this, i, str, str2);
        }

        @Override // android.webkit.WebViewClient
        public boolean onRenderProcessGone(WebView webView, RenderProcessGoneDetail renderProcessGoneDetail) {
            if (Build.VERSION.SDK_INT >= 26) {
                if (!renderProcessGoneDetail.didCrash()) {
                    return true;
                }
                C2441x3.m3548l(C2441x3.this, new C2267f4(), "An error occurred while rendering the ad. Ad closing.");
                return true;
            }
            return super.onRenderProcessGone(webView, renderProcessGoneDetail);
        }

        @Override // android.webkit.WebViewClient
        @TargetApi(11)
        public WebResourceResponse shouldInterceptRequest(WebView webView, String str) {
            return null;
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            C2441x3 c2441x3 = C2441x3.this;
            if (c2441x3.f8629B) {
                String m3536x = c2441x3.m3536x();
                if (m3536x != null) {
                    str = m3536x;
                }
                if (str == null) {
                    StringBuilder sb = new StringBuilder();
                    StringBuilder m8752j = C0082b.m8752j("shouldOverrideUrlLoading called with null url, with ad id: ");
                    m8752j.append(C2441x3.this.m3538v());
                    sb.append(m8752j.toString());
                    C0082b.m8750l(0, 0, sb.toString(), true);
                    return true;
                }
                C2315i3.m3664g(new Intent("android.intent.action.VIEW", Uri.parse(str)));
                C2210e3 m3731c = C2408t.m3591d().m3731c();
                m3731c.m3757b(C2441x3.this.f8648e);
                m3731c.m3755d(C2441x3.this.f8648e);
                C2267f4 c2267f4 = new C2267f4();
                C2227e4.m3744i(c2267f4, ImagesContract.URL, str);
                C2227e4.m3744i(c2267f4, "ad_session_id", C2441x3.this.f8648e);
                new C2410t0("WebView.redirect_detected", C2441x3.this.f8639L.f8301k, c2267f4).m3586b();
                return true;
            }
            return false;
        }
    }

    /* renamed from: d2.x3$k */
    /* loaded from: classes-dex2jar.jar:d2/x3$k.class */
    public static class C2456k {

        /* renamed from: a */
        public Object[] f8689a;

        public C2456k(WebMessagePort[] webMessagePortArr) {
            this.f8689a = webMessagePortArr;
        }
    }

    public C2441x3(Context context, int i, boolean z) {
        super(context);
        this.f8664u = i;
        this.f8628A = z;
    }

    public C2441x3(Context context, C2410t0 c2410t0, int i, int i2, C2322j0 c2322j0) {
        super(context);
        this.f8640M = c2410t0;
        m3550j(c2410t0, i, i2, c2322j0);
        m3547m(false, null);
    }

    /* renamed from: k */
    public static void m3549k(C2441x3 c2441x3, int i, String str, String str2) {
        if (c2441x3.f8639L != null) {
            C2267f4 c2267f4 = new C2267f4();
            C2227e4.m3740m(c2267f4, FacebookAdapter.KEY_ID, c2441x3.f8655l);
            C2227e4.m3744i(c2267f4, "ad_session_id", c2441x3.f8648e);
            C2227e4.m3740m(c2267f4, "container_id", c2441x3.f8639L.f8300j);
            C2227e4.m3740m(c2267f4, "code", i);
            C2227e4.m3744i(c2267f4, "error", str);
            C2227e4.m3744i(c2267f4, ImagesContract.URL, str2);
            new C2410t0("WebView.on_error", c2441x3.f8639L.f8301k, c2267f4).m3586b();
        }
        C0082b.m8750l(0, 0, C1676a.m4789h("onReceivedError: ", str), true);
    }

    /* renamed from: l */
    public static void m3548l(C2441x3 c2441x3, C2267f4 c2267f4, String str) {
        Objects.requireNonNull(c2441x3);
        Context context = C2408t.f8531a;
        if (context != null && (context instanceof ActivityC2429w)) {
            C2408t.m3591d().m3722l().m3638a(context, c2267f4, str);
        } else if (c2441x3.f8664u == 1) {
            C2408t.m3591d().m3718p().m3686e(0, 0, "Unable to communicate with controller, disabling AdColony.", false);
            C2168b.m3789i();
        } else if (c2441x3.f8665v <= 0) {
        } else {
            c2441x3.f8668y = false;
        }
    }

    /* renamed from: p */
    public static void m3544p(C2441x3 c2441x3, String str) {
        C2200d4 c2200d4;
        Objects.requireNonNull(c2441x3);
        try {
            c2200d4 = new C2200d4(str);
        } catch (JSONException e) {
            C2408t.m3591d().m3718p().m3686e(0, 0, e.toString(), true);
            c2200d4 = new C2200d4();
        }
        for (int i = 0; i < c2200d4.m3762c(); i++) {
            C2408t.m3591d().m3717q().m3574f(c2200d4.m3761d(i));
        }
    }

    @Override // p068d2.AbstractC2463z0
    /* renamed from: a */
    public boolean mo3532a() {
        return !this.f8631D && !this.f8632E;
    }

    @Override // p068d2.AbstractC2463z0
    /* renamed from: b */
    public void mo3531b() {
        if (!C2408t.m3590e() || !this.f8629B || this.f8631D || this.f8632E) {
            return;
        }
        m3553g();
    }

    @Override // p068d2.AbstractC2463z0
    /* renamed from: c */
    public void mo3530c() {
        if (!this.f8628A) {
            C2315i3.m3652s(new RunnableC2451f());
        }
    }

    @Override // p068d2.AbstractC2463z0
    /* renamed from: d */
    public int mo3529d() {
        return this.f8664u;
    }

    @Override // p068d2.AbstractC2463z0
    /* renamed from: e */
    public void mo3528e(C2267f4 c2267f4) {
        synchronized (this.f8643P) {
            if (this.f8632E) {
                m3543q(c2267f4);
            } else {
                this.f8636I.m3764a(c2267f4);
            }
        }
    }

    /* renamed from: f */
    public void m3554f() {
        if (this.f8641N != null) {
            Rect m3778g = C2408t.m3591d().m3721m().m3778g();
            int width = this.f8635H ? this.f8656m + this.f8660q : m3778g.width();
            int height = this.f8635H ? this.f8658o + this.f8662s : m3778g.height();
            float m4794c = C1676a.m4794c();
            int i = (int) (this.f8666w * m4794c);
            int i2 = (int) (this.f8667x * m4794c);
            this.f8641N.setLayoutParams(new AbsoluteLayout.LayoutParams(i, i2, width - i, height - i2));
        }
    }

    /* renamed from: g */
    public void m3553g() {
        String str;
        String str2 = "";
        synchronized (this.f8643P) {
            str = str2;
            if (this.f8636I.m3762c() > 0) {
                if (this.f8668y) {
                    str2 = this.f8636I.toString();
                }
                this.f8636I = new C2200d4();
                str = str2;
            }
        }
        C2315i3.m3652s(new RunnableC2442a(str));
    }

    /* renamed from: h */
    public final String m3552h(String str, String str2) {
        C2329k0 m3722l = C2408t.m3591d().m3722l();
        C2387q m3535y = m3535y();
        AbstractC2328k abstractC2328k = m3722l.f8331d.get(this.f8648e);
        if (m3535y != null && this.f8638K.m3707e() > 0 && !this.f8638K.m3697o("ad_type").equals("video")) {
            C2267f4 c2267f4 = this.f8638K;
            if (c2267f4.m3707e() > 0) {
                m3535y.f8440e = new C2411t1(c2267f4, m3535y.f8442g);
            }
        } else if (abstractC2328k != null && this.f8638K.m3707e() > 0) {
            abstractC2328k.f8327c = new C2411t1(this.f8638K, this.f8648e);
        }
        C2411t1 c2411t1 = m3535y == null ? null : m3535y.f8440e;
        C2411t1 c2411t12 = c2411t1;
        if (c2411t1 == null) {
            c2411t12 = c2411t1;
            if (abstractC2328k != null) {
                c2411t12 = abstractC2328k.f8327c;
            }
        }
        if (c2411t12 != null && c2411t12.f8542e == 2) {
            this.f8633F = true;
            if (!str2.equals("")) {
                try {
                    return C3102d.m2615x(C2408t.m3591d().m3719o().m3682a(str2, false).toString(), str);
                } catch (IOException e) {
                    m3546n(e);
                }
            }
        }
        return str;
    }

    /* renamed from: i */
    public void m3551i(C2410t0 c2410t0) {
        C2267f4 c2267f4 = c2410t0.f8537b;
        this.f8656m = C2227e4.m3735r(c2267f4, "x");
        this.f8658o = C2227e4.m3735r(c2267f4, "y");
        this.f8660q = C2227e4.m3735r(c2267f4, "width");
        this.f8662s = C2227e4.m3735r(c2267f4, "height");
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) getLayoutParams();
        layoutParams.setMargins(this.f8656m, this.f8658o, 0, 0);
        layoutParams.width = this.f8660q;
        layoutParams.height = this.f8662s;
        setLayoutParams(layoutParams);
        if (this.f8669z) {
            C2267f4 c2267f42 = new C2267f4();
            C2227e4.m3739n(c2267f42, "success", true);
            C2227e4.m3740m(c2267f42, FacebookAdapter.KEY_ID, this.f8664u);
            c2410t0.m3587a(c2267f42).m3586b();
        }
        m3554f();
    }

    /* renamed from: j */
    public void m3550j(C2410t0 c2410t0, int i, int i2, C2322j0 c2322j0) {
        C2267f4 c2267f4 = c2410t0.f8537b;
        String m3697o = c2267f4.m3697o(ImagesContract.URL);
        this.f8644a = m3697o;
        if (m3697o.equals("")) {
            this.f8644a = c2267f4.m3697o("data");
        }
        this.f8647d = c2267f4.m3697o("base_url");
        this.f8646c = c2267f4.m3697o("custom_js");
        this.f8648e = c2267f4.m3697o("ad_session_id");
        this.f8637J = c2267f4.m3700l("info");
        this.f8650g = c2267f4.m3697o("mraid_filepath");
        this.f8665v = C2227e4.m3741l(c2267f4, "use_mraid_module") ? C2408t.m3591d().m3717q().m3573g() : this.f8665v;
        this.f8651h = c2267f4.m3697o("ad_choices_filepath");
        this.f8652i = c2267f4.m3697o("ad_choices_url");
        this.f8634G = C2227e4.m3741l(c2267f4, "disable_ad_choices");
        this.f8635H = C2227e4.m3741l(c2267f4, "ad_choices_snap_to_webview");
        this.f8666w = C2227e4.m3735r(c2267f4, "ad_choices_width");
        this.f8667x = C2227e4.m3735r(c2267f4, "ad_choices_height");
        if (this.f8638K.m3707e() == 0) {
            this.f8638K = c2267f4.m3700l("iab");
        }
        boolean z = false;
        if (!this.f8628A && !this.f8650g.equals("")) {
            if (this.f8665v > 0) {
                this.f8644a = m3552h(this.f8644a.replaceFirst("script\\s*src\\s*=\\s*\"mraid.js\"", C0082b.m8754h(C0082b.m8752j("script src=\"file://"), this.f8650g, "\"")), this.f8637J.m3700l("device_info").m3697o("iab_filepath"));
            } else {
                try {
                    this.f8649f = C2408t.m3591d().m3719o().m3682a(this.f8650g, false).toString();
                    this.f8649f = this.f8649f.replaceFirst("bridge.os_name\\s*=\\s*\"\"\\s*;", "bridge.os_name = \"\";\nvar ADC_DEVICE_INFO = " + this.f8637J.toString() + ";\n");
                } catch (IOException e) {
                    m3545o(e);
                } catch (IllegalArgumentException e2) {
                    m3545o(e2);
                } catch (IndexOutOfBoundsException e3) {
                    m3545o(e3);
                }
            }
        }
        this.f8655l = i;
        this.f8639L = c2322j0;
        if (i2 >= 0) {
            this.f8664u = i2;
        } else {
            m3540t();
        }
        this.f8660q = C2227e4.m3735r(c2267f4, "width");
        this.f8662s = C2227e4.m3735r(c2267f4, "height");
        this.f8656m = C2227e4.m3735r(c2267f4, "x");
        int m3735r = C2227e4.m3735r(c2267f4, "y");
        this.f8658o = m3735r;
        this.f8661r = this.f8660q;
        this.f8663t = this.f8662s;
        this.f8659p = m3735r;
        this.f8657n = this.f8656m;
        if (C2227e4.m3741l(c2267f4, "enable_messages") || this.f8669z) {
            z = true;
        }
        this.f8668y = z;
        m3539u();
    }

    @SuppressLint({"AddJavascriptInterface"})
    /* renamed from: m */
    public void m3547m(boolean z, C2410t0 c2410t0) {
        String str;
        String str2;
        this.f8669z = z;
        C2410t0 c2410t02 = this.f8640M;
        if (c2410t02 != null) {
            c2410t0 = c2410t02;
        }
        this.f8640M = c2410t0;
        C2267f4 c2267f4 = c2410t0.f8537b;
        this.f8628A = C2227e4.m3741l(c2267f4, "is_display_module");
        setFocusable(true);
        setHorizontalScrollBarEnabled(false);
        setVerticalScrollBarEnabled(false);
        int i = Build.VERSION.SDK_INT;
        WebView.setWebContentsDebuggingEnabled(false);
        if (z) {
            this.f8668y = true;
            String m3697o = c2267f4.m3697o("filepath");
            this.f8653j = c2267f4.m3697o("interstitial_html");
            this.f8650g = c2267f4.m3697o("mraid_filepath");
            this.f8647d = c2267f4.m3697o("base_url");
            this.f8638K = c2267f4.m3700l("iab");
            this.f8637J = c2267f4.m3700l("info");
            this.f8648e = c2267f4.m3697o("ad_session_id");
            this.f8645b = m3697o;
            if (f8627R && this.f8664u == 1) {
                this.f8645b = "android_asset/ADCController.js";
            }
            if (this.f8653j.equals("")) {
                StringBuilder m8752j = C0082b.m8752j("file:///");
                m8752j.append(this.f8645b);
                str2 = m8752j.toString();
            } else {
                str2 = "";
            }
            this.f8644a = str2;
        }
        setWebChromeClient(new C2454i(null));
        WebSettings settings = getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setBuiltInZoomControls(true);
        settings.setDisplayZoomControls(false);
        settings.setGeolocationEnabled(true);
        settings.setUseWideViewPort(true);
        settings.setMediaPlaybackRequiresUserGesture(false);
        settings.setAllowFileAccessFromFileURLs(true);
        settings.setAllowUniversalAccessFromFileURLs(true);
        settings.setAllowFileAccess(true);
        if (i >= 23) {
            addJavascriptInterface(new C2453h(null), "NativeLayer");
        } else {
            addJavascriptInterface(new C2452g(null), "NativeLayer");
        }
        setWebViewClient(i >= 23 ? new C2461y3(this) : new C2466z3(this));
        if (this.f8628A) {
            try {
                if (this.f8653j.equals("")) {
                    FileInputStream fileInputStream = new FileInputStream(this.f8645b);
                    try {
                        StringBuilder sb = new StringBuilder(fileInputStream.available());
                        byte[] bArr = new byte[1024];
                        while (true) {
                            int read = fileInputStream.read(bArr, 0, 1024);
                            if (read < 0) {
                                break;
                            }
                            sb.append(new String(bArr, 0, read));
                        }
                        if (this.f8645b.contains(".html")) {
                            str = sb.toString();
                        } else {
                            str = "<html><script>" + sb.toString() + "</script></html>";
                        }
                        fileInputStream.close();
                    } catch (Throwable th) {
                        try {
                            fileInputStream.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                } else {
                    str = this.f8653j.replaceFirst("script\\s*src\\s*=\\s*\"mraid.js\"", "script src=\"file://" + this.f8650g + "\"");
                }
                String m3697o2 = this.f8640M.f8537b.m3700l("info").m3697o("metadata");
                loadDataWithBaseURL(this.f8644a.equals("") ? this.f8647d : this.f8644a, m3552h(str, C2227e4.m3742k(m3697o2).m3697o("iab_filepath")).replaceFirst("var\\s*ADC_DEVICE_INFO\\s*=\\s*null\\s*;", Matcher.quoteReplacement("var ADC_DEVICE_INFO = " + m3697o2 + ";")), "text/html", null, null);
            } catch (IOException e) {
                m3546n(e);
            } catch (IllegalArgumentException e2) {
                m3546n(e2);
            } catch (IndexOutOfBoundsException e3) {
                m3546n(e3);
            }
        } else if (!this.f8644a.startsWith("http") && !this.f8644a.startsWith("file")) {
            loadDataWithBaseURL(this.f8647d, this.f8644a, "text/html", null, null);
        } else if (this.f8644a.contains(".html") || !this.f8644a.startsWith("file")) {
            loadUrl(this.f8644a);
        } else {
            loadDataWithBaseURL(this.f8644a, C0082b.m8754h(C0082b.m8752j("<html><script src=\""), this.f8644a, "\"></script></html>"), "text/html", null, null);
        }
        if (!z) {
            m3540t();
            m3534z();
        }
        if (z || this.f8668y) {
            C2417u0 m3717q = C2408t.m3591d().m3717q();
            synchronized (m3717q.f8565a) {
                int i2 = this.f8665v;
                if (i2 <= 0) {
                    i2 = this.f8664u;
                }
                m3717q.f8565a.add(this);
                m3717q.f8566b.put(Integer.valueOf(i2), this);
                m3717q.m3571i();
            }
        }
        if (!this.f8646c.equals("")) {
            m3542r(this.f8646c);
        }
    }

    /* renamed from: n */
    public final boolean m3546n(Exception exc) {
        C2408t.m3591d().m3718p().m3686e(0, 0, exc.getClass().toString() + " during metadata injection w/ metadata = " + this.f8637J.m3697o("metadata"), true);
        C2387q remove = C2408t.m3591d().m3722l().f8330c.remove(this.f8637J.m3697o("ad_session_id"));
        if (remove == null) {
            return false;
        }
        return remove.m3615c();
    }

    /* renamed from: o */
    public final void m3545o(Exception exc) {
        C2408t.m3591d().m3718p().m3686e(0, 0, exc.getClass().toString() + " during metadata injection w/ metadata = " + this.f8637J.m3697o("metadata"), true);
        C2267f4 c2267f4 = new C2267f4();
        C2227e4.m3744i(c2267f4, FacebookAdapter.KEY_ID, this.f8648e);
        new C2410t0("AdSession.on_error", this.f8639L.f8301k, c2267f4).m3586b();
    }

    @Override // android.webkit.WebView, android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        if (motionEvent.getAction() == 1) {
            C2319j m3537w = m3537w();
            if (m3537w != null && !m3537w.f8282n) {
                C2267f4 c2267f4 = new C2267f4();
                C2227e4.m3744i(c2267f4, "ad_session_id", this.f8648e);
                new C2410t0("WebView.on_first_click", 1, c2267f4).m3586b();
                m3537w.setUserInteraction(true);
            }
            C2387q m3535y = m3535y();
            if (m3535y != null) {
                m3535y.f8448m = true;
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    /* renamed from: q */
    public final void m3543q(C2267f4 c2267f4) {
        String jSONArray;
        if (this.f8668y) {
            if (this.f8642O == null) {
                C0082b.m8750l(0, 1, "Sending message before event messaging is initialized", true);
                return;
            }
            JSONArray jSONArray2 = new JSONArray();
            synchronized (jSONArray2) {
                jSONArray2.put(c2267f4.f8159a);
            }
            WebMessagePort webMessagePort = (WebMessagePort) this.f8642O.f8689a[0];
            synchronized (jSONArray2) {
                jSONArray = jSONArray2.toString();
            }
            webMessagePort.postMessage(new WebMessage(jSONArray));
        }
    }

    /* renamed from: r */
    public void m3542r(String str) {
        if (this.f8630C) {
            C0082b.m8750l(0, 3, C0608b.m7626i("Ignoring call to execute_js as WebView has been destroyed."), true);
            return;
        }
        try {
            evaluateJavascript(str, null);
        } catch (IllegalStateException e) {
            C2408t.m3591d().m3718p().m3686e(0, 0, C1676a.m4789h("Device reporting incorrect OS version, evaluateJavascript ", "is not available. Disabling AdColony."), false);
            C2168b.m3789i();
        }
    }

    /* renamed from: s */
    public boolean m3541s(C2410t0 c2410t0) {
        C2267f4 c2267f4 = c2410t0.f8537b;
        return C2227e4.m3735r(c2267f4, FacebookAdapter.KEY_ID) == this.f8655l && C2227e4.m3735r(c2267f4, "container_id") == this.f8639L.f8300j && c2267f4.m3697o("ad_session_id").equals(this.f8639L.f8302l);
    }

    /* renamed from: t */
    public void m3540t() {
        ArrayList<AbstractC2458y0> arrayList = this.f8639L.f8309s;
        C2443b c2443b = new C2443b();
        C2408t.m3594a("WebView.set_visible", c2443b);
        arrayList.add(c2443b);
        ArrayList<AbstractC2458y0> arrayList2 = this.f8639L.f8309s;
        C2445c c2445c = new C2445c();
        C2408t.m3594a("WebView.set_bounds", c2445c);
        arrayList2.add(c2445c);
        ArrayList<AbstractC2458y0> arrayList3 = this.f8639L.f8309s;
        C2447d c2447d = new C2447d();
        C2408t.m3594a("WebView.execute_js", c2447d);
        arrayList3.add(c2447d);
        ArrayList<AbstractC2458y0> arrayList4 = this.f8639L.f8309s;
        C2449e c2449e = new C2449e();
        C2408t.m3594a("WebView.set_transparent", c2449e);
        arrayList4.add(c2449e);
        this.f8639L.f8310t.add("WebView.set_visible");
        this.f8639L.f8310t.add("WebView.set_bounds");
        this.f8639L.f8310t.add("WebView.execute_js");
        this.f8639L.f8310t.add("WebView.set_transparent");
    }

    /* renamed from: u */
    public void m3539u() {
        C2329k0 m3722l = C2408t.m3591d().m3722l();
        String str = this.f8648e;
        C2322j0 c2322j0 = this.f8639L;
        Objects.requireNonNull(m3722l);
        C2315i3.m3652s(new RunnableC2403s0(m3722l, str, this, c2322j0));
    }

    /* renamed from: v */
    public String m3538v() {
        String str;
        C2329k0 m3722l = C2408t.m3591d().m3722l();
        String str2 = this.f8648e;
        C2387q c2387q = str2 == null ? null : m3722l.f8330c.get(str2);
        if (c2387q == null) {
            str = "unknown";
        } else {
            StringBuilder sb = new StringBuilder();
            String str3 = c2387q.f8443h;
            String str4 = str3;
            if (str3 == null) {
                str4 = "";
            }
            sb.append(str4);
            sb.append(" : ");
            sb.append(c2387q.f8444i);
            str = sb.toString();
        }
        return str;
    }

    /* renamed from: w */
    public final C2319j m3537w() {
        return this.f8648e == null ? null : C2408t.m3591d().m3722l().f8333f.get(this.f8648e);
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0036, code lost:
        if (r4.equals(null) != false) goto L16;
     */
    /* renamed from: x */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.String m3536x() {
        /*
            r3 = this;
            r0 = r3
            d2.q r0 = r0.m3535y()
            r4 = r0
            r0 = 0
            r5 = r0
            r0 = r4
            if (r0 == 0) goto L10
            r0 = 1
            r6 = r0
            goto L12
        L10:
            r0 = 0
            r6 = r0
        L12:
            r0 = r6
            if (r0 == 0) goto L28
            r0 = r3
            d2.q r0 = r0.m3535y()
            if (r0 == 0) goto L28
            r0 = r3
            d2.q r0 = r0.m3535y()
            java.lang.String r0 = r0.f8445j
            r4 = r0
            goto L2a
        L28:
            r0 = 0
            r4 = r0
        L2a:
            r0 = r4
            if (r0 == 0) goto L39
            r0 = r4
            r7 = r0
            r0 = r4
            r1 = 0
            boolean r0 = r0.equals(r1)
            if (r0 == 0) goto L5e
        L39:
            r0 = r5
            r6 = r0
            r0 = r3
            d2.j r0 = r0.m3537w()
            if (r0 == 0) goto L44
            r0 = 1
            r6 = r0
        L44:
            r0 = r4
            r7 = r0
            r0 = r6
            if (r0 == 0) goto L5e
            r0 = r4
            r7 = r0
            r0 = r3
            d2.j r0 = r0.m3537w()
            if (r0 == 0) goto L5e
            r0 = r3
            d2.j r0 = r0.m3537w()
            java.lang.String r0 = r0.getClickOverride()
            r7 = r0
        L5e:
            r0 = r7
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: p068d2.C2441x3.m3536x():java.lang.String");
    }

    /* renamed from: y */
    public final C2387q m3535y() {
        return this.f8648e == null ? null : C2408t.m3591d().m3722l().f8330c.get(this.f8648e);
    }

    /* renamed from: z */
    public void m3534z() {
        Context context;
        setVisibility(4);
        FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(this.f8660q, this.f8662s);
        layoutParams.setMargins(this.f8656m, this.f8658o, 0, 0);
        layoutParams.gravity = 0;
        this.f8639L.addView(this, layoutParams);
        if (this.f8651h.equals("") || this.f8652i.equals("") || (context = C2408t.f8531a) == null || this.f8639L == null || this.f8634G) {
            return;
        }
        GradientDrawable gradientDrawable = new GradientDrawable();
        gradientDrawable.setColor(-1);
        gradientDrawable.setShape(1);
        ImageView imageView = new ImageView(context);
        this.f8641N = imageView;
        imageView.setImageURI(Uri.fromFile(new File(this.f8651h)));
        this.f8641N.setBackground(gradientDrawable);
        this.f8641N.setOnClickListener(new View$OnClickListenerC2184b4(this));
        m3554f();
        addView(this.f8641N);
    }
}
