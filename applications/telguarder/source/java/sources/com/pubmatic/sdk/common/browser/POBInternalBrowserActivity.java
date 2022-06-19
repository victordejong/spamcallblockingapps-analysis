package com.pubmatic.sdk.common.browser;

import android.app.Activity;
import android.app.AlertDialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.http.SslError;
import android.os.Build;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import android.webkit.SslErrorHandler;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.RelativeLayout;
import com.pubmatic.sdk.common.C1843R;
import com.pubmatic.sdk.common.log.PMLog;
import com.pubmatic.sdk.common.utility.POBAlertDialog;
import com.pubmatic.sdk.common.utility.POBDeepLinkUtil;
import com.pubmatic.sdk.common.utility.POBUtils;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/browser/POBInternalBrowserActivity.class */
public class POBInternalBrowserActivity extends Activity {

    /* renamed from: g */
    private static List<InternalBrowserListener> f383g;

    /* renamed from: a */
    private ImageView f384a;

    /* renamed from: b */
    private ImageView f385b;

    /* renamed from: c */
    private WebView f386c;

    /* renamed from: d */
    private ProgressBar f387d;

    /* renamed from: e */
    private int f388e;

    /* renamed from: f */
    private AlertDialog f389f;

    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/browser/POBInternalBrowserActivity$InternalBrowserListener.class */
    public interface InternalBrowserListener {
        void onBrowserDismiss();

        void onBrowserStart();

        void onExternalBrowserClick(String str);
    }

    /* renamed from: com.pubmatic.sdk.common.browser.POBInternalBrowserActivity$a */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/browser/POBInternalBrowserActivity$a.class */
    public class View$OnClickListenerC1847a implements View.OnClickListener {
        View$OnClickListenerC1847a() {
            POBInternalBrowserActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            POBInternalBrowserActivity.this.finish();
        }
    }

    /* renamed from: com.pubmatic.sdk.common.browser.POBInternalBrowserActivity$b */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/browser/POBInternalBrowserActivity$b.class */
    public class View$OnClickListenerC1848b implements View.OnClickListener {
        View$OnClickListenerC1848b() {
            POBInternalBrowserActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            POBInternalBrowserActivity.this.m1079k();
        }
    }

    /* renamed from: com.pubmatic.sdk.common.browser.POBInternalBrowserActivity$c */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/browser/POBInternalBrowserActivity$c.class */
    public class View$OnClickListenerC1849c implements View.OnClickListener {
        View$OnClickListenerC1849c() {
            POBInternalBrowserActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (POBInternalBrowserActivity.this.f386c != null) {
                POBInternalBrowserActivity.this.f386c.goForward();
            }
        }
    }

    /* renamed from: com.pubmatic.sdk.common.browser.POBInternalBrowserActivity$d */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/browser/POBInternalBrowserActivity$d.class */
    public class View$OnClickListenerC1850d implements View.OnClickListener {
        View$OnClickListenerC1850d() {
            POBInternalBrowserActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (POBInternalBrowserActivity.this.f386c != null) {
                POBInternalBrowserActivity.this.f386c.reload();
            }
        }
    }

    /* renamed from: com.pubmatic.sdk.common.browser.POBInternalBrowserActivity$e */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/browser/POBInternalBrowserActivity$e.class */
    public class View$OnClickListenerC1851e implements View.OnClickListener {
        View$OnClickListenerC1851e() {
            POBInternalBrowserActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            POBInternalBrowserActivity.this.m1081i();
        }
    }

    /* renamed from: com.pubmatic.sdk.common.browser.POBInternalBrowserActivity$f */
    /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/browser/POBInternalBrowserActivity$f.class */
    public class C1852f extends WebViewClient {

        /* renamed from: com.pubmatic.sdk.common.browser.POBInternalBrowserActivity$f$a */
        /* loaded from: classes2-dex2jar.jar:com/pubmatic/sdk/common/browser/POBInternalBrowserActivity$f$a.class */
        class C1853a implements POBAlertDialog.POBDialogListener {

            /* renamed from: a */
            final /* synthetic */ SslErrorHandler f396a;

            C1853a(SslErrorHandler sslErrorHandler) {
                C1852f.this = r4;
                this.f396a = sslErrorHandler;
            }

