package p081h.p115c.p116a.p117i;

import android.content.Context;
import android.os.Build;
import android.view.WindowManager;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
/* renamed from: h.c.a.i.b */
/* loaded from: classes-dex2jar.jar:h/c/a/i/b.class */
public class C5745b extends WebView {

    /* renamed from: b */
    public static boolean f14372b = false;

    /* renamed from: a */
    public Context f14373a;

    /* renamed from: h.c.a.i.b$a */
    /* loaded from: classes-dex2jar.jar:h/c/a/i/b$a.class */
    public class C5746a extends WebChromeClient {
        @Override // android.webkit.WebChromeClient
        public boolean onJsAlert(@NonNull WebView webView, @NonNull String str, @NonNull String str2, @NonNull JsResult jsResult) {
            jsResult.confirm();
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsBeforeUnload(@NonNull WebView webView, @NonNull String str, @NonNull String str2, @NonNull JsResult jsResult) {
            jsResult.confirm();
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsConfirm(@NonNull WebView webView, @NonNull String str, @NonNull String str2, @NonNull JsResult jsResult) {
            jsResult.confirm();
            return true;
        }

        @Override // android.webkit.WebChromeClient
        public boolean onJsPrompt(@NonNull WebView webView, @NonNull String str, @NonNull String str2, @NonNull String str3, @NonNull JsPromptResult jsPromptResult) {
            jsPromptResult.confirm();
            return true;
        }
    }

    public C5745b(Context context) {
        super(context.getApplicationContext());
        this.f14373a = context;
        m24571a(true);
        m24570b();
        m24572a(this);
        if (!f14372b) {
            m24573a(getContext());
            f14372b = true;
        }
        m24576a();
        getSettings().setJavaScriptEnabled(true);
        setBackgroundColor(0);
    }

    /* renamed from: a */
    public static void m24572a(@NonNull WebView webView) {
        webView.setWebChromeClient(new C5746a());
    }

    /* renamed from: a */
    public final int m24575a(int i) {
        return (int) ((i * this.f14373a.getResources().getDisplayMetrics().density) + 0.5f);
    }

    /* renamed from: a */
    public final void m24576a() {
        setHorizontalScrollBarEnabled(false);
        setHorizontalScrollbarOverlay(false);
        setVerticalScrollBarEnabled(false);
        setVerticalScrollbarOverlay(false);
        getSettings().setSupportZoom(false);
    }

    /* renamed from: a */
    public void m24574a(int i, int i2) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        layoutParams.width = m24575a(i);
        layoutParams.height = m24575a(i2);
        setLayoutParams(layoutParams);
    }

    /* renamed from: a */
    public final void m24573a(@NonNull Context context) {
        if (Build.VERSION.SDK_INT == 19) {
            WebView webView = new WebView(context.getApplicationContext());
            webView.setBackgroundColor(0);
            webView.loadDataWithBaseURL(null, "", "text/html", "UTF-8", null);
            WindowManager.LayoutParams layoutParams = new WindowManager.LayoutParams();
            layoutParams.width = 1;
            layoutParams.height = 1;
            layoutParams.type = 2005;
            layoutParams.flags = 16777240;
            layoutParams.format = -2;
            layoutParams.gravity = 8388659;
            ((WindowManager) context.getSystemService("window")).addView(webView, layoutParams);
        }
    }

    /* renamed from: a */
    public void m24571a(boolean z) {
        if (Build.VERSION.SDK_INT < 18) {
            if (z) {
                getSettings().setPluginState(WebSettings.PluginState.ON);
            } else {
                getSettings().setPluginState(WebSettings.PluginState.OFF);
            }
        }
    }

    /* renamed from: b */
    public final void m24570b() {
        getSettings().setAllowFileAccess(false);
        getSettings().setAllowContentAccess(false);
        getSettings().setAllowFileAccessFromFileURLs(false);
        getSettings().setAllowUniversalAccessFromFileURLs(false);
    }

    /* renamed from: c */
    public void m24569c() {
        RelativeLayout.LayoutParams layoutParams = (RelativeLayout.LayoutParams) getLayoutParams();
        if (layoutParams != null) {
            layoutParams.addRule(13, -1);
            setLayoutParams(layoutParams);
        }
    }
}
