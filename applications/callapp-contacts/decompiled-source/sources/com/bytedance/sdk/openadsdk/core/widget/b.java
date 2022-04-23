package com.bytedance.sdk.openadsdk.core.widget;

import android.app.Dialog;
import android.content.Context;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.bytedance.sdk.openadsdk.R;
import com.bytedance.sdk.openadsdk.core.n;
import com.bytedance.sdk.openadsdk.utils.ag;
import com.bytedance.sdk.openadsdk.utils.x;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/b.class */
public class b extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    private Context f9316a;

    /* renamed from: b  reason: collision with root package name */
    private String f9317b;

    /* renamed from: c  reason: collision with root package name */
    private String f9318c;

    /* renamed from: d  reason: collision with root package name */
    private c f9319d;
    private AbstractC0171b e;
    private RelativeLayout f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/b$a.class */
    public class a implements View.OnClickListener {
        private a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int id = view.getId();
            if (id == R.id.tt_privacy_accept_btn) {
                if (b.this.f9319d != null) {
                    b.this.f9319d.a();
                }
                b.this.dismiss();
            } else if (id == R.id.tt_privacy_reject_btn) {
                if (b.this.e != null) {
                    b.this.e.a();
                }
                b.this.dismiss();
            }
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.core.widget.b$b  reason: collision with other inner class name */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/b$b.class */
    public interface AbstractC0171b {
        void a();
    }

    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/b$c.class */
    public interface c {
        void a();
    }

    public b(Context context) {
        super(context, x.g(context, "tt_privacy_dialogTheme"));
        this.f9316a = context;
    }

    private void a() {
        View inflate = LayoutInflater.from(this.f9316a).inflate(x.f(this.f9316a, "tt_privacy_dialog"), (ViewGroup) null);
        setContentView(inflate);
        final TTCornersWebView tTCornersWebView = (TTCornersWebView) inflate.findViewById(x.e(this.f9316a, "tt_privacy_webview"));
        Button button = (Button) inflate.findViewById(x.e(this.f9316a, "tt_privacy_accept_btn"));
        TextView textView = (TextView) inflate.findViewById(x.e(this.f9316a, "tt_privacy_reject_btn"));
        RelativeLayout relativeLayout = (RelativeLayout) inflate.findViewById(x.e(this.f9316a, "tt_privacy_back_layout"));
        this.f = relativeLayout;
        ag.a((View) relativeLayout, 8);
        textView.getPaint().setFlags(8);
        a(tTCornersWebView);
        if (!TextUtils.isEmpty(this.f9317b) && !TextUtils.isEmpty(this.f9318c)) {
            button.setText(this.f9317b);
            textView.setText(this.f9318c);
        }
        button.setOnClickListener(new a());
        textView.setOnClickListener(new a());
        this.f.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.b.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TTCornersWebView tTCornersWebView2 = tTCornersWebView;
                if (tTCornersWebView2 != null && tTCornersWebView2.canGoBack()) {
                    tTCornersWebView.goBack();
                    if (!tTCornersWebView.canGoBack()) {
                        ag.a((View) b.this.f, 8);
                    }
                }
            }
        });
    }

    private void a(final TTCornersWebView tTCornersWebView) {
        String p = n.h().p();
        if (p != null) {
            try {
                tTCornersWebView.getSettings().setJavaScriptEnabled(true);
            } catch (Exception e) {
                e.printStackTrace();
            }
            tTCornersWebView.loadUrl(p);
            if (Build.VERSION.SDK_INT >= 21) {
                tTCornersWebView.getSettings().setMixedContentMode(0);
            }
            try {
                WebSettings settings = tTCornersWebView.getSettings();
                settings.setJavaScriptEnabled(true);
                settings.setSupportZoom(true);
                settings.setBuiltInZoomControls(true);
                settings.setLoadWithOverviewMode(true);
                settings.setUseWideViewPort(true);
                settings.setDomStorageEnabled(true);
                settings.setAllowFileAccess(false);
                settings.setBlockNetworkImage(false);
                tTCornersWebView.setLayerType(1, null);
            } catch (Throwable th) {
                th.printStackTrace();
            }
            tTCornersWebView.setWebViewClient(new WebViewClient() { // from class: com.bytedance.sdk.openadsdk.core.widget.b.2
                @Override // android.webkit.WebViewClient
                public void onPageFinished(WebView webView, String str) {
                    super.onPageFinished(webView, str);
                    TTCornersWebView tTCornersWebView2 = tTCornersWebView;
                    if (tTCornersWebView2 != null && tTCornersWebView2.canGoBack()) {
                        ag.a((View) b.this.f, 0);
                    }
                }

                @Override // android.webkit.WebViewClient
                public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
                    if (webView == null || webResourceRequest == null) {
                        return false;
                    }
                    if (Build.VERSION.SDK_INT >= 21) {
                        webView.loadUrl(webResourceRequest.getUrl().toString());
                        return true;
                    }
                    webView.loadUrl(webResourceRequest.toString());
                    return true;
                }
            });
        }
    }

    private void b() {
        WindowManager.LayoutParams attributes;
        setCancelable(false);
        Window window = getWindow();
        if (window != null && (attributes = window.getAttributes()) != null) {
            attributes.dimAmount = 0.5f;
            attributes.width = (int) (this.f9316a.getResources().getDisplayMetrics().widthPixels * 0.8d);
            window.setAttributes(attributes);
        }
    }

    public b a(String str, AbstractC0171b bVar) {
        this.f9318c = str;
        this.e = bVar;
        return this;
    }

    public b a(String str, c cVar) {
        this.f9317b = str;
        this.f9319d = cVar;
        return this;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        a();
        b();
    }
}