            @Override // com.pubmatic.sdk.common.utility.POBAlertDialog.POBDialogListener
            public void onCancel(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                this.f396a.cancel();
                if (POBInternalBrowserActivity.this.f386c == null || POBInternalBrowserActivity.this.f386c.copyBackForwardList().getCurrentIndex() >= 0) {
                    return;
                }
                POBInternalBrowserActivity.this.m1079k();
            }

            @Override // com.pubmatic.sdk.common.utility.POBAlertDialog.POBDialogListener
            public void onSuccess(DialogInterface dialogInterface, int i) {
                dialogInterface.dismiss();
                this.f396a.proceed();
            }
        }

        private C1852f() {
            POBInternalBrowserActivity.this = r4;
        }

        /* synthetic */ C1852f(POBInternalBrowserActivity pOBInternalBrowserActivity, View$OnClickListenerC1847a view$OnClickListenerC1847a) {
            this();
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            if (POBInternalBrowserActivity.this.f387d != null) {
                POBInternalBrowserActivity.this.f387d.setVisibility(8);
            }
            if (POBInternalBrowserActivity.this.f386c != null) {
                if (POBInternalBrowserActivity.this.f384a != null) {
                    POBInternalBrowserActivity pOBInternalBrowserActivity = POBInternalBrowserActivity.this;
                    pOBInternalBrowserActivity.m1103a(pOBInternalBrowserActivity.f384a, POBInternalBrowserActivity.this.f386c.canGoBack());
                }
                if (POBInternalBrowserActivity.this.f385b == null) {
                    return;
                }
                POBInternalBrowserActivity pOBInternalBrowserActivity2 = POBInternalBrowserActivity.this;
                pOBInternalBrowserActivity2.m1103a(pOBInternalBrowserActivity2.f385b, POBInternalBrowserActivity.this.f386c.canGoForward());
            }
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            if (POBInternalBrowserActivity.this.f387d != null) {
                POBInternalBrowserActivity.this.f387d.setVisibility(0);
            }
            super.onPageStarted(webView, str, bitmap);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, int i, String str, String str2) {
            if (POBInternalBrowserActivity.this.f387d != null && Build.VERSION.SDK_INT < 23) {
                POBInternalBrowserActivity.this.f387d.setVisibility(8);
            }
            super.onReceivedError(webView, i, str, str2);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedError(WebView webView, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
            if (POBInternalBrowserActivity.this.f387d != null && Build.VERSION.SDK_INT >= 23) {
                POBInternalBrowserActivity.this.f387d.setVisibility(8);
            }
            super.onReceivedError(webView, webResourceRequest, webResourceError);
        }

        @Override // android.webkit.WebViewClient
        public void onReceivedSslError(WebView webView, SslErrorHandler sslErrorHandler, SslError sslError) {
            PMLog.warn("POBInternalBrowserActivity", "SSL error: %s", sslError);
            if (POBInternalBrowserActivity.this.f387d != null) {
                POBInternalBrowserActivity.this.f387d.setVisibility(8);
            }
            String str = "Connection to this site is not secure: " + POBInternalBrowserActivity.this.m1094b(sslError.getPrimaryError());
            if (POBInternalBrowserActivity.this.isFinishing()) {
                PMLog.warn("POBInternalBrowserActivity", "Error showing ssl error dialog as activity is finishing!", new Object[0]);
            } else if (POBInternalBrowserActivity.this.f389f != null) {
                if (POBInternalBrowserActivity.this.f389f.isShowing()) {
                    return;
                }
                POBInternalBrowserActivity.this.f389f.setMessage(str);
                POBInternalBrowserActivity.this.f389f.show();
            } else {
                try {
                    POBInternalBrowserActivity.this.f389f = POBAlertDialog.build(POBInternalBrowserActivity.this, "Warning!", str, new C1853a(sslErrorHandler)).create();
                    POBInternalBrowserActivity.this.f389f.show();
                } catch (Exception e) {
                    PMLog.error("POBInternalBrowserActivity", "Error showing ssl error dialog.", new Object[0]);
                }
            }
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, WebResourceRequest webResourceRequest) {
            return Build.VERSION.SDK_INT >= 24 && POBDeepLinkUtil.validateAndRedirect(POBInternalBrowserActivity.this, webResourceRequest.getUrl().toString());
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            return Build.VERSION.SDK_INT < 24 && POBDeepLinkUtil.validateAndRedirect(POBInternalBrowserActivity.this, str);
        }
    }

