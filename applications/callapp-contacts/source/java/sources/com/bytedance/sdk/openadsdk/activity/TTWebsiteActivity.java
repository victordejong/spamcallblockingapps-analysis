package com.bytedance.sdk.openadsdk.activity;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.webkit.WebResourceError;
import android.webkit.WebResourceRequest;
import android.webkit.WebResourceResponse;
import android.webkit.WebView;
import android.webkit.WebViewClient;
import android.widget.ImageView;
import com.bytedance.sdk.openadsdk.core.C4600n;
import com.bytedance.sdk.openadsdk.core.p154e.C4557i;
import com.bytedance.sdk.openadsdk.p164d.C4811e;
import com.bytedance.sdk.openadsdk.utils.C5450c;
import com.bytedance.sdk.openadsdk.utils.C5478q;
import com.bytedance.sdk.openadsdk.utils.C5486x;
/* loaded from: classes-dex2jar.jar:com/bytedance/sdk/openadsdk/activity/TTWebsiteActivity.class */
public class TTWebsiteActivity extends Activity {

    /* renamed from: a */
    private String f15956a = null;

    /* renamed from: a */
    public static void m35763a(Context context, C4557i c4557i, String str) {
        if (context == null) {
            return;
        }
        C4811e.m33881a(context, c4557i, str, "open_policy");
        if (TextUtils.isEmpty(C4600n.m34805h().m34871o())) {
            return;
        }
        C5450c.m32194a(context, new Intent(context, TTWebsiteActivity.class), null);
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(C5486x.m32065f(this, "tt_activity_website"));
        WebView webView = (WebView) findViewById(C5486x.m32066e(this, "tt_ad_website"));
        ((ImageView) findViewById(C5486x.m32066e(this, "tt_ad_close"))).setOnClickListener(new View.OnClickListener() { // from class: com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                TTWebsiteActivity.this.finish();
            }
        });
        if (C4600n.m34805h() != null) {
            this.f15956a = C4600n.m34805h().m34871o();
        }
        C5478q.m32106e("TTWebsiteActivity", "mWebsiteUrl=" + this.f15956a);
        if (this.f15956a == null) {
            finish();
            return;
        }
        if (Build.VERSION.SDK_INT >= 21) {
            webView.getSettings().setMixedContentMode(0);
        }
        try {
            webView.getSettings().setJavaScriptEnabled(true);
            webView.getSettings().setDomStorageEnabled(true);
        } catch (Throwable th) {
        }
        webView.loadUrl(this.f15956a);
        webView.setWebViewClient(new WebViewClient() { // from class: com.bytedance.sdk.openadsdk.activity.TTWebsiteActivity.2
            @Override // android.webkit.WebViewClient
            public void onPageFinished(WebView webView2, String str) {
                super.onPageFinished(webView2, str);
                C5478q.m32106e("TTWebsiteActivity", "onPageFinished invoke....url=".concat(String.valueOf(str)));
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView2, int i, String str, String str2) {
                super.onReceivedError(webView2, i, str, str2);
                C5478q.m32106e("TTWebsiteActivity", "onReceivedError invoke....description=" + str + ",failingUrl=" + str2);
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedError(WebView webView2, WebResourceRequest webResourceRequest, WebResourceError webResourceError) {
                super.onReceivedError(webView2, webResourceRequest, webResourceError);
                C5478q.m32106e("TTWebsiteActivity", "onReceivedError invoke....onReceivedError=" + webResourceError.getErrorCode());
            }

            @Override // android.webkit.WebViewClient
            public void onReceivedHttpError(WebView webView2, WebResourceRequest webResourceRequest, WebResourceResponse webResourceResponse) {
                super.onReceivedHttpError(webView2, webResourceRequest, webResourceResponse);
                C5478q.m32106e("TTWebsiteActivity", "onReceivedHttpError invoke....errorResponse=".concat(String.valueOf(webResourceResponse)));
            }

            @Override // android.webkit.WebViewClient
            public boolean shouldOverrideUrlLoading(WebView webView2, WebResourceRequest webResourceRequest) {
                C5478q.m32106e("TTWebsiteActivity", "shouldOverrideUrlLoading invoke....view=" + webView2 + ",request=" + webResourceRequest);
                if (webView2 == null || webResourceRequest == null) {
                    return false;
                }
                if (Build.VERSION.SDK_INT >= 21) {
                    webView2.loadUrl(webResourceRequest.getUrl().toString());
                    C5478q.m32106e("TTWebsiteActivity", "shouldOverrideUrlLoading invoke....url1=" + webResourceRequest.getUrl().toString());
                    return true;
                }
                webView2.loadUrl(webResourceRequest.toString());
                C5478q.m32106e("TTWebsiteActivity", "shouldOverrideUrlLoading invoke....url2=" + webResourceRequest.toString());
                return true;
            }
        });
    }
}
