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
import com.bytedance.sdk.openadsdk.C4258R;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.utils.C5443ag;
import com.bytedance.sdk.openadsdk.utils.C5486x;
/* renamed from: com.bytedance.sdk.openadsdk.core.widget.b */
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/b.class */
public class DialogC4770b extends Dialog {

    /* renamed from: a */
    private Context f17526a;

    /* renamed from: b */
    private String f17527b;

    /* renamed from: c */
    private String f17528c;

    /* renamed from: d */
    private AbstractC4775c f17529d;

    /* renamed from: e */
    private AbstractC4774b f17530e;

    /* renamed from: f */
    private RelativeLayout f17531f;

    /* renamed from: com.bytedance.sdk.openadsdk.core.widget.b$a */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/b$a.class */
    public class View$OnClickListenerC4773a implements View.OnClickListener {
        private View$OnClickListenerC4773a() {
            DialogC4770b.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            int id = view.getId();
            if (id == C4258R.C4260id.tt_privacy_accept_btn) {
                if (DialogC4770b.this.f17529d != null) {
                    DialogC4770b.this.f17529d.mo34042a();
                }
                DialogC4770b.this.dismiss();
            } else if (id != C4258R.C4260id.tt_privacy_reject_btn) {
            } else {
                if (DialogC4770b.this.f17530e != null) {
                    DialogC4770b.this.f17530e.mo34043a();
                }
                DialogC4770b.this.dismiss();
            }
        }
    }

    /* renamed from: com.bytedance.sdk.openadsdk.core.widget.b$b */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/b$b.class */
    public interface AbstractC4774b {
        /* renamed from: a */
        void mo34043a();
    }

    /* renamed from: com.bytedance.sdk.openadsdk.core.widget.b$c */
    /* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/core/widget/b$c.class */
    public interface AbstractC4775c {
        /* renamed from: a */
        void mo34042a();
    }

    public DialogC4770b(Context context) {
        super(context, C5486x.m32064g(context, "tt_privacy_dialogTheme"));
        this.f17526a = context;
    }

    /* renamed from: a */
    private void m34051a() {
        View inflate = LayoutInflater.from(this.f17526a).inflate(C5486x.m32065f(this.f17526a, "tt_privacy_dialog"), (ViewGroup) null);
        setContentView(inflate);
        final TTCornersWebView tTCornersWebView = (TTCornersWebView) inflate.findViewById(C5486x.m32066e(this.f17526a, "tt_privacy_webview"));
        Button button = (Button) inflate.findViewById(C5486x.m32066e(this.f17526a, "tt_privacy_accept_btn"));
        TextView textView = (TextView) inflate.findViewById(C5486x.m32066e(this.f17526a, "tt_privacy_reject_btn"));
        RelativeLayout relativeLayout = (RelativeLayout) inflate.findViewById(C5486x.m32066e(this.f17526a, "tt_privacy_back_layout"));
        this.f17531f = relativeLayout;
        C5443ag.m32228a((View) relativeLayout, 8);
        textView.getPaint().setFlags(8);
        m34050a(tTCornersWebView);
        if (!TextUtils.isEmpty(this.f17527b) && !TextUtils.isEmpty(this.f17528c)) {
            button.setText(this.f17527b);
            textView.setText(this.f17528c);
        }
        button.setOnClickListener(new View$OnClickListenerC4773a());
        textView.setOnClickListener(new View$OnClickListenerC4773a());
        this.f17531f.setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.core.widget.b.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TTCornersWebView tTCornersWebView2 = tTCornersWebView;
                if (tTCornersWebView2 == null || !tTCornersWebView2.canGoBack()) {
                    return;
                }
                tTCornersWebView.goBack();
                if (tTCornersWebView.canGoBack()) {
                    return;
                }
                C5443ag.m32228a((View) DialogC4770b.this.f17531f, 8);
            }
        });
    }

    /* renamed from: a */
    private void m34050a(final TTCornersWebView tTCornersWebView) {
        String m34869p = C4600n.m34805h().m34869p();
        if (m34869p != null) {
            try {
                tTCornersWebView.getSettings().setJavaScriptEnabled(true);
            } catch (Exception e) {
                e.printStackTrace();
            }
            tTCornersWebView.loadUrl(m34869p);
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
                    if (tTCornersWebView2 == null || !tTCornersWebView2.canGoBack()) {
                        return;
                    }
                    C5443ag.m32228a((View) DialogC4770b.this.f17531f, 0);
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

    /* renamed from: b */
    private void m34046b() {
        WindowManager.LayoutParams attributes;
        setCancelable(false);
        Window window = getWindow();
        if (window == null || (attributes = window.getAttributes()) == null) {
            return;
        }
        attributes.dimAmount = 0.5f;
        attributes.width = (int) (this.f17526a.getResources().getDisplayMetrics().widthPixels * 0.8d);
        window.setAttributes(attributes);
    }

    /* renamed from: a */
    public DialogC4770b m34048a(String str, AbstractC4774b abstractC4774b) {
        this.f17528c = str;
        this.f17530e = abstractC4774b;
        return this;
    }

    /* renamed from: a */
    public DialogC4770b m34047a(String str, AbstractC4775c abstractC4775c) {
        this.f17527b = str;
        this.f17529d = abstractC4775c;
        return this;
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        m34051a();
        m34046b();
    }
}