    /* renamed from: a */
    private ImageView m1105a() {
        ImageView m1104a = m1104a(C1843R.C1845drawable.ic_action_back);
        this.f384a = m1104a;
        m1103a(m1104a, false);
        this.f384a.setOnClickListener(new View$OnClickListenerC1848b());
        return this.f384a;
    }

    /* renamed from: a */
    private ImageView m1104a(int i) {
        ImageView imageView = new ImageView(this);
        ImageView.ScaleType scaleType = ImageView.ScaleType.FIT_CENTER;
        imageView.setImageResource(i);
        imageView.setBackgroundColor(Build.VERSION.SDK_INT >= 23 ? getResources().getColor(17170446, getTheme()) : getResources().getColor(17170446));
        imageView.setScaleType(scaleType);
        return imageView;
    }

    /* renamed from: a */
    public void m1103a(ImageView imageView, boolean z) {
        int i;
        if (z) {
            imageView.setEnabled(true);
            i = 255;
        } else {
            imageView.setEnabled(false);
            i = 160;
        }
        imageView.setImageAlpha(i);
    }

    /* renamed from: a */
    private void m1102a(RelativeLayout relativeLayout) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, POBUtils.convertDpToPixel(40));
        layoutParams.addRule(12);
        LinearLayout linearLayout = new LinearLayout(this);
        linearLayout.setId(C1843R.C1846id.dialog_id);
        linearLayout.setBackgroundColor(-12303292);
        linearLayout.setOrientation(0);
        linearLayout.setVerticalGravity(16);
        relativeLayout.addView(linearLayout, layoutParams);
        LinearLayout.LayoutParams layoutParams2 = new LinearLayout.LayoutParams(-1, -1, 1.0f);
        layoutParams2.setMargins(2, 4, 2, 2);
        linearLayout.addView(m1095b(), layoutParams2);
        linearLayout.addView(m1105a(), layoutParams2);
        linearLayout.addView(m1088e(), layoutParams2);
        linearLayout.addView(m1086f(), layoutParams2);
        linearLayout.addView(m1090d(), layoutParams2);
        RelativeLayout.LayoutParams layoutParams3 = new RelativeLayout.LayoutParams(-1, 0);
        layoutParams3.addRule(10);
        layoutParams3.addRule(2, linearLayout.getId());
        WebView m1084g = m1084g();
        this.f386c = m1084g;
        relativeLayout.addView(m1084g, layoutParams3);
        RelativeLayout.LayoutParams layoutParams4 = new RelativeLayout.LayoutParams(-2, -2);
        layoutParams4.addRule(13);
        ProgressBar progressBar = new ProgressBar(this, null, 16842871);
        this.f387d = progressBar;
        relativeLayout.addView(progressBar, layoutParams4);
    }

    /* renamed from: a */
    private void m1101a(InternalBrowserListener internalBrowserListener) {
        List<InternalBrowserListener> list = f383g;
        if (list != null) {
            list.remove(internalBrowserListener);
            if (!f383g.isEmpty()) {
                return;
            }
            f383g = null;
        }
    }

    /* renamed from: a */
    private void m1096a(String str) {
        if (this.f386c == null || POBUtils.isNullOrEmpty(str)) {
            PMLog.warn("POBInternalBrowserActivity", "Unable to open internal browser : %s", "Invalid url");
            return;
        }
        PMLog.debug("POBInternalBrowserActivity", "Loading url in internal browser : %s", str);
        this.f386c.loadUrl(str);
    }

    /* renamed from: b */
    private ImageView m1095b() {
        ImageView m1104a = m1104a(C1843R.C1845drawable.ic_action_cancel);
        m1104a.setOnClickListener(new View$OnClickListenerC1847a());
        return m1104a;
    }

    /* renamed from: b */
    public String m1094b(int i) {
        return i != 0 ? i != 1 ? i != 2 ? i != 3 ? i != 4 ? i != 5 ? "SSL Error." : "Certificate Invalid." : "Invalid Date." : "Untrusted Certificate." : "Domain Name Mismatched." : "Certificate Expired." : "Certificate Invalid.";
    }

    /* renamed from: c */
    private RelativeLayout m1092c() {
        RelativeLayout relativeLayout = new RelativeLayout(this);
        relativeLayout.setBackgroundColor(-1);
        m1102a(relativeLayout);
        return relativeLayout;
    }

    /* renamed from: d */
    private ImageView m1090d() {
        ImageView m1104a = m1104a(C1843R.C1845drawable.ic_action_web_site);
        m1104a.setOnClickListener(new View$OnClickListenerC1851e());
        return m1104a;
    }

    /* renamed from: e */
    private ImageView m1088e() {
        ImageView m1104a = m1104a(C1843R.C1845drawable.ic_action_forward);
        this.f385b = m1104a;
        m1103a(m1104a, false);
        this.f385b.setOnClickListener(new View$OnClickListenerC1849c());
        return this.f385b;
    }

    /* renamed from: f */
    private ImageView m1086f() {
        ImageView m1104a = m1104a(C1843R.C1845drawable.ic_action_refresh);
        m1104a.setOnClickListener(new View$OnClickListenerC1850d());
        return m1104a;
    }

    /* renamed from: g */
    private WebView m1084g() {
        WebView webView = new WebView(POBUtils.resolveWebViewContext(this));
        WebSettings settings = webView.getSettings();
        settings.setJavaScriptEnabled(true);
        settings.setLoadWithOverviewMode(true);
        settings.setUseWideViewPort(true);
        settings.setDomStorageEnabled(true);
        webView.setWebViewClient(new C1852f(this, null));
        return webView;
    }

    /* renamed from: h */
    private void m1082h() {
        List<InternalBrowserListener> list = f383g;
        if (list != null) {
            for (InternalBrowserListener internalBrowserListener : list) {
                if (this.f388e == internalBrowserListener.hashCode()) {
                    internalBrowserListener.onBrowserDismiss();
                    m1101a(internalBrowserListener);
                    return;
                }
            }
        }
    }

    /* renamed from: i */
    public void m1081i() {
        List<InternalBrowserListener> list = f383g;
        if (list != null) {
            for (InternalBrowserListener internalBrowserListener : list) {
                if (this.f386c != null && internalBrowserListener.hashCode() == this.f388e) {
                    internalBrowserListener.onExternalBrowserClick(this.f386c.getUrl());
                }
            }
        }
    }

    /* renamed from: j */
    private void m1080j() {
        List<InternalBrowserListener> list = f383g;
        if (list != null) {
            for (InternalBrowserListener internalBrowserListener : list) {
                if (this.f388e == internalBrowserListener.hashCode()) {
                    internalBrowserListener.onBrowserStart();
                    return;
                }
            }
        }
    }

    /* renamed from: k */
    public void m1079k() {
        WebView webView = this.f386c;
        if (webView == null || !webView.canGoBack()) {
            super.onBackPressed();
        } else {
            this.f386c.goBack();
        }
    }

    public static void startNewActivity(Context context, String str, InternalBrowserListener internalBrowserListener) {
        if (f383g == null) {
            f383g = new ArrayList();
        }
        f383g.add(internalBrowserListener);
        Intent intent = new Intent(context, POBInternalBrowserActivity.class);
        intent.addFlags(268435456);
        intent.putExtra("url", str);
        intent.putExtra("listener_hash_code", internalBrowserListener.hashCode());
        context.startActivity(intent);
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        m1079k();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(m1092c());
        this.f388e = getIntent().getIntExtra("listener_hash_code", 0);
        m1096a(getIntent().getStringExtra("url"));
        m1080j();
    }

    @Override // android.app.Activity
    protected void onDestroy() {
        ((ViewGroup) findViewById(16908290)).removeAllViews();
        WebView webView = this.f386c;
        if (webView != null) {
            webView.setWebViewClient(null);
            this.f386c.destroy();
            this.f386c = null;
        }
        AlertDialog alertDialog = this.f389f;
        if (alertDialog != null) {
            alertDialog.dismiss();
            this.f389f = null;
        }
        super.onDestroy();
        m1082h();
    }
}
