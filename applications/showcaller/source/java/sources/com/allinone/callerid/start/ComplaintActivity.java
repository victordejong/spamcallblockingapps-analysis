package com.allinone.callerid.start;

import android.annotation.SuppressLint;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.webkit.WebChromeClient;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.allinone.callerid.R$anim;
import com.allinone.callerid.R$drawable;
import com.allinone.callerid.R$id;
import com.allinone.callerid.R$layout;
import com.allinone.callerid.main.BaseActivity;
import com.allinone.callerid.util.C3739f1;
import com.allinone.callerid.util.C3767h1;
/* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/ComplaintActivity.class */
public class ComplaintActivity extends BaseActivity {

    /* renamed from: v */
    private ProgressBar f11714v;

    /* renamed from: w */
    private WebView f11715w;

    /* renamed from: u */
    private final String f11713u = "ComplaintActivity";

    /* renamed from: x */
    private String f11716x = "function deletead(){\n \n$('header').hide();\n \n$('div.left-nav').hide();\n \n$('div.header').hide();\n\n$('footer').hide();\n};deletead()";

    /* renamed from: com.allinone.callerid.start.ComplaintActivity$a */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/ComplaintActivity$a.class */
    class View$OnClickListenerC3659a implements View.OnClickListener {
        View$OnClickListenerC3659a() {
            ComplaintActivity.this = r4;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            ComplaintActivity.this.finish();
            ComplaintActivity.this.overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
        }
    }

    /* renamed from: com.allinone.callerid.start.ComplaintActivity$b */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/ComplaintActivity$b.class */
    class C3660b extends WebChromeClient {
        C3660b() {
            ComplaintActivity.this = r4;
        }

        @Override // android.webkit.WebChromeClient
        public void onProgressChanged(WebView webView, int i) {
            super.onProgressChanged(webView, i);
        }
    }

    /* renamed from: com.allinone.callerid.start.ComplaintActivity$c */
    /* loaded from: classes-dex2jar.jar:com/allinone/callerid/start/ComplaintActivity$c.class */
    class C3661c extends WebViewClient {
        C3661c() {
            ComplaintActivity.this = r4;
        }

        @Override // android.webkit.WebViewClient
        public void onPageFinished(WebView webView, String str) {
            super.onPageFinished(webView, str);
            WebView webView2 = ComplaintActivity.this.f11715w;
            webView2.loadUrl("javascript:" + ComplaintActivity.this.f11716x);
            ComplaintActivity.this.f11714v.setVisibility(8);
            ComplaintActivity.this.f11715w.setVisibility(0);
        }

        @Override // android.webkit.WebViewClient
        public void onPageStarted(WebView webView, String str, Bitmap bitmap) {
            super.onPageStarted(webView, str, bitmap);
            ComplaintActivity.this.f11715w.setVisibility(4);
            ComplaintActivity.this.f11714v.setVisibility(0);
        }

        @Override // android.webkit.WebViewClient
        public boolean shouldOverrideUrlLoading(WebView webView, String str) {
            webView.loadUrl(str);
            return true;
        }
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    @SuppressLint({"NewApi", "SetJavaScriptEnabled"})
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        try {
            setContentView(R$layout.activity_complaint);
            if (C3767h1.m24250f0(getApplicationContext()).booleanValue() && Build.VERSION.SDK_INT >= 17) {
                getWindow().getDecorView().setLayoutDirection(1);
            }
            TextView textView = (TextView) findViewById(R$id.tv_title_about);
            ImageView imageView = (ImageView) findViewById(R$id.header_left_about);
            if (C3767h1.m24250f0(getApplicationContext()).booleanValue()) {
                imageView.setImageResource(R$drawable.ic_back_oppo);
            }
            imageView.setOnClickListener(new View$OnClickListenerC3659a());
            textView.setTypeface(C3739f1.m24359b());
            this.f11714v = (ProgressBar) findViewById(R$id.progress_web);
            WebView webView = (WebView) findViewById(R$id.wv_complaint);
            this.f11715w = webView;
            WebSettings settings = webView.getSettings();
            settings.setJavaScriptCanOpenWindowsAutomatically(true);
            settings.setJavaScriptEnabled(true);
            settings.setUseWideViewPort(true);
            settings.setLoadWithOverviewMode(true);
            settings.setCacheMode(2);
            this.f11715w.setWebChromeClient(new C3660b());
            this.f11715w.setWebViewClient(new C3661c());
            this.f11715w.loadUrl("https://www.show-caller.com/complaint.html");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onDestroy() {
        super.onDestroy();
        try {
            WebView webView = this.f11715w;
            if (webView == null) {
                return;
            }
            webView.removeAllViews();
            this.f11715w.destroy();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    @Override // androidx.appcompat.app.AppCompatActivity, android.app.Activity, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i, KeyEvent keyEvent) {
        if (i == 4) {
            try {
                WebView webView = this.f11715w;
                if (webView != null && webView.canGoBack()) {
                    this.f11715w.goBack();
                    return true;
                }
                finish();
                overridePendingTransition(R$anim.abc_fade_in, R$anim.abc_fade_out);
                return true;
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
        return super.onKeyDown(i, keyEvent);
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onPause() {
        super.onPause();
    }

    @Override // com.allinone.callerid.main.BaseActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        super.onResume();
    }
}
