package p000;

import android.annotation.TargetApi;
import android.content.Context;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.util.Log;
import android.webkit.ValueCallback;
import android.webkit.WebView;
import java.util.concurrent.Executors;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.TimeUnit;
import p000.mf1;
import p000.we1;
/* renamed from: xe1 */
/* loaded from: classes3-dex2jar.jar:xe1.class */
public class xe1 implements we1 {

    /* renamed from: b */
    public ScheduledFuture<?> f8685b;

    /* renamed from: c */
    public ScheduledFuture<?> f8686c;

    /* renamed from: d */
    public final mf1 f8687d;

    /* renamed from: h */
    public WebView f8691h;

    /* renamed from: i */
    public we1.AbstractC1713a f8692i;

    /* renamed from: e */
    public int f8688e = 0;

    /* renamed from: f */
    public boolean f8689f = false;

    /* renamed from: g */
    public boolean f8690g = false;

    /* renamed from: a */
    public final ScheduledExecutorService f8684a = Executors.newScheduledThreadPool(1);

    /* renamed from: xe1$a */
    /* loaded from: classes3-dex2jar.jar:xe1$a.class */
    public class RunnableC1726a implements Runnable {
        public RunnableC1726a() {
            xe1.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                xe1.this.m106o();
            } catch (Exception e) {
                uf1.m397a(e);
            }
        }
    }

    /* renamed from: xe1$b */
    /* loaded from: classes3-dex2jar.jar:xe1$b.class */
    public class C1727b implements ValueCallback<String> {
        public C1727b() {
            xe1.this = r4;
        }

        /* renamed from: a */
        public void onReceiveValue(String str) {
            String str2;
            if (str != null && !str.equalsIgnoreCase("null") && !str.equalsIgnoreCase("false")) {
                if (str.equalsIgnoreCase("true")) {
                    xe1.this.f8688e = -1;
                    xe1.this.m106o();
                    return;
                } else if (!xe1.this.f8687d.mo1179b()) {
                    return;
                } else {
                    Log.d("MoatJavaScriptBridge", "Received unusual value from Javascript:" + str);
                    return;
                }
            }
            if (xe1.this.f8687d.mo1179b()) {
                StringBuilder sb = new StringBuilder();
                sb.append("Received value is:");
                if (str == null) {
                    str2 = "null";
                } else {
                    str2 = "(String)" + str;
                }
                sb.append(str2);
                Log.d("MoatJavaScriptBridge", sb.toString());
            }
            if (xe1.this.f8688e == -1 || xe1.this.f8688e == 50) {
                xe1.this.m105p();
            }
            xe1.m114g(xe1.this);
        }
    }

    /* renamed from: xe1$c */
    /* loaded from: classes3-dex2jar.jar:xe1$c.class */
    public class RunnableC1728c implements Runnable {

        /* renamed from: xe1$c$a */
        /* loaded from: classes3-dex2jar.jar:xe1$c$a.class */
        public class RunnableC1729a implements Runnable {
            public RunnableC1729a() {
                RunnableC1728c.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    xe1.this.m110k();
                } catch (Exception e) {
                    uf1.m397a(e);
                }
            }
        }

        public RunnableC1728c() {
            xe1.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                new Handler(Looper.getMainLooper()).post(new RunnableC1729a());
            } catch (Exception e) {
                uf1.m397a(e);
            }
        }
    }

    /* renamed from: xe1$d */
    /* loaded from: classes3-dex2jar.jar:xe1$d.class */
    public class RunnableC1730d implements Runnable {

        /* renamed from: xe1$d$a */
        /* loaded from: classes3-dex2jar.jar:xe1$d$a.class */
        public class RunnableC1731a implements Runnable {
            public RunnableC1731a() {
                RunnableC1730d.this = r4;
            }

            @Override // java.lang.Runnable
            public void run() {
                try {
                    xe1.this.m109l();
                } catch (Exception e) {
                    uf1.m397a(e);
                }
            }
        }

        public RunnableC1730d() {
            xe1.this = r4;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                new Handler(Looper.getMainLooper()).post(new RunnableC1731a());
            } catch (Exception e) {
                uf1.m397a(e);
            }
        }
    }

    public xe1(Context context, mf1 mf1Var) {
        this.f8687d = mf1Var;
    }

    /* renamed from: g */
    public static /* synthetic */ int m114g(xe1 xe1Var) {
        int i = xe1Var.f8688e;
        xe1Var.f8688e = i + 1;
        return i;
    }

    @Override // p000.we1
    /* renamed from: a */
    public boolean mo120a(WebView webView, we1.AbstractC1713a abstractC1713a) {
        boolean mo1179b = this.f8687d.mo1179b();
        if (!webView.getSettings().getJavaScriptEnabled()) {
            if (!mo1179b) {
                return false;
            }
            Log.e("MoatJavaScriptBridge", "JavaScript is not enabled in the given WebView. Can't track.");
            return false;
        }
        this.f8691h = webView;
        this.f8692i = abstractC1713a;
        m108m();
        m107n();
        this.f8684a.schedule(new RunnableC1726a(), 10L, TimeUnit.SECONDS);
        return true;
    }

    @Override // p000.we1
    /* renamed from: b */
    public void mo119b() {
        if (this.f8687d.getStatus() == mf1.EnumC1480b.OFF) {
            return;
        }
        m106o();
        m105p();
    }

    /* renamed from: k */
    public final void m110k() {
        try {
            if (this.f8687d.getStatus() == mf1.EnumC1480b.OFF) {
                return;
            }
            if (this.f8687d.mo1179b() && !this.f8690g) {
                Log.d("MoatJavaScriptBridge", "Ready for communication (setting environment variables).");
                this.f8690g = true;
            }
            this.f8691h.loadUrl(String.format("javascript:(function(b,f){function g(){function b(a,e){for(k in a)if(a.hasOwnProperty(k)){var c=a[k].fn;if('function'===typeof c)try{e?c(e):c()}catch(d){}}}function d(a,b,c){'function'===typeof a&&(c[b]={ts:+new Date,fn:a})}bjmk={};uqaj={};yhgt={};ryup=dptk=!1;this.a=function(a){this.namespace=a.namespace;this.version=a.version;this.appName=a.appName;this.deviceOS=a.deviceOS;this.isNative=a.isNative;this.versionHash=a.versionHash};this.bpsy=function(a){dptk||ryup||d(a,+new Date,bjmk)};this.qmrv=function(a){ryup||d(a,+new Date,uqaj)};this.lgpr=function(a,b){d(a,b,yhgt)};this.xrnk=function(a){yhgt.hasOwnProperty(a)&&delete yhgt[a]};this.vgft=function(){return dptk};this.lkpu=function(){return ryup};this.mqjh=function(){dptk||ryup||(dptk=!0,b(bjmk))};this.egpw=function(){ryup||(ryup=!0,b(uqaj))};this.sglu=function(a){b(yhgt,a);return 0<Object.keys(yhgt).length}}'undefined'===typeof b.MoatMAK&&(b.MoatMAK=new g,b.MoatMAK.a(f),b.__zMoatInit__=!0)})(window,%s);", this.f8692i.mo257b()));
        } catch (Exception e) {
            if (!this.f8687d.mo1179b()) {
                return;
            }
            Log.e("MoatJavaScriptBridge", "Failed to initialize communication (did not set environment variables).", e);
        }
    }

    @TargetApi(19)
    /* renamed from: l */
    public final void m109l() {
        try {
            if (this.f8687d.getStatus() == mf1.EnumC1480b.OFF) {
                return;
            }
            WebView webView = this.f8691h;
            if (webView != null && (!this.f8689f || webView.getUrl() != null)) {
                if (this.f8691h.getUrl() != null) {
                    this.f8689f = true;
                }
                String format = String.format("MoatMAK.sglu(%s)", this.f8692i.mo256d());
                if (Build.VERSION.SDK_INT >= 19) {
                    this.f8691h.evaluateJavascript(format, new C1727b());
                    return;
                }
                WebView webView2 = this.f8691h;
                webView2.loadUrl("javascript:" + format);
                return;
            }
            if (this.f8687d.mo1179b()) {
                StringBuilder sb = new StringBuilder();
                sb.append("WebView became null");
                sb.append(this.f8691h == null ? "" : "based on null url");
                sb.append(", stopping tracking loop");
                Log.d("MoatJavaScriptBridge", sb.toString());
            }
            m105p();
        } catch (Exception e) {
            uf1.m397a(e);
            m106o();
            m105p();
        }
    }

    /* renamed from: m */
    public final void m108m() {
        if (this.f8687d.mo1179b()) {
            Log.d("MoatJavaScriptBridge", "Starting metadata reporting loop");
        }
        this.f8686c = this.f8684a.scheduleWithFixedDelay(new RunnableC1728c(), 0L, 50L, TimeUnit.MILLISECONDS);
    }

    /* renamed from: n */
    public final void m107n() {
        if (this.f8687d.mo1179b()) {
            Log.d("MoatJavaScriptBridge", "Starting view update loop");
        }
        this.f8685b = this.f8684a.scheduleWithFixedDelay(new RunnableC1730d(), 0L, this.f8687d.mo1178c(), TimeUnit.MILLISECONDS);
    }

    /* renamed from: o */
    public final void m106o() {
        ScheduledFuture<?> scheduledFuture = this.f8686c;
        if (scheduledFuture != null) {
            if (!scheduledFuture.isCancelled() && this.f8687d.mo1179b()) {
                Log.d("MoatJavaScriptBridge", "Stopping metadata reporting loop");
            }
            this.f8686c.cancel(true);
        }
    }

    /* renamed from: p */
    public final void m105p() {
        ScheduledFuture<?> scheduledFuture = this.f8685b;
        if (scheduledFuture != null) {
            if (scheduledFuture.isCancelled() && this.f8687d.mo1179b()) {
                Log.d("MoatJavaScriptBridge", "Stopping view update loop");
            }
            this.f8685b.cancel(true);
        }
    }
}
